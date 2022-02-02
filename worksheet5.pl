valid_passport('y').
health_declaration('y').
visa('y').
landing_permit('y').

start:-
	write('Welcome to Sri Lanka Travel Advisor'),
	nl,
	write('Prompts will be asked and you may answer "y." or "n."'),
	nl,
	write('Start? y./n.'),
	nl,
	read(X),
	write('\33\[2J'), % clear screen
	% add ng if yes, tuloy, if no, cancel
	ask_passport,
	write('\33\[2J'),
	ask_health_declaration,
	write('\33\[2J'),
	ask_visa.
	
has_passport:-
	valid_passport('y').
	
has_health_declaration:-
	health_declaration('y').

has_visa:-
	visa('y').

allowed(X):-
	valid_passport(X),
	visa(X);
	landing_permit(X).
	
ask_passport:-
	write('Do you have a valid passport? y/n'),
	nl,
	read(X),
	valid_passport(X).

ask_health_declaration:-
	write('Do you have a health declaration? y/n'),
	nl,
	read(X),
	health_declaration(X).

ask_visa:-
	write('Do you have a visa? y/n'),
	nl,
	read(X),
	visa(X).
	
ask_landing_permit:-
	write('Do you have a landing permit? y/n'),
	nl,
	read(X),
	landing_permit(X).