# PUNCHLINE-SKLEP

**PUNCHLINE-SKLEP** to strona sprzedażowa stworzona dla projektu **PUNCHLINE ROI**.  
Jej celem jest pokazanie oferty, edukacja użytkownika i kierowanie go do zakupu lub kontaktu.

## 🔧 Struktura projektu

- `index.html` – strona główna (landing page)
- `kalkulator.html` – kalkulator ROI dla księgowych
- `checklist.html` – lista kontrolna wdrożenia robota KSeF
- `regulamin.html` – regulamin sklepu
- `polityka-prywatnosci.html` – polityka prywatności
- `dpa.html` – umowa powierzenia danych (DPA)
- `aktywa/` – folder z grafikami, ikonami, stylami

## 🚀 Technologie

- Czysty **HTML/CSS/JS**
- Hosting: **Netlify**
- Domena: [punchlineroi.com](https://punchlineroi.com)
- Brak backendu – projekt jest w pełni statyczny

## 📦 Deploy na Netlify

- Repozytorium podłączone do Netlify (Git-based deploy)
- Brak komendy build (statyczne pliki)
- Każda zmiana na GitHubie = automatyczny deploy

## 📈 Plan rozwoju

- Dodanie formularza kontaktowego (Netlify Forms)
- Integracja z Stripe (przycisk płatności)
- Podpięcie dashboardu z fakturami z robota KSeF
- Dodanie favicon, meta tagów i Open Graph
- Rozbudowa kalkulatora ROI o logikę JS

## 👨‍💻 Autor

Projekt tworzony przez Lachezara – z myślą o prostocie, automatyzacji i realnej wartości dla księgowych.

---

# 🚀 PunchlineROI - Landing Page

> **Domena:** www.punchlineroi.com  
> **Dashboard:** app.punchlineroi.com

## 📁 Struktura

```
PUNCHLINE-SKLEP/
├── index.html              # Główna strona
├── kalkulator.html         # Kalkulator ROI
├── regulamin.html          # Regulamin
├── polityka-prywatnosci.html
├── dpa.html                # Umowa Powierzenia Danych
└── assets/
    ├── logo.png
    ├── loop.mp4
    └── favicon.png
```

## 🎨 Brand Colors

| Kolor | HEX | Użycie |
|-------|-----|--------|
| 🔵 Blue | `#1D4ED8` | Autorytet, CTA secondary |
| 🟢 Green | `#10B981` | Sukces, ROI |
| 🟠 Orange | `#F97316` | Akcja, CTA primary |

## 🌐 Architektura Domen

```
punchlineroi.com          → Landing Page (Netlify)
app.punchlineroi.com      → Dashboard (Cloud Run)
api.punchlineroi.com      → Backend API (FastAPI)
```

## 🚀 Deployment

```bash
# Netlify CLI
netlify deploy --prod
```

## 📞 Kontakt

- **Email:** impact@punchlineroi.com
- **Founder:** Lachezar Mihaylov
