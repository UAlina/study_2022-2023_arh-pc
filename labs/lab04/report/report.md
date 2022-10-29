---
## Front matter
title: "Отчёт по лабораторной работе №4"
subtitle: "Простейший вариант"
author: "Уткина Алина Дмитриевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью данной работы является освоение процедуры оформления отчетов с по-мощью легковесного языка разметки Markdown.

# Выполнение лабораторной работы

Открываем терминал.
Переходим в каталог курса сформатированный при выполнении лабора-торной работы №3 и обновляем локальный репозиторий  (рис. [-@fig:001])

![Обновление локального репозитория](image/1.jpg){ #fig:001 width=70% }

Переходим в каталог lab04/report командой cd. Проводим компиляцию шаблона (при создании файла .pdf выдает ошибку) (рис. [-@fig:002])

![Компиляция шаблона](image/2.jpg){ #fig:002 width=70% }

При удалении полученных файлов происходит ошибка из-за отсутствия фай-ла .pdf (рис. [-@fig:003])

![Удаление полученных файлов](image/3.jpg){ #fig:003 width=70% }

Открываем файл report.md с помощью команды gedit (рис. [-@fig:004])

![Открытый через gedit файл](image/4.jpg){ #fig:004 width=70% }

Заполняем отчет и компилируем его с использованием Makefile

# Выводы

Здесь кратко описываются итоги проделанной работы.

# Список литературы{.unnumbered}

::: {#refs}
:::
