#!/bin/bash

# Update package lists
sudo apt update -y
sudo apt upgrade -y

# Install Java 8 (OpenJDK)
sudo apt install -y openjdk-8-jdk

# Find Java 8 installation path
JAVA8_PATH=$(update-alternatives --list java | grep java-8 | head -n 1 | sed 's|/bin/java||')

# If Java 8 is not found, set a default path
if [ -z "$JAVA8_PATH" ]; then
    JAVA8_PATH="/usr/lib/jvm/java-8-openjdk-amd64"
fi

# Export JAVA_HOME
export JAVA_HOME="$JAVA8_PATH"
export PATH="$JAVA_HOME/bin:$PATH"

# Make JAVA_HOME persistent
if [ -f ~/.bashrc ]; then
    echo "export JAVA_HOME=$JAVA8_PATH" >> ~/.bashrc
    echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> ~/.bashrc
    source ~/.bashrc
fi

if [ -f ~/.zshrc ]; then
    echo "export JAVA_HOME=$JAVA8_PATH" >> ~/.zshrc
    echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> ~/.zshrc
    source ~/.zshrc
fi

# Verify installation
java -version
echo "Java 8 installed successfully! JAVA_HOME is set to: $JAVA_HOME"