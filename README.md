
![Logo](https://www.famaf.unc.edu.ar/documents/3253/Logo-FAMAF_UNC-color-2.jpg)

# Prácticos Haskell

Guia de ejercicios resueltos de Haskell, provenientes de la materia Introduccion a los Algoritmos de la carrera Ciencias de la Computación cursada en FAMAF.


## Ejecución de forma local

Clonar el repositorio

```bash
  git clone https://github.com/VillarPedr0/Haskell-Ejercicios
```

Ir a la carpeta raíz

```bash
  cd Haskell-Ejercicios
```

Instalación de dependencias en Windows

```bash
  Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { Invoke-Command -ScriptBlock ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -ArgumentList $true } catch { Write-Error $_ }
```

Llamar a GHCI

```bash
  ghci
```

Correr el programa

```bash
  :l practicos.hs
```


## Ejemplos de Uso

```haskell
-- En consola ejecutar: 
esMultiplo <numero1> <numero2>

-- Esto ejecutará la siguiente función
esMultiplo :: Integral a => a -> a -> Bool
esMultiplo x y | y `mod` x == 0 = True
               | otherwise = False

```


## Autor

- [@VillarPedr0](https://github.com/VillarPedr0)

