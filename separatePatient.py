import sys
import os
import argparse
from functions import readlines_file, save_file, list_file
args = None

def parseArgs():
    parser = argparse.ArgumentParser()
    parser.add_argument("slicePath", help="~/Desktop/data/patch/256_256_3/path")
    parser.add_argument("savePath", help="~/Desktop/data/textList/original")
    parser.add_argument("--training", nargs="*")
    parser.add_argument("--valiation", nargs="*")
    parser.add_argument("--test", nargs="*")

    args = parser.parse_args()
    return args


def main(args):
    savePath = os.path.expanduser(args.savePath)

    for x in range(30):
        sx = str(x).zfill(2)

        slicePath = args.slicePath + '/case_' + sx + ".txt"
        
        if not os.path.exists(savePath):
            print("Make ", savePath)
            os.makedirs(savePath, exist_ok = True)

        if os.path.isfile(slicePath):
            if sx in args.testing:
                f = "testing"
                list_file(slicePath, savePath + "/testing.txt")
            if sx in args.training:
                f = "training"
                list_file(slicePath, savePath + "/training.txt")
            if sx in args.validation:
                f = "validation"
                list_file(slicePath, savePath + "/validation.txt")
        
            print("case_00" + sx + " to " + f)
        else:
            print("Loading Error. " )
            sys.exit()

        

if __name__ == "__main__":
    args = parseArgs()
    main(args)
    
