N = 200;
dx = 1/N;
T = 2000;
aelo = 2.5; aehi = 3.5;
% theta = 0.1; ai = 3; se = 2; si = 3; b_1 = 0.8; b_2 = 0.98; v = 4; het = rand(1,N)-.5; c = 0.00; nz = 0.0; % 7(a)Amorina undulata
% theta = 0.1; ai = 3; se = 6; si = 18; b_1 = 0.45; b_2 = 0.93; v = 8; het = rand(1,N)-.5; c = 0.00; nz = 0.0; % 7(b)Palamadusta diluculum
% theta = 0.15; ai = 3; se = 6; si = 17; b_1 = 0.45; b_2 = 0.93; v = 8; het = rand(1,N)-.5; c = 0.00; nz = 0.0; % 7(c)Natica Enzona



% Form Ae and Ai both N by N matrix
Ae = 0*rand(N,N); Ai = 0*rand(N,N); sem = zeros(1,N); sim = zeros(1,N);
for j = 1:N
    for k = 1:N
        Ae(j,k) = exp(-(j-k).^2/se^2)/(sqrt(pi)*se);
        Ai(j,k) = exp(-(j-k).^2/si^2)/(sqrt(pi)*si);
        sem(j) = sem(j) + Ae(j,k);
        sim(j) = sim(j) + Ai(j,k);
        ae(j) = aelo+(aehi-aelo)*(1+cos(4*pi*j/200))/2;
    end
    Ae(j,:) = Ae(j,:)./sem(j);
    Ai(j,:) = Ai(j,:)./sim(j);
end

%Iterate Si, Se and P matrix 
Se = rand(N,T); Si = rand(N,T); P = .1*rand(N,T); x = zeros(N,T);
for i = 2:T
    x = ae.*Ae*Se(:,i-1)-ai.*Ai*Si(:,i-1)+c*het(:)+nz*randn(N,1);
    P(:,i) = 1./(1+exp(-v*(x-theta)));             % P=F(x)
    Se(:,i) = (1-b_1)*P(:,i)+b_1*Se(:,i-1);        % Se = P+be*Se
    Si(:,i) = (1-b_2)*P(:,i)+b_2*Si(:,i-1);        % Se = P+be*Se
end

imagesc(transpose(P(:,1:1200)))
colorbar
xlabel('Space')
ylabel('Time')

 titleText = '$\\theta$ = %.2f, $\\alpha_I$ = %.2f, $\\sigma_E$ = %.2f, $\\sigma_I$ = %.2f, $\\beta_E$ = %.2f, $\\beta_I$ = %.2f, v = %.2f'; 
title(sprintf(titleText, theta, ai, se, si, b_1, b_2, v),'interpreter','latex');

% 
% set(gcf,'Units','inches');
% screenposition = get(gcf,'Position');
% set(gcf,...
%     'PaperPosition',[0 0 screenposition(3:4)],...
%     'PaperSize',[screenposition(3:4)]);
% print -dpdf -painters stripes