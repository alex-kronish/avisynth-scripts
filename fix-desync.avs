function FixDesync(clip c) {
#If you have a gradual audio/video desynchronization going on, you can use this to readjust the audio
#in order to make the audio length match the video length
	secondsaudio =  AudioLength(c)/float(AudioRate(c))
	secondsvideo = framecount(c)/float(framerate(c))
	diffms = (secondsvideo - secondsaudio) * 1000
	c.TimeStretch(tempo=(c.AudioLengthF/(c.AudioLengthF+(diffms*(c.audiorate/1000)))*100))
}
