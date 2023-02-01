#!/bin/bash

# Prompt the user for the file name
echo "Enter the file name (without .java extension):"
read file_name

# Create the Java file
java_file="$file_name".java
touch "$java_file"

# Write a basic Java program to the file
echo "public class $file_name {
  public static void main(String[] args) {
    System.out.println(\"Hello, World!\");
  }
}" > "$java_file"

echo "Java file $java_file created successfully."
