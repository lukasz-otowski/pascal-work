program template;
uses
    crt;
var
	choose : char;
	first, second, target_result, user_result : integer;
begin
    {ASSIGN NUMBER START}
		randomize;
		first := random(100);
		second := random(100);
    {ASSIGN NUMBER END}
    {USER CHOOSE START}
		writeln('Chose operation and push enter');
		writeln('addition a');
		writeln('substraction s');
		writeln('multiplication m');
		writeln('division d');
		readln(choose);
    {USER CHOOSE END}
    crt.clrscr; {clear screen}
    {OPERATION START}
		case choose of
			'a':
				begin
					writeln(first, ' + ', second, ' is = ');
					target_result := first + second;
					readln(user_result);
				end;
			's':
				begin
					writeln(first, ' - ', second, ' is = ');
					target_result := first - second;
					readln(user_result);
				end;
			'm':
				begin
					writeln(first, ' · ', second, ' is = ');
					target_result := first * second;
					readln(user_result);
				end;
			'd':
				begin
					if first > second then 
						begin
							writeln(first, ' : ', second, ' is = ');
							writeln('write highest contain number');
							target_result := first div second;
						end
					else
						begin
							writeln(second, ' : ', first, ' is = ');
							writeln('write highest contain number');
							target_result := second div first;
						end;
					readln(user_result);
				end
			else writeln('Sorry but I don''t understand');
		end;
    {OPERATION END}
	{FINALLY OPERATION START}
		if target_result = user_result then writeln('good result, push ENTER to exit')
		else writeln('bad result, push ENTER to exit');
		readln;
	{FINALLY OPERATION END}
end.