# 🚀 LANDING PAGE → NETLIFY + GITHUB

## OPCJA A: Netlify Deploy (SZYBKIE - 2 minuty)

### Krok 1: Install Netlify CLI
```bash
npm install -g netlify-cli
```

### Krok 2: Login do Netlify
```bash
netlify login
# Otworzy się przeglądarka → zaloguj się do Netlify
```

### Krok 3: Deploy landing page
```bash
cd C:\Users\DEV\Desktop\KSEF UWIERZYTELNIENIE ZNOWU\PUNCHLINE-SKLEP

# Deploy do produkcji
netlify deploy --prod

# Wybierz:
# ? Publish directory: .   (kropka = current folder)
```

**GOTOWE!** Dostaniesz URL typu: `https://punchlineroi.netlify.app`

---

## OPCJA B: GitHub + Netlify Auto-Deploy (REKOMENDOWANE)

### Krok 1: Stwórz repo na GitHubie
```bash
# Przejdź do: https://github.com/new
# Nazwa: punchline-landing
# Public/Private: Public
# Create repository
```

### Krok 2: Push landing do GitHub
```bash
cd C:\Users\DEV\Desktop\KSEF UWIERZYTELNIENIE ZNOWU\PUNCHLINE-SKLEP

# Init git (jeśli nie ma)
git init

# Dodaj .gitignore
echo "node_modules/" > .gitignore

# Commit
git add .
git commit -m "New KSeF landing page with PDF strategy"

# Połącz z GitHub (ZAMIEŃ YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/punchline-landing.git
git branch -M main
git push -u origin main
```

### Krok 3: Connect Netlify → GitHub
```
1. Idź do: https://app.netlify.com/
2. Klik: "Add new site" → "Import an existing project"
3. Wybierz: GitHub
4. Wybierz repo: punchline-landing
5. Build settings:
   - Build command: (zostaw puste)
   - Publish directory: .   (kropka)
6. Klik: "Deploy site"
```

**GOTOWE!** Każdy push do `main` = auto-deploy na Netlify.

---

## OPCJA C: GitHub Pages (DARMOWE, bez Netlify)

### Krok 1: Push do GitHub (jak wyżej)

### Krok 2: Enable GitHub Pages
```
1. Idź do repo: https://github.com/YOUR_USERNAME/punchline-landing
2. Settings → Pages
3. Source: Deploy from a branch
4. Branch: main / (root)
5. Save
```

**URL**: `https://YOUR_USERNAME.github.io/punchline-landing/`

---

## ZASTĄPIENIE STAREGO LANDING PAGE

### Jeśli masz już repo:
```bash
cd C:\Users\DEV\Desktop\KSEF UWIERZYTELNIENIE ZNOWU\PUNCHLINE-SKLEP

# Backup starego
git add .
git commit -m "Backup before new landing"
git tag old-landing

# Wklej nowy landing
copy ..\index-NEW-KSEF.html index.html

# Commit i push
git add index.html
git commit -m "New KSeF landing page (PDF strategy)"
git push origin main
```

**Auto-deploy** (jeśli masz Netlify connected):
- Push do GitHub → Netlify automatycznie deploy (30-60 sekund)

---

## CUSTOM DOMAIN (opcjonalne)

### W Netlify:
```
1. Site settings → Domain management
2. Add custom domain: punchlineroi.com
3. Update DNS (u dostawcy domeny):
   - Type: CNAME
   - Name: www
   - Value: YOUR_SITE.netlify.app
```

---

## STRUKTURA PLIKÓW (sprawdź przed deploy)

```
PUNCHLINE-SKLEP/
├── index.html              ← NOWY landing (index-NEW-KSEF.html)
├── kalkulator.html         ← NIE RUSZAŁEM
├── checklist.html          ← do usunięcia (będzie z Google AI)
├── polityka-prywatnosci.html
├── regulamin.html
├── dpa.html
├── thank-you.html
└── assets/
    ├── logo.png            ← SPRAWDŹ czy istnieje
    ├── favicon.png
    └── hero-video.mp4      ← SPRAWDŹ czy istnieje
```

**WAŻNE**: Upewnij się że masz:
- `assets/logo.png`
- `assets/hero-video.mp4`

---

## CHECKLIST DEPLOYMENT

### Przed pushem:
- [ ] Backup starego index.html
- [ ] Wklej nowy landing (index-NEW-KSEF.html → index.html)
- [ ] Sprawdź `assets/logo.png` istnieje
- [ ] Sprawdź `assets/hero-video.mp4` istnieje
- [ ] Otwórz `index.html` lokalnie → sprawdź czy wideo gra

### GitHub:
- [ ] `git add .`
- [ ] `git commit -m "New KSeF landing"`
- [ ] `git push origin main`

### Netlify:
- [ ] Poczekaj 30-60s na auto-deploy
- [ ] Otwórz URL → sprawdź czy działa
- [ ] Sprawdź responsywność (mobile)

---

## TROUBLESHOOTING

### "Permission denied" przy git push
```bash
# Sprawdź remote
git remote -v

# Jeśli HTTPS - może potrzebować tokena
# Przełącz na SSH:
git remote set-url origin git@github.com:YOUR_USERNAME/punchline-landing.git
```

### Netlify deploy failed
```
Sprawdź logi w Netlify dashboard:
- Deploys → Latest deploy → Deploy log
```

### Wideo nie ładuje się na Netlify
```
Sprawdź czy hero-video.mp4 jest w repo:
- Powinien być w: assets/hero-video.mp4
- Git może ignorować duże pliki (>100MB)
- Użyj Git LFS dla dużych video:
  git lfs track "*.mp4"
```

---

## FASTEST PATH (jeśli nie masz czasu):

```bash
cd PUNCHLINE-SKLEP
netlify deploy --prod
# Wybierz: Publish directory = .
```

**DONE!** 🚀
