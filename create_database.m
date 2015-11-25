function create_database(dirname)
% creates database based on the files present under dirname
cd(dirname);
filenames=dir;
cd('..')
for i=3:size(filenames,1)
    sprintf('starting video to convert to vector....');
   fillocName=['.\Videos\',filenames(i).name];
   vectors=video_to_vector(fillocName);
    sprintf(' video to convert to vector complete....');
   matName=[filenames(i).name(1:end-4) '_vectors.mat'];
   save(matName,'vectors');
   source=['C:\Users\sshukla5\Documents\Video-Processing-master\Videos\' matName]
   copyfile(source,'T:\VideoToVectors');
    sprintf('moved mat file');
end
end
