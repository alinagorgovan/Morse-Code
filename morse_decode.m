function x = morse_decode(sir)
  
  %generare arbore de valori
  mrs = morse();

    for i = 1:length(sir)   %se parcurge sirul primit ca argument
      if sir(i) == '.'      %daca se intalneste caracterul '.' 
        if isempty(mrs{2}) == 1     %daca al doilea element din cell array este gol, deci nu exista niciun punct al lui mrs la stanga
          mrs = {};                 % arborele devine gol
        elseif isempty(mrs{2}) == 0     %altfel daca exista un element la stanga arborele ia valoarea acelui cell array 
          mrs = mrs{2};
        endif
      elseif sir(i) == '-'    %daca se intalneste caracterul '-'
        if isempty(mrs{3}) == 1     %daca al treilea element din cell array nu exista, deci nu exista niciun nod al lui mrs la dreapta
          mrs = {};                 %arborele devine gol
        elseif isempty(mrs{3}) == 0       %altfel daca exista un element la dreapta arborele ia valoarea acelui cell array 
          mrs = mrs{3};
        endif
      endif
    endfor
  
  if isempty(mrs) == 1        %daca cell array-ul este gol atunci inseamna ca nu s-a gasit
    disp("*"); break;         %afiseaza '*' si se opreste
  elseif isempty(mrs) == 0    %altfel daca s-a gasit cell array-ul specific sirului intrdus
    x = mrs{1};               %x ia valoarea caracterului din cell array-ul respectiv
  endif
endfunction