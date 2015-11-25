%function [ output_args ] = Classification(KeyFrameMV, FrameLoc_MV )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
MapObj=containers.Map();
VideoName={'rgb-01-1.avi','rgb-01-2.avi','rgb-02-1.avi','rgb-02-2.avi','rgb-03-1.avi'}
FrameLocation1=15;
FrameLocation2=13;
FrameLocation3=76;
MotionVector_u1=[1 22 3 ;2 5 6;5 8 10];
MotionVector_v1=[10 2 3;5 5 6;7 8 9];
MotionVector_u2=[13 2 31 ;42 5 6;71 85 9];
MotionVector_v2=[1 23 3;4 53 6;74 83 9];
MotionVector1={MotionVector_u1 MotionVector_v1};
MotionVector2={MotionVector_u2 MotionVector_v2};
MotionVector3={MotionVector_u1 MotionVector_v2};
MotionVector4={MotionVector_u2 MotionVector_v1};
MotionVector5={MotionVector_u1 MotionVector_u2};
Value1={FrameLocation1 MotionVector1; FrameLocation2 MotionVector2; FrameLocation3 MotionVector3};
Value2={FrameLocation1 MotionVector3; FrameLocation2 MotionVector4; FrameLocation3 MotionVector4};
Value3={FrameLocation1 MotionVector1; FrameLocation2 MotionVector5; FrameLocation3 MotionVector1};
Value4={FrameLocation1 MotionVector3; FrameLocation2 MotionVector4; FrameLocation3 MotionVector2};
Value5={FrameLocation1 MotionVector1; FrameLocation2 MotionVector2; FrameLocation3 MotionVector5};
Key1=VideoName{1};
MapObj(Key1)=Value1;
Key2=VideoName{2};
MapObj(Key2)=Value2;
Key3=VideoName{3};
MapObj(Key3)=Value3;
Key4=VideoName{4};
MapObj(Key4)=Value4;
Key5=VideoName{5};
MapObj(Key5)=Value5;
%MapObj(VideoName{1})
u=[1 2 3 ; 4 5 6 ; 7 8 9]
v=[12 3 4;2 44 42; 321 3 3]
KeyFrameMV={u v}
KeyFrameMV{1}

[output original]=Classification2(KeyFrameMV, MapObj )



%end

