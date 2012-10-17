OS = LINUX
PKGS = \
    
LIBS = \
	
FLAGS = -g 
FILES = \
    main.vala \
    libgame/Game.vala \
    libbot/Bot.vala \
    libstrategy/AcceptStrategy.vala \
    libstrategy/DeclineStrategy.vala \
    libstrategy/VariableStrategy.vala \
    libstrategy/IStrategy.vala


all: $(FILES)
	valac $(FLAGS) $(PKGS) $(LIBS) -o main $(FILES)
	./main 

clean:
	find . -type f -name "*.so" -exec rm -f {} \;
	find . -type f -name "*.a" -exec rm -f {} \;
	find . -type f -name "*.o" -exec rm -f {} \;
	find . -type f -name "*.h" -exec rm -f {} \;
	find . -type f -name "*.c" -exec rm -f {} \;
	rm main

