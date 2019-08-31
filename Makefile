
mdio: mdio.c
	$(CC) -g -Werror $^ -o $@

.PHONY: test clean

test:
	$(RM) mdio.o $@
	$(CC) -g -DAPI_TEST=1 mdio.c -o test
	./test

clean:
	$(RM) mdio test *.o
