;; IUPPad is a simple text editor based on iup-scintilla

(require-library iup)
(import (prefix iup iup:) (prefix iup-dialogs iupd:) iup-scintilla)

(define (file-open)
  (print "File > Open"))

(define (file-save)
  (print "File > Save"))

(define (file-save-as)
  (print "File > Save As"))

(define (file-quit)
  (print "File > Quit"))

(define (undo)
  (print "Edit > Undo"))

(define (redo)
  (print "Edit > Redo"))

(define (copy)
  (print "Edit > Copy"))

(define (cut)
  (print "Edit > Cut"))

(define (paste)
  (print "Edit > Paste"))


(define menu/file/new (iup:menu-item "&New")) 

(define menu/file/open (iup:menu-item "&Open")) 

(define menu/file/save (iup:menu-item "&Save")) 

(define menu/file/save-as (iup:menu-item "Save &As")) 

(define menu/file/quit (iup:menu-item "&Quit")) 

(define menu/edit/undo (iup:menu-item "&Undo"))

(define menu/edit/redo (iup:menu-item "&Redo"))

(define menu/edit/copy (iup:menu-item "&Copy"))

(define menu/edit/cut (iup:menu-item "C&ut"))

(define menu/edit/paste (iup:menu-item "&Paste"))

(define menu/file
  (iup:menu menu/file/new
            (iup:menu-separator)
            menu/file/open
            menu/file/save
            menu/file/save-as
            (iup:menu-separator)
            menu/file/quit))

(define menu/edit
  (iup:menu menu/edit/undo
            menu/edit/redo
            (iup:menu-separator)
            menu/edit/copy
            menu/edit/cut
            menu/edit/paste))

(define menu
  (iup:menu (iup:menu-item "&File" menu/file)
            (iup:menu-item "&Edit" menu/edit)))


(define scint (scintilla expand: "YES" margintype1: "NUMBER" wordwrap: "WORD"))

(define dialog
  (iup:dialog
    (iup:vbox
      (iup:fill)
      (iup:hbox scint)
      (iup:fill))
    title: "IUPad"
    menu: menu))

(iup:show dialog)
(iup:main-loop)
(exit 0)
