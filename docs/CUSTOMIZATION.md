# 🎨 Customization Guide

This guide will help you customize the Autobiography Template to match your personal style and branding.

## 🎯 Quick Customization

### 1. Change Site Title & Branding

**File:** `app/views/layouts/application.html.erb`

```erb
<!-- Change the site title -->
<span class="text-xl font-bold text-gray-900">Your Name's Story</span>

<!-- Update footer text -->
<span class="text-xl font-semibold text-gray-900">Your Life Journey</span>
```

### 2. Replace Profile Images

**Files to replace:**
- `public/profile.jpg` - Main profile photo (recommended: 400x400px)
- `public/icon.png` - Site favicon (32x32px)
- `public/icon.svg` - SVG icon (scalable)

### 3. Update Colors

**File:** `app/assets/stylesheets/application.css`

The template uses Tailwind CSS. Common color classes to customize:

```css
/* Primary Colors */
bg-blue-600    → bg-green-600    /* Change blue to green */
text-blue-600  → text-green-600  /* Change text color */
hover:bg-blue-500 → hover:bg-green-500 /* Hover states */

/* Gradient Colors */
from-purple-400 to-blue-500 → from-red-400 to-orange-500
```

## 🎨 Advanced Customization

### Change the Color Scheme

**Popular color combinations:**

1. **Forest Green Theme**
   ```erb
   bg-green-600 hover:bg-green-500 text-green-600
   from-green-400 to-emerald-500
   ```

2. **Warm Orange Theme**
   ```erb
   bg-orange-600 hover:bg-orange-500 text-orange-600
   from-orange-400 to-red-500
   ```

3. **Professional Navy Theme**
   ```erb
   bg-slate-700 hover:bg-slate-600 text-slate-700
   from-slate-400 to-blue-500
   ```

### Customize Typography

**File:** `app/views/layouts/application.html.erb`

```erb
<!-- Change font sizes -->
text-xl → text-2xl    /* Larger text */
text-sm → text-base   /* Larger small text */

<!-- Change font weights -->
font-bold → font-black     /* Bolder */
font-medium → font-semibold /* More emphasis */
```

### Modify Layout Structure

**Key sections to customize:**

1. **Navigation Bar** (lines 26-89)
2. **Footer** (lines 93-156)
3. **Main Content Area** (line 91)

## 📝 Content Customization

### Update About Page

**File:** `app/views/pages/about.html.erb`

```erb
<!-- Change the main heading -->
<h1 class="text-4xl font-bold text-gray-900 mb-4">About Your Story</h1>

<!-- Update the description -->
<p class="text-xl text-gray-600 max-w-2xl mx-auto">
  Your personalized description here...
</p>
```

### Customize Feature List

Replace the bullet points with your own features:

```erb
<span class="text-gray-700 font-bold">Your custom feature</span>
```

## 🔧 Technical Customization

### Database Seeding

**File:** `db/seeds.rb`

Add sample content for your template:

```ruby
# Create sample user
user = User.create!(
  email_address: "demo@example.com",
  password: "password"
)

# Create sample chapters
Chapter.create!(
  title: "Early Years",
  content: "Sample chapter content...",
  user: user
)
```

### Environment Configuration

**File:** `config/application.rb`

```ruby
# Change application name
config.application_name = "Your Autobiography Template"
```

## 🎭 Theme Variations

### Create Multiple Color Themes

You can create CSS classes for different themes:

```css
/* Classic Theme */
.theme-classic {
  --primary: #1e40af;
  --secondary: #7c3aed;
}

/* Vintage Theme */
.theme-vintage {
  --primary: #92400e;
  --secondary: #dc2626;
}
```

## 📱 Mobile Customization

### Responsive Breakpoints

Tailwind CSS breakpoints used:
- `sm:` - 640px and up
- `md:` - 768px and up
- `lg:` - 1024px and up
- `xl:` - 1280px and up

### Mobile-Specific Styling

```erb
<!-- Show on mobile only -->
<div class="block md:hidden">Mobile content</div>

<!-- Hide on mobile -->
<div class="hidden md:block">Desktop content</div>
```

## 🚀 Performance Tips

1. **Optimize Images**
   - Use WebP format when possible
   - Compress images before uploading
   - Use appropriate sizes (profile: 400x400px)

2. **Minimize CSS**
   - Remove unused Tailwind classes
   - Use Tailwind's purge feature

3. **Cache Static Assets**
   - Enable Rails asset pipeline
   - Use CDN for images

## 📋 Checklist

Before launching your customized site:

- [ ] Replace all placeholder text
- [ ] Update profile images
- [ ] Change color scheme
- [ ] Test on mobile devices
- [ ] Update site title and meta tags
- [ ] Add your own content
- [ ] Test authentication system
- [ ] Verify all links work

## 🆘 Need Help?

- Check the [Troubleshooting Guide](TROUBLESHOOTING.md)
- Review [Tailwind CSS Documentation](https://tailwindcss.com/docs)
- Contact support at support@yoursite.com
