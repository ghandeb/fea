
openfemm
opendocument('cc.fem');
mi_saveas('cc2.fem');

n=20;
stroke=2; %inch
x=zeros(n,1); 
f=zeros(n,1);
coenergy=zeros(n,1);

%initial condition
mi_analyze;
mi_loadsolution;
mo_groupselectblock(2); 
coenergy(1,1)=mo_blockintegral(2);

for k=2:n 
    disp(sprintf('iteration %i of %i',k,n));
    mi_analyze;
    mi_loadsolution;
    mo_groupselectblock(2);
    x(k)=stroke*(k-1)/(n-1);
    coenergy(k)=mo_blockintegral(2); % magnetic coenergy
    f(k)=(coenergy(k)-coenergy(k-1))/(x(k)-x(k-1)); % approximate derivative wrt x
    mi_selectgroup(2);
    mi_movetranslate(-stroke/(n-1),0);
    mi_clearselected
end

plot(x,f)
xlabel('Displacement, Inches');
ylabel('Force, Lbf');
title('Plunger Force vs. Displacement');

closefemm