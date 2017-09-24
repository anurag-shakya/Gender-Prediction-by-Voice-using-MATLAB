 
con=6;
while(con>=0)
  clc;
  rem=mod(con,2);
 
  if (rem==0)
  fprintf('The recording will start in %d seconds....',con);
  
  else
  fprintf('The recording will start in %d seconds...',con);
  end
       
  if (con == 3)
  playstart();
  end
  
  if(con == 0)
  playbeep();
  end
  con=con-1;
  pause(1);
  
end

clc;

fs = 44100 ;
bits = 16 ;
recObj = audiorecorder(fs, bits, 1) ;
disp('Start speaking.') ;
recordblocking(recObj, 6);
disp('End of Recording.');
y = getaudiodata(recObj);
plot(y);


%=======================Calculation with frequencies=============

feaarr(1)= 1;


meanf=(sum(y))/length(y);
feaarr(2)=meanf;

stddev=std2(y);
feaarr(3)=stddev;

mdny=median(y);
feaarr(4)=mdny;

sorty = sort(y);
Q25 = median(y(find(y<median(y))));
feaarr(5)=Q25;

Q75 = median(y(find(y>median(y))));
feaarr(6)=Q75;

IQR = Q75 - Q25;
feaarr(7)=IQR;

skewy=skewness(y);
feaarr(8)=skewy;

kurty=kurtosis(y);
feaarr(9)=kurty;

feaarr(10)=0.892454;


specflat=(geomean(abs(y)))/mean(y);
feaarr(11)=specflat;
 


modey=mode(y);
feaarr(12)=modey;

feaarr(13)=1.5245;

feaarr(14)=0.191794;
feaarr(15)=0.157393;
feaarr(16)=0.032854;
feaarr(17)=0.27027;
feaarr(18)=0.839015;
feaarr(19)=5.953125;
feaarr(20)=3.945313;
feaarr(21)=0.52;






