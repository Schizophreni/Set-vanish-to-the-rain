function [len] = IndexExtract(img_path, form)

dirOut = dir(fullfile(img_path, form));  % ��ȡ�ļ������ļ���
Names = {dirOut.name};  % ��ȡ�ļ�����cell
len = size(Names, 2);
end