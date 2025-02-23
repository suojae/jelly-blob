


# Contributing to Jelly Blob 🎨

Thank you for considering contributing to **Jelly Blob**! 🚀  
We welcome all contributions, whether it's fixing a bug, improving documentation, adding features, or optimizing performance.

---

## 📌 How to Contribute

1. **Fork the Repository**  
   Click the **Fork** button at the top of the repository page.

2. **Clone Your Fork**  
   Clone the repository to your local machine:
   ```bash
   git clone https://github.com/suojae/jelly_blob.git
   cd jelly_blob
   ```

3. **Create a New Branch**  
   Create a feature or bugfix branch with a descriptive name:
   ```bash
   git checkout -b feature-improve-animation
   ```

4. **Install Dependencies (Using Melos)**
   Jelly Blob is structured as a **Melos monorepo**, so you need to install Melos first and bootstrap dependencies:

   ```bash
   dart pub global activate melos
   melos bs
   ```

5. **Run the Example App (For Testing)**
   ```bash
   cd example
   flutter run
   ```

6. **Make Your Changes**
    - Follow **Flutter best practices** and **keep code modular**.
    - Maintain code **consistency and readability**.
    - Ensure **null safety** is maintained.

7. **Run Tests**  
   Ensure that all tests pass before committing:
   ```bash
   flutter test
   ```

8. **Commit & Push**
   ```bash
   git add .
   git commit -m "✨ Improve blob animation smoothing"
   git push origin feature-improve-animation
   ```

9. **Create a Pull Request (PR)**
    - Go to the **original repository**.
    - Click **"New Pull Request"**.
    - Select your branch and explain the changes clearly.
    - Follow **PR title guidelines** (see below).

---

## 📌 Contribution Guidelines

### ✅ **Code Style**
- Use **Dart's official formatting** (`dart format .`).
- Follow Flutter’s **effective Dart guidelines**.
- Write **descriptive comments** where necessary.

### ✅ **Commit Message Convention**
Use [Conventional Commits](https://www.conventionalcommits.org/), e.g.:
```
✨ feat: Add support for animated gradients
🐛 fix: Resolve animation flickering issue
📝 docs: Update README with usage examples
🚀 perf: Optimize blob rendering performance
```

---

## 📌 Reporting Issues

If you encounter a bug, please check [existing issues](https://github.com/suojae/jelly_blob/issues) first.  
If no one has reported it, [create a new issue](https://github.com/suojae/jelly_blob/issues/new) with:
- **Clear description** of the issue.
- Steps to **reproduce the bug**.
- **Flutter & package versions** used.
- Screenshots or logs (if applicable).

---

## 📌 Running the Example App (For Testing)

After setting up dependencies with `melos bs`, you can run the example app:

```bash
cd example
flutter run
```


**Happy coding! 🚀**
