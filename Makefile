all: exe exe1

exe: mod
	chmod +x a.out

mod: cp
	dd if=resp of=a.out bs=1 count=1 seek=24 skip=33 conv=notrunc
	dd if=/dev/zero of=a.out bs=1 count=8 seek=40 conv=notrunc
	dd if=/dev/zero of=a.out bs=1 count=6 seek=58 conv=notrunc
	dd if=/dev/zero of=a.out bs=1 count=8 seek=72 conv=notrunc
	dd if=resp of=a.out bs=1 count=1 seek=72 skip=33 conv=notrunc
	dd if=resp of=a.out bs=1 count=1 seek=80 skip=33 conv=notrunc
	dd if=resp of=a.out bs=1 count=1 seek=88 skip=33 conv=notrunc

cp: test
	dd if=test of=a.out bs=1 count=120
	dd if=test of=a.out bs=1 count=276 skip=4096 seek=120
	rm test

test: test.o
	ld -T test.ld -o test test.o
	rm test.o

test.o: test.s
	as -o test.o test.s

exe1: mod1
	chmod +x b.out

mod1: cp1
	dd if=resp of=b.out bs=1 count=1 skip=33 seek=24 conv=notrunc
	dd if=/dev/zero of=b.out bs=1 count=8 seek=40 conv=notrunc
	dd if=/dev/zero of=b.out bs=1 count=6 seek=58 conv=notrunc
	dd if=/dev/zero of=b.out bs=1 count=8 seek=72 conv=notrunc
	dd if=resp of=b.out bs=1 count=1 skip=33 seek=72 conv=notrunc
	dd if=resp of=b.out bs=1 count=1 skip=33 seek=80 conv=notrunc
	dd if=resp of=b.out bs=1 count=1 skip=33 seek=88 conv=notrunc

cp1: client
	dd if=client of=b.out bs=1 count=120
	dd if=client of=b.out bs=1 count=202 seek=120 skip=4096
	rm client

client: client.o
	ld -T test.ld -o client client.o
	rm client.o

client.o: client.s
	as -o client.o client.s

.PHONY:
clean:
	rm a.out b.out
