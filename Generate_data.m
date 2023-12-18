function [train_fea,test_fea,train_label,test_label] = Generate_data(data_i,foldername)
%Ω´‘≠ º3Œ¨µƒEEG ˝æ›∆¥Ω”Œ™2Œ¨
 
%Load EEG data
filedataname="../data/dataname1.mat";
load(filedataname);
loadfilename=strcat('../data/',foldername,'/1/',dataname1{data_i},'.mat'); %foldernameŒ™eeg_feature_smooth

load(loadfilename);  %–ßπ˚¿‡À∆”⁄load('1_20160518.mat');
X_session1_subject = [];
Y_session1_subject = [];

% trial 1: 1
[~,n,~] = size(de_LDS1);
X=[de_LDS1(:,:,1);de_LDS1(:,:,2);de_LDS1(:,:,3);de_LDS1(:,:,4);de_LDS1(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 1*ones(n,1)];
clear n X
% trial 2: 2
[~,n,~] = size(de_LDS2);
X=[de_LDS2(:,:,1);de_LDS2(:,:,2);de_LDS2(:,:,3);de_LDS2(:,:,4);de_LDS2(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 2*ones(n,1)];
clear n X
% trial 3: 3
[~,n,~] = size(de_LDS3);
X=[de_LDS3(:,:,1);de_LDS3(:,:,2);de_LDS3(:,:,3);de_LDS3(:,:,4);de_LDS3(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 3*ones(n,1)];
clear n X
% trial 4: 0
[~,n,~] = size(de_LDS4);
X=[de_LDS4(:,:,1);de_LDS4(:,:,2);de_LDS4(:,:,3);de_LDS4(:,:,4);de_LDS4(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 4*ones(n,1)];
clear n X
% trial 5: 2
[~,n,~] = size(de_LDS5);
X=[de_LDS5(:,:,1);de_LDS5(:,:,2);de_LDS5(:,:,3);de_LDS5(:,:,4);de_LDS5(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 2*ones(n,1)];
clear n X
% trial 6: 0
[~,n,~] = size(de_LDS6);
X=[de_LDS6(:,:,1);de_LDS6(:,:,2);de_LDS6(:,:,3);de_LDS6(:,:,4);de_LDS6(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 4*ones(n,1)];
clear n X
% trial 7: 0
[~,n,~] = size(de_LDS7);
X=[de_LDS7(:,:,1);de_LDS7(:,:,2);de_LDS7(:,:,3);de_LDS7(:,:,4);de_LDS7(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 4*ones(n,1)];
clear n X
% trial 8: 1
[~,n,~] = size(de_LDS8);
X=[de_LDS8(:,:,1);de_LDS8(:,:,2);de_LDS8(:,:,3);de_LDS8(:,:,4);de_LDS8(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 1*ones(n,1)];
clear n X
% trial 9: 0
[~,n,~] = size(de_LDS9);
X=[de_LDS9(:,:,1);de_LDS9(:,:,2);de_LDS9(:,:,3);de_LDS9(:,:,4);de_LDS9(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 4*ones(n,1)];
clear n X
% trial 10: 1
[~,n,~] = size(de_LDS10);
X=[de_LDS10(:,:,1);de_LDS10(:,:,2);de_LDS10(:,:,3);de_LDS10(:,:,4);de_LDS10(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 1*ones(n,1)];
clear n X
% trial 11: 2
[~,n,~] = size(de_LDS11);
X=[de_LDS11(:,:,1);de_LDS11(:,:,2);de_LDS11(:,:,3);de_LDS11(:,:,4);de_LDS11(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 2*ones(n,1)];
clear n X
% trial 12: 1
[~,n,~] = size(de_LDS12);
X=[de_LDS12(:,:,1);de_LDS12(:,:,2);de_LDS12(:,:,3);de_LDS12(:,:,4);de_LDS12(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 1*ones(n,1)];
clear n X
% trial 13: 1
[~,n,~] = size(de_LDS13);
X=[de_LDS13(:,:,1);de_LDS13(:,:,2);de_LDS13(:,:,3);de_LDS13(:,:,4);de_LDS13(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 1*ones(n,1)];
clear n X
% trial 14: 1
[~,n,~] = size(de_LDS14);
X=[de_LDS14(:,:,1);de_LDS14(:,:,2);de_LDS14(:,:,3);de_LDS14(:,:,4);de_LDS14(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 1*ones(n,1)];
clear n X
% trial 15£∫ 2
[~,n,~] = size(de_LDS15);
X=[de_LDS15(:,:,1);de_LDS15(:,:,2);de_LDS15(:,:,3);de_LDS15(:,:,4);de_LDS15(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 2*ones(n,1)];
clear n X
% trial 16: 3
[~,n,~] = size(de_LDS16);
X=[de_LDS16(:,:,1);de_LDS16(:,:,2);de_LDS16(:,:,3);de_LDS16(:,:,4);de_LDS16(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 3*ones(n,1)];
clear n X
% trial 17: 2
[~,n,~] = size(de_LDS17);
X=[de_LDS17(:,:,1);de_LDS17(:,:,2);de_LDS17(:,:,3);de_LDS17(:,:,4);de_LDS17(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 2*ones(n,1)];
clear n X
% trial 18: 2
[~,n,~] = size(de_LDS18);
X=[de_LDS18(:,:,1);de_LDS18(:,:,2);de_LDS18(:,:,3);de_LDS18(:,:,4);de_LDS18(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 2*ones(n,1)];
clear n X
% trial 19: 3
[~,n,~] = size(de_LDS19);
X=[de_LDS19(:,:,1);de_LDS19(:,:,2);de_LDS19(:,:,3);de_LDS19(:,:,4);de_LDS19(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 3*ones(n,1)];
clear n X
% trial 20: 3
[~,n,~] = size(de_LDS20);
X=[de_LDS20(:,:,1);de_LDS20(:,:,2);de_LDS20(:,:,3);de_LDS20(:,:,4);de_LDS20(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 3*ones(n,1)];
clear n X
% trial 21: 0
[~,n,~] = size(de_LDS21);
X=[de_LDS21(:,:,1);de_LDS21(:,:,2);de_LDS21(:,:,3);de_LDS21(:,:,4);de_LDS21(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 4*ones(n,1)];
clear n X
% trial 22: 3
[~,n,~] = size(de_LDS22);
X=[de_LDS22(:,:,1);de_LDS22(:,:,2);de_LDS22(:,:,3);de_LDS22(:,:,4);de_LDS22(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 3*ones(n,1)];
clear n X
% trial 23: 0
[~,n,~] = size(de_LDS23);
X=[de_LDS23(:,:,1);de_LDS23(:,:,2);de_LDS23(:,:,3);de_LDS23(:,:,4);de_LDS23(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥
Y_session1_subject = [Y_session1_subject; 4*ones(n,1)];
clear n X
% trial 24: 3
[~,n,~] = size(de_LDS24);
X=[de_LDS24(:,:,1);de_LDS24(:,:,2);de_LDS24(:,:,3);de_LDS24(:,:,4);de_LDS24(:,:,5)];%æÿ’Û ˙∆¥
X_session1_subject = [X_session1_subject,X];%∫·∆¥2
Y_session1_subject = [Y_session1_subject; 3*ones(n,1)];  

[~,n]=size(X_session1_subject);
Y_session1_subject = onehot( Y_session1_subject, 4 ); %Àƒ∑÷¿‡
train_fea=X_session1_subject;
train_label=Y_session1_subject;
clear n X

%%
filedataname="../data/dataname2.mat";
load(filedataname);
loadfilename=strcat('../data/',foldername,'/2/',dataname2{data_i},'.mat'); %foldernameŒ™eeg_feature_smooth

load(loadfilename);  %–ßπ˚¿‡À∆”⁄load('1_20160518.mat');
X_session2_subject = [];
Y_session2_subject = [];
% trial 1: 1
[~,n,~] = size(de_LDS1);
X=[de_LDS1(:,:,1);de_LDS1(:,:,2);de_LDS1(:,:,3);de_LDS1(:,:,4);de_LDS1(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 2*ones(n,1)];
clear n X
% trial 2: 2
[~,n,~] = size(de_LDS2);
X=[de_LDS2(:,:,1);de_LDS2(:,:,2);de_LDS2(:,:,3);de_LDS2(:,:,4);de_LDS2(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 1*ones(n,1)];
clear n X
% trial 3: 3
[~,n,~] = size(de_LDS3);
X=[de_LDS3(:,:,1);de_LDS3(:,:,2);de_LDS3(:,:,3);de_LDS3(:,:,4);de_LDS3(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 3*ones(n,1)];
clear n X
% trial 4: 0
[~,n,~] = size(de_LDS4);
X=[de_LDS4(:,:,1);de_LDS4(:,:,2);de_LDS4(:,:,3);de_LDS4(:,:,4);de_LDS4(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 4*ones(n,1)];
clear n X
% trial 5: 2
[~,n,~] = size(de_LDS5);
X=[de_LDS5(:,:,1);de_LDS5(:,:,2);de_LDS5(:,:,3);de_LDS5(:,:,4);de_LDS5(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 4*ones(n,1)];
clear n X
% trial 6: 0
[~,n,~] = size(de_LDS6);
X=[de_LDS6(:,:,1);de_LDS6(:,:,2);de_LDS6(:,:,3);de_LDS6(:,:,4);de_LDS6(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 2*ones(n,1)];
clear n X
% trial 7: 0
[~,n,~] = size(de_LDS7);
X=[de_LDS7(:,:,1);de_LDS7(:,:,2);de_LDS7(:,:,3);de_LDS7(:,:,4);de_LDS7(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 4*ones(n,1)];
clear n X
% trial 8: 1
[~,n,~] = size(de_LDS8);
X=[de_LDS8(:,:,1);de_LDS8(:,:,2);de_LDS8(:,:,3);de_LDS8(:,:,4);de_LDS8(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 2*ones(n,1)];
clear n X
% trial 9: 0
[~,n,~] = size(de_LDS9);
X=[de_LDS9(:,:,1);de_LDS9(:,:,2);de_LDS9(:,:,3);de_LDS9(:,:,4);de_LDS9(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 3*ones(n,1)];
clear n X
% trial 10: 1
[~,n,~] = size(de_LDS10);
X=[de_LDS10(:,:,1);de_LDS10(:,:,2);de_LDS10(:,:,3);de_LDS10(:,:,4);de_LDS10(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 3*ones(n,1)];
clear n X
% trial 11: 2
[~,n,~] = size(de_LDS11);
X=[de_LDS11(:,:,1);de_LDS11(:,:,2);de_LDS11(:,:,3);de_LDS11(:,:,4);de_LDS11(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 2*ones(n,1)];
clear n X
% trial 12: 1
[~,n,~] = size(de_LDS12);
X=[de_LDS12(:,:,1);de_LDS12(:,:,2);de_LDS12(:,:,3);de_LDS12(:,:,4);de_LDS12(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 3*ones(n,1)];
clear n X
% trial 13: 1
[~,n,~] = size(de_LDS13);
X=[de_LDS13(:,:,1);de_LDS13(:,:,2);de_LDS13(:,:,3);de_LDS13(:,:,4);de_LDS13(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 2*ones(n,1)];
clear n X
% trial 14: 1
[~,n,~] = size(de_LDS14);
X=[de_LDS14(:,:,1);de_LDS14(:,:,2);de_LDS14(:,:,3);de_LDS14(:,:,4);de_LDS14(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 4*ones(n,1)];
clear n X
% trial 15£∫ 2
[~,n,~] = size(de_LDS15);
X=[de_LDS15(:,:,1);de_LDS15(:,:,2);de_LDS15(:,:,3);de_LDS15(:,:,4);de_LDS15(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 1*ones(n,1)];
clear n X
% trial 16: 3
[~,n,~] = size(de_LDS16);
X=[de_LDS16(:,:,1);de_LDS16(:,:,2);de_LDS16(:,:,3);de_LDS16(:,:,4);de_LDS16(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 1*ones(n,1)];
clear n X
% trial 17: 2
[~,n,~] = size(de_LDS17);
X=[de_LDS17(:,:,1);de_LDS17(:,:,2);de_LDS17(:,:,3);de_LDS17(:,:,4);de_LDS17(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 2*ones(n,1)];
clear n X
% trial 18: 2
[~,n,~] = size(de_LDS18);
X=[de_LDS18(:,:,1);de_LDS18(:,:,2);de_LDS18(:,:,3);de_LDS18(:,:,4);de_LDS18(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 1*ones(n,1)];
clear n X
% trial 19: 3
[~,n,~] = size(de_LDS19);
X=[de_LDS19(:,:,1);de_LDS19(:,:,2);de_LDS19(:,:,3);de_LDS19(:,:,4);de_LDS19(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 4*ones(n,1)];
clear n X
% trial 20: 3
[~,n,~] = size(de_LDS20);
X=[de_LDS20(:,:,1);de_LDS20(:,:,2);de_LDS20(:,:,3);de_LDS20(:,:,4);de_LDS20(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 3*ones(n,1)];
clear n X
% trial 21: 0
[~,n,~] = size(de_LDS21);
X=[de_LDS21(:,:,1);de_LDS21(:,:,2);de_LDS21(:,:,3);de_LDS21(:,:,4);de_LDS21(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 4*ones(n,1)];
clear n X
% trial 22: 3
[~,n,~] = size(de_LDS22);
X=[de_LDS22(:,:,1);de_LDS22(:,:,2);de_LDS22(:,:,3);de_LDS22(:,:,4);de_LDS22(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 1*ones(n,1)];
clear n X
% trial 23: 0
[~,n,~] = size(de_LDS23);
X=[de_LDS23(:,:,1);de_LDS23(:,:,2);de_LDS23(:,:,3);de_LDS23(:,:,4);de_LDS23(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥
Y_session2_subject = [Y_session2_subject; 3*ones(n,1)];
clear n X
% trial 24: 3
[~,n,~] = size(de_LDS24);
X=[de_LDS24(:,:,1);de_LDS24(:,:,2);de_LDS24(:,:,3);de_LDS24(:,:,4);de_LDS24(:,:,5)];%æÿ’Û ˙∆¥
X_session2_subject = [X_session2_subject,X];%∫·∆¥2
Y_session2_subject = [Y_session2_subject; 1*ones(n,1)];


[~,n]=size(X_session2_subject);
Y_session2_subject = onehot( Y_session2_subject, 4 ); %Àƒ∑÷¿‡
test_fea=X_session2_subject;
test_label=Y_session2_subject;
clear n X
end