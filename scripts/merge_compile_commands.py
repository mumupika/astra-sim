# -*- coding: utf-8 -*-
"""
Merge multiple compile_commands.json

Usage:
    python merge_compile_commands.py -o output.json input1.json input2.json ...
"""

import argparse
import json
import sys


def main():
    parser = argparse.ArgumentParser(
        description="Merge multiple compile_commands.json"
    )
    parser.add_argument(
        "-o", "--output", required=True,
        help="File path that output merged json."
    )
    parser.add_argument(
        "inputs", nargs="+", metavar="INPUT",
        help="Files ready to be merge."
    )
    args = parser.parse_args()

    merged_commands = []

    for input_path in args.inputs:
        try:
            with open(input_path, "r", encoding="utf-8") as f:
                data = json.load(f)
            if not isinstance(data, list):
                print(
                    f"Warning: {input_path} Not a JSON array, skip",
                    file=sys.stderr
                )
                continue
            merged_commands.extend(data)
            print(f"Read {len(data)} records from {input_path}")
        except Exception as e:
            print(f"Error: Cannot read {input_path}: {e}", file=sys.stderr)
            sys.exit(1)

    try:
        with open(args.output, "w", encoding="utf-8") as f:
            json.dump(merged_commands, f, indent=2, ensure_ascii=False)
        print(f"Successfully merged {len(merged_commands)} records to {args.output}")
    except Exception as e:
        print(f"Error: Cannot output file: {e}", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()