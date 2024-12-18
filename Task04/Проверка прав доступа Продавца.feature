﻿#language: ru

@tree

Функционал: проверка прав доступа Продавца

Как Тестировщик я хочу
проверить создание документа Продажи и проверить видимость документа Заказ
чтобы проверить права доступа Продавца

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка возможности создания документа Продажа
    Дано Я открываю навигационную ссылку "e1cib/list/Документ.РасходТовара"
    И я нажимаю на кнопку с именем 'ФормаСоздать'    
    И из выпадающего списка с именем 'Организация' я выбираю точное значение 'ООО "1000 мелочей"'
    И из выпадающего списка с именем 'Покупатель' я выбираю точное значение "Попов Б.В. ИЧП "
    И из выпадающего списка с именем 'Склад' я выбираю точное значение "Большой"   
    И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
    И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
    Тогда открылось окно "Товары"
    И в таблице 'Список' я перехожу к строке:
        | "Код"       | "Наименование" |
        | "000000011" | "Продукты"     |
    И в таблице 'Список' я выбираю текущую строку
    И в таблице 'Список' я перехожу к строке:
        | "Артикул" | "Код"       | "Наименование" |
        | "H987"    | "000000029" | "Хлеб"         |
    И в таблице 'Список' я выбираю текущую строку
    И я нажимаю на кнопку с именем 'ФормаЗаписать'
    Тогда открылось окно "Продажа * от *"
    И поле "Дата" заполнено
    И я запоминаю значение поля "Номер" как "$НомерДокумента$"
    И я нажимаю на кнопку с именем 'ФормаПровестиИзакрыть'
    И не появилось окно предупреждения системы
    И таблица "Список" содержит строки:
        | 'Номер'            |
        | '$НомерДокумента$' |
    И я закрываю текущее окно
//Документ Продажи создался

Сценарий: проверка видимости документа Заказ
    Когда В панели разделов я выбираю "Продажи"
    Если элемент "Заказы" не присутствует на форме Тогда
        И я выполняю код встроенного языка
            """bsl
                Сообщить("Элемент Заказы отсутствует на меню Продавца")
            """
        И В командном интерфейсе я выбираю "Продажи" "Заказы"
        Тогда открылось окно "Заказы товаров"
        	
Сценарий: проверка видимости заказов в списке	
        Когда В панели разделов я выбираю "Продажи"
        И В командном интерфейсе я выбираю "Продажи" "Заказы"         
        Если в таблице "Список" количество строк "меньше или равно" 0 Тогда
            И я вызываю исключение с текстом сообщения
            И я выполняю код встроенного языка
            """bsl
                Сообщить("Заказы в списке не видны")
            """
Сценарий: проверка создания заказа
	    Когда В панели разделов я выбираю "Продажи"
        И В командном интерфейсе я выбираю "Продажи" "Заказы"
        Если элемент "ФормаСоздать" присутствует на форме Тогда
            И я вызываю исключение с текстом сообщения
            И я выполняю код встроенного языка
            """bsl
                Сообщить("Продавец может создать Заказ")
            """	

Сценарий: Проверка возможности проведения заказа
	    Когда В панели разделов я выбираю "Продажи"
        И В командном интерфейсе я выбираю "Продажи" "Заказы"
        Когда открылось окно "Заказы товаров"                   
        И в таблице 'Список' я выбираю текущую строку
        Если элемент "ФормаПровести" не присутствует на форме Тогда
		    И я закрываю текущее окно
        Иначе
            И я вызываю исключение с текстом сообщения
            И я выполняю код встроенного языка
            """bsl
                Сообщить("Продавец может провести заказ")
            """		
        И я закрываю все окна клиентского приложения
            