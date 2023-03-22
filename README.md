
# Prácticos Haskell

Guia de ejercicios resueltos de Haskell, provenientes de la materia Introduccion a los Algoritmos de la carrera Ciencias de la Computación cursada en FAMAF.


## Run Locally

Clone the project

```bash
  git clone https://github.com/VillarPedr0/Haskell-Ejercicios
```

Go to the project directory

```bash
  cd Haskell-Ejercicios
```

Install dependencies in Windows

```bash
  Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { Invoke-Command -ScriptBlock ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -ArgumentList $true } catch { Write-Error $_ }
```

Start GHCI

```bash
  ghci
```

Run the programm

```bash
  :l practicos.hs
```


## Usage/Examples

```haskell
-- En consola ejecutar: 
esMultiplo <numero1> <numero2>

-- Esto ejecutará la siguiente función
esMultiplo :: Integral a => a -> a -> Bool
esMultiplo x y | y `mod` x == 0 = True
               | otherwise = False

```


## Authors

- [@VillarPedr0](https://github.com/VillarPedr0)

