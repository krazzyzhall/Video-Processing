function [vectors]=video_to_vector(Name)
clc;
v=VideoReader(Name);
seg=3;
keyframeidx=[];
vectors=[];
skipimg=5;
l=1;

for i=1:seg:v.Duration-seg
    [videoclip]=read(v,[(i-1)*v.FrameRate+1 , (i+2)*v.FrameRate]);
    [~,~,~,nframes]=size(videoclip);
    k=1;
    for j=1:skipimg:nframes-skipimg-1    
        frame1=videoclip(:,:,:,j);%imresize(videoclip(:,:,:,j),0.33);
        frame2=videoclip(:,:,:,j+1);%imresize(videoclip(:,:,:,j+1),0.33);
        [vect_mot{1},vect_mot{2},~]=Coarse2FineTwoFrames(frame1,frame2);
        frameloc=(i-1)*v.FrameRate+j;
        videoclipseq(k,1)={v.Name};
        videoclipseq(k,2)={vect_mot};
        videoclipseq(k,3)={frameloc};
        k=k+1;
    end
    [keyframe_seq]=get_key_frame_in_clip(videoclipseq);
    vectors=[vectors ;keyframe_seq];
    %l=l+1;
end
end
