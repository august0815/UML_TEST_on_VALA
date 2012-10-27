OS = LINUX
PKGS = \
    
LIBS = \
	
FLAGS = -g 
FILES = \
    main.vala \
    Rostwurstbude.vala \
    Rostwurst.vala \
    Restaurant.vala \
    Pizzeria.vala \
    Pizza.vala \
    Mahlzeit.vala


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

