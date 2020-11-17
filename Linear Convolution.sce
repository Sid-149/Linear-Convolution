clear
x=input('Enter i/p sequence=');
h=input('Enter impulse response=');
y1=convol(x,h);
N1=length(x)
N2=length(h)
N=N1+N2-1;
h=[h zeros(1,N1-1)];
for n=0:1:N-1
    y(n+1)=0;
    for k=0:1:N1-1
        if (n-k+1>0) then
            y(n+1)=y(n+1)+x(k+1)*h(n-k+1)
        end
    end

end
disp('Linear Convolution by formula:');
disp(y);

disp("Linear Convolution by inbuilt function:");
disp(y1);