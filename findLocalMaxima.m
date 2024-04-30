function maxima = findLocalMaxima(image)
    % Get the size of the image
    [rows, cols] = size(image);
    
    % Initialize an empty array to store local maxima
    maxima = [];
    
    % Define a neighborhood size for finding local maxima
    neighborhood_size = 3; % Adjust as needed
    
    % Iterate over each pixel in the image
    for i = 1:rows
        for j = 1:cols
            % Get the neighborhood around the current pixel
            row_range = max(1, i-neighborhood_size):min(rows, i+neighborhood_size);
            col_range = max(1, j-neighborhood_size):min(cols, j+neighborhood_size);
            neighborhood = image(row_range, col_range);
            
            % Check if the current pixel is a local maximum
            if image(i,j) == max(neighborhood(:))
                % Add the coordinates of the local maximum to the list
                maxima = [maxima; [i, j]];
            end
        end
    end
end

% the way they do it : 

 %   max_positions_lin = imregionalmax(reshape(im,size(im,1),size(im,2)*size(im,3)), 8);
 %   max_positions = reshape(gather(max_positions_lin), size(im));
 %   max_values = im(max_positions); clear im
 %   list_max = find(max_positions);
 %   [z_max, x_max, frame_max] = ind2sub(size(max_positions), list_max);