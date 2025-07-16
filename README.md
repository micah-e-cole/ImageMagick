# ImageMagick
Using the open-source software [ImageMagick](https://imagemagick.org/index.php) to streamline image re-sizing using increments of 10% and the Lanczos pattern for better quality retention.

## How to use

(Note: This assumes you are using macOS. For instructions using Linux or Windows you will need to look for further documentation on implementing ImageMagick on your OS.)

1. Install [Homebrew](https://brew.sh/) if not already installed, using the terminal/CLI: 

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Once Homebrew is installed, you need to install ImageMagick using the CLI:

```
brew update && brew install imagemagick
```
3. Check to make sure the resize_images.sh file is in the folder you want to work from
4. With the resize_images.sh file in your current working directory, run this command to give the script execeute permissions: 
```
chmod +x resize_images.sh
```
5. To run the script, enter the following command in the CLI:
```
./resize_images.sh
```