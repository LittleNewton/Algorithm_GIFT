% L3_1.  See Example 3.5.  Copyright S. Nakamura, 1995 
clear
a(1,1) = 1/2 + 1/4 + 1/3; a(1,2) = -1/4; a(1,3)= -1/3;
a(2,1) = a(1,2); a(2,2) = 1/4 + 1/3 + 1/5; a(2,3) = -1/5;
a(3,1) = a(1,3); a(3,2) = a(2,3); a(3,3) = 1/3 + 1/3 + 1/5;
y(1) = 20/2; y(2) = 0; y(3) = 5/3;
x = a\y';
x
