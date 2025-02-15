function result = myFunction(input)
  % Some code here
  try
    if input < 0
      error('Input must be non-negative');
    end
    % More code here
  catch exception
    % Handle the error gracefully
    fprintf('Error: %s\n', exception.message);
    result = NaN; % or some other default value
  end
end

% Example usage with error handling
input = -5;
result = myFunction(input); 
if isnan(result)
    disp('Error handled gracefully!');
end
input = 5;
result = myFunction(input); 