# Модуль для создания сетей виртуальной машины

## Зависимости:

 - terraform 1.3.7
 - yandex cloud 0.84.0
 
 ## Провайдер
 
  - Yandex Cloud
  
## Параметры:

| Имя | Описание | Тип | Значение по умолчанию | Обязательная |
| ---- | ----------- | ---- | ------- | -------- |
| network_zones | Network zones set for creating VM | set of strings | ["ru-central1-a","ru-central1-b","ru-central1-c"] | yes |


## Выходные данные:

| Имя | Описание |
| ---- | ----------- |
| yandex_vpc_subnets | Список подсетей ВМ |
