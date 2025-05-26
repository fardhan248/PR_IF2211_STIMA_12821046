# Travelling Salesperson Problem (TSP) with Dynamic Program

## Deskripsi
Program ini mencari jalur dengan cost/biaya terkecil dari sebuah graf dalam persoalan 
Travelling salesperson problem (TSP) menggunakan dynamic program.

## Kompilasi dan cara menjalankan program (Windows)
1. Buka command prompt dan pindah ke direktori project berada:
```bash
cd path\to\TSPSolver
```

2. Jalankan perintah berikut untuk menjalankan program:
```bash
ruby tsp.rb <file_test.txt> <start_node>
```

Keterangan:
- file_test.txt: berisi adjacency matrix antar node dalam graf, dengan format
```bash
c11 c12 c13 ... c1n
c21 c22 c23 ... c2n
 .   .           .
 .       .       .
 .           .   .
cn1 cn2 cn3 ... cnn
```

- start_node: titik awal node
- Contoh lengkap:
```bash
ruby tsp.rb test1.txt 1
```

# Author
12821046: Fardhan Indrayesa