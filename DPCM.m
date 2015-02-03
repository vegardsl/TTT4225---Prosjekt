%predictor = [0 1]; % y(k)=x(k-1)
%partition = [-1:.1:.9];
%codebook = [-1:.1:1];
%t = [0:pi/50:2*pi];
%x = sawtooth(3*t); % Original signal
% Quantize x using DPCM.
%encodedx = dpcmenco(x,codebook,partition,predictor);
% Try to recover x from the modulated signal.
%decodedx = dpcmdeco(encodedx,codebook,predictor);
%plot(t,x,t,decodedx,'--')
%legend('Original signal','Decoded signal','Location','NorthOutside');
%distor = sum((x-decodedx).^2)/length(x) % Mean square error

n = [0:pi/50:2*pi];
x = sawtooth(3*t); % Original signal

codebook = [-8:1:7];

a = 0.9;
x_hat(n) = a*x(n-1);
e(n) = x - x_hat(n);

plot(t,x,t,e,'--')
legend('Original signal','Decoded signal','Location','NorthOutside');
