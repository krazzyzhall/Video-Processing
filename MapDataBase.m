MapObj=containers.Map();
VideoName={'sst','sere','rewwr'}
FrameLocation1=12;
FrameLocation2=12;
MotionVector_u=[1 2 3 ;4 5 6;7 8 9];
MotionVector_v=[1 2 3;4 5 6;7 8 9];
MotionVector1={MotionVector_u MotionVector_v};
MotionVector2={MotionVector_u MotionVector_v};
Value={FrameLocation1 MotionVector1; FrameLocation2 MotionVector2};
Key=VideoName{1};
MapObj(VideoName{1})=Value;
MapObj(VideoName{1})
