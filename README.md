# 📱 Monitor de Saúde e Atividades Físicas (FitLife)

---

## 📌 1. Introdução

### 1.1 Propósito

Este documento descreve os requisitos e a estrutura do aplicativo **FitLife**, desenvolvido em Flutter, com o objetivo de monitorar atividades físicas e hábitos saudáveis dos usuários.

### 1.2 Escopo

O aplicativo permite:

* Registrar atividades físicas
* Visualizar atividades pendentes e concluídas
* Acompanhar métricas no dashboard
* Personalizar configurações (nome, notificações, tema)
* Atualização em tempo real com Provider

---

## 🧠 2. Visão Geral do Sistema

O sistema é um aplicativo mobile desenvolvido com:

* Flutter (UI)
* Provider (gerenciamento de estado)
* Arquitetura MVC simplificada

---

## 🏗️ 3. Arquitetura do Sistema

### 3.1 Padrão MVC

* **Model**

  * `atividade.dart`
  * Representa uma atividade física

* **Controller**

  * `atividades_controller.dart`
  * Controla lógica, estado e regras de negócio

* **View (Telas)**

  * `inicio_tela.dart`
  * `home_tela.dart`
  * `dashboard_tela.dart`
  * `atividades_tela.dart`
  * `configuracoes_tela.dart`

---

## ⚙️ 4. Funcionalidades (Requisitos Funcionais)

### RF01 - Tela Inicial

* Exibir nome do app
* Botão "Começar"

### RF02 - Dashboard

* Exibir métricas:

  * Atividades concluídas
  * Atividades pendentes
  * Progresso (%)
  * Total de atividades

### RF03 - Atividades

* Listar atividades
* Marcar como concluída
* Separação por abas:

  * Pendentes
  * Concluídas

### RF04 - Configurações

* Alterar nome do usuário
* Ativar/desativar notificações
* Alternar modo escuro
* Resetar atividades

### RF05 - Notificações

* Ícone de sino no AppBar
* Indica estado ON/OFF

---

## 📊 5. Requisitos Não Funcionais

* Interface responsiva
* Código organizado (MVC)
* Atualização em tempo real (Provider)
* Boa usabilidade
* Fácil manutenção

---

## 🔄 6. Gerenciamento de Estado

O aplicativo utiliza **Provider**, responsável por:

* Lista de atividades
* Controle de navegação
* Estado das notificações
* Nome do usuário
* Tema (claro/escuro)
* Atualização da interface em tempo real

---

## 🧩 7. Estrutura de Pastas

```
lib/
├── model/
├── controller/
├── telas/
├── main.dart
```

---

## 🎨 8. Protótipo (Figma)

👉 Insira aqui o link do seu protótipo:

🔗 **Figma:**
https://www.figma.com/design/xW1N3zBdmiqLQVPOTSaoEk/Sem-t%C3%ADtulo?node-id=0-1&t=nPiUkxs0Zg4POGdO-1

---

## 🚀 9. Execução do Projeto

### Pré-requisitos:

* Flutter instalado
* VS Code ou Android Studio

### Passos:

```bash
flutter pub get
flutter run
```

---

## 🧪 10. Testes

Testes manuais realizados:

* Marcar atividades como concluídas
* Alternar notificações
* Alterar nome do usuário
* Resetar atividades
* Navegação entre telas

---

## 👨‍💻 11. Autor

* Nome: PEDRO BOSSO
* Data: 2026-04-30

---

## 📌 12. Considerações Finais

O aplicativo atende aos requisitos propostos, demonstrando:

* Uso correto de widgets estruturais
* Aplicação do Provider
* Organização em MVC
* Interface funcional e intuitiva

---

## 🔮 13. Melhorias Futuras

* Persistência de dados
* Notificações reais
* Gráficos de desempenho
* Integração com APIs de saúde

---
