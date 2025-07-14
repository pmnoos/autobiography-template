#!/usr/bin/env ruby

# Interactive Setup Wizard for Digital Autobiography Template
# This provides a guided, interactive setup experience

require 'io/console'

class SetupWizard
  def initialize
    @errors = []
    @warnings = []
  end

  def run
    welcome
    check_system
    
    if @errors.any?
      show_errors_and_exit
    end
    
    show_warnings if @warnings.any?
    
    if confirm_proceed
      install_dependencies
      setup_database
      show_completion
    else
      puts "\n👋 Setup cancelled. Run this script again when you're ready!"
    end
  end

  private

  def welcome
    clear_screen
    puts <<~WELCOME
      📖 Digital Autobiography Template
      ════════════════════════════════════════════════════════════════
      
      Welcome! This wizard will help you set up your personal
      autobiography template in just a few steps.
      
      What this wizard will do:
      • Check your system requirements
      • Install all necessary dependencies  
      • Set up the database with sample content
      • Provide next steps to get started
      
      Let's begin! 🚀
      
    WELCOME
    
    print "Press ENTER to continue..."
    gets
  end

  def check_system
    clear_screen
    puts "🔍 System Requirements Check"
    puts "─" * 40
    puts

    check_ruby
    check_rails
    check_node
    check_yarn
    check_git

    puts "\n" + "─" * 40
    
    if @errors.empty?
      puts "✅ All requirements met! Ready to proceed."
    else
      puts "❌ Some requirements are missing. See details below."
    end
  end

  def check_ruby
    print "Ruby 3.0+                    "
    
    if system("ruby --version > /dev/null 2>&1")
      version = `ruby --version`.match(/ruby (\d+\.\d+)/)[1]
      if version >= "3.0"
        puts "✅ #{version}"
      else
        puts "❌ #{version} (too old)"
        @errors << "Ruby version #{version} is too old. Please install Ruby 3.0 or higher."
      end
    else
      puts "❌ Not found"
      @errors << "Ruby is not installed. Please install Ruby 3.0 or higher."
    end
  end

  def check_rails
    print "Rails 7.0+                   "
    
    begin
      require 'rails/version'
      puts "✅ #{Rails.version}"
    rescue LoadError
      puts "⚠️  Not found"
      @warnings << "Rails not found. We'll install it for you."
    end
  end

  def check_node
    print "Node.js                      "
    
    if system("node --version > /dev/null 2>&1")
      version = `node --version`.strip
      puts "✅ #{version}"
    else
      puts "❌ Not found"
      @errors << "Node.js is not installed. Please install from https://nodejs.org/"
    end
  end

  def check_yarn
    print "Yarn                         "
    
    if system("yarn --version > /dev/null 2>&1")
      version = `yarn --version`.strip
      puts "✅ #{version}"
    else
      puts "⚠️  Not found"
      @warnings << "Yarn not found. We'll install it for you."
    end
  end

  def check_git
    print "Git                          "
    
    if system("git --version > /dev/null 2>&1")
      puts "✅ Installed"
    else
      puts "❌ Not found"
      @errors << "Git is not installed. Please install Git first."
    end
  end

  def show_errors_and_exit
    puts "\n🚨 Setup cannot continue due to missing requirements:"
    puts
    
    @errors.each_with_index do |error, index|
      puts "#{index + 1}. #{error}"
    end
    
    puts "\n📚 Installation guides:"
    puts "• Ruby: https://rubyinstaller.org/ (Windows) or use package manager"
    puts "• Node.js: https://nodejs.org/"
    puts "• Git: https://git-scm.com/downloads"
    puts
    puts "💡 After installing missing components, run this setup again."
    
    exit 1
  end

  def show_warnings
    puts "\n⚠️  Notes:"
    @warnings.each_with_index do |warning, index|
      puts "#{index + 1}. #{warning}"
    end
  end

  def confirm_proceed
    puts "\n❓ Ready to install? This will:"
    puts "   • Install Ruby gems and JavaScript packages"
    puts "   • Create and populate the database"
    puts "   • Set up sample autobiography content"
    puts
    print "Continue? (y/n): "
    
    response = gets.chomp.downcase
    response == 'y' || response == 'yes'
  end

  def install_dependencies
    clear_screen
    puts "📦 Installing Dependencies"
    puts "─" * 40
    puts

    # Install Rails if needed
    unless defined?(Rails)
      puts "Installing Rails..."
      unless system("gem install rails")
        puts "❌ Failed to install Rails"
        exit 1
      end
      puts "✅ Rails installed"
      puts
    end

    # Install Yarn if needed
    unless system("yarn --version > /dev/null 2>&1")
      puts "Installing Yarn..."
      unless system("npm install -g yarn")
        puts "❌ Failed to install Yarn"
        exit 1
      end
      puts "✅ Yarn installed"
      puts
    end

    puts "Installing Ruby gems..."
    print "   Progress: "
    
    if system("bundle install > /dev/null 2>&1")
      puts "✅ Complete"
    else
      puts "❌ Failed"
      puts "\nTry running: bundle install"
      exit 1
    end

    puts "Installing JavaScript packages..."
    print "   Progress: "
    
    if system("yarn install > /dev/null 2>&1")
      puts "✅ Complete"
    else
      puts "❌ Failed"
      puts "\nTry running: yarn install"
      exit 1
    end
  end

  def setup_database
    puts "\n🗄️ Database Setup"
    puts "─" * 20
    puts

    steps = [
      ["Creating database", "rails db:create"],
      ["Running migrations", "rails db:migrate"],
      ["Adding sample content", "rails db:seed"]
    ]

    steps.each do |description, command|
      print "#{description}... "
      
      if system("#{command} > /dev/null 2>&1")
        puts "✅"
      else
        puts "❌"
        puts "\nDatabase setup failed. Try running: #{command}"
        exit 1
      end
    end
  end

  def show_completion
    clear_screen
    puts <<~COMPLETION
      🎉 Setup Complete!
      ════════════════════════════════════════════════════════════════
      
      Your Digital Autobiography Template is ready! 🚀
      
      🏁 Next Steps:
      
      1. Start the server:
         rails server
      
      2. Open your browser to:
         http://localhost:3000
      
      3. Sign in with these credentials:
         📧 Email: admin@example.com
         🔑 Password: password123
         ⚠️  Change these after your first login!
      
      4. Start creating your autobiography:
         • Write your first chapter
         • Upload family photos
         • Try the different themes
         • Customize the design
      
      📚 Documentation:
         • README.md - Overview and features  
         • docs/CUSTOMIZATION.md - Customization guide
         • docs/TROUBLESHOOTING.md - Help with issues
      
      🆘 Need help?
         • Check the troubleshooting guide
         • Create an issue on GitHub
         • Email support with questions
      
      ────────────────────────────────────────────────────────────────
      
      Thank you for choosing the Digital Autobiography Template!
      Start preserving your memories today. 📖✨
      
      Happy writing! 🎭
      
    COMPLETION
  end

  def clear_screen
    system('clear') || system('cls')
  end
end

# Run the wizard
SetupWizard.new.run
