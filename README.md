# senatebR-curso

Guia prático do pacote [`senatebR`](https://github.com/vsntos/senatebR) — acesso programático aos dados abertos do Senado Federal Brasileiro diretamente no R.

📖 **[Leia o livro online](https://vsntos.github.io/senatebR-curso/)**

---

## Conteúdo

| # | Capítulo | O que você aprende |
|---|---|---|
| 0 | O Jogo Completo | Análise de coesão partidária do zero ao gráfico em 4 passos |
| 1 | Introdução | Visão geral do pacote e das 36 funções disponíveis |
| 2 | Instalação e Configuração | Setup, verificação da API e pacotes complementares |
| W | Workflow | Cache local, `tryCatch`, organização de projeto |
| 3 | Senadores | Composição, mandatos, lideranças e formação acadêmica |
| 4 | Comissões | Participação parlamentar e notas taquigráficas |
| 5 | Matérias Legislativas | PLs, PECs, MPs e situações de tramitação |
| 6 | Votações | Coesão partidária, disciplina e similaridade de voto |
| 7 | Discursos | Frequência, análise de texto e sentimentos |
| 8 | Agenda, Vetos e MPs | Monitoramento em tempo real da pauta legislativa |
| 9 | Visualização | ggplot2, mapas com geobr e tabelas com gt |
| 10 | Estudos de Caso | Quatro análises completas cruzando múltiplas fontes |
| C | Comunicação | Publicar resultados em HTML, PDF e slides com Quarto |

## Pré-requisitos

- R ≥ 4.1.0
- Pacote `senatebR`:

```r
install.packages("senatebR")
```

## Renderizar localmente

```bash
git clone https://github.com/vsntos/senatebR-curso.git
cd senatebR-curso
quarto preview
```

## Sobre

Desenvolvido por [Vinicius Santos](https://github.com/vsntos), doutor em ciência política pela UFMG com interesse em comportamento legislativo e ciências sociais computacionais.

Licença: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.pt_BR)
