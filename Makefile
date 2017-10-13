render: render.c
	g++ -o render render.c -O2 -lGLU -lGL -lm -L/opt/local/lib -lglut -lOSMesa -lGLEW -lpng -lassimp -lIL -pthread -I/opt/local/include -L/usr/local/lib -I. -I./util -I./DevIL/include -I./glm -g -O2 -MT render.o -MD -MP 
clean:
	rm render
	rm *.d
