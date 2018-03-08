_morse.m_
Pentru functia morse.m am declarat, ca si in cerinta, arborele cu elemente de tipul cell array.
Am modificat antetul functiei din cerinta si am schimbat numele variabilei returnate din m in mrs deoarece m este si denumirea nodului pentru caracterul 'M' si functia nu ar fi returnat ce trebuie.

_morse_decode.m_
Pentru functia morse_decode.m am generat arborele cu ajutorul functiei anterioare morse.
Se parcurge sirul caracter cu caracter. 
Daca se intalneste '.' atunci se verifica daca exista nodul corespunzator ramurei stangi. Daca exista atunci se inainteaza pe pozitia aceea. daca nu exista se returneaza un cell array gol.
Asemenea si daca se intalneste '-'.
La final se verifica daca in nodul unse s-a ajuns exista caracter. Daca exista se returneaza caracterul iar daca nu exista se afiseaza '*'.

_morse_encode.m_
Pentru functia morse_encode.m s-a generat arborele in interiorul unui cell array denumit M.
Am mai creat un cell array gol unde voi retine calea parcursa.
Dupa cat timp M nu este gol se memoreaza intr-o variabila a arborele ramas din M si intr-o variabila x sirul din R.
Mai departe din M o sa se elimine cate un nod dupa ce se memoreaza calea parcursa prin el.
In continuare daca nodul nu este gol se va salva caracterul din nod. Altfel, nodurile corespondente ramurilor pentru '.' si '-' se salveaza la inceputul cell array-ului.
Daca nu se gaseste caracterul cautat se intoarce '*'.

_multiple_decode.m_
Cu ajutorul functiei strsplit am despartit vectorul de caractere intr-un cell array ce contine cate o litera codata.
Pentru fiecare caracter am aplicat mai departe functia morse_decode si am concatenat in sirul x.

_multiple_encode.m_
Pentru fiecare caracter din sirul primit ca parametru am aplicat functia morse_encode.m definita anterior si am concatenat cu sirul x cu un whitespace inre ele.
Pentru concatenare am folosit functia strcat care a introdus sirul intr-un cell array.
