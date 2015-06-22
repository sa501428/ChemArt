function split_image_rgb(image_filename)

image = imread(image_filename);

[ni, nj, ~] = size(image);

red_image = 0*image; red_image(:,:,1) = image(:,:,1);
green_image = 0*image; green_image(:,:,2) = image(:,:,2);
blue_image = 0*image; blue_image(:,:,3) = image(:,:,3);

imwrite(red_image, strcat('red.',image_filename), 'png', 'Alpha', 200*ones(ni, nj));
imwrite(green_image, strcat('green.',image_filename), 'png', 'Alpha', 200*ones(ni, nj));
imwrite(blue_image, strcat('blue.',image_filename), 'png', 'Alpha', 200*ones(ni, nj));

end