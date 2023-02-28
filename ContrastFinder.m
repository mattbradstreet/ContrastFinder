function contrastFinder=ContrastFinder(Im)

    % Function for calculating the RMS contrast of images

    Ig=rgb2gray(Im);

    vector = size(Im);
    row = vector(1);
    col = vector(2);
    totalBright = 0;
    totalSqB = 0;
    totalPixels = row*col;

    % iterate through pixels
    for j = 1:col
        for i = 1:row

            % add brightness values        
            cell = Ig(i,j);
            totalBright = double(totalBright) + double(cell);

        end
    end

    % divide by number of pixels = average brightness
    avBright = totalBright/totalPixels;

    % iterate through pixels
    for j = 1:col
        for i = 1:row

            % difference between brightness and average brightness
            cell = Ig(i,j);
            difBCell = double(cell)-double(avBright);

            % square the result
            sqBCell = difBCell^2;

            % add values for all pixels
            totalSqB = double(totalSqB) + sqBCell;

        end
    end

    % reciprocal
    recip = 1/totalPixels;

    % total and square root
    avTotal = recip * totalSqB;
    squareRoot = sqrt(avTotal);

    contrastFinder=squareRoot;
end