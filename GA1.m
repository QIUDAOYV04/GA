% 设置决策变量的上下界
lb = [673, 1, 100];   % 下界
ub = [923, 18, 1000]; % 上界

% 设置遗传算法的优化选项
options = gaoptimset('paretoFraction', 0.4, 'populationsize', 250, 'generations', 600, 'TolFun', 1e-10, 'PlotFcns', @gaplotpareto);

% 调用遗传算法进行多目标优化
[x, fval] = gamultiobj(@(x) -OBJ(x), 3, [], [], [], [], lb, ub, options);

% 显示优化结果
disp('优化后的决策变量：');
disp(x);
disp('优化后的目标值：');
disp(fval);

