syms x(t) y(t)
ode1 = diff(x) == y
ode2 = diff(y) == -0.5*x
odes = [ode1; ode2]
s = dsolve(odes)

xSol(t) = s.x
ySol(t) = s.y

cond1 = x(0) == 0;
cond2 = y(0) == 1;
conds = [cond1; cond2];
[xSol(t), ySol(t)] = dsolve(odes, conds)

ySol(10)
xSol(10)

