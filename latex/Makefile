chapters = intro/intro.tex arduinoStart/arduinoStart.tex MuxLed/MuxLed.tex ButtonsSerial/ButtonsSerial.tex

manual.pdf : manual.tex $(chapters)
	latexmk -pdf manual
	mv manual.pdf ../docs/Fundamentals-of-Microcontrollers-Lab.pdf

clean:
	rm *.pdf
	find .. -type f -name '*.aux' -delete
	rm ../docs/*.pdf
