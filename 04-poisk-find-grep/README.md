# ДЗ №4 — Поиск файлов: `cd`, `ls`, `cat`, `grep`, `find`

> Дисциплина: **Операционные системы и среды**

## 📌 Суть задания

Научиться ориентироваться в файловой системе Linux и искать файлы по имени, типу, владельцу и содержимому.

## 🛠 Что было сделано

### Часть 1

| Задача | Команда |
|---|---|
| Все `.log`-файлы в `/var/log` | `cd /var/log && ls *.log` |
| Файлы `/usr/bin`, отсортированные по размеру | `cd /usr/bin && ls -laS` |
| Содержимое `/etc/apt/sources.list` | `cat /etc/apt/sources.list` |
| Строки со словом root в `/etc/passwd` | `grep "root" /etc/passwd` |
| `/etc/services` без комментариев | `grep -v '^#' /etc/services \| grep -v '^$'` |

### Часть 2 — `find`

| Задача | Команда |
|---|---|
| Файлы и каталоги `*.conf` / `*.conf.d` в `/etc` | `find /etc -name "*.conf" -o -name "*.conf.d"` |
| Количество ссылок в корне `/` | `find / -maxdepth 1 -type l \| wc -l` |
| Каталоги `/usr/share` глубиной до 2 уровней | `find /usr/share -maxdepth 2 -type d` |
| Файлы в `/var`, принадлежащие root | `find /var -type f -user root` |
| Файлы `/etc` (до 2 уровней), где упоминается root | `find /etc -maxdepth 2 -type f -exec grep -l "root" {} +` |

## 🎓 Что изучили

- Структуру важных системных каталогов: `/var/log`, `/usr/bin`, `/etc`, `/usr/share`.
- `grep -v` и регулярные выражения (`^#`, `^$`) для отсечения комментариев и пустых строк.
- Возможности `find`: поиск по имени (`-name`), типу (`-type f/d/l`), владельцу (`-user`), глубине (`-maxdepth`), логическое «ИЛИ» (`-o`).
- Связку `find ... -exec`, которая выполняет команду над каждым найденным файлом.

## 📁 Файлы

| Файл | Что внутри |
|---|---|
| [`zadanie.pdf`](./zadanie.pdf) | Методичка с заданием |
| [`otchet.docx`](./otchet.docx) | Отчёт со скриншотами и выводом |

---

<sub><sup>prod by V@D1M41K_BuRM1S</sup></sub>
