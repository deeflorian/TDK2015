
.PHONY: all clean

all:
	mkdir -p out out/include out/chapters
	latexmk -pdf -cd -outdir=../out -jobname=hierarchical_runtime_verification -interaction=nonstopmode -file-line-error ./src/main
	cp out/hierarchical_runtime_verification.pdf .

clean:
	rm -rf ./out

dist-clean: clean
	rm -f hierarchical_runtime_verification.pdf
