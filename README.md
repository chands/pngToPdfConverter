# Bill PDF Generator

A simple utility to combine monthly bill images into PDFs. This tool helps you organize your monthly bills by combining multiple pages into single PDF files, named by month.

## Features

- 📄 Combines pairs of PNG files into monthly PDFs
- 📝 Automatically names files by month
- 🧹 Cleans up original PNG files after conversion
- 🚀 Simple one-command execution

## Requirements

- Python 3
- Pillow (PIL) library (automatically installed by the script)

## Usage

1. Place your PNG files in a directory with the following naming convention:
   ```
   mar1.png and mar2.png for March
   apr1.png and apr2.png for April
   may1.png and may2.png for May
   ...and so on
   ```

2. Download the `convert_bills.sh` script to the same directory

3. Make the script executable:
   ```bash
   chmod +x convert_bills.sh
   ```

4. Run the script:
   ```bash
   ./convert_bills.sh
   ```

## Output

The script will create 12 PDF files:
- January.pdf
- February.pdf
- March.pdf
- April.pdf
- May.pdf
- June.pdf
- July.pdf
- August.pdf
- September.pdf
- October.pdf
- November.pdf
- December.pdf

Each PDF will contain two pages from the corresponding PNG files.

## Example

If you have these files:
```
mar1.png  - First page of March bill
mar2.png  - Second page of March bill
apr1.png  - First page of April bill
apr2.png  - Second page of April bill
...
```

After running the script, you will get:
```
March.pdf    - Contains both pages of March bill
April.pdf    - Contains both pages of April bill
...
```

## Note

- Original PNG files will be deleted after successful PDF creation
- Make sure you have backup of your PNG files if needed
- The script requires Python 3 and will automatically install the Pillow library if not present

## License

This project is open source and available under the MIT License.

## Developer setup

Follow https://ixigodev.atlassian.net/wiki/spaces/MD/pages/2637725748/Android+Developer+Setup

## CI

See https://ixigodev.atlassian.net/wiki/spaces/MD/pages/2637168641/Android+CI+CD
