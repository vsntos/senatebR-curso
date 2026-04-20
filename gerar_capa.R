library(ggplot2)
library(grid)

# Dimensões: 1400 × 2100px (proporção 2:3 — boa para PDF e og:image)
largura  <- 1400
altura   <- 2100
dpi      <- 150

# Cores institucionais do Senado
azul_escuro  <- "#003580"
azul_medio   <- "#1a6fa8"
dourado      <- "#c9a84c"
branco       <- "#FFFFFF"
cinza_claro  <- "#f0f4f8"

capa <- ggplot() +
  # Fundo azul escuro
  annotate("rect",
           xmin = 0, xmax = 1, ymin = 0, ymax = 1,
           fill = azul_escuro) +

  # Faixa dourada no topo
  annotate("rect",
           xmin = 0, xmax = 1, ymin = 0.88, ymax = 1,
           fill = dourado) +

  # Faixa dourada na base
  annotate("rect",
           xmin = 0, xmax = 1, ymin = 0, ymax = 0.06,
           fill = dourado) +

  # Elemento decorativo: arcos concêntricos (plenário do Senado)
  annotate("path",
           x = 0.5 + 0.38 * cos(seq(pi, 2 * pi, length.out = 200)),
           y = 0.42 + 0.38 * sin(seq(pi, 2 * pi, length.out = 200)),
           color = azul_medio, linewidth = 22, alpha = 0.32,
           lineend = "round") +
  annotate("path",
           x = 0.5 + 0.26 * cos(seq(pi, 2 * pi, length.out = 200)),
           y = 0.42 + 0.26 * sin(seq(pi, 2 * pi, length.out = 200)),
           color = azul_medio, linewidth = 14, alpha = 0.42,
           lineend = "round") +
  annotate("path",
           x = 0.5 + 0.14 * cos(seq(pi, 2 * pi, length.out = 200)),
           y = 0.42 + 0.14 * sin(seq(pi, 2 * pi, length.out = 200)),
           color = dourado, linewidth = 7, alpha = 0.65,
           lineend = "round") +

  # Título principal
  annotate("text",
           x = 0.5, y = 0.80,
           label = "senatebR",
           color = branco,
           size  = 28,
           fontface = "bold",
           hjust = 0.5) +

  # Subtítulo — espaço generoso abaixo do título
  annotate("text",
           x = 0.5, y = 0.68,
           label = "Coletando e Analisando\nDados do Senado Federal\nBrasileiro",
           color = dourado,
           size  = 11,
           fontface = "plain",
           hjust = 0.5,
           lineheight = 1.5) +

  # Linha separadora
  annotate("segment",
           x = 0.20, xend = 0.80,
           y = 0.595, yend = 0.595,
           color = azul_medio, linewidth = 0.8, alpha = 0.7) +

  # Autor
  annotate("text",
           x = 0.5, y = 0.555,
           label = "Vinicius Santos",
           color = cinza_claro,
           size  = 8.5,
           fontface = "italic",
           hjust = 0.5) +

  # Rodapé
  annotate("text",
           x = 0.5, y = 0.03,
           label = "vsntos.github.io/senatebR-curso",
           color = azul_escuro,
           size  = 5,
           fontface = "plain",
           hjust = 0.5) +

  coord_cartesian(xlim = c(0, 1), ylim = c(0, 1), expand = FALSE) +
  theme_void()

# Salvar
ggsave(
  filename = "img/cover.png",
  plot     = capa,
  width    = largura / dpi,
  height   = altura  / dpi,
  dpi      = dpi,
  bg       = azul_escuro
)

message("Capa salva em img/cover.png")
