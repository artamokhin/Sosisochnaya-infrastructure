# Модуль для создания виртуальной машины

## Зависимости:

 - terraform 1.3.7
 - yandex cloud 0.84.0
 
 ## Провайдер
 
  - Yandex Cloud
  
## Параметры:

| Имя | Описание | Тип | Значение по умолчанию | Обязательная |
| ---- | ----------- | ---- | ------- | -------- |
| zone | Instance availability zone | string | ru-central1-a | yes |
| platform_id | Yandex Compute Cloud platform variant | string | standard-v1 | yes |
| image_id | Yandex Cloud boot image ID | string | fd80qm01ah03dkqb14lc | yes |
| disk_size | Yandex Cloud instance bootable disk size | string | 30 | yes |
| preemptible | True for short-lived compute instances | boolean | false | yes |
| subnet_id | Network subnet ID | string | e9bglr3c0r3cklccie5m | yes |
| VM_name | Yandex Cloud Virtual Machine name | string | chapter5-lesson2-std-012-056 | yes |

## Выходные данные:

| Имя | Описание |
| ---- | ----------- |
| internal_ip_address | Внутренний IP адрес ВМ |
| external_ip_address | Внешний IP адрес ВМ |
