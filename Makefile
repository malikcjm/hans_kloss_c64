all:
	neshla hans_kloss_neshla.m -outraw -noheader -nopadding -listbanks -listsrc -nopadding -listvars
	exomizer sfx 0x8160 hans_kloss_neshla.prg -o gpg.prg

clean:
	rm hans_kloss_neshla.prg gpg.prg
	rm hans_kloss_neshla.vlst 
	rm hans_kloss_neshla.blst 
	rm hans_kloss_neshla.slst 
	rm log.txt

