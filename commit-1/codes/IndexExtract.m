function [len] = IndexExtract(img_path)

dirOut = dir(fullfile(img_path, '*.png'));  % ��ȡ�ļ������ļ���
Names = {dirOut.name};  % ��ȡ�ļ�����cell
len = size(Names, 2);
end