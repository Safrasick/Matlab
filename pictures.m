ChangeImage('photo1.bmp');
function ChangeImage(filename)

    %Чтение файла
    function RGB = readImage(file)
        RGB = imread(file);
    end

    %Преобразование в полутона
    function convertAndSaveGray(image)
        I = rgb2gray(image);
        imwrite(I, "NewImage1.bmp");
    end

    %Преобразование в палитровое
    function convertAndSaveColor(image)
        [X, map] = rgb2ind(image, 255);
        imwrite(X, "NewImage2.bmp");
    end

    %Вывод изображения
    function displayImageWithRange(image, range)
        figure;
        imshow(image, range);
    end

    %Вывод по вертикали
    function displayVerticalImages(image1, image2, title1, title2)
        figure;
        subplot(2,1,1), subimage(image1);
        imshow(image1);
        title(title1);
        subplot(2,1,2), subimage(image2);
        imshow(image2);
        title(title2);
    end

    %Вывод полутонового изображения
    function displayGrayImage(image)
        figure(1);
        D = im2double(image);
        imshow(D);
    end

    %Вывод полноцветного изображения
    function displayColorImage(image)
        figure(2);
        D = im2double(image);
        imshow(D);
    end

    info = imfinfo(filename);
    RGB = readImage(filename);
    convertAndSaveGray(RGB);
    convertAndSaveColor(RGB);
    displayImageWithRange(rgb2gray(RGB), [0.2 0.8]);
    RGB = readImage(filename);
    I = rgb2gray(RGB);
    displayGrayImage(I);
    displayColorImage(RGB);
    RGB = imread(filename);
    I = rgb2gray(RGB);
    displayVerticalImages(I, RGB, 'Полутоновое изображение', 'Полноцветное изображение');
end
