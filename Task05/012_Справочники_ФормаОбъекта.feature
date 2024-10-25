﻿#language: ru

@tree
@SmokeTest

Функциональность: проверка открытия форм Справочники - ФормаОбъекта

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И Я закрыл все окна клиентского приложения

Сценарий: Открытие формы справочника "Валюты" (Валюты)

	Дано Я открываю основную форму справочника "Валюты"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника Валюты"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника Валюты"
	И Я закрываю текущее окно

Сценарий: Открытие формы справочника "Встречи" (Встречи)

	Дано Я открываю основную форму справочника "Встречи"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника Встречи"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника Встречи"
	И Я закрываю текущее окно

Сценарий: Открытие формы справочника "Входящие письма" (ВходящиеПисьма)

	Дано Я открываю основную форму справочника "ВходящиеПисьма"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника ВходящиеПисьма"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника ВходящиеПисьма"
	И Я закрываю текущее окно

Сценарий: Открытие формы справочника "Исходящие письма" (ИсходящиеПисьма)

	Дано Я открываю основную форму справочника "ИсходящиеПисьма"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника ИсходящиеПисьма"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника ИсходящиеПисьма"
	И Я закрываю текущее окно

Сценарий: Открытие формы справочника "Контрагенты" (Контрагенты)

	Дано Я открываю основную форму справочника "Контрагенты"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника Контрагенты"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника Контрагенты"
	И Я закрываю текущее окно

Сценарий: Открытие формы справочника "Настройки торгового оборудования" (НастройкиТорговогоОборудования)

	Дано Я открываю основную форму справочника "НастройкиТорговогоОборудования"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника НастройкиТорговогоОборудования"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника НастройкиТорговогоОборудования"
	И Я закрываю текущее окно

Сценарий: Открытие формы справочника "Организации" (Организации)

	Дано Я открываю основную форму справочника "Организации"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника Организации"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника Организации"
	И Я закрываю текущее окно

Сценарий: Открытие формы справочника "Пользователи" (Пользователи)

	Дано Я открываю основную форму справочника "Пользователи"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника Пользователи"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника Пользователи"
	И Я закрываю текущее окно

Сценарий: Открытие формы справочника "Товары" (Товары)

	Дано Я открываю основную форму справочника "Товары"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника Товары"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника Товары"
	И Я закрываю текущее окно

Сценарий: Открытие формы справочника "Хранимые файлы" (ХранимыеФайлы)

	Дано Я открываю основную форму справочника "ХранимыеФайлы"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника ХранимыеФайлы"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму справочника ХранимыеФайлы"
	И Я закрываю текущее окно
