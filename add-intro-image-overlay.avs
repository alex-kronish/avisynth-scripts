function addIntroImage(clip v, clip i, clip a, int frameEnd) {
	tempIntro= v.Trim(0,frameEnd)
	tempRemainder=v.Trim( ( frameEnd+1 ),0)
	tempAlpha = a.Trim(0,frameEnd).Fadeout(30)
	newIntro=Overlay(v,i,mask=tempAlpha)
	result = newIntro+tempRemainder
	return result
}

