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

        with open(hex_filename, "w") as f:
            for l in main_hex:
                if l == "00008067":
                    f.write(l)
                else:
                    f.write(l + "\n")


def main():
    main_extractor = MainExtractor()
    main_extractor.extract()


if __name__ == "__main__":
    main()
