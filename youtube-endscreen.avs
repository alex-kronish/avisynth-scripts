# Use a still-frame image with audio:
audio = Wavsource("PrivateLife.wav")
video = ImageSource("ENDSCREENgray.png", fps=60, 
\           start=1, end=ceil(60*AudioLengthF(audio)/AudioRate(audio))).subtitle("tUnE-yArDs - Private Life", font="Courier New", size=16, text_color=color_white)
return AudioDub(video, audio).ConvertToYV12().Fadein(60).Fadeout(60)


