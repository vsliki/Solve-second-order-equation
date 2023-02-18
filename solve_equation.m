%for an equation following this structure: ax^2 + bx + c = 0, choose a
%value for a, b and c and the program will give you the solutions. 

a = input('Enter a value for a:');
b = input('Enter a value for b:');
c = input('Enter a value for c:');

if a == 0
    if b == 0
        disp('This is not an equation. There is no solution.')
    else 
    sol = -c/b;
    fprintf('This is an equation of the first order. The solution is given by: %d', sol)
    end
else
    disp('This is an equation of the second order.')
    delta = b^2 - 4*a*c;
    if delta < 0
        disp('There is no real solution for this equation.')
    elseif delta == 0
        sol = -b / 2*a;
        fprintf('There is one unique solution, given by: %d', sol)
    else
        x_1 = (-b + sqrt(delta))/2*a;
        x_2 = (-b - sqrt(delta))/2*a;
        fprintf('The two solutions are given by: %d %d', x_1, x_2)
    end
end

