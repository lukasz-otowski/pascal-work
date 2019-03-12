program number_shot;
uses
    crt;
var user_shot, random_shot : integer;

begin
    randomize;
    
    {begin the game in "repeat" loop}
    repeat
        crt.clrscr;
        random_shot := random(10);
        writeln ('Write number from 0 to 10');
        readln(user_shot);

	{if user doesnt shoot right}
		if random_shot <> user_shot then
		begin
            writeln('Bad shot.'); 
            writeln('Target was: ',random_shot); 
            writeln('Push enter to try again.'); 
            readln();
        end
        else 
        if user_shot = random_shot then
        begin
            {when user shoot right, end the game}
        	writeln('Good shot!');
        	writeln('Push enter to end');
        	readln();
        end;

    {finish only when user shoot the same number as computer}
    until user_shot = random_shot;
end.