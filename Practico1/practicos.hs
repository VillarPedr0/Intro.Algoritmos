-- ACTIVIDAD 13
-- ━━━━━━━━━━━━ ◦ ❖ ◦ ━━━━━━━━━━━━
-- a) f.x .= 5 ∗ x
f :: Int -> Int
f x = 5 * x

-- b) duplica.a.= a + a
duplica :: Int -> Int
duplica x = x + x

-- c) por2.y.= 2 ∗ y
por2 :: Int -> Int
por2 y = 2 * y

-- d) multiplicar.zz.tt .= zz ∗ tt
multiplicar :: Int -> Int -> Int
multiplicar zz tt = zz * tt

-- 14. Escribí una funci´on que dados dos valores, calcule su promedio.
-- ━━━━━━━━━━━━ ◦ ❖ ◦ ━━━━━━━━━━━━
prom :: Fractional a => a -> a -> a
prom x y = (x + y)/2

-- 19. Definir la función esMultiploDe : Num→ Num→ Bool, que devuelve True si el segundo es múltiplo del
-- primero. Ejemplo: esMultiploDe 3 12 = True
-- ━━━━━━━━━━━━ ◦ ❖ ◦ ━━━━━━━━━━━━
esMultiplo :: Integral a => a -> a -> Bool
esMultiplo x y | y `mod` x == 0 = True
               | otherwise = False

-- 20. Definir la funcióon esBisiesto: Num→ Bool, que indica si un año es bisiesto. Un año es bisiesto si es divisible
-- por 400 o es divisible por 4 pero no es divisible por 100.
-- ━━━━━━━━━━━━ ◦ ❖ ◦ ━━━━━━━━━━━━
esBisiesto :: Num a => a -> Bool
esBisiesto x | x `mod` 400.0 == 0 = True
             | otherwise = False

-- 21. Definir la funcion dispersion : Num→ Num→ Num→ Num, que toma los tres valores y devuelve la
-- diferencia entre el mas alto y el mas bajo. Ayuda: extender max y min a tres argumentos, usando las
-- versiones de dos elementos. De esa forma se puede definir dispersion sin escribir ninguna guarda (las
-- guardas estan en max y min, que estamos usando).
dispersion :: Integral a => a -> a -> a -> a
dispersion a b c = (max (max a b) c) - (min (min a b) c)

-- 22. Definir la función celsiusToFahr : Num→ Num, pasa una temperatura en grados Celsius a grados Fahrenheit. 
-- Para realizar la conversi´on hay que multiplicar por 1.8 y sumar 32.
celsiusToFahr :: Floating a => a -> a
celsiusToFahr a = (a*1.8) + 32

-- 23. Definir la función fahrToCelsius : Num→ Num, la inversa de la anterior. Para realizar la conversión hay
-- que primero restar 32 y despu´es dividir por 1.8.
fahrToCelsius :: Floating a => a -> a
fahrToCelsius a = (a-32) / 1.8

-- 24. Definir la función haceFrioF : Num→ Bool, indica si una temperatura expresada en grados Fahrenheit es
-- fría. Decimos que hace frío si la temperatura es menor a 8 grados Celsius.
haceFrioF :: Float -> Bool
haceFrioF a | ( (a-32) / 1.8 ) < 8 = True
            | otherwise = False

-- 25. Definir las funciones que describimos a continuación, luego implementalas en haskell .
-- ━━━━━━━━━━━━ ◦ ❖ ◦ ━━━━━━━━━━━━
-- a) segundo3 : (Num, Num, Num) → Num, que dada una terna de enteros devuelve su segundo elemento.
segundo :: (Int, Int, Int) -> Int
segundo (a,b,c) = b

-- b) ordena : (Num, Num) → (Num, Num), que dados dos enteros los ordena de menor a mayor.
ordena :: (Int, Int) -> (Int, Int)
ordena (a,b) = (min x y, max x y)

-- c) rangoPrecioParametrizado : Num → (Num, Num) → String que dado un numero x, que representa
-- el precio de un producto, y un par (menor, mayor) que represente el rango de precios que uno espera
-- encontrar, retorne “muy barato” si x esta por debajo del rango, “demasiado caro” si esa por arriba
-- del rango, “hay que verlo bien” si el precio esta en el rango, y “esto no puede ser!” si x es negativo.
rangoPrecioParametrizado :: Int -> (Int, Int) -> String
rangoPrecioParametrizado x (menor, mayor)
    | x < menor = "muy barato"
    | x > mayor = "demasiado caro"
    | x < 0 = "esto no puede ser!"
    | otherwise = "hay que verlo bien"

-- d) mayor3 : (Num, Num, Num) → (Bool, Bool, Bool), que dada una una terna de enteros devuelve una
-- terna de valores booleanos que indica si cada uno de los enteros es mayor que 3.
-- Por ejemplo: mayor3.(1, 4, 3) = (False, True, False) y mayor3.(5, 1984, 6) = (True, True, True)
mayor3 :: (Int, Int, Int) -> (Bool, Bool, Bool)
mayor3 (a,b,c) = ((a>3), (b>3), (c>3))

-- e) todosIguales : (Num, Num, Num) → Bool que dada una terna de enteros devuelva True si todos sus
-- elementos son iguales y False en caso contrario.
-- Por ejemplo: todosIguales.(1, 4, 3) = False y todosIguales.(1, 1, 1) = True
todosIguales :: (Int, Int, Int) -> Bool
todosIguales (a,b,c)
    | (a == b) && (b == c) = True
    | otherwise = False