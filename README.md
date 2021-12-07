# lab4PoC
# Polecenie 2.

do uruchomienia obrazu i nazwaznia go: docker build . -t lab4docker.

# Polecenie 3.

stworzenie lokalnego wolumenu  ```docker volume create Vol```.

# Polecenie 4.
Uruchomienie kontenera o nazwie alpine4 z obrazu lab4docker wolumenie Vol i ograniczonej pamięci 512 MB
```docker run -it --name alpine4 --memory=512m --mount source=Vol,target=/logs lab4docker```.

# Polecenie 5.

a. sprawdzenie czy skrypt działa poprawnie i umieszcza dane w pilku info.log na lokalnym wolumenie. Najpierw wykonujemy ```docker run -it --name test --mount source=Vol,target=/logs alpine```, a następnie wywołujemy na nim polecenia ```ls -al logs```  oraz ```cat logs/info.log```.

b. sprawdzenie czy kontener alpine4 ma ograniczoną pamięć ```docker stats --no-stream --format {{.MemUsage}} alpine4```. 
