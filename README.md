# 📖 Digital Autobiography Template

A beautiful, responsive Ruby on Rails template for creating stunning personal autobiography and memoir websites with modern Tailwind CSS styling and PDF export capabilities.

## ✨ Features

- **📱 Fully Responsive** - Works perfectly on desktop, tablet, and mobile
- **🎨 Modern Design** - Clean, professional layout with Tailwind CSS
- **📚 Chapter System** - Organize your life story into chapters
- **🖼️ Photo Galleries** - Beautiful image galleries with descriptions
- **🔐 Authentication** - Secure login system for content management
- **📝 Rich Content** - Support for text, images, and multimedia
- **📄 PDF Export** - Generate beautiful PDF versions of your autobiography
- **🎯 SEO Optimized** - Search engine friendly structure
- **⚡ Fast Performance** - Optimized for speed and performance
- **🔒 Privacy Controls** - Control who can view your content

## 🚀 Quick Start Guide

### 📋 What You'll Need Before Starting

Before you begin, make sure you have these installed on your computer:

- **Ruby 3.0 or higher** ([Download here](https://rubyinstaller.org/))
- **Git** ([Download here](https://git-scm.com/downloads))
- **Node.js & Yarn** ([Download Node.js](https://nodejs.org/), then run `npm install -g yarn`)

*Don't worry - we'll check these during setup!*

### 🎯 Step-by-Step Installation

Choose the setup method that works best for you:

#### Option 1: Interactive Setup Wizard (Recommended for beginners)

**The easiest way** - A guided setup with system checks and helpful messages:

```bash
# Download the project first
git clone https://github.com/pmnoos/autobiography-template.git
cd autobiography-template

# Run the interactive wizard
ruby setup_wizard.rb
```

This wizard will:
- ✅ Check all your system requirements  
- ✅ Guide you through any missing components
- ✅ Install everything automatically
- ✅ Provide clear next steps

#### Option 2: Automated Setup Script

**For users who prefer automated scripts:**

```bash
# Download the project
git clone https://github.com/pmnoos/autobiography-template.git
cd autobiography-template

# Windows (PowerShell)
ruby bin/setup_template

# Mac/Linux  
./setup.sh
# or
ruby bin/setup_template
```

#### Option 3: Manual Setup (For advanced users)

**If you prefer to see each step:**

1. **Clone and enter directory**
   ```bash
   git clone https://github.com/pmnoos/autobiography-template.git
   cd autobiography-template
   ```

2. **Install Ruby dependencies**
   ```bash
   bundle install
   ```

3. **Install JavaScript dependencies**
   ```bash
   yarn install
   ```

4. **Setup database with sample content**
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

5. **Start the server**
   ```bash
   rails server
   ```

### 🔐 First Login

Once your server is running, you can sign in to start creating your autobiography:

- **URL**: http://localhost:3000
- **Email**: `admin@example.com`
- **Password**: `password123`

*Change these credentials immediately after your first login!*

### ✅ Verify Everything Works

After setup, you should be able to:
- ✅ View the homepage with sample content
- ✅ Browse sample chapters in the "Chapters" section  
- ✅ View the photo gallery
- ✅ Sign in to the admin area
- ✅ Try the theme switcher in the navigation
- ✅ Test PDF export buttons (shows "coming soon" messages)

### 🔧 Troubleshooting Setup Issues

**Problem: "Ruby not found" or version too old**
```bash
# Check your Ruby version
ruby --version

# If you need to install/upgrade Ruby:
# Windows: Download from https://rubyinstaller.org/
# Mac: brew install ruby
# Linux: Use your package manager (apt, yum, etc.)
```

**Problem: "Bundle install fails"**
```bash
# Try updating bundler first
gem install bundler
bundle install
```

**Problem: "Rails not found"**
```bash
# Install Rails
gem install rails
```

**Problem: "Yarn not found"**
```bash
# Install yarn globally
npm install -g yarn
```

**Problem: "Database connection error"**
```bash
# Recreate the database
rails db:drop db:create db:migrate db:seed
```

**Problem: "Port 3000 already in use"**
```bash
# Start on a different port
rails server -p 3001
# Then visit http://localhost:3001
```

**Need more help?** Check the [full troubleshooting guide](docs/TROUBLESHOOTING.md) or create an issue on GitHub.

## 📄 PDF Export Features

Transform your digital autobiography into beautiful, printable PDFs:

### What You Can Export
- **Complete Autobiography** - Export your entire life story as a single PDF
- **Individual Chapters** - Generate PDFs for specific chapters
- **Photo Collections** - Create photo album PDFs with captions
- **Custom Compilations** - Select specific chapters to include

### PDF Features
- **Professional Formatting** - Clean, readable layouts optimized for print
- **Photo Integration** - High-quality images embedded within the text
- **Table of Contents** - Automatic generation with page numbers
- **Cover Pages** - Customizable covers with your photo and title
- **Print-Ready** - Optimized for both digital viewing and physical printing

### How to Generate PDFs
1. Navigate to any chapter or the main chapters list
2. Click the "Export PDF" button
3. Choose your export options (single chapter or full book)
4. Download your professionally formatted PDF

*Perfect for creating physical books, sharing with family, or preserving your legacy in multiple formats.*

## 🎨 Customization

### Change Colors & Branding

The template uses Tailwind CSS for easy customization:

1. **Update colors** in `app/assets/stylesheets/application.css`
2. **Replace images** in `public/` directory
3. **Modify text** in view files under `app/views/`

### Key Files to Customize

- `app/views/layouts/application.html.erb` - Main layout and navigation
- `app/views/pages/about.html.erb` - About page content
- `public/your-profile-photo.jpg` - Main profile image (replace with your photo)
- `public/icon.png` - Site favicon and icon

## 📁 Structure

```
app/
├── controllers/     # Application logic
├── models/         # Data models
├── views/          # HTML templates
│   ├── layouts/    # Main layout files
│   ├── chapters/   # Chapter pages
│   ├── photos/     # Gallery pages
│   └── pages/      # Static pages
└── assets/         # CSS, JS, and images
```

## 🛠️ Built With

- **Ruby on Rails 7** - Web framework
- **Tailwind CSS** - Utility-first CSS framework
- **SQLite/PostgreSQL** - Database
- **Stimulus** - JavaScript framework
- **Turbo** - SPA-like page acceleration

## 📖 Documentation

- [Customization Guide](docs/CUSTOMIZATION.md)
- [Deployment Guide](docs/DEPLOYMENT.md)
- [Troubleshooting](docs/TROUBLESHOOTING.md)

## 🌟 Live Demo

Visit the [live demo](https://autobiography-template-demo.herokuapp.com) to see it in action.

## 🎯 Perfect For

- **Personal Memoirs** - Share your life journey with family and friends
- **Family History** - Preserve stories for future generations  
- **Professional Biographies** - Showcase your career and achievements
- **Legacy Projects** - Create lasting digital monuments to important lives
- **Genealogy Documentation** - Combine family trees with personal stories
- **Gift Creation** - Create meaningful presents for loved ones

## � Why Choose This Template?

**A personal journey through life's chapters, memories, and moments. This digital autobiography template helps preserve stories and photographs for future generations.**

- ✅ **Easy to Use** - No coding experience required for content creation
- ✅ **Professional Results** - Beautiful, publication-quality output
- ✅ **Multiple Formats** - Web viewing AND PDF export
- ✅ **Future-Proof** - Built with modern, maintainable technology
- ✅ **Customizable** - Make it uniquely yours with colors, photos, and content
- ✅ **Secure** - Control access with built-in authentication

## 💰 License

This template is available for use. See [LICENSE.md](LICENSE.md) for details.

## 🤝 Support & Community

- 📧 **Email Support**: Available for technical questions
- 📚 **Documentation**: Comprehensive guides included
- 🐛 **Bug Reports**: Submit issues via GitHub
- 💡 **Feature Requests**: We're always improving!

---

*Transform your memories into a beautiful, lasting digital legacy that can be shared online and printed as a professional book.*
