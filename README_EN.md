# MySecureShell in Docker

Russian Version: [README.md](README.md)

This project provides an easy way to run [MySecureShell](http://mysecureshell.readthedocs.io/) in a Docker container. MySecureShell is a secure SFTP server that allows you to restrict user access to the filesystem and configure quotas.

## Description

MySecureShell is a lightweight SFTP server that provides additional features for managing user access. This project allows you to quickly deploy MySecureShell in a Docker container with minimal effort.

## Links

- [Official MySecureShell Website](http://mysecureshell.readthedocs.io/)
- [Article in my blog](https://shumiloff.ru/sam-sebe-xosting-ili-o-nedoocenyonnyx-utilitax.html)

## Installation

1. Clone the repository:
   %%%bash
   git clone <repo_url>
   cd <repo_directory>
   %%%
2. Start the container:
   %%%bash
   docker-compose up -d
   %%%

## User Management

### Adding Users
To add users, use the following command:
%%%bash
./mss add <username1> [username2] ... [usernameN]
%%%

### Removing Users
To remove users, use the following command:
%%%bash
./mss del <username1> [username2] ... [usernameN]
%%%


