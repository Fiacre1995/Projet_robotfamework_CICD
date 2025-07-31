# Projet Robot Framework avec POM

## Structure

- `tests/` : Contient les fichiers de tests Robot Framework.
- `resources/pages/` : Contient les pages au format Robot Framework (Page Object Model).
- `resources/variables.robot` : Variables globales du projet.
- `requirements.txt` : Dépendances Python à installer.

## Installation

```bash
pip install -r requirements.txt
```

## Exécution

```bash
robot -d results tests/login_tests.robot
```

Les rapports seront dans `results/`.
