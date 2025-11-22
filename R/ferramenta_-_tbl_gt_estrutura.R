`ferramenta_-_tbl_gt_estrutura` <- function(tabela) {

  output <- tabela %>%
    gt::gt(auto_align = F) %>%
    gtExtras::gt_theme_excel() %>%
    gt::tab_options(
      table.width = gt::px(700)) %>% 
    gt::tab_style(
      style = gt::cell_fill(color = "white"),  # Definir a cor de fundo como branco
      locations = gt::cells_body()  # Aplicar estilo às células do corpo da tabela
    ) %>%
    gt::tab_style(
      style = gt::cell_text(color = "#02649A"),
      locations = gt::cells_body()
    ) %>%
    gt::tab_style(
      style = gt::cell_text(size = gt::px(15)),
      locations = gt::cells_body()
    ) %>%
    gt::tab_style(
      style = gt::cell_fill(color = "#02649A"),  # Definir a cor de fundo como branco
      locations = gt::cells_column_labels()  # Aplicar estilo às células do corpo da tabela
    ) %>%
    gt::tab_style(
      style = gt::cell_text(color = "white"),
      locations = gt::cells_column_labels()
    ) %>%
    gt::tab_style(
      style = gt::cell_text(size = gt::px(15)),
      locations = gt::cells_column_labels()
    ) %>% 
    gt::tab_source_note(source_note = htmltools::tagList(
      htmltools::tags$div(
        style = htmltools::css(
          `text-align` = "left" ),
        htmltools::HTML("<font size=2.5> Fonte: DevSci </font>"))))

  return(output)
}