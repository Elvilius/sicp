;Метод Ньютона для кубических корней основан на том, что если y является приближением к
;кубическому корню из x, то мы можем получить лучшее приближение по формуле


(define (square x) (* x x))

(define (cbrt-iter guess x)
  (if (eng? guess x)
      guess
    (cbrt-iter (improve guess x) x)))

(define (improve guess x)
(aveger (/ x (square guess)) (* 2 guess)))

(define (aveger x y )
  (/ ( + x y )3))

(define (cube x)(* x x x))

(define (eng? guess x)
(< (abs(-(cube guess) x)) 0.00001))

(define (cbrt x)
  (cbrt-iter 1.0 x))



