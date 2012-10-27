OS = LINUX
PKGS = \
    
LIBS = \
	
FLAGS = -g 
FILES = \
    main.vala \
    CSVKursdatenBauer.vala \
    KursdatenBauer.vala \
    KursdatenLeser.vala \
    XMLKursdatenBauer.vala \
    

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

