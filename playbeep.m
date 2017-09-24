function AAA = playbeep()

AAA=0;
fs=44100;
 [AAA ,fs]=audioread('playbeep.wav');
 sound(AAA,fs);


% ===========================================


end

