(define (abs x)
	(cond ((> x 0) x)
		((= x 0) 0)
		((< x 0) (-x))))


(define (abs x)
	(cond ((< x 0) (-x))
		(else x)))

(define (abs x)
	(if (< x 0)
		(- x)
		x))

(and ( > x 5) (< x 10))

(define ( >= x y) (or (> x y) (= x y)))

(define ( >= x y) (not (< x y)))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< (* a b)))
    b
    a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))


x
(/ (+ 5 6(- 2 (- 3 (+ 6 (/ 4 5)))) (* 3 (- 6 2)(- 2 7))))

(define (square x)
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x) (average guess (/ x guess)))
  (define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))
  (sqrt-iter 1.0 x))


(define (square x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess) (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

(/* a linear recursive process for computing 6! */)
(define (factorial n)
 (if (= n 1)
     1
     (* n (factorial (-  n 1)))))

(/* a linear iterative process for computing 6! */)
(define (factorial n)
  (fact-iter 1 1 n))
(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product)
                 (+ counter 1)
                 max-count)))


(define (+ a b)
  (if (= a 0) b (inc (+ (dec a) b))))

(define (inc n)
  (+ n 1))

(define (dec n)
  (- n 1))
