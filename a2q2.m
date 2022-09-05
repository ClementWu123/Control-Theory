s = tf('s');
ml = 0.52;
k = 142;
d = 2;
b = k;
eta = b/ml;
zeta = d/(2*sqrt(ml*k));
wn = sqrt(k/ml);
G = 1/(s^2+2*zeta*wn*s+wn^2);
bode(G,[5,10,20,80, wn]);
grid on;


for wn = [sqrt(k/ml), 30, 5]
    G = 1/(s^2+2*zeta*wn*s+wn^2);
    bode(G);
    hold on;
end
grid on;
legend("original", "wn=30", "wn=5");
hold off;

for zeta = [d/(2*sqrt(ml*k)), 0.01, 0.5, 0.7]
    G = 1/(s^2+2*zeta*wn*s+wn^2);
    bode(G);
    hold on;
end
grid on;
legend("original", "zeta=0.01", "zeta=0.5", "zeta=0.7");
hold off;