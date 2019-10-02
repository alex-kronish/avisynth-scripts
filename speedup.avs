function SpeedUp(clip c, float s){ 
#c = clip you are speeding up, s = factor you want to speed up by (use less than one to slow down)
#please do not pass it a negative number, you cant have a negative FPS so it'll just error ouot.
#preserves samplerate, framerate of original clip so that splicing with the rest of your video still works
	newclip = c
	samplerate = c.AudioRate
	frate = float(Framerate(c)) * float(s)
	newclip = assumeFPS(newclip,frate,true)
	newclip = newclip.ChangeFPS(c, linear=false) 
#added linear=false because if you try and speed it up too much it'll error on you
	newAudio = newclip.TimeStretch(pitch=(100/s))
#pitch the audio down (or up) back to the original
	result = AudioDub(newclip,newAudio).SSRC(samplerate).Trim(0,0)
	return result
}
