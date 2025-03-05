# MSS (MySecureShell в Docker)

English version: [README_EN.md](README_EN.md)

Этот проект предоставляет простой способ запуска [MySecureShell](http://mysecureshell.readthedocs.io/) в Docker-контейнере. MySecureShell — это безопасный SFTP-сервер, который позволяет ограничивать доступ пользователей к файловой системе и настраивать квоты.

## Описание

MySecureShell — это легковесный SFTP-сервер, который предоставляет дополнительные возможности для управления доступом пользователей. Этот проект позволяет быстро развернуть MySecureShell в Docker-контейнере с минимальными усилиями.

## Ссылки

- [Официальный сайт MySecureShell](http://mysecureshell.readthedocs.io/)
- [Статья в моём блоге](https://shumiloff.ru/sam-sebe-xosting-ili-o-nedoocenyonnyx-utilitax.html)

## Установка

1. Клонируйте репозиторий:
   ```bash
   git clone <repo_url>
   cd <repo_directory>
   ```
2. Запустите контейнер:
   ```bash
   docker-compose up -d
   ```

## Управление пользователями

### Добавление пользователей
Для добавления пользователей используйте команду:
```bash
./mss add <username1> [username2] ... [usernameN]
```

### Удаление пользователей
Для удаления пользователей используйте команду:
```bash
./mss del <username1> [username2] ... [usernameN]
```

