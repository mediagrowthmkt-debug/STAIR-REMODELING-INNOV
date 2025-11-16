# 🏗️ Innov Builders - Stair Remodeling Campaigns

> Professional landing pages for Google Ads and Meta Ads campaigns optimized for stair remodeling lead generation.

[![License](https://img.shields.io/badge/license-Private-red.svg)]()
[![Status](https://img.shields.io/badge/status-Active-success.svg)]()

## 📁 Workspace Structure

```
STAIR-REMODELING/
│
├── 📄 index.html                    # Main menu - Campaign selector
├── 📄 README.md                     # This file
│
├── 📁 campaigns/                    # Campaign landing pages
│   ├── 📁 google/                   # Google Ads campaign
│   │   ├── index.html              # Google landing page
│   │   └── thank-you.html          # Google thank you page
│   │
│   └── 📁 meta/                     # Meta Ads campaign
│       ├── index.html              # Meta landing page
│       └── thank-you.html          # Meta thank you page
│
├── 📁 assets/                       # Centralized resources
│   ├── 📁 images/                  # All images
│   │   ├── logo innov builders.jpg
│   │   ├── STRAIR FROM INNOV BUILDERS.jpg
│   │   ├── 📁 hero/               # Hero section images
│   │   ├── 📁 before-after/       # Project galleries (1, 2, 3)
│   │   └── 📁 ceo/                # CEO photos
│   │
│   └── 📁 videos/                  # All videos
│       ├── IAGO TALKING ABOUT A STAIR REMODELING.mp4
│       └── STAIR REMODELLING FROM INNOV BUILDERS.mp4
│
├── 📁 docs/                         # Documentation
│   └── README.md                   # Detailed documentation
│
└── 📁 archive/                      # Archived files (not used in production)
    ├── 📁 old-files/               # Deprecated files
    └── 📁 reference-projects/      # Reference/backup projects
```

## 🚀 Quick Start

### Option 1: Open Main Menu
1. Open `index.html` in your browser
2. Select Google or Meta campaign
3. Navigate through the landing pages

### Option 2: Direct Access
- **Google Campaign**: Open `campaigns/google/index.html`
- **Meta Campaign**: Open `campaigns/meta/index.html`

## 🎯 Campaign Features

### Google Ads Campaign
- **Tracking**: 
  - ✅ Google Ads Tag (AW-16940335819)
  - ✅ Microsoft Clarity (u3navj5cej)
  - ✅ Lead Conversion Event
- **Features**:
  - Before/After interactive sliders
  - CEO video testimonial
  - Portfolio showcase (3 projects)
  - Contact form with webhook integration
  - Fully responsive design

### Meta Ads Campaign
- **Tracking**:
  - ✅ Meta Pixel (811056244975308)
  - ✅ Lead Event tracking
- **Features**:
  - Before/After interactive sliders
  - CEO video testimonial
  - Portfolio showcase (3 projects)
  - Contact form with webhook integration
  - Fully responsive design

## 📊 Assets Organization

All media files are centralized in the `assets/` folder:

| Type | Location | Description |
|------|----------|-------------|
| **Hero Images** | `assets/images/hero/` | Main hero slider images |
| **Before & After** | `assets/images/before-after/1-3/` | Project transformation galleries |
| **Videos** | `assets/videos/` | CEO and project videos |
| **CEO Photo** | `assets/images/ceo/` | Executive team photos |
| **Logos** | `assets/images/` | Company branding |

## 🔧 Development

### Adding New Images
1. Place image in appropriate `assets/images/` subfolder
2. Reference with relative path: `../assets/images/your-image.jpg`

### Adding New Videos
1. Place video in `assets/videos/`
2. Reference with: `../assets/videos/your-video.mp4`

### Updating Tracking Codes

**Google Ads:**
```javascript
// Edit in campaigns/google/index.html & thank-you.html
gtag('config', 'AW-16940335819');
```

**Meta Pixel:**
```javascript
// Edit in campaigns/meta/index.html & thank-you.html
fbq('init', '811056244975308');
```

## 📱 Responsive Breakpoints

- **Desktop**: 1200px+
- **Tablet**: 768px - 1199px
- **Mobile**: < 768px

## 🎨 Design System

### Color Palette
```css
--primary: #FFC300;      /* Innov Gold */
--secondary: #000000;    /* Black */
--background: #000, #111, #1a1a1a; /* Gradients */
--text-primary: #FFFFFF;
--text-secondary: #CCCCCC;
```

### Typography
- **Font Family**: Inter (weights: 400, 500, 600, 700, 800)
- **Headings**: 800 weight
- **Body**: 400-500 weight

## ✅ Features Checklist

### Both Campaigns
- [x] Responsive design
- [x] Before/After interactive sliders
- [x] Video integration
- [x] Portfolio showcase
- [x] Contact form with validation
- [x] Webhook integration
- [x] Smooth scroll navigation
- [x] Floating CTA button
- [x] Testimonials section
- [x] Stats/achievements display

### Google Campaign
- [x] Google Ads tracking
- [x] Microsoft Clarity
- [x] Conversion event (Lead)

### Meta Campaign  
- [x] Meta Pixel tracking
- [x] Lead event tracking
- [x] Social media optimized

## 📞 Contact Information

- **Phone**: (978) 871-0597
- **Email**: contact@innovbuildersusa.com
- **Address**: 7 Stevens St, Peabody, MA 01960
- **Website**: innovbuildersusa.com

## 📈 Performance

- ⚡ Optimized images
- 🎯 Lazy loading videos
- 📦 Minimal external dependencies
- 🚀 Fast page load times

## 🔒 Security

- ✅ Form validation
- ✅ Webhook security
- ✅ No exposed API keys
- ✅ HTTPS ready

## 📝 License

Private - Proprietary to Innov Builders

---

**Last Updated**: November 2025  
**Maintained by**: Media Growth Marketing  
**Version**: 2.0 (Reorganized Structure)

## 🗂️ Archive

The `archive/` folder contains:
- **old-files/**: Deprecated HTML files and original asset folders
- **reference-projects/**: Completed project photos for reference

These files are **not used** in the live campaigns but kept for backup purposes.

---

<p align="center">
  <strong>Innov Builders</strong> | Stair Remodeling Specialists | 11+ Years Experience
</p>
