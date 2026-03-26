include conf.mk

send:
	./sender.sh
gena:
	./gena.sh
geno:
	./geno.sh
clean:
	rm -r $(lab)
	rm email.txt
