ImageProcessing('Bigbird.bmp')
function ImageProcessing(imageName)

    %Функция для чтения инфрмации о файле
    function GetInfo(name)
        info = imfinfo(name);
        disp(info);
    end

    %Функция для чтения изображения из файла
    function [X, map] = ReadImage(image)
        [X, map] = imread(image);
    end

    %Функция для вывода исходного изображения
    function ShowImage(image)
        [X, map] = imread(image);
        figure, imshow(X, map);
    end
    
    %Функция для преобразования в полутоновое изображение
    function I = TurnIndexedImageIntoGrayscaleImage(image)
         [X, map] = imread(image);
         I = ind2gray(X, map);
    end

    %Функция для отображения полутонового изображения
    function ShowImageGray(image)
        figure, imshow(image);
    end

    %Функция для контрастирования в цикле с изменением гаммы
    function ContrastImageAndShow(image)
        I1 = imadjust(image, [0.2 0.7], [], 0.5);
        I2 = imadjust(image, [0.2 0.7], [], 1);
        I3 = imadjust(image, [0.2 0.7], [], 1.5);
        figure, subplot(1,4,1), subimage(I1);
        subplot(1,4,2), subimage(I2);
        subplot(1,4,3), subimage(I3);
    end

    %Функция для получения негативного изображения
    function NegativeImage(image)
        MaxI = max(image(:));
        NI = MaxI - image;
        subplot(1,4,4), subimage(NI);
    end

    GetInfo(imageName);
    [X, map] = ReadImage(imageName);
    ShowImage(imageName);
    I = TurnIndexedImageIntoGrayscaleImage(imageName);
    ShowImageGray(I);
    ContrastImageAndShow(I);
    NegativeImage(I)
end
