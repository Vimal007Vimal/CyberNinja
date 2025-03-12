<p align=center>

  <img src="./img/ban.png"/>

  <br>
  <span>CyberNinja: Advanced Social Media Intelligence Tool</span>
  <br>
  <a target="_blank" href="https://www.python.org/downloads/" title="Python version"><img src="https://img.shields.io/badge/python-%3E=_3.6-green.svg"></a>
  <a target="_blank" href="LICENSE" title="License: MIT"><img src="https://img.shields.io/badge/License-MIT-blue.svg"></a>
  <a target="_blank" href="https://github.com/omarkdev/cyberninja/actions" title="Test Status"><img src="https://img.shields.io/badge/tests-passing-brightgreen.svg"></a>
</p>

<p align="center">
  <a href="#overview">Overview</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#features">Features</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#installation">Installation</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#usage">Usage</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#docker">Docker</a>
  <a href="#PYTHON MOUDLE">Module</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#contributing">Contributing</a>
</p>

## Overview

CyberNinja is a powerful OSINT (Open Source Intelligence) tool designed for digital investigators, security researchers, and privacy enthusiasts. It enables rapid reconnaissance across multiple social media platforms to track digital footprints using usernames.

## Features

- 🚀 **Lightning Fast**: Concurrent searching across hundreds of platforms
- 🛡️ **Privacy First**: Built-in Tor support for anonymous searching
- 🔍 **Comprehensive Coverage**: Search across major social networks, forums, and websites
- 📱 **Phone Number Intelligence**: Gather information about phone numbers including carrier, location, and associated services
- 📊 **Flexible Output**: Export results in JSON, CSV, or text formats
- 🌐 **Proxy Support**: Custom proxy configuration for enhanced privacy
- 🔧 **Highly Configurable**: Customize timeout, verbosity, and search parameters
- 🐳 **Docker Ready**: Easy deployment with containerization support

## Installation

```console
# Clone the repository
$ git clone https://github.com/omarkdev/cyberninja.git

# Navigate to the project directory
$ cd cyberninja

# Install required dependencies
$ python3 -m pip install -r requirements.txt
```

## Usage

```console
$ python3 cyberninja --help
usage: cyberninja [-h] [--version] [--verbose] [--folderoutput FOLDEROUTPUT]
                [--output OUTPUT] [--tor] [--unique-tor] [--csv]
                [--site SITE_NAME] [--proxy PROXY_URL] [--json JSON_FILE]
                [--timeout TIMEOUT] [--print-all] [--print-found] [--no-color]
                [--browse] [--local]
                USERNAMES [USERNAMES ...]

CyberNinja: Advanced Social Media Intelligence Tool (Version 1.0.0)

positional arguments:
  USERNAMES             One or more usernames to investigate

optional arguments:
  -h, --help            Show this help message and exit
  --version            Display version information
  --verbose, -v        Enable detailed debugging output
  --output OUTPUT      Save results to specified file
  --tor, -t           Enable Tor routing for anonymous searching
  --csv               Export results in CSV format
  --json JSON_FILE    Load custom site data from JSON file
  --timeout TIMEOUT   Custom request timeout in seconds
```

### Basic Examples

```console
# Search for a single username
$ python3 cyberninja username123

# Search multiple usernames
$ python3 cyberninja user1 user2 user3

# Search for phone number information
$ python3 cyberninja --phone +1234567890

# Search phone number with country code
$ python3 cyberninja --phone --country US 1234567890

# Enable Tor routing for anonymous searching
$ python3 cyberninja --tor username123

# Export results to CSV
$ python3 cyberninja --csv --output results.csv username123
```

## Phone Number Search

CyberNinja includes powerful phone number intelligence capabilities:

- **Carrier Information**: Identify the telecommunications carrier
- **Location Data**: Get geographic information associated with the number
- **Number Type**: Determine if it's mobile, landline, or VoIP
- **Risk Assessment**: Check for spam or fraud reports
- **Connected Services**: Find linked social media and online accounts
- **Historical Data**: View past associations and usage patterns

Example phone number search output:
```
📱 Phone Number Analysis: +1234567890
----------------------------------
✓ Carrier: Example Telecom
✓ Location: New York, United States
✓ Type: Mobile
✓ Time Zone: EST (UTC-5)
✓ Format: Valid International
```
## PYTHON MODULE

install it 
```
#pip install cyberninja 
```

![image](https://github.com/user-attachments/assets/0ad71c13-8e55-44af-935c-4becca9d702f)


use it 
```
cyberninja user1 user2

```
![image](https://github.com/user-attachments/assets/4ad7e864-d0a8-4e97-9fdc-067f46c57199)

![image](https://github.com/user-attachments/assets/d40ce7cd-08cb-4894-aceb-a8c7821757c5)


## Docker

CyberNinja can be run using Docker for easy deployment and consistency across platforms.

```console
# Build the Docker image
$ docker build -t cyberninja .

# Run CyberNinja in a container
$ docker run -it cyberninja username123
```
pull the Docker Image
```
$ docker pull vimald/cyberninja02:latest
```
![Docker Pull Image](https://github.com/Vimal007Vimal/CyberNinja/blob/main/img/pull.jpeg)

#Run the Container
```
$ docker run -it vimald/cyberninja02:latest username123
```

![Docker run Image](https://github.com/Vimal007Vimal/CyberNinja/blob/main/img/dcokerrun.jpeg)


Using Docker Compose:
```console
$ docker-compose run cyberninja username123
```

Docker Hub Link
[**vimald/cyberninja02:latest**](https://hub.docker.com/repository/docker/vimald/cyberninja02/general)

## Privacy and Security

CyberNinja is designed with privacy in mind:
- All requests can be routed through Tor
- Custom proxy support for enhanced anonymity
- No data collection or external API dependencies
- Local result storage only

## Contributing

We welcome contributions! Here's how you can help:

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to your branch
5. Create a Pull Request

Please ensure your code follows our style guidelines and includes appropriate tests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Thanks to all contributors who have helped shape CyberNinja
- Special thanks to the OSINT community for their valuable feedback
- Built with by the CyberNinja team
