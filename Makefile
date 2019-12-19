all:
	nasm -f macho64 assembly.asm && ld -macosx_version_min 10.7.0 -o assembly assembly.o
clean:
	rm assembly assembly.o