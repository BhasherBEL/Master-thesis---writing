all:
	latex -output-format=pdf EPL-master-thesis-template.tex
	mv EPL-master-thesis-template.pdf Master-Thesis-Brieuc-Dubois-2025.pdf

watch:
	make
	reflex -r '\.tex$$' -d fancy make
