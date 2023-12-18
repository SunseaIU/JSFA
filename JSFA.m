function [ bestacc,theta,bestpredect_label,true_label ] = JSFA( Train_X, Train_Y, Test_X,Test_Y, lambda, c,k, MAX_ITER) 
%% 程序说明
%该函数实现JSFA
%函数输入说明
%函数输出说明
%%
epsilon=1e-5;
nl=size(Train_X,2); %X_train中样本的个数
num=size(Test_X,2); %X_test中样本的个数
d=size(Train_X,1); %样本的特征维度
fea=size(Train_Y,2); %c代表类别数
bigTheta=eye(d)/d; %初始化Q矩阵
v=ones(nl,1)./nl;
b=ones(fea,1)./fea;
bestacc=0;
obj=zeros(MAX_ITER,1); %obj记录目标函数值
l=zeros(nl,1);
acc=zeros(MAX_ITER,1);
for iter=1:MAX_ITER
    U=diag(sqrt(v));
    G=U*Train_X';
    H=U*ones(nl,1);
    T=U*Train_Y;
    W=(G'*G+c\(bigTheta^-2))\G'*(T-H*b');
    temp=sum(W.*W,2).^(1/2)+epsilon;  %sum(x,2) 每一行求和
    bigTheta=diag( temp/ sum(temp) ).^(1/2);
    b=(H'*H)\(T'-W'*G')*H;
    %更新v_i
    for j=1:nl
        l(j)=sum((Train_X(:,j)'*W+b'-Train_Y(j,:)).*(Train_X(:,j)'*W+b'-Train_Y(j,:)));
        if l(j)<lambda
            v(j)=1-l(j)/lambda;
        else
            v(j)=0;
        end
    end
    obj(iter)=0.5*c*F22norm(G*W+H*b'-T)+0.5*L2Pnorm(W,1)^2+0.5*lambda*sum(v.^2-2*v);
    sample_select_num=sum(v~=0);
    if sample_select_num < nl
        lambda = lambda*k;
    end
    if sample_select_num == 0
        v=ones(nl,1)./nl;
        continue;
    end
%% 计算迭代过程中的acc
    predict_label_temp=Test_X'*W+ones(num,1)*b';
    num_n = length(predict_label_temp);
    Y_predict = zeros(num_n,4);
    for i=1:num_n
        [~,subscript]=max(predict_label_temp(i,:));
        Y_predict(i,subscript)=1;
    end
    [~,predict_label] = max(Y_predict,[],2);
    [~,true_label] = max(Test_Y,[],2);
    acc(iter) = length(find(predict_label == true_label)) ./  length(true_label);
%% 记录bestacc
    if iter == 1
        bestacc = acc(iter);
        bestpredect_label = predict_label;
        bestW = W;
    else
        if ~isnan(obj(iter)) && acc(iter)>bestacc
            bestacc=acc(iter);
            bestpredect_label = predict_label;
            bestW = W;
        end
    end 
    
    if iter>1
        change=abs((obj(iter)-obj(iter-1))/obj(iter));
        if change<1e-3
            break;
        end
    end
    clear predect_label
    clear Y_predect
end
theta=sum(bestW.*bestW,2).^(1/2);
theta=theta/sum(theta);
end