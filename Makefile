PREFIX = /usr/local

lwrender: render.c
	g++ -o lwrender render.c -O2 -lGLU -lGL -lm -L/opt/local/lib -lglut -lOSMesa -lGLEW -lpng -lassimp -lIL -pthread -I/opt/local/include -L/usr/local/lib -I. -I./util -I./DevIL/include -I./glm -g -O2 -MT render.o -MD -MP

.PHONY: install
install: lwrender
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp $< $(DESTDIR)$(PREFIX)/bin/lwrender

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/lwrender

.PHONY: clean
clean:
	rm -f lwrender
	rm -f *.d
