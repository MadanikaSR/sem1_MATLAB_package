# 🔐 MATLAB Password Generator

This project is a simple and interactive **password generator** written in MATLAB. It allows users to customize their password generation based on character types, desired password length, number of passwords, and optionally save the output to a file.

## 📌 Features

- Choose to include:
  - Uppercase letters
  - Lowercase letters
  - Digits
  - Special characters
- Specify password length and number of passwords to generate
- Avoids duplicate passwords
- Optionally save generated passwords to a file
- Easy-to-use console interface

---

## 🧑‍💻 How to Use

1. **Clone the repository** or download the `.m` file.
2. Open the script in **MATLAB** or **Octave**.
3. Run the script:
   ```matlab
   password_generator
Follow the on-screen prompts:

Choose character sets

Enter the password length

Enter the number of passwords to generate

Decide whether to save passwords to a file

**🗂 Example Output**
plaintext
Copy
Edit
Include uppercase letters? (y/n): y
Include lowercase letters? (y/n): y
Include digits? (y/n): y
Include special characters? (y/n): n
Enter the password length: 12
Enter the number of passwords to generate: 3
Do you want to save the passwords to a file? (y/n): y
Enter the file name (including extension): my_passwords.txt

Generated Password 1: Ab9dE7fGhT12
Generated Password 2: Lm8KpQz9RxY1
Generated Password 3: vB2uCeT1N4Xq
Passwords saved to my_passwords.txt.
THANK YOU


**💡 Notes**
The program avoids generating duplicate passwords.

Minimum character-type requirements are not currently enforced (e.g., "at least 1 special character").

Clipboard functionality is commented out but can be re-enabled if needed.

**🛠 Future Improvements**
Add options to specify minimum counts for character types.

Enable clipboard copying functionality on supported platforms.

Create a GUI version using MATLAB App Designer.

**📄 License**
This project is open-source and free to use. You can add your own license if needed (e.g., MIT, GPL).





