# Simple Docker

## Part 1. Готовый докер

- Взять официальный докер образ с **nginx** и выкачать его при помощи `docker pull`
![docker_pull](images/docker_pull.png)

- Проверить наличие докер образа через `docker images`
![docker_images](images/docker_images.png)

- Запустить докер образ через `docker run -d [image_id|repository]`
![docker_run](images/docker_run.png)
Ключ -d запускает контейнер в фоновом режиме. Это позволяет использовать терминал, из которого запущен контейнер, для выполнения других команд во время работы контейнера.

- Проверить, что образ запустился через `docker ps`
![docker_ps](images/docker_ps.png)

- Посмотреть информацию о контейнере через `docker inspect [container_id|container_name]`
![docker_inspect](images/docker_inspect.png)

- По выводу команды определить и поместить в отчёт: \
размер контейнера: \
![Shm_Size](images/Shm_Size.png)\
список замапленных портов: \
![Exposed_Ports](images/Exposed_Ports.png)\
и ip контейнера:\
![IP_Address](images/IP_Address.png)

- Остановить докер образ через `docker stop [container_id|container_name]`
![docker_stop](images/docker_stop.png)

- Проверить, что образ остановился через `docker ps`
![docker_ps2](images/docker_ps2.png)

- Запустить докер с портами 80 и 443 в контейнере, замапленными на такие же порты на локальной машине, через команду *run*
![docker_run2](images/docker_run2.png)

- Проверить, что в браузере по адресу *localhost:80* доступна стартовая страница **nginx**
![nginx](images/nginx.png)

- Перезапустить докер контейнер через `docker restart [container_id|container_name]`
![docker_restart](images/docker_restart.png)

- Проверить любым способом, что контейнер запустился
![docker_ps3](images/docker_ps3.png)

## Part 2. Операции с контейнером

- Прочитать конфигурационный файл *nginx.conf* внутри докер контейнера через команду *exec*
![nginx_conf](images/nginx_conf.png)

- Создать на локальной машине файл *nginx.conf*\
touch nginx.conf

- Настроить в нем по пути */status* отдачу страницы статуса сервера **nginx**
![nginx_conf2](images/nginx_conf2.png)

- Скопировать созданный файл *nginx.conf* внутрь докер образа через команду `docker cp`
![docker_cp](images/docker_cp.png)

- Перезапустить **nginx** внутри докер образа через команду *exec*
![nginx_reload](images/nginx_reload.png)

- Проверить, что по адресу *localhost:80/status* отдается страничка со статусом сервера **nginx**
![status](images/status.png)

- Экспортировать контейнер в файл *container.tar* через команду *export*
![docker_export](images/docker_export.png)

- Остановить контейнер\
![docker_stop2](images/docker_stop2.png)

- Удалить образ через `docker rmi [image_id|repository]`, не удаляя перед этим контейнеры
![docker_rmi](images/docker_rmi.png)

- Удалить остановленный контейнер
![docker_rm](images/docker_rm.png)

- Импортировать контейнер обратно через команду *import*
![docker_import](images/docker_import.png)

- Запустить импортированный контейнер
![docker_run3](images/docker_run3.png)

- Проверить, что по адресу *localhost:80/status* отдается страничка со статусом сервера **nginx**
![status2](images/status2.png)
