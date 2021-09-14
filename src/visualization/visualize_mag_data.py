#!/usr/bin/python3

import argparse
import serial
import matplotlib.pyplot as plt

########################################################################################################################
# Methods:

def get_args():
    parser = argparse.ArgumentParser(description="Visualize magnetometer readings.")

    parser.add_argument(
        'port',
        metavar='PORT',
        type=str,
        help="UART port for receiving data"
    )

    parser.add_argument(
        "-b",
        metavar="BAUDRATE",
        dest="baud",
        type=int,
        default=115200,
        help="baudrate"
    )

    parser.add_argument(
        "-n",
        metavar="N",
        dest="n",
        type=int,
        default=100,
        help="number of simultaneously visualized samples"
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

    # Lists for storing samples
    samples = []

    # Plots
    fig, axs = plt.subplots(4, sharex=True)
    fig.suptitle("Magnetometer readings")

    for i in range(12):
        samples.append([])

    while True:
        if len(samples[0]) < args.n:
            line = ser.readline()[:-1]

            vals = [int(v) for v in line.split()]

            if len(vals) != 12:
                continue

            for i in range(12):
                samples[i].append(vals[i])

        else:
            # Plot
            #fig.clf()

            for i in range(4):
                axs[i].cla()
                for j in range(3):
                    axs[i].plot(list(range(args.n)), samples[i*3+j])

                axs[i].set_title("Magnetometer " + str(i))
                axs[i].legend(["x","y","z"])

            plt.pause(1)

            samples = [[] for _ in range(12)]





        




