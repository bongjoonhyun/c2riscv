import argparse
import os


class MainExtractor:
    def __init__(self):
        self._parser = argparse.ArgumentParser()
        self._parser.add_argument('--input', type=str, required=True)
        self.args = self._parser.parse_args()

    def extract(self):
        with open(self.args.input, "r") as f:
            main_block = []
            main_start = False
            for l in f.readlines():
                if "<main>:" in l:
                    main_start = True

                if main_start:
                    main_block.append(l.strip("\n"))

                    if l == "\n":
                        main_start = False
                        break

        main_hex = []
        for i in range(len(main_block)):
            if i == 0 or i == len(main_block) - 1:
                continue

            main_hex.append(main_block[i].split("\t")[1].strip())

        hex_filename = "/c2riscv/hex/" + \
            self.args.input.split("/")[-1].split(".")[-2] + ".hex"

        if not os.path.exists("/c2riscv/hex"):
            os.makedirs("/c2riscv/hex")

        with open(hex_filename, "w+b") as f:
            for l in main_hex:
                if l == "00008067":
                    byte0 = int(l[6:8], 16)
                    byte1 = int(l[4:6], 16)
                    byte2 = int(l[2:4], 16)
                    byte3 = int(l[0:2], 16)
                    binary_format = bytearray([byte3, byte2, byte1, byte0])
                    f.write(binary_format)
                else:
                    byte0 = int(l[6:8], 16)
                    byte1 = int(l[4:6], 16)
                    byte2 = int(l[2:4], 16)
                    byte3 = int(l[0:2], 16)
                    binary_format = bytearray([byte3, byte2, byte1, byte0])
                    f.write(binary_format)


def main():
    main_extractor = MainExtractor()
    main_extractor.extract()


if __name__ == "__main__":
    main()
