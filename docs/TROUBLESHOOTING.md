# 🔧 Troubleshooting Guide

This guide helps you resolve common issues when setting up the Digital Autobiography Template.

## 🚨 Installation Problems

### Ruby Issues

**Error: "Ruby not found" or "Ruby version too old"**

**Solution:**
1. Check your current Ruby version:
   ```bash
   ruby --version
   ```

2. If Ruby is not installed or version is below 3.0:
   - **Windows**: Download from [RubyInstaller](https://rubyinstaller.org/)
   - **Mac**: 
     ```bash
     brew install ruby
     ```
   - **Linux (Ubuntu/Debian)**:
     ```bash
     sudo apt update
     sudo apt install ruby-full
     ```

3. Restart your terminal and verify:
   ```bash
   ruby --version
   ```

### Bundler Issues

**Error: "Could not find Bundler" or bundle install fails**

**Solutions:**
1. Install/update Bundler:
   ```bash
   gem install bundler
   ```

2. If you get permission errors on Mac/Linux:
   ```bash
   sudo gem install bundler
   ```

3. Try bundle install again:
   ```bash
   bundle install
   ```

### Rails Issues

**Error: "Rails is not currently installed"**

**Solution:**
```bash
gem install rails
rails --version
```

### Node.js and Yarn Issues

**Error: "Yarn not found" or "Node.js not installed"**

**Solutions:**
1. Install Node.js from [nodejs.org](https://nodejs.org/)

2. Install Yarn globally:
   ```bash
   npm install -g yarn
   ```

3. Verify installation:
   ```bash
   node --version
   yarn --version
   ```

## 🗄️ Database Problems

### Database Creation Fails

**Error: "Could not create database" or connection errors**

**Solutions:**
1. Make sure you're in the project directory:
   ```bash
   cd autobiography-template
   ```

2. Try recreating the database:
   ```bash
   rails db:drop
   rails db:create
   rails db:migrate
   rails db:seed
   ```

3. If SQLite issues persist, delete the database file:
   ```bash
   rm storage/development.sqlite3
   rails db:create db:migrate db:seed
   ```

### Migration Errors

**Error: "Migration failed" or schema issues**

**Solution:**
```bash
# Reset the database completely
rails db:reset
```

## 🚀 Server Problems

### Port Already in Use

**Error: "Port 3000 is already in use"**

**Solutions:**
1. Use a different port:
   ```bash
   rails server -p 3001
   ```
   Then visit http://localhost:3001

2. Kill the process using port 3000:
   - **Windows**:
     ```cmd
     netstat -ano | findstr :3000
     taskkill /PID [PID_NUMBER] /F
     ```
   - **Mac/Linux**:
     ```bash
     lsof -ti:3000 | xargs kill -9
     ```

### Server Won't Start

**Error: Various server startup errors**

**Solutions:**
1. Check for syntax errors:
   ```bash
   rails console
   ```

2. Clear temporary files:
   ```bash
   rails tmp:clear
   ```

3. Restart the server:
   ```bash
   rails server
   ```

## 🎨 Asset Problems

### CSS/JavaScript Not Loading

**Error: Styles or scripts not working**

**Solutions:**
1. Precompile assets:
   ```bash
   rails assets:precompile
   ```

2. Clear asset cache:
   ```bash
   rails tmp:clear
   rails assets:clobber
   ```

3. Restart the server:
   ```bash
   rails server
   ```

## 🔐 Authentication Issues

### Can't Sign In

**Problem: Login credentials not working**

**Default credentials:**
- Email: `admin@example.com`
- Password: `password123`

**Solutions:**
1. Make sure you ran the seed command:
   ```bash
   rails db:seed
   ```

2. Reset the database if needed:
   ```bash
   rails db:reset
   ```

3. Check in Rails console:
   ```bash
   rails console
   User.first
   ```

## 🖼️ Image Upload Problems

### Images Not Displaying

**Solutions:**
1. Check file permissions in `storage/` directory
2. Restart the server after uploading images
3. Make sure images are in supported formats (JPG, PNG, GIF)

## 💻 Platform-Specific Issues

### Windows Issues

**Error: "Invalid byte sequence" or encoding errors**

**Solution:**
Add to your terminal startup or run before each session:
```cmd
set LANG=en_US.UTF-8
set LC_ALL=en_US.UTF-8
```

**Error: "Permission denied" when running scripts**

**Solution:**
Use PowerShell as Administrator or run:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Mac Issues

**Error: "Permission denied" for gem installation**

**Solution:**
Use a Ruby version manager like rbenv:
```bash
brew install rbenv
rbenv install 3.0.0
rbenv global 3.0.0
```

### Linux Issues

**Error: Missing system dependencies**

**Solution (Ubuntu/Debian):**
```bash
sudo apt update
sudo apt install build-essential nodejs yarn sqlite3 libsqlite3-dev
```

## 🆘 Getting More Help

### Before Asking for Help

1. ✅ Check this troubleshooting guide
2. ✅ Search existing GitHub issues
3. ✅ Include your system information:
   ```bash
   ruby --version
   rails --version
   node --version
   yarn --version
   ```

### Where to Get Help

1. **GitHub Issues**: [Create an issue](https://github.com/pmnoos/autobiography-template/issues)
2. **Email Support**: Include error messages and system info
3. **Documentation**: Check all files in the `docs/` folder

### What to Include in Bug Reports

- Your operating system (Windows/Mac/Linux)
- Ruby version (`ruby --version`)
- Rails version (`rails --version`)
- Full error message (copy and paste)
- Steps you took before the error occurred
- Whether you modified any files

---

*Most setup issues can be resolved by ensuring you have the correct versions of Ruby, Rails, and Node.js installed. When in doubt, try the automated setup script first!*
