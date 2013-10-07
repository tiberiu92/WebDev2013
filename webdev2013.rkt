; Se dau a) un numar intreg i si b) o colectie arbitrar de lunga 
; (f1, f2, ..., fn) de functii care accepta ca argument un numar intreg 
; si intorc tot un numar intreg. Sa se scrie un program care intoarce 
; o colectie de numere intregi reprezentand rezultatele aplicarii 
; acelor functii asupra valorii i. 

; Exemplu de input: 4 si [add_one, multiply_by_five] => output-ul va fi [5, 20]. 
; Alt exemplu de input: 7 si [subtract_three, add_two, multiply_by_three] => output-ul va fi [4, 9, 21].


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define multiply_by_five
  (lambda (x)
    (* x 5)))

(define add_two
  (lambda (x)
    (+ x 2)))

(define substract_one
  (lambda (x)
    (- x 1)))

(define substract_three
  (lambda (x)
    (- x 3)))

(define fList_1 (list multiply_by_five add_two))
(define fList_2 (list add_two multiply_by_five substract_one substract_three))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define main_function
  (lambda (x listf)
    (aux_function x listf '())))

(define aux_function
  (lambda (x listf result)
    (if(null? listf) (reverse result)
       (aux_function x (cdr listf) (cons ((car listf) x) result)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(main_function 3 fList_1)
(main_function 3 fList_2)

