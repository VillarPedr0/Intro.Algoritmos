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
dispersion :: Ord a => a -> a -> a -> a
dispersion a b c = (max (max a b) c) - (min (min a b) c)
