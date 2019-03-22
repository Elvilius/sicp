;Заметим, что наша модель вычислений разрешает существование комбинаций, операторы которых — составные выражения.
;С помощью этого наблюдения опишите, как работает следующая процедура:


(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))

;Solution

((if (> 2 0) + -) 1 2) 
(+ 1 2)
3
(a-plus-abs-b 1 2)


((if (> -2 0) + -) 1 -2) 
(- 1 -2)
3
(a-plus-abs-b 1 2)
