#vlc http://vcore4x500.technom.lan/webcam2/?action=stream --sub-filter logo --logo-file target.png --logo-x=540 --logo-y=300
vlc \
http://vcore4x500.technom.lan/webcam2/?action=stream \
--transform-type=vflip --video-filter "transform{true}" \
--sub-filter logo --logo-file target.png --logo-position=0 
