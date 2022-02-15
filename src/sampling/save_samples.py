#!/usr/bin/python3

import argparse
import serial
import datetime

########################################################################################################################
# Methods:

def get_args():
    parser = argparse.ArgumentParser(description="Store samples from UART to file.")

    parser.add_argument(
        'port',
        metavar='PORT',
        type=str,
        help="UART port for receiving data"
    )

    parser.add_argument(
        "filename",
        metavar="FILENAME",
        type=str,
        help="Filename for storing data"
    )

    parser.add_argument(
        "-b",
        metavar="BAUDRATE",
        dest="baud",
        type=int,
        default=115200,
        help="baudrate"
    )

    args = parser.parse_args()

    return args

########################################################################################################################
# Main:

if __name__ == '__main__':
    # Parse args
    args = get_args()

    # Open serial
    ser = serial.Serial(
        args.port,
        args.baud
    )
    
    # Wait for current transmission to finish
    print("Waiting for current transmission to finish")

    while True:
        line = ser.readline()

        if "end" in str(line):
            print("Current transmission finished")
            break

    print("Sampling next sequence")

    # Lists for storing samples
    samples = []

    while True:
        line = ser.readline()

        if "end" in str(line):
            break

        samples.append(line)

    print("Finished sampling, writing to file")

    with open(args.filename, "w+") as f:
        f.write("Time\tMag0_x\tMag0_y\tMag0_z\tMag1_x\tMag1_y\tMag1_z\tMag2_x\tMag2_y\tMag2_z\tMag3_x\tMag3_y\tMag3_z\tmmW0_x\tmmW0_y\tmmW0_z\tmmW1_x\tmmW1_y\tmmW1_z\tmmW2_x\tmmW2_y\tmmW2_z\tmmW3_x\tmmW3_y\tmmW3_z\tmmW4_x\tmmW4_y\tmmW4_z\tmmW5_x\tmmW5_y\tmmW5_z\tmmW6_x\tmmW6_y\tmmW6_z\tmmW7_x\tmmW7_y\tmmW7_z\tampl_sum0\tphase_sum0\tampl_sum1\tphase_sum1\tampl_sum2\tphase_sum2\tampl_sum3\tphase_sum3\tampl_sum4\tphase_sum4\tampl_sum5\tphase_sum5\tampl_sum6\tphase_sum6\tampl_sum7\tphase_sum7\tampl_sum8\tphase_sum8\tampl_sum9\tphase_sum9\tampl_sum10\tphase_sum10\tampl_sum11\tphase_sum11\n")
        for line in samples:
            line = line[:-1]

            spl = line.split()

            if len(spl) != 61:
                raise IndexError

            write_str = str(int(spl[0]))

            for i in range(1,13):
                write_str += "\t" + str(int(spl[i]))

            for i in range(13,37):
                write_str += "\t" + str(float(spl[i]))

            for i in range(37,61):
                write_str += "\t" + str(int(spl[i]))

            write_str += "\n"

            f.write(write_str)

    print("Finished writing measurement sequence to " + str(args.filename))
    print("Goodbye")
