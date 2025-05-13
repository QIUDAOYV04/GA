function y = OBJ(x)
    % 计算目标函数的两个输出
    y(1) = myNeuralNetworkFunction4(x(:, 1:3)); % 确保这是标量
    y(2) = myNeuralNetworkFunction5(x(:, 1:3)); % 确保这是标量
end
