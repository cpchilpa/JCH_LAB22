###################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Jair Chilpa Hern�ndez (UAEH)
#V9
# LABORATORIO - Gr�ficos en R con ggplot2 para Ciencia de Datos
# editar con temas de ggplot2



#instalando paquete con los datos
#install.packages("gapminder")
#install.packages("ggplot2")



# cargar libreria ggplot2 y gapminder
library(ggplot2)
library(gapminder)

# cargando datos a entorno
data("gapminder")

# filtrando por a�o 2007
gapminder2007 <- gapminder[gapminder$year == '2007', ]




# haciendo grafica de puntos
p1 <- ggplot(data = gapminder2007,
             mapping = aes(x = gdpPercap,
                           y = lifeExp,
                           color = continent)) +
  geom_point()
p1




# temas b�sicos
p1 + theme_bw()
p1 + theme_minimal()



# mas temas
install.packages('ggthemes')
library(ggthemes)

# temas y colores
p1 + theme_economist() + scale_color_economist()
p1 + theme_excel_new() + scale_color_excel_new()
p1 + theme_classic() + scale_color_continuous_tableau()



