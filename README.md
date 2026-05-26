# Applied-Statistics-for-a-Tropical-Arboretum

- Avaliando famílias
unique(arvores$familia)

- Filtrando famílias com problema
arvore %>%
  filter(familia %in% c("C", "M"))

- Corrigindo 9046
  arvore <- arvore %>%
  mutate(
    familia = if_else(tombo == 9046, "MYRTACEAE", familia),
    genero  = if_else(tombo == 9046, "Psidium", genero),
    especie = if_else(tombo == 9046, "guajava", especie)
  )

- Excluindo plantas que não são árvores
arvore <- arvore %>% 
  filter(!familia %in% c("C", "STRELITZIACEAE", "PANDANACEAE"))
