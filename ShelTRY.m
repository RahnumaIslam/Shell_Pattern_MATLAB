N = 200;
dx = 1/N;
T = 4000;


% theta = 0.40; theta2 = 0.8; ae = 15; ai = 5; se = 15; si = 8; b_1 = 0.95; b_2 = 0.899; v = 3; v2 = 20; het = rand(1,N)-.5; c = 0.00; nz = 0.0; % Hastula salleana
%theta = 0.5; theta2 = 0.8; ae = 18; ai = 5; se = 15; si = 8; b_1 = 0.93; b_2 = 0.75; v = 3; v2 = 20; het = rand(1,N)-.5; c = 0.0; nz = 0.0; % Lioconcha castrense
% theta = 0.4; theta2 = 0.8; ae = 22; ai = 10; se = 10; si = 100; b_1 = 0.99; b_2 = 0.9; v = 10; v2 = 10; het = rand(1,N)-.5; c = 0.00; nz = 0.0; % Bankivia fasciata
%theta = 0.3; theta2 = 0.8; ae = 10; ai = 10; se = 100; si = 10; b_1 = 0.99; b_2 = 0.4; v = 10; v2 = 10; het = rand(1,N)-.5; c = 0.00; nz = 0.0; % Conus striatus
%theta = 0.3; theta2 = 0.8; ae = 1.5; ai = 2; se = 0.8; si = 0.1; b_1 = 0.8; b_2 = 0.99; v = 12; v2 = 10; het = rand(1,N)-.5; c = 0.00; nz = 0.1; % Cymbiola nobilis
% theta = 0.3; theta2 = 0.8; ae = 2; ai = 2; se = 1; si = 1; b_1 = 0.8; b_2 = 0.99; v = 12; v2 = 10; het = rand(1,N)-.5; c = 0.00; nz = 0.3; % Nerita pelorontan
% theta = 0.1; theta2 = 0.6; ae = 1.5; ai = 0.9; se = 5; si = 10; b_1 = 0.4; b_2 = 0.99; v = 40; v2 = 40; het = rand(1,N)-.5; c = 0.00; nz = 0.0; % Conus ammiralis
%theta = 0.2; theta2 = 0.3; ae = 15; ai = 2.8; se = 0.6; si = 2.5; b_1 = 0.99; b_2 = 0.2; v = 7; v2 = 8; het = rand(1,N)-.5; c = 0.00; nz = 0.1; % Melapium Elatum


% theta = 0.7; theta2 = 500; ae = 4; ai = 5.8; se = 0.96; si = 5.1; b_1 = 0.08; b_2 = 0.99; v = 2; v2 =2; het = rand(1,N)-.5; c = 0.00; nz = 0.0;% 
% theta = 0.5; theta2 = 500; ae = 10; ai = 11; se = 3; si = 6; b_1 = 0.01; b_2 = 0.09; v = 1.5; v2 = 1.2; het = rand(1,N)-.5; c = 0.00; nz = 0.0; % Lyra taiwanica
% theta = 0.2; theta2 = 500; ae = 8; ai = 9; se = 13; si = 15; b_1 = 0.90; b_2 = 0.98; v = 1.5; v2 = 1.5; het = rand(1,N)-.5; c = 0.00; nz = 0.0; % Amoria dampieria
% theta = 0.5; theta2 = 500; ae = 10; ai = 10; se = 3; si = 6; b_1 = 0.4; b_2 = 0.8; v = 1.5; v2 = 1.5; het = rand(1,N)-.5; c = 1.0; nz = 0.0; % Tritonoharpa lanceolata
% theta = 0.5; theta2 = 500; ae = 10; ai = 10; se = 3; si = 6; b_1 = 0.4; b_2 = 0.8; v = 0.8; v2 = 1.5; het = rand(1,N)-.5; c = 0.9; nz = 0.0; % Clinocardium ciliatum
% theta = -1.4; theta2 = 500; ae = 6.9; ai = 10; se = 20; si = 26; b_1 = 0.95; b_2 = 0.97; v = 5; v2 = 1.5; het = rand(1,N)-.5; c = 0.00; nz = 0.0; % Phalium areola
% theta = 0.5; theta2 = 500; ae = 8; ai = 9; se = 5; si = 14; b_1 = 0.90; b_2 = 0.98; v = 1.3; v2 = 1.5; het = rand(1,N)-.5; c = 0.00; nz = 0.0; % Paratectonatica tigrina
% theta = 0.2; theta2 = 500; ae = 2; ai = 3; se = 3; si = 15; b_1 = 0.95; b_2 = 0.2; v = 8; v2 = 1.5; het = rand(1,N)-.5; c = 0.00; nz = 0.0; v2 =0; % Impages hectica
% theta = 0.7; theta2 = 500; ae = 4; ai = 5.8; se = 0.98; si = 5; b_1 = 0.45; b_2 = 0.99; v = 2; v2 = 1.5; het = rand(1,N)-.5; c = 0.00; nz = 0.0; % Conus stercus muscarum
% theta = 0.6; theta2 = 500; ae = 4; ai = 5.8; se = 0.98; si = 9; b_1 = 0.6; b_2 = 0.99; v = 2; v2 = 1.5; het = rand(1,N)-.5; c = 0.00; nz = 0.0; % Voluta junonia johnstonae
% theta = 0.5; theta2 = 500; ae = 3; ai = 3; se = 6; si = 26; b_1 = 0.45; b_2 = 0.92; v = 10; v2 = 1.5; het = rand(1,N)-.5; c = 0.00; nz = 0.55; % Macrocallista maculata
% theta = -1.8; theta2 = 500; ae = 6; ai = 10; se = 10; si = 20; b_1 = 0.95; b_2 = 0.98; v = 2.8; v2 = 1.5; het = rand(1,N)-.5; c = 0.00; nz = 0.0; v2 =1; theta2 = 100;



% Form Ae and Ai both N by N matrix
Ae = zeros(N,N); Ai = zeros(N,N); sem = zeros(1,N); sim = zeros(1,N);
for j = 1:N
    for k = 1:N
        Ae(j,k) = exp(-(j-k).^2/se^2)/(sqrt(pi)*se);
        Ai(j,k) = exp(-(j-k).^2/si^2)/(sqrt(pi)*si);
        sem(j) = sem(j) + Ae(j,k);
        sim(j) = sim(j) + Ai(j,k);
    end
    Ae(j,:) = Ae(j,:)./sem(j);
    Ai(j,:) = Ai(j,:)./sim(j);
end

%Iterate Si, Se and P matrix 
Se = rand(N,T); Si = rand(N,T); P = rand(N,T); x = zeros(N,T);
for i = 2:T
    x = ae.*Ae*Se(:,i-1)-ai.*Ai*Si(:,i-1)+c*het(:)+nz*randn(N,1);
    P(:,i) = 1./(1+exp(-v*(x-theta)))*1./(1+exp(v2*(x-theta2)));             % P=F(x)
    Se(:,i) = (1-b_1)*P(:,i)+b_1*Se(:,i-1);        % Se = P+be*Se
    Si(:,i) = (1-b_2)*P(:,i)+b_2*Si(:,i-1);        % Se = P+be*Se
end

imagesc(transpose(P(:,200:T)))
colorbar
xlabel('Space')
ylabel('Time')
%set ( gca, 'XDir', 'reverse' )
 titleText = '$\\theta_E$ = %.1f, $\\theta_I$ = %.1f, $\\alpha_E$ = %.1f, $\\alpha_I$ = %.1f, $\\sigma_E$ = %.1f, $\\sigma_I$ = %.1f, $\\beta_E$ = %.1f, $\\beta_I$ = %.1f, $v_1$ = %.1f, $v_2$ = %.1f'; 
title(sprintf(titleText, theta,theta2, ae, ai, se, si, b_1, b_2, v, v2),'interpreter','latex');
% 
% set(gcf,'Units','inches');
% screenposition = get(gcf,'Position');
% set(gcf,...
%     'PaperPosition',[0 0 screenposition(3:4)],...
%     'PaperSize',[screenposition(3:4)]);
% print -dpdf -painters tent2