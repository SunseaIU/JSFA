function [] = f_JSFA(data_i,foldername)
%% 程序说明
%该函数实现自步RLSR的参数设置
%函数输入说明
%函数输出说明
%% 数据集的预处理去均值+归一化
[Xtrain,Xtest,Ytrain,Ytest]=Generate_data(data_i,foldername);
%数据去均值
n1 = size(Xtrain,2);
n2 = size(Xtest,2);
Xtrain=Xtrain-repmat(mean(Xtrain,2),[1,n1]);
Xtest=Xtest-repmat(mean(Xtest,2),[1,n2]);
% Xtrain=Xtrain-mean(Xtrain);
% Xtest=Xtest-mean(Xtest);
%数据的归一化
[X,~] = mapminmax([Xtrain';Xtest'],0,1);
Xtrain = X(1:n1,:)';
Xtest = X(n1+1:n1+n2,:)';
% [X,~] = mapminmax([Xtrain,Xtest],0,1);
% Xtrain = X(:,1:n1);
% Xtest = X(:,n1+1:n1+n2);
% [Xtrain,~] = mapminmax(Xtrain,0,1);
% [Xtest,~] = mapminmax(Xtest,0,1);
%% 数据集的参数设置
bestacc = 0;
lambda=0.001;
k = 1.2;
c=17;
for i_k = 1:length(k)
    for i_gamma=1:length(c)
        k_temp = k(i_k);
        lambda_temp=lambda;
        c_temp=c(i_gamma);
        [acc,theta,predict_label,true_label]=JSFA( Xtrain, Ytrain, Xtest, Ytest, lambda_temp, 2^c_temp,k_temp,100);
        if acc>bestacc
            bestacc=acc
            bestpredict_label = predict_label;
            best_theta = theta;
            best_c = c_temp;
            best_k = k_temp;
        end
    end
end
savefilename=strcat('../result/',foldername,'/data',num2str(data_i),'/error.mat');
save(savefilename,'bestacc','best_theta','best_c','best_k','bestpredict_label','true_label');
end