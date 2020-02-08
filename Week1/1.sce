A=input("Enter the elements of First Matrix")
disp(A,"The coefficients of First Matrix")
B=input("Enter the elements of Second Matrix")
disp(B,"The coefficients of Second Matrix")

for l=1:3
    L(l,l)=1
end

for i=1:3
    for j=1:3
        s=0
        if j>=i
            for k=1:i-1
                s=s+L(i,k)*U(k,j)
            end
            U(i,j)=A(i,j)-s;
        else
            for k=1:j-1
                s=s+L(i,k)*U(k,j)
            end
            L(i,j)=(A(i,j)-s)/U(j,j)
        end
    end
end

disp(U,"Upper triangular matrix")
disp(L,"Lower triangular matrix")

c=L\B
x=U\c
disp(x,"Solution=")
