#!/bin/bash

# Digital Autobiography Template Setup Script
# This script helps you set up the autobiography template on Mac/Linux

echo "📖 Digital Autobiography Template Setup"
echo "=================================================="
echo

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

print_info() {
    echo -e "${BLUE}🔍 $1${NC}"
}

# Check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check Ruby
print_info "Checking Ruby version..."
if command_exists ruby; then
    ruby_version=$(ruby -v | cut -d' ' -f2)
    if [[ $(echo "$ruby_version 3.0" | tr " " "\n" | sort -V | head -n1) == "3.0" ]]; then
        print_success "Ruby $ruby_version - Perfect!"
    else
        print_error "Ruby $ruby_version is too old. Please upgrade to 3.0+"
        echo "   Install with: brew install ruby (Mac) or your package manager (Linux)"
        exit 1
    fi
else
    print_error "Ruby not found. Please install Ruby 3.0+"
    exit 1
fi

# Check Git
print_info "Checking Git..."
if command_exists git; then
    print_success "Git - Good!"
else
    print_error "Git not found. Please install Git first."
    exit 1
fi

# Check Node.js
print_info "Checking Node.js..."
if command_exists node; then
    print_success "Node.js - Good!"
else
    print_error "Node.js not found. Please install from: https://nodejs.org/"
    exit 1
fi

# Check/Install Yarn
print_info "Checking Yarn..."
if command_exists yarn; then
    print_success "Yarn - Good!"
else
    echo "Installing Yarn..."
    npm install -g yarn
    if [ $? -eq 0 ]; then
        print_success "Yarn installed!"
    else
        print_error "Failed to install Yarn"
        exit 1
    fi
fi

echo
echo "📦 Installing dependencies..."
echo "   This may take a few minutes..."

# Install Ruby gems
echo -n "   Installing Ruby gems... "
if bundle install > /dev/null 2>&1; then
    print_success ""
else
    print_error ""
    echo "Failed to install gems. Check your internet connection."
    exit 1
fi

# Install JavaScript packages
echo -n "   Installing JavaScript packages... "
if yarn install > /dev/null 2>&1; then
    print_success ""
else
    print_error ""
    echo "Failed to install JavaScript packages."
    exit 1
fi

echo
echo "🗄️ Setting up database..."

# Database setup
echo -n "   Creating database... "
if rails db:create > /dev/null 2>&1; then
    print_success ""
else
    print_error ""
    echo "Database creation failed."
    exit 1
fi

echo -n "   Running migrations... "
if rails db:migrate > /dev/null 2>&1; then
    print_success ""
else
    print_error ""
    echo "Migration failed."
    exit 1
fi

echo -n "   Adding sample content... "
if rails db:seed > /dev/null 2>&1; then
    print_success ""
else
    print_error ""
    echo "Seeding failed."
    exit 1
fi

echo
echo "🎉 Setup Complete!"
echo "=================================================="
echo
echo "🚀 Next steps:"
echo "1. Start the server:"
echo "   rails server"
echo
echo "2. Open your browser and visit:"
echo "   http://localhost:3000"
echo
echo "3. Sign in with:"
echo "   Email: admin@example.com"
echo "   Password: password123"
echo
echo "4. Start customizing your autobiography!"
echo
echo "📚 Need help? Check docs/TROUBLESHOOTING.md"
echo
echo "Happy writing! 📖✨"
