# 🌳 Project Tree Structure

## Complete Workspace Organization

```
STAIR-REMODELING/
│
├── 📄 .gitignore                                    (683 B)
├── 📄 README.md                                     (5.9 KB)
├── 📄 index.html                                    (9.3 KB)
│
├── 📁 campaigns/                                    (144 KB)
│   │
│   ├── 📁 google/
│   │   ├── 📄 index.html                          (59 KB) ⭐ Google Landing Page
│   │   └── 📄 thank-you.html                      (8 KB)  ⭐ Google Thank You
│   │
│   └── 📁 meta/
│       ├── 📄 index.html                          (59 KB) ⭐ Meta Landing Page
│       └── 📄 thank-you.html                      (10 KB) ⭐ Meta Thank You
│
├── 📁 assets/                                       (33 MB)
│   │
│   ├── 📁 images/
│   │   ├── 📷 logo innov builders.jpg             (42 KB)
│   │   ├── 📷 STRAIR FROM INNOV BUILDERS.jpg      (220 KB)
│   │   │
│   │   ├── 📁 hero/
│   │   │   ├── 📷 5-Compelling-Reasons-to-Move-or-Add-a-Staircase-in-Your-Home-01-1024x683.jpg
│   │   │   └── 📷 Staircase-Renovation-Ideas-Costs-72px.webp
│   │   │
│   │   ├── 📁 before-after/
│   │   │   ├── 📁 1/
│   │   │   │   ├── 📷 before.jpg
│   │   │   │   └── 📷 after.jpg
│   │   │   │
│   │   │   ├── 📁 2/
│   │   │   │   ├── 📷 PHOTO-2024-09-03-14-32-26(2).jpg
│   │   │   │   └── 📷 PHOTO-2024-09-03-14-34-12(23).jpg
│   │   │   │
│   │   │   └── 📁 3/
│   │   │       ├── 📷 before.jpeg
│   │   │       └── 📷 after.jpeg
│   │   │
│   │   └── 📁 ceo/
│   │       └── 📷 innovbuilders ceo iago maciel.png
│   │
│   └── 📁 videos/
│       ├── 🎬 IAGO TALKING ABOUT A STAIR REMODELING.mp4     (15 MB)
│       └── 🎬 STAIR REMODELLING FROM INNOV BUILDERS.mp4     (8 MB)
│
├── 📁 docs/                                         (12 KB)
│   ├── 📄 README.md                                 (4 KB)   - Detailed documentation
│   ├── 📄 MAINTENANCE.md                            (6 KB)   - How to maintain
│   └── 📄 PROJECT-OVERVIEW.md                       (2 KB)   - Project stats
│
└── 📁 archive/                                      (37 MB)
    │
    ├── 📁 old-files/
    │   ├── 📁 hero-images-original/
    │   ├── 📁 before-after-original/
    │   ├── 📁 videos-original/
    │   ├── 📁 ceo-photo-original/
    │   ├── 📁 anuncios/
    │   ├── 📁 untitled-folder/
    │   ├── 📄 index 10.19.07 10.19.07.html
    │   ├── 📄 test-form 10.19.07.html
    │   ├── 📄 thank-you 10.19.07.html
    │   ├── 📷 logo innov builders.jpg
    │   └── 📷 STRAIR FROM INNOV BUILDERS.jpg
    │
    └── 📁 reference-projects/
        ├── 📁 brookline-ma-stair-door-renovation/
        ├── 📁 danvers-stair/
        ├── 📁 marlborough-st-boston-stair/
        └── 📁 stair-railings/
```

---

## 📊 Summary

| Category | Count | Size |
|----------|-------|------|
| **Active HTML Pages** | 5 | 145 KB |
| **Active Images** | 11 | 9 MB |
| **Active Videos** | 2 | 23 MB |
| **Documentation** | 4 | 18 KB |
| **Total Active Assets** | 22 | 33 MB |
| **Archived Files** | 50+ | 37 MB |
| **Total Project Size** | 70+ files | 70 MB |

---

## 🎯 Key Files

### Production Pages
1. **Main Menu**: `index.html`
2. **Google Landing**: `campaigns/google/index.html`
3. **Google Thank You**: `campaigns/google/thank-you.html`
4. **Meta Landing**: `campaigns/meta/index.html`
5. **Meta Thank You**: `campaigns/meta/thank-you.html`

### Documentation
1. **Main README**: `README.md`
2. **Detailed Docs**: `docs/README.md`
3. **Maintenance Guide**: `docs/MAINTENANCE.md`
4. **Project Overview**: `docs/PROJECT-OVERVIEW.md`

### Configuration
1. **Git Ignore**: `.gitignore`

---

## 🔄 Asset Flow

```
User visits → index.html (Menu)
                ↓
        Selects Campaign
                ↓
    ┌───────────┴───────────┐
    ↓                       ↓
Google Campaign         Meta Campaign
    ↓                       ↓
campaigns/google/    campaigns/meta/
    ↓                       ↓
Both load assets from:
    ↓
../assets/images/
../assets/videos/
```

---

## 🗂️ Folder Organization Logic

### ✅ What's Active
- **campaigns/** - Live landing pages
- **assets/** - All media used in campaigns
- **docs/** - Project documentation
- **index.html** - Main entry point

### 📦 What's Archived
- **archive/old-files/** - Old versions, backups
- **archive/reference-projects/** - Completed project photos

---

## 🚀 Quick Access Paths

**To edit Google campaign:**
```
campaigns/google/index.html
campaigns/google/thank-you.html
```

**To edit Meta campaign:**
```
campaigns/meta/index.html
campaigns/meta/thank-you.html
```

**To add images:**
```
assets/images/hero/          (hero slider)
assets/images/before-after/  (projects)
assets/images/ceo/           (team photos)
```

**To add videos:**
```
assets/videos/
```

**To read docs:**
```
README.md                    (overview)
docs/MAINTENANCE.md          (how-to guide)
docs/PROJECT-OVERVIEW.md     (statistics)
```

---

## 🎨 Naming Conventions

### Files
- **HTML**: `lowercase-with-hyphens.html`
- **Images**: `descriptive-name.jpg/png`
- **Videos**: `UPPERCASE DESCRIPTIVE NAME.mp4`

### Folders
- **Active**: `lowercase-hyphens/`
- **Archived**: `descriptive-clean-names/`

---

## ✨ Benefits of This Structure

1. **Clear Separation**: Active vs archived files
2. **Centralized Assets**: All media in one place
3. **Easy Navigation**: Logical folder hierarchy
4. **Scalable**: Easy to add new campaigns
5. **Well Documented**: Multiple docs for different needs
6. **Clean Paths**: No special characters or spaces
7. **Professional**: Industry-standard organization

---

**Last Generated:** November 16, 2025  
**Structure Version:** 2.0
