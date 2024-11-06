ImageProcessing('Blaise.bmp')
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
    
    %Функция для поворота на 45 градусов против часовой стрелки методом
    %nearest
    function TurnLeftNearestAndShow(image)
        [X, map] = imread(image);
        figure, imshow(imrotate(X, 45, "nearest"), map);
    end

    %Функция для поворота на 45 градусов против часовой стрелки методом
    %bilinear
    function TurnLeftBilinearAndShow(image)
        [X, map] = imread(image);
        figure, imshow(imrotate(X, 45, "bilinear"), map);
    end

    %Функция для поворота на 45 градусов против часовой стрелки методом
    %nearest
    function TurnLeftBicubicAndShow(image)
        [X, map] = imread(image);
        figure, imshow(imrotate(X, 45, "bicubic"), map);
    end

    %Функция для вывода исходного изображения
    function ShowImage(image)
        [X, map] = imread(image);
        figure, imshow(X, map);
    end

    GetInfo(imageName);
    [X, map] = ReadImage(imageName);
    ShowImage(imageName);
    TurnLeftNearestAndShow(imageName);
    TurnLeftBilinearAndShow(imageName);
    TurnLeftBicubicAndShow(imageName);
end
