chapters = intro/intro.tex arduinoStart/arduinoStart.tex MuxLed/MuxLed.tex ButtonsSerial/ButtonsSerial.tex
chapters2 = displays/displays.tex envSensing/envSensing.tex
chapters3 = imu/imu.tex distMotorServo/distMotorServo.tex peakDetection/peakDetection.tex
chapters4 = machineLearning/machineLearning.tex controls/controls.tex wireless/wireless.tex

manual.pdf : manual.tex $(chapters) $(chapters2) $(chapters3) $(chapters4)
	latexmk -pdf manual
	mv manual.pdf ../docs/Fundamentals-of-Microcontrollers-Lab.pdf

clean:
	rm *.pdf
	find .. -type f -name '*.aux' -delete
	rm ../docs/*.pdf
