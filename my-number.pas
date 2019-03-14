program my_number;

var your_number, my_number, our_number, my_number_check : integer;

begin
    {define numbers}
	randomize;
    writeln('Choose your number');
    readln(your_number);
    my_number := random(1000);
    our_number := (your_number * 3) + my_number;
	
	{play game}
    writeln('I have multiple your number by 3 and add my number,');
    writeln('and now we have our number what is:');
    writeln(our_number);
    writeln('So what''s my number?');
    readln(my_number_check);
    
	{show result}
	if my_number_check = my_number then writeln('Yes! Good answer.')
    else writeln('Bad answer! :(');
end.