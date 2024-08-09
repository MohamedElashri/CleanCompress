# <img src="icon.png" alt="CleanCompress Icon" width="30" height="30"> CleanCompress

CleanCompress is a macOS app that allows users to easily compress files and folders into a ZIP archive and clean out unwanted macOS-specific files such as `__MACOSX` and `.DS_Store`. This app provides a simple interface for managing ZIP files directly from the Finder toolbar.

## Features

- **Compress**: Select multiple files or folders and compress them into a ZIP archive.
- **Clean**: Automatically removes unnecessary files like `__MACOSX` and `.DS_Store` from the ZIP archive.
- **Easy to Use**: Integrates with Finder for quick access.

## Installation

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/MohamedElashri/CleanCompress
   
   cd CleanCompress
   ```

2. **Build the App:**

   Open the `CleanCompress` script in Script Editor:

   - Navigate to the project directory and open `CleanCompress.applescript` in Script Editor.
   - Compile the script to check for errors.
   - Choose `File > Export` and set the `File Format` to `Application`.
   - Save the application with the name "CleanCompress" in your desired location.

3. **Add to Finder Toolbar:**

   - Open a Finder window.
   - Drag the "CleanCompress" app into the Finder toolbar while holding the `Command` (⌘) key.

## Usage

1. **Select Files/Folders**: Click the "CleanCompress" icon in the Finder toolbar.
2. **Choose Items**: A dialog will prompt you to select files or folders to compress and clean.
3. **Compression and Cleaning**: The app will create a ZIP archive in the same directory as the selected items, using the name of the first selected item for the ZIP file.
4. **Notification**: A notification will appear once the process is complete, indicating the archive has been cleaned.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Disclaimer

CleanCompress is provided "as-is" without any warranty. The authors are not responsible for any damage or data loss that may occur through the use of this application. Always ensure that you have backups of important data before using compression and cleaning tools.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue if you find any bugs or have suggestions for improvements.


