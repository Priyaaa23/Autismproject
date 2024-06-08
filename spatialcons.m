function [U_new, center, obj_fcn] = spatialcons(data, dims, U, cluster_n,...
    expo, mfw, spw, nwin)
mf = U.^expo;  
center = mf*data./((ones(size(data, 2),1)*sum(mf'))');

dist = distfcm(center, data);    

obj_fcn = sum(sum((dist.^2).*mf)); 

tmp = dist.^(-2/(expo-1));  

U_new = tmp./(ones(cluster_n, 1)*sum(tmp));

tempwin=ones(nwin);
mfwin=zeros(size(U_new));

for i=1:size(U_new,1)
    tempmf=reshape(U_new(i,:), dims);
    tempmf=imfilter(tempmf,tempwin,'conv');
    mfwin(i,:)=reshape(tempmf,1,size(U_new,2));
end

mfwin=mfwin.^spw;
U_new=U_new.^mfw;

tmp=mfwin.*U_new;
U_new=tmp./(ones(cluster_n, 1)*sum(tmp));
end