
function H = getHuMoments(fullname)

  %Load image and normalize
  %-------------------------------------------------------------------------------------------------------
  img = cv.imread(fullname);
  f_img = cv.medianBlur(img, 'KSize', 3);

  blue = f_img(:,:,3);
  %Segment image atdaptive threshold and trhesholding using Otsu algorithm
  %--------------------------------------------------------------------------------------------------------
  th = cv.threshold(blue, 'Otsu', 'Type', 'BinaryInv');

  elem = cv.getStructuringElement('Shape', 'Cross', 'KSize', [3,3]);

  th = cv.morphologyEx(th, 'Close', 'Element', elem, 'Iterations', 1);

  %Calculate images moments and Hu moments
  %--------------------------------------------------------------------------------------------------------
  moments = cv.moments(th);
  hu = cv.HuMoments(moments);

  %Log transformation to make Hu parameters more comparable
  for i=1:7
     H(i) = -sign(hu(i))*log10(abs(hu(i)));
  end

end
