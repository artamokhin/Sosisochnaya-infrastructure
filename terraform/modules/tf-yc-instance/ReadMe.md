# Модуль для создания виртуальной машины

## Зависимости:

 - terraform 1.3.7
 - yandex cloud 1.101
 
 ## Провайдер
 
  - Yandex Cloud
  
## Параметры:

| Имя | Описание | Тип | Значение по умолчанию | Обязательная |
| ---- | ----------- | ---- | ------- | -------- |
| zone | Instance availability zone | string | ru-central1-a | yes |
| platform_id | Yandex Compute Cloud platform variant | string | standard-v1 | yes |
| disk_size | YandexCloud instance bootable disk size | string | 30 | yes |
| preemptible | True for short-lived compute instances | boolean | false | yes |

## Выходные данные:

| Имя | Описание |
| ---- | ----------- |
| internal_ip_address | Внутренний IP адрес ВМ |
| external_ip_address | Внешний IP адрес ВМ |
