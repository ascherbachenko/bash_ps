## Что такое Shell Scripts

Нужно решить набор упражнений и для каждого из них создать отдельный shell скрипт и отправить PR на проверку:

**Упражнение 1: Имя пользователя**

Напиши скрипт оболочки, который выводит имя твоего пользователя.
Подсказка: используй команду echo с переменной среды USER.

---
**Упражнение 2: Текущая директория**

Напиши скрипт оболочки, который выводит твой текущий рабочий каталог.D
Подсказка: используй команду echo с переменной среды PWD.

---
**Упражнение 3: Домашний каталог**

Напиши скрипт оболочки, который выводит абсолютный путь к твоему домашнему каталогу.
Подсказка: используй команду echo с переменной среды HOME.

---

**Упражнение 4: Версия ОС**

Напиши скрипт оболочки, который выводит значение файла "/etc/os-release".
Подсказка: используй команду cat с именем файла.

---

**Упражнение 5: Uptime**
Напиши скрипт оболочки, который выводит результат команды uptime.
Подсказка: просто исполни uptime в скрипте.

---

**Упражнение 6: Полная информация**

Напиши скрипт оболочки, который выведет все пять вопросов выше, т. е. имя пользователя, текущий рабочий каталог, домашний каталог, данные ОС и время работы. Каждый ответ выведи в отдельной строке.

Формат должен быть таким:
```
Привет
Моё имя <???>
Сейчас я нахожусь в <???>
Мой домашний каталог <???>
Моя ОС
NAME="Ubuntu"
VERSION="20.04.5 LTS (Focal Fossa)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 20.04.5 LTS"
VERSION_ID="20.04"
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
VERSION_CODENAME=focal
UBUNTU_CODENAME=focal
Мое время работы
11:04:33 up 28 min,  0 users,  load average: 0.00, 0.00, 0.04
```