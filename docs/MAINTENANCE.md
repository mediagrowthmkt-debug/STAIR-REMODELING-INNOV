# 🛠️ Maintenance Guide

## Quick Reference for Managing the Stair Remodeling Campaigns

---

## 📋 Common Tasks

### 1. Update Contact Information

**Files to edit:**
- `campaigns/google/index.html`
- `campaigns/google/thank-you.html`
- `campaigns/meta/index.html`
- `campaigns/meta/thank-you.html`

**Look for:**
```html
<i class="fas fa-phone"></i> (978) 871-0597
<i class="fas fa-envelope"></i> contact@innovbuildersusa.com
```

---

### 2. Add New Project to Portfolio

**Step 1:** Add before/after images
- Place images in: `assets/images/before-after/4/`
- Name them: `before.jpg` and `after.jpg`

**Step 2:** Update HTML (both Google and Meta index.html)
```html
<div class="portfolio-item">
    <div class="before-after-slider" data-project="project-4">
        <img src="../assets/images/before-after/4/after.jpg" alt="Before" class="before-image">
        <img src="../assets/images/before-after/4/before.jpg" alt="After" class="after-image">
        <div class="slider-handle"></div>
        <div class="before-after-labels">
            <span class="before-label">BEFORE</span>
            <span class="after-label">AFTER</span>
        </div>
    </div>
    <div class="portfolio-content">
        <h3>Your Project Title</h3>
        <p>Project 4 - Location</p>
    </div>
</div>
```

---

### 3. Update CEO Video

**Step 1:** Add new video
- Place in: `assets/videos/`
- Recommended name: `ceo-message-YYYY-MM.mp4`

**Step 2:** Update video tag
```html
<video controls poster="../assets/images/ceo/poster.jpg">
    <source src="../assets/videos/ceo-message-2025-11.mp4" type="video/mp4">
</video>
```

---

### 4. Change Google Ads Conversion Tracking

**File:** `campaigns/google/thank-you.html`

**Find this section:**
```javascript
gtag('event', 'conversion', {
    'send_to': 'AW-16940335819/9DVwCJ63s7sbEMuF5I0_',
    'value': 1.0,
    'currency': 'USD'
});
```

**Replace with your new conversion ID**

---

### 5. Change Meta Pixel ID

**Files:** 
- `campaigns/meta/index.html`
- `campaigns/meta/thank-you.html`

**Find:**
```javascript
fbq('init', '811056244975308');
```

**Replace** `811056244975308` with new Pixel ID

---

### 6. Update Testimonials

**Location:** Both `campaigns/google/index.html` and `campaigns/meta/index.html`

**Find the testimonials section:**
```html
<div class="testimonial">
    <div class="stars">⭐⭐⭐⭐⭐</div>
    <p class="testimonial-text">"Your testimonial here..."</p>
    <p class="testimonial-author">— Client Name, Location</p>
</div>
```

---

### 7. Change Form Webhook URL

**Location:** Both Google and Meta `index.html` files

**Find:**
```javascript
fetch('https://hook.us2.make.com/ctp3mh229k0mi9ujiy1xcu1xh84fpa3x', {
```

**Replace** with your new webhook URL

---

### 8. Add New Hero Image

**Step 1:** Add image
- Place in: `assets/images/hero/`

**Step 2:** Add to slider
```html
<div class="hero-slide" style="background-image: url('../assets/images/hero/your-new-image.jpg')"></div>
```

---

## 🎨 Styling Updates

### Change Brand Colors

**Find in both campaign files:**
```css
/* Primary color (gold) */
#FFC300

/* Replace with your color */
#YOUR_COLOR
```

**Search and replace globally:**
- Background: `#FFC300` 
- Text/borders: `#FFC300`
- Button: `#FFC300`

---

### Update Fonts

**Current:** Inter (Google Fonts)

**To change:**
1. Update the `<link>` in `<head>`:
```html
<link href="https://fonts.googleapis.com/css2?family=YOUR_FONT:wght@400;500;600;700;800&display=swap" rel="stylesheet">
```

2. Update CSS:
```css
font-family: 'YOUR_FONT', sans-serif;
```

---

## 📊 Analytics & Tracking

### Check if tracking is working

**Google Ads:**
1. Open browser DevTools (F12)
2. Go to Network tab
3. Filter: `gtag`
4. Submit form
5. Look for requests to `google-analytics.com`

**Meta Pixel:**
1. Install Meta Pixel Helper extension
2. Visit campaign page
3. Check extension icon for green checkmark
4. Submit form
5. Verify "Lead" event fires

---

## 🚨 Troubleshooting

### Images not loading
- Check file path is correct: `../assets/images/...`
- Verify image exists in folder
- Check file name matches exactly (case-sensitive)

### Videos not playing
- Ensure video format is MP4
- Check file size (keep under 50MB for web)
- Verify path: `../assets/videos/...`

### Form not submitting
- Check webhook URL is correct
- Verify all required fields have `required` attribute
- Check browser console for JavaScript errors
- Test webhook URL with Postman

### Conversion not tracking
- Verify Google Ads tag is present
- Check conversion ID format
- Wait 24-48 hours for data to appear
- Use Google Tag Assistant to debug

---

## 📁 File Structure Reference

```
Quick paths for editing:

Main Menu:
  index.html

Google Campaign:
  campaigns/google/index.html
  campaigns/google/thank-you.html

Meta Campaign:
  campaigns/meta/index.html
  campaigns/meta/thank-you.html

Images:
  assets/images/
  assets/images/hero/
  assets/images/before-after/
  assets/images/ceo/

Videos:
  assets/videos/
```

---

## ✅ Pre-Launch Checklist

Before pushing changes to live:

- [ ] Test all forms submit correctly
- [ ] Verify all images load
- [ ] Check all videos play
- [ ] Test on mobile device
- [ ] Verify tracking codes fire
- [ ] Check all links work
- [ ] Spelling/grammar check
- [ ] Test in different browsers (Chrome, Safari, Firefox)
- [ ] Verify thank-you pages redirect properly
- [ ] Check contact information is correct

---

## 🆘 Emergency Contacts

**Developer Support:** [Your contact]  
**Hosting Provider:** [Hosting details]  
**Domain Registrar:** [Domain details]

---

**Last Updated:** November 2025  
**Next Review:** January 2026
