;Функция f определяется правилом: f(n) = n, если n < 3, и f(n) = f(n − 1) + f(n − 2) + f(n − 3),
;если n ≥ 3. Напишите процедуру, вычисляющую f с помощью рекурсивного процесса. Напишите
;процедуру, вычисляющую f с помощью итеративного процесса.


;Recursive process

(define (f n) 
 (if (< n 3) 
  n   
 (+ (f (- n 1)) 
    (f (- n 2)) 
    (f (- n 3)))))

;Iterative process

(define (f n)   
  (define (iter-f a b c count) 
    (if (= count 0) 
        c
     (iter-f (+ a b c) a b (- count 1))))  

 (iter-f 2 1 0 n))
