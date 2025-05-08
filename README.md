```markdown
# my_app

Um aplicativo Flutter com:

- **Splash nativa** (flutter_native_splash)  
- **Splash animada em Flutter** (FadeTransition ou Lottie)  
- **Onboarding carregado de JSON local**  
- **Tela de boas-vindas personalizada**  

---

## 📂 Estrutura do Projeto


````

---

## 🚀 Como Rodar

1. Clone o repositório
   ```bash
   cd my_app
````

2. Instale dependências

   flutter pub get

3. Gere a Splash nativa

   dart run flutter_native_splash:create

4. Execute o app

   flutter clean
   flutter run

---

## 📖 Fluxo de Telas

1. **Splash Nativa** — exibida automaticamente na inicialização
2. **Splash Flutter** — animação de fade ou Lottie por \~2s
3. **Onboarding** — swipe entre páginas carregadas de JSON
4. **Welcome** — tela final de boas-vindas

---

## 🛠️ Customização

* **Cores e logo**: ajuste em `pubspec.yaml` e no código de splash
* **Duração e curva**: configure `AnimationController`
* **Slides de onboarding**: edite `assets/json/onboarding.json`

---


