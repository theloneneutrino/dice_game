% The game of dice is lol

diceInput = input(": ","s");
diceFilter = ('0' <= diceInput) & (diceInput <= '9');

for i = 1:size(diceInput,2) 
	diceNumChars(i) = ' ';
end

diceNumChars(diceFilter) = diceInput(diceFilter);

nums = str2num(diceNumChars);

