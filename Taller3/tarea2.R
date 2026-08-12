library(dplyr)
library(tidyr)
library(haven)

tenderos_tarea1=TenderosFU03_Publica %>%
  select(uso_internet, actG1:actG11)
  
tarea2_ <- tenderos_tarea1 %>% 
 
  pivot_longer(
                cols = actG1:actG11, names_to = "actividad", values_to = "ok"
  
  )%>%
filter(ok == 1) 

group_by(tarea2_)
