YashDhiman_2021504.asm:	YashDhiman_2021504.o
	ld --dynamic-linker=/lib64/ld-linux-x86-64.so.2 -lc YashDhiman_2021504.o -o YashDhiman_2021504

YashDhiman_2021504.o:	YashDhiman_2021504.asm
	yasm -f elf64 -o YashDhiman_2021504.o YashDhiman_2021504.asm
	
clean:
	rm YashDhiman_2021504.o YashDhiman_2021504 YashDhiman_2021504.lst