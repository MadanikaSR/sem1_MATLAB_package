uppercase_letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
lowercase_letters = 'abcdefghijklmnopqrstuvwxyz';
digits = '0123456789';
special_characters = '!@#$%&~?_';

character_set = '';
use_uppercase = input('Include uppercase letters? (y/n): ', 's');
if strcmpi(use_uppercase, 'y')
    character_set = [character_set, uppercase_letters];
end
use_lowercase = input('Include lowercase letters? (y/n): ', 's');
if strcmpi(use_lowercase, 'y')
    character_set = [character_set, lowercase_letters];
end
use_digits = input('Include digits? (y/n): ', 's');
if strcmpi(use_digits, 'y')
    character_set = [character_set, digits];
end
use_special = input('Include special characters? (y/n): ', 's');
if strcmpi(use_special, 'y')
    character_set = [character_set, special_characters];
end

if isempty(character_set)
    fprintf('Error: No character set selected. Exiting.\n');
    return;
end

password_length = input('Enter the password length: ');
num_passwords = input('Enter the number of passwords to generate: ');

save_to_file = input('Do you want to save the passwords to a file? (y/n): ', 's');
if strcmpi(save_to_file, 'y')
    file_name = input('Enter the file name (including extension): ', 's');
    fid = fopen(file_name, 'w');
end

generated_passwords = {};

for i = 1:num_passwords
    password = '';
    while length(password) < password_length
        random_index = randi(length(character_set));
        character = character_set(random_index);
        password = [password, character];
    end
    password = password(1:password_length);

    while ismember(password, generated_passwords)
        password = '';
        while length(password) < password_length
            random_index = randi(length(character_set));
            character = character_set(random_index);
            password = [password, character];
        end
        password = password(1:password_length);
    end

    generated_passwords{i} = password;
    fprintf('Generated Password %d: %s\n', i, password);

    if strcmpi(save_to_file, 'y')
        fprintf(fid, 'Generated Password %d: %s\n', i, password);
    end
end

if strcmpi(save_to_file, 'y')
    fclose(fid);
    fprintf('Passwords saved to %s.\n', file_name);
end

disp('THANK YOU');
