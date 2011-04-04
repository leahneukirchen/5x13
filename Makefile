all: fonts.dir

fonts.dir: 5x13.pcf
	mkfontdir

5x13.pcf: 5x13.bdf
	bdftopcf -o $@ $<

clean:
	rm -f 5x13.pcf fonts.dir
