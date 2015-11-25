function [histoclip]=get_key_frame_in_clip(videoclip)
%videoseq is a structure that holds all the frames and their frame number
%your task is to calculate  the histogram for those images and save it into
%the matrix to as information also save another matrix depicting the change
% in consequtive images if the change is more mark it as key image
% threshhold will be between 0 and 1
[n,~]=size(videoclip);
for i=2:n
    mot_vect_2=videoclip{i,2};
    mot_vect_1=videoclip{i-1,2};    
    diff_mot_vect(i-1)=sum(sum(sqrt((mot_vect_2{2}-mot_vect_1{2}).^2 + (mot_vect_2{1}-mot_vect_1{1}).^2)));
end
%% look for change in consequtive frames
[~,ind]=max(diff_mot_vect);
    histoclip={videoclip{ind,1},videoclip{ind,2},videoclip{ind,3}};    
end

