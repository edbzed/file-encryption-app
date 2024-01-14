#!/bin/bash

# Function to encrypt a file
encrypt_file() {
    if [ $# -ne 3 ]; then
        echo "Usage: $0 encrypt <input_file> <output_file>"
        exit 1
    fi

    input_file="$2"
    output_file="$3"

    openssl enc -aes-256-cbc -pbkdf2 -salt -in "$input_file" -out "$output_file"
    echo "File encrypted successfully."
}

# Function to decrypt a file
decrypt_file() {
    if [ $# -ne 3 ]; then
        echo "Usage: $0 decrypt <input_file> <output_file>"
        exit 1
    fi

    input_file="$2"
    output_file="$3"

    if openssl enc -aes-256-cbc -pbkdf2 -d -in "$input_file" -out "$output_file"; then
        echo "File decrypted successfully."
    else
        echo "Decryption failed. Incorrect password."
        exit 1
    fi
}

# Main script
if [ $# -lt 3 ]; then
    echo "Usage: $0 <encrypt/decrypt> <input_file> <output_file>"
    exit 1
fi

operation="$1"

if [ "$operation" == "encrypt" ]; then
    encrypt_file "$@"
elif [ "$operation" == "decrypt" ]; then
    decrypt_file "$@"
else
    echo "Usage: $0 <encrypt/decrypt> <input_file> <output_file>"
    exit 1
fi
