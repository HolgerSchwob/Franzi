# SpaceMathe auf GitHub hochladen und Franziska Zugang geben

**Schnellweg:** Im Ordner `franziskas spacebattle` die Datei **`deploy-to-github.bat`** doppelklicken. (Dafür muss [Git für Windows](https://git-scm.com/download/win) installiert sein. Nach der Installation ggf. ein neues Terminal öffnen.)

---

## 1. Repository auf GitHub anlegen

1. Gehe zu **https://github.com/new**
2. **Repository name:** z.B. `spacemathe` oder `franziskas-spacemathe`
3. **Public** wählen, **ohne** README, .gitignore oder Lizenz (wir haben schon eine README).
4. Auf **Create repository** klicken.

## 2. Projekt hochladen

### Variante A: Mit Git (wenn Git installiert ist)

Im Ordner `franziskas spacebattle` in der Eingabeaufforderung oder in **Git Bash**:

```bash
cd "c:\Users\Holge\Desktop\testwiese\franziskas spacebattle"
git init
git add index.html README.md
git add GITHUB_ANLEITUNG.md
git commit -m "SpaceMathe: Einmaleins, Add/Sub Zehnerschritt, Levels, Sound, Effekte"
git branch -M main
git remote add origin https://github.com/DEIN-BENUTZERNAME/REPO-NAME.git
git push -u origin main
```

`DEIN-BENUTZERNAME` und `REPO-NAME` durch deine GitHub-Daten ersetzen.

### Variante B: Per Drag & Drop auf GitHub

1. Auf der leeren Repository-Seite auf **„uploading an existing file“** klicken.
2. Die Dateien **index.html**, **README.md** und optional **GITHUB_ANLEITUNG.md** in den Browser ziehen (oder „choose your files“).
3. Unten eine kurze Beschreibung eintragen, z.B. „SpaceMathe – Mathe-Lernspiel für Franziska“.
4. Auf **Commit changes** klicken.

## 3. Kostenlose URL fürs iPad (GitHub Pages)

1. Im Repository auf **Settings** gehen.
2. Links unter **„Code and automation“** auf **Pages** klicken.
3. Unter **Source** „Deploy from a branch“ wählen.
4. Branch: **main**, Ordner: **/ (root)**.
5. **Save** klicken.

Nach ein paar Minuten ist das Spiel erreichbar unter:

**https://DEIN-BENUTZERNAME.github.io/REPO-NAME/**

(Damit `index.html` automatisch geladen wird, muss die Datei im Root des Repos heißen: `index.html` – das ist bei uns der Fall.)

Diese URL kannst du Franziska geben. Sie öffnet sie auf dem iPad in Safari und kann dann **Teilen → Zum Home-Bildschirm** wählen, dann startet SpaceMathe wie eine App.

## 4. Franziska Zugang geben (optional)

- **Nur URL teilen:** Reicht völlig, wenn sie nur spielen soll. Einfach die GitHub-Pages-URL (siehe oben) schicken.
- **Als Mitentwicklerin (Collaborator):** Wenn sie später selbst etwas am Repo ändern soll:
  1. Im Repository auf **Settings** gehen.
  2. Links auf **Collaborators** (oder **Collaborators and teams**) klicken.
  3. **Add people** – ihre GitHub-E-Mail oder ihren Benutzernamen eingeben und einladen.

Für reines Spielen reicht die geteilte **URL**; ein eigener GitHub-Zugang ist dafür nicht nötig.
