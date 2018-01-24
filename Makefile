OBJS=$(addsuffix .pdf, $(basename $(wildcard *.ly)))


all: $(OBJS)

%.pdf: %.ly
	lilypond $<

clean:
	-rm $(OBJS)
