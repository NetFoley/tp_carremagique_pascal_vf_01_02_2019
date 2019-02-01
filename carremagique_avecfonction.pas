program CarreMagique;

uses crt;
//BUT: G‚n‚rer et afficher un carre magique
//ENTREE : /
//SORTIE : Le carr‚ magique

CONST
tTableau = 7;

VAR carre : array [1..tTableau, 1..tTableau] of integer;
i , j, comp : integer;

procedure ZeroTableau();

var i, j : integer;

begin

FOR i := 1 to tTableau do
	begin
		FOR j := 1 to tTableau do
		begin
			carre[i][j] := 0;
		end;
	end;
end;

procedure RemplirTableau();

var i,j,comp : integer;

begin
i := tTableau div 2 ;
	j := tTableau div 2 + 1;
	comp := 1;

	while comp <= tTableau * tTableau do
		begin
		if carre[i][j] = 0 then
			begin
			carre[i][j] := comp;
			comp := comp + 1;
			writeln('case ', i, '.', j, ' en ', comp);
			if (i > 1) then
				begin
				i := i - 1;
                end
			else
                begin
					i := tTableau;
				end;
			if j < tTableau then
				begin
				j := j + 1;
				end
			else
				begin
				j:= 1;
				end;
			end
			else
				begin
				if (i > 1) then
					begin
					i := i - 1;
					end
				else
					begin
					i := tTableau;
					end;
				if ( j > 1 ) then
					begin
					j := j - 1;
					end
				else
					begin
					j := tTableau;
					end;
				end;
			end;
	writeln;
	
end;

procedure afficherTableau();

var i,j : integer;

begin

FOR i := 1 to tTableau do
		begin
		FOR j := 1 to tTableau do
			begin
				write(carre[i][j], ' ');
				if carre[i][j] < 10 then
					begin
					write(' ');
					end;
			end;
		writeln;
		end;
end;



BEGIN
        ClrScr;
		
        ZeroTableau;
		
		RemplirTableau;

		afficherTableau;
	
	
	readln;

END.

