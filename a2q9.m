function [mag, phase] = a2q9(frequency)
s = tf('s');
Gz = (0.788684*s^2+3.0334*s+215.3714)/(0.4888*s^4+8.222284*s^3+158.662084*s^2+3.0334*s);
Gx = Gz*(142/(0.52*s^2+2*s+142));
[mag,phase] = bode(Gx, frequency);
mag = 20*log10(mag*0.4);
end