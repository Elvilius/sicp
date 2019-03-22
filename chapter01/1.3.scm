;Определите процедуру, которая принимает в качестве аргументов три числа и возвращает сумму
;квадратов двух больших из них. 


(define (square x) (* x x))

(define (sum-of-square x y) (+ (square x) (square y)))

(define (sum-of-biggest-squares a b c) 
         (cond ((and (> a c) (> b c)) (sum-of-square a b))
               ((and (> c a) (> b a)) (sum-of-square c b))
               ((and (> a b) (> c b)) (sum-of-square a c))))


 

