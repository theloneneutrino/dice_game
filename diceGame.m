% The game of dice is lol

coinVals = ["tails" "heads"];

diceInput = input(": ","s");
diceFilter = ('0' <= diceInput) & (diceInput <= '9');

for i = 1:size(diceInput,2) 
	diceNumChars(i) = ' ';
end

diceNumChars(diceFilter) = diceInput(diceFilter);

nums = str2num(diceNumChars);

oddidx = @(v) v(1:2:end);
evnidx = @(v) v(2:2:end);

diceAmounts = oddidx(nums);
diceConfigs = evnidx(nums);

rands = [];
diceConfigurations = [];
for i = 1:size(diceAmounts,2)
	randum = randi(diceConfigs(i),1,diceAmounts(i));
	rands = [rands, randum];
end

index = 1;
for i = 1:size(diceAmounts,2)
	for j = index:index + diceAmounts(i) - 1
		if diceConfigs(i) == 2
			fprintf("coin toss: %s\n",coinVals(rands(j)));
		else
			fprintf("%g sided die: %g\n",diceConfigs(i),rands(j));
		end
	end
	fprintf("\n");
	index = index + diceAmounts(i);
end
