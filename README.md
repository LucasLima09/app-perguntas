# Projeto Perguntas (Quiz App)

Um aplicativo simples de perguntas e respostas desenvolvido em Flutter e Dart.

## 📝 Descrição

Este projeto é um aplicativo estilo "Quiz" (Questionário) onde o usuário responde a uma série de perguntas de múltipla escolha. Cada resposta possui uma pontuação (peso) associada. Ao final do questionário, o aplicativo calcula a pontuação total e exibe uma tela de resultados, permitindo também reiniciar o Quiz do zero.

## ✨ Funcionalidades

- Exibição sequencial de perguntas interativas.
- Múltiplas alternativas de respostas para cada pergunta.
- Cálculo de pontuação escondida, baseada na opção selecionada pelo usuário.
- Tela final de resultados e transição de estado.
- Opção para reiniciar o questionário e jogar novamente.
- Separação de widgets em componentes reutilizáveis (`Questao`, `Questionario`, `Resultado`) para manter o código limpo e bem arquitetado.

## 🛠️ Tecnologias Utilizadas

- **[Flutter](https://flutter.dev/)**: Framework de UI do Google para criar aplicativos nativamente compilados.
- **[Dart](https://dart.dev/)**: Linguagem de programação principal utilizada no projeto.

## 🚀 Como Executar o Projeto

1. Certifique-se de ter o ambiente [Flutter](https://docs.flutter.dev/get-started/install) configurado na sua máquina.
2. Acesse a pasta do projeto no seu terminal:
   ```bash
   cd projeto_perguntas
   ```
3. Instale as dependências necessárias executando:
   ```bash
   flutter pub get
   ```
4. Execute o aplicativo em um emulador aberto ou dispositivo físico conectado:
   ```bash
   flutter run
   ```

## 📁 Estrutura Principal do Código (Pasta `lib/`)

- `main.dart`: Ponto de entrada da aplicação, contendo o estado principal e a lista de perguntas do Quiz.
- `questao.dart`: Widget `Stateless` responsável por estilizar e renderizar o texto da pergunta.
- `questionario.dart`: Widget responsável por mapear e agrupar a lista de perguntas com os botões das alternativas.
- `resultado.dart`: Widget projetado para exibir a pontuação final de forma dinâmica, acompanhado do botão para resetar a aplicação.
