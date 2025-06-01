# Homebrew Tap for SwiftGet

This is a Homebrew tap for installing SwiftGet, a Swift-based CLI tool for downloading files.

## Installation

```bash
# Add the tap
brew tap tuliopc23/swiftget

# Install swiftget
brew install swiftget
```

## Usage

After installation, you can use swiftget from the command line:

```bash
# Show help
swiftget --help

# Show version
swiftget --version

# Download a file (feature coming soon!)
swiftget https://example.com/file.zip
```

## Updating

To update swiftget:

```bash
brew update
brew upgrade swiftget
```

## Development

This tap installs SwiftGet from source using Swift Package Manager. The formula builds the project in release mode and installs the binary to your Homebrew bin directory.

## Repository

The source code for SwiftGet is available at: https://github.com/tuliopc23/swiftget-cli

