# File Encryption App

## Overview

The File Encryption App is a command-line tool designed to provide basic file encryption and decryption functionality using the AES-256-CBC encryption algorithm with the PBKDF2 key derivation method. While it can be useful for simple file encryption tasks, it is important to note that it is not intended for handling highly sensitive data without further security enhancements.

## Features

- **Encryption**: Encrypt files to protect their contents.
- **Decryption**: Decrypt previously encrypted files when needed.

## Prerequisites

Before using the File Encryption App, ensure you have the following prerequisites installed on your system:

- Linux or macOS
- Bash shell
- OpenSSL for encryption and decryption

## Usage

### Encryption

To encrypt a file, run the following command in your terminal:

```bash
./file_encryptor.sh encrypt <input_file> <output_file>
```

## License

This project is licensed under the MIT License.
