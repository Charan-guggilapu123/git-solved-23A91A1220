# My Git Journey
# 🧠 Git Mastery Challenge — Merge Conflict Resolution Report

## 👤 Student Information
- **Name:** Charan Guggilapu  
- **Student ID:** 23A91A1220  
- **Repository:** [https://github.com/Charan-guggilapu123/git-solved-23A91A1220](https://github.com/Charan-guggilapu123/git-solved-23A91A1220)  
- **Date Started:** 2025-10-25  
- **Date Completed:** 2025-10-27  

---

## 🧩 Task Summary
Cloned instructor's repository with pre-built conflicts and resolved all merge conflicts across multiple branches using proper Git workflows and conflict resolution strategies.

---

## ⚙️ Commands Used

| Command | Times Used | Purpose |
|----------|-------------|----------|
| git clone | 1 | Clone instructor's repository |
| git checkout | 20+ | Switch between branches |
| git branch | 10+ | View and manage branches |
| git merge | 2 | Merge `dev` and `conflict-simulator` into `main` |
| git add | 30+ | Stage resolved conflicts |
| git commit | 15+ | Commit resolved changes |
| git push | 10+ | Push changes to remote |
| git fetch | 2 | Fetch updates from instructor |
| git pull | 1 | Pull updates from remote |
| git stash | 2 | Temporarily save uncommitted work |
| git cherry-pick | 1 | Apply specific commits |
| git rebase | 1 | Rebase feature branch |
| git reset | 3 | Undo commits (soft/mixed/hard) |
| git revert | 1 | Safely undo a commit |
| git tag | 2 | Create release tags |
| git status | 50+ | Check current repository status |
| git log | 30+ | View commit history |
| git diff | 20+ | Compare changes between commits |

---

## 🧠 Conflicts Resolved

### 🔹 Merge 1: main + dev (6 files)

#### Conflict 1: `config/app-config.yaml`
- **Issue:** Production used port 8080, development used 3000  
- **Resolution:** Created unified config with environment-based settings  
- **Strategy:** Kept production as default, added dev as optional  
- **Difficulty:** Medium  
- **Time:** 15 minutes  

#### Conflict 2: `config/database-config.json`
- **Issue:** Different database hosts and SSL modes  
- **Resolution:** Created separate profiles for production and development  
- **Strategy:** Restructured JSON to support both environments  
- **Difficulty:** Medium  
- **Time:** 10 minutes  

#### Conflict 3: `scripts/deploy.sh`
- **Issue:** Different deployment strategies (production vs docker-compose)  
- **Resolution:** Added conditional logic based on `DEPLOY_ENV` variable  
- **Strategy:** Made script handle both environments dynamically  
- **Difficulty:** Hard  
- **Time:** 20 minutes  

#### Conflict 4: `scripts/monitor.js`
- **Issue:** Different monitoring intervals and log formats  
- **Resolution:** Environment-based configuration object  
- **Strategy:** Used `process.env.NODE_ENV` to determine behavior  
- **Difficulty:** Medium  
- **Time:** 15 minutes  

#### Conflict 5: `docs/architecture.md`
- **Issue:** Different architectural descriptions  
- **Resolution:** Merged both descriptions into a single detailed document  
- **Strategy:** Created sections for each environment  
- **Difficulty:** Easy  
- **Time:** 10 minutes  

#### Conflict 6: `README.md`
- **Issue:** Different feature lists and version numbers  
- **Resolution:** Combined all features with clear environment labels  
- **Strategy:** Organized features by category  
- **Difficulty:** Easy  
- **Time:** 10 minutes  

---

### 🔹 Merge 2: main + conflict-simulator (6 files)

#### Conflict 1: `src/index.js`
- **Issue:** Logging format differed between branches  
- **Resolution:** Unified format with timestamp + message level  
- **Strategy:** Used template literals for dynamic log format  
- **Difficulty:** Medium  
- **Time:** 10 minutes  

#### Conflict 2: `utils/helpers.js`
- **Issue:** Duplicate helper functions with different names  
- **Resolution:** Merged and standardized under consistent naming convention  
- **Strategy:** Followed DRY principle and refactored helpers  
- **Difficulty:** Medium  
- **Time:** 15 minutes  

#### Conflict 3: `README.md`
- **Issue:** Different challenge descriptions  
- **Resolution:** Combined both descriptions and credited instructor’s version  
- **Difficulty:** Easy  
- **Time:** 5 minutes  

#### Conflict 4: `package.json`
- **Issue:** Version mismatch (`1.0.0` vs `1.1.0`)  
- **Resolution:** Unified version to `1.2.0` with latest dependencies  
- **Strategy:** Ensured compatibility across environments  
- **Difficulty:** Medium  
- **Time:** 10 minutes  

#### Conflict 5: `styles/app.css`
- **Issue:** Different color themes  
- **Resolution:** Used consistent theme (blue primary) for uniform UI  
- **Difficulty:** Easy  
- **Time:** 5 minutes  

#### Conflict 6: `tests/app.test.js`
- **Issue:** Different expected outputs in test cases  
- **Resolution:** Merged logic and updated expected results  
- **Strategy:** Re-ran all tests to confirm correctness  
- **Difficulty:** Hard  
- **Time:** 20 minutes  

---

## ⚔️ Most Challenging Parts

1. **Understanding Conflict Markers (`<<<<<<<`, `=======`, `>>>>>>>`)** — Initially confusing, but learned that `HEAD` represents current branch and the bottom section represents incoming changes.  
2. **Deciding What to Keep** — Required reading both code sections carefully before merging.  
3. **Complex Logic Conflicts** — Especially in `deploy.sh`, needed understanding of both environments before combining.  
4. **Testing After Resolution** — Ensured merged code worked as expected before committing.  

---

## 🚀 Key Learnings

### 🧰 Technical Skills
- Mastered full merge conflict resolution process  
- Learned `git diff` and `git log` for deep inspection  
- Understood differences between `merge`, `rebase`, and `cherry-pick`  
- Recovered from mistakes using `git reflog` and `git reset`  

### 🧭 Best Practices
- Always read both sides of a conflict before resolving  
- Test resolved code thoroughly  
- Write descriptive commit messages  
- Use `git status` often to stay aware of repository state  
- Commit small, atomic changes for better tracking  

### 🔄 Workflow Insights
- Conflicts are natural and part of collaboration  
- Understanding both perspectives is key to clean merges  
- Documenting merge decisions saves time for teams  

---

## 🗂️ Final Repository State
- **Branches:** main, dev, conflict-simulator, feature/new-feature  
- **Merges Completed:** 2  
- **Conflicts Resolved:** 12 total  
- **Tags:** v1.0 (post-dev merge), v2.0 (post-conflict-simulator merge)  
- **Remote Sync:** All branches successfully pushed to GitHub  

---

## 🖼️ Screenshots (Optional)
- `git log --oneline --graph --all` view showing merges  
- VS Code merge conflict resolution preview  

---

## ✅ Final Reflection
This challenge taught me that **merge conflicts aren’t errors — they’re opportunities to understand and integrate teamwork better.**  

I now feel confident resolving conflicts, rebasing branches, and managing collaborative workflows.  
The biggest takeaway is that Git is a safety net — with commands like `reflog`, nothing is ever truly lost.  

**✅ Challenge Completed Successfully — All conflicts resolved and repository fully merged!**

