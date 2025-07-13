# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Create a default demo user for the autobiography template
demo_user = User.find_or_create_by(email_address: "demo@autobiography-template.com") do |user|
  user.password = "password123"
end

puts "✅ Demo user created/found:"
puts "📧 Email: #{demo_user.email_address}"
puts "🔐 Password: password123"

# Create sample chapters for demonstration
sample_chapters = [
  {
    title: "Early Years (1990-2000)",
    content: "This is where you would write about your early childhood, family background, and formative experiences. Replace this placeholder text with your own meaningful memories and stories.",
    created_at: 10.years.ago
  },
  {
    title: "School Days (2000-2012)",
    content: "Document your educational journey, friendships formed, challenges overcome, and achievements earned. This template provides a beautiful way to preserve these important memories.",
    created_at: 8.years.ago
  },
  {
    title: "Career Beginnings (2012-2018)",
    content: "Share your professional journey, first jobs, career developments, and lessons learned. The chapter system makes it easy to organize your life story chronologically.",
    created_at: 5.years.ago
  },
  {
    title: "Recent Adventures (2018-Present)",
    content: "Continue your story with recent events, current projects, and future aspirations. This template grows with you as you add new chapters to your life.",
    created_at: 1.year.ago
  }
]

sample_chapters.each do |chapter_data|
  Chapter.find_or_create_by(title: chapter_data[:title]) do |chapter|
    chapter.content = chapter_data[:content]
    chapter.created_at = chapter_data[:created_at]
  end
end

# Create sample photos  
sample_photos = [
  {
    title: "Family Portrait",
    description: "A wonderful family gathering that captures the essence of togetherness. Replace with your own cherished family photos.",
    caption: "Sample family photo - replace with your own images"
  },
  {
    title: "Graduation Day", 
    description: "A milestone achievement worth preserving for future generations. The photo gallery feature makes it easy to organize and display your precious memories.",
    caption: "Sample graduation photo - customize with your achievements"
  },
  {
    title: "Travel Adventure",
    description: "Exploring new places and creating lasting memories. Document your journeys and adventures with beautiful photo galleries.", 
    caption: "Sample travel photo - add your own adventures"
  }
]

sample_photos.each do |photo_data|
  Photo.find_or_create_by(title: photo_data[:title]) do |photo|
    photo.description = photo_data[:description]
    photo.caption = photo_data[:caption]
  end
end

puts
puts "🎨 Sample content created:"
puts "📚 #{Chapter.count} demo chapters"
puts "🖼️  #{Photo.count} demo photos"
puts
puts "🚀 Your Autobiography Template is ready!"
puts "👉 Sign in with: demo@autobiography-template.com / password123"
puts "📝 Replace this sample content with your own stories and photos."
