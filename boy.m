 
clc;
AAA=0;
fs=44100;
 [AAA ,fs]=audioread('boy.wav');
 sound(AAA,fs);
 pause(1);
 clc;
 
lop=1;
lop2=1;
while (lop==1)
userreq=input('===================(yes/no)================ :','s');
 
 
if strcmp(userreq, 'no')
     [AAA ,fs]=audioread('trygain.wav');
     sound(AAA,fs);
    
     pause(1);
      clc;
     
 
       
     while(lop2==1)
     userreq2 =input('===================(yes/no)================ :','s');
 
 
      if strcmp(userreq2, 'yes')
          lop=0;
          lop2=0;
       main();
     
 
      elseif strcmp(userreq2, 'no')
         [AAA ,fs]=audioread('thanku.wav');
         sound(AAA,fs);
         lop=0;
         lop2=0;
         clc;
         
         pause(1);
         
      else
          [AAA ,fs]=audioread('yes_no.wav');
          sound(AAA,fs);
          clc;
          pause(3);
         
      end
     end
 
 
elseif strcmp(userreq, 'yes')
 
 
         [AAA ,fs]=audioread('thanku.wav');
         sound(AAA,fs);
         lop=0;
         clc;
         pause(1);
         
         
else 
     [AAA ,fs]=audioread('yes_no.wav');
     sound(AAA,fs);
     clc;
     pause(3);
     
end  
    
    
end
 
 
 
 
 
 
 
 
 
 
 
 
 
 
% ===========================================
 
 
 
 

