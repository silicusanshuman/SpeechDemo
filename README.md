# SpeechDemo
A POC of iOS provided text-to-speech engine AVSpeechSynthesizer. This is written in Swift.

The AVSpeechSynthesizer class don’t directly interact with the text, there is a intermediate class which is the AVSpeechUtterance class.

#AVSpeechUtterance

There are 4 main properties of the AVSpeechUtterance class which are:

1. Text: The text which is to be spoken out.

2. Rate: 
	Min:  AVSpeechUtteranceMinimumSpeechRate constant (0.0)
	Max: AVSpeechUtteranceMaximumSpeechRate (1.0). 
	Default: AVSpeechUtteranceDefaultSpeechRate constant.

3. Pitch:
	Min: 0.5
	Max: 2.0
	Default: 1.0

4. Volume: Range 0.0 - 1.0

Finally assign this AVSpeechUtterance object to the AVSpeechSynthesizer class and listen the music.
