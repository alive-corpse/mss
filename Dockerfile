FROM bitnami/minideb:bookworm

# Обновление списка пакетов и установка необходимых пакетов
RUN apt-get -y update && apt-get install -y openssh-server mysecureshell whois && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* && mkdir -p /run/sshd /mnt/share && chmod 0755 /run/sshd

VOLUME /config
VOLUME /mnt/share

# Добавление конфигурационных файлов
ADD bin/init /usr/local/bin/init
ADD bin/eslogger /usr/local/bin/eslogger
ADD bin/mss /usr/local/bin/mss

# Открытие порта для SSH
EXPOSE 22

# Запуск SSH сервера
ENTRYPOINT /usr/local/bin/init
