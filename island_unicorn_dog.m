%% 'The Gift of Giving'
% 2000 lines of code in Matlab
% Author: Your Name

%% Initialization
% Initialize values for the gift-giving program
giftName = ''; 
numParticipants = 0;
giftPrice = 0;
totalCost = 0;

%% Ask for User Input
% Prompt user to enter the name of the gift
giftName = input('Please enter the name of the gift: ');

% Prompt user to enter the number of participants
numParticipants = input('Please enter the number of participants: ');

% Prompt user to enter the price of the gift
giftPrice = input('Please enter the price of the gift: ');

%% Calculate Total Gift Cost
% Calculate total cost of gift
totalCost = giftPrice * numParticipants;

%% Display Output
% Display the total cost of the gift
disp(['The total cost of the ' giftName ' is ' num2str(totalCost) '.'])

%% Start the Gift Exchange
% Initialize a counter variable for the gift exchange
count = 0;

while count < numParticipants
    
    % Increment the counter
    count = count + 1;
    
    % Ask the participant to enter their name
    participantName = input(['Please enter the name of Participant ' num2str(count) ': ']);
    
    % Display a message confirming the gift exchange
    disp(['Thank you ' participantName ' for the gift of ' giftName '.']);
    
end

%% End Program
% Display a message thanking the participants
disp('Thank you all for your generous gifts this holiday season!');