
function reult = match()

  clear all;
  close all;

  [filename, pathstr] = uigetfile("Select file");
  fullname = fullfile(pathstr, filename);

  Ha = getHuMoments(fullname);

  Files=dir('images');
  for k=3:length(Files)

    File=strcat("images/", Files(k).name);

    Hb = getHuMoments(File);

    % Euclidean Distance Calculations
    %-----------------------------------------------------------------------------------------------------
    sum = 0;
    for i=1:7
      sum += (Hb(i) - Ha(i))^2;
    end

    File
    D = sqrt(sum)

    results(k-2) = D;
    filenames{k-2} = Files(k).name;

  end



disp ("---------------------------------------------")
matching_file = filenames(find(results==min(results)))

end
