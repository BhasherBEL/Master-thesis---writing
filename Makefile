all:
	pdflatex EPL-master-thesis-template.tex
	bibtex EPL-master-thesis-template
	pdflatex EPL-master-thesis-template.tex
	latex -output-format=pdf EPL-master-thesis-template.tex
	mv EPL-master-thesis-template.pdf Master-Thesis-Brieuc-Dubois-2025.pdf

fast:
	latex -output-format=pdf EPL-master-thesis-template.tex
	mv EPL-master-thesis-template.pdf Master-Thesis-Brieuc-Dubois-2025.pdf

watch:
	make
	reflex -r '\.tex$$' -d fancy make

watch-fast:
	make fast
	reflex -r '\.tex$$' -d fancy make fast
