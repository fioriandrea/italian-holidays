;;; italian-holidays.el --- Italian holidays for Emacs calendar -*- lexical-binding: t; -*-

;; Copyright (C) Andrea Fiori

;; Author: Andrea Fiori <andrea.fiori.1998@gmail.com>
;; URL: https://github.com/fioriandrea/italian-holidays
;; Package-Version: 1.0.0
;; Keywords: calendar

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Set italian holidays as user-defined holidays:
;;
;; (setq holiday-other-holidays holiday-italian-holidays)
;;
;; Or replace all holidays with italian holidays:
;;
;; (setq calendar-holidays holiday-italian-holidays)
;;
;; `holiday-italian-holidays-and-solemnities' contains both holidays and civil solemnities.

;;; Credits:
;;
;; Code inspired by https://github.com/abo-abo/netherlands-holidays

;;; Code:

(eval-when-compile
  (require 'calendar)
  (require 'holidays))

;; Dates taken from https://en.wikipedia.org/wiki/Public_holidays_in_Italy

;;;###autoload
(defvar holiday-italian-civil-solemnities
  '((holiday-fixed 2 10 "Giorno del ricordo")
    (holiday-fixed 2 11 "Patti lateranensi")
    (holiday-fixed 9 9 "Giornata della memoria dei marinai scomparsi in mare")
    (holiday-fixed 9 28 "Quattro giornate di Napoli")
    (holiday-fixed 11 4 "Giorno dell'Unità Nazionale e Festa delle Forze Armate")
    (holiday-fixed 11 12 "Giornata del ricordo dei Caduti militari e civili nelle missioni internazionali per la pace"))
  "Civil solemnities in Italy.")

;;;###autoload
(defvar holiday-italian-holidays
  '((holiday-fixed 1 1 "Capodanno")
    (holiday-fixed 1 6 "Epifania")
    (holiday-easter-etc 0 "Pasqua")
    (holiday-easter-etc 1 "Pasquetta")
    (holiday-easter-etc 1 "Lunedì dell'angelo")
    (holiday-fixed 4 25 "Festa della Liberazione")
    (holiday-fixed 5 1 "Festa dei Lavoratori")
    (holiday-fixed 6 2 "Festa della Repubblica")
    (holiday-fixed 8 15 "Assunzione di Maria")
    (holiday-fixed 8 15 "Ferragosto")
    (holiday-fixed 10 4 "San Francesco d'Assisi")
    (holiday-fixed 11 1 "Ognissanti")
    (holiday-fixed 12 8 "Immacolata Concezione")
    (holiday-fixed 12 25 "Natale")
    (holiday-fixed 12 26 "Santo Stefano"))
  "Holidays in Italy.")

;;;###autoload
(defvar holiday-italian-holidays-and-solemnities
  (append holiday-italian-holidays
          holiday-italian-civil-solemnities)
  "Italian holidays and civil solemnities.")

(provide 'italian-holidays)

;;; italian-holidays.el ends here
