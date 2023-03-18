#-----------------------LABORATORIO 48----------------------------------
# Hecho con gusto por Carla Carolina Pérez Hernández (UAEH)
#V4

#-------------Alumna: Ana Grisel Sanjuan Merida--------------------------
# LABORATORIO - Gráficos en R con ggplot2 para Ciencia de Datos
# Histogramas en R


#Instalar paquete con los datos
install.packages("gapminder")
install.packages("ggplot2")

#Grafica de lineas en R


#Cargar libreria ggplot2 y gapminder
library(ggplot2)
library(gapminder)

#Cargar datos a entorno
data("gapminder")

#Filtrando por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007', ]

#Histograma en ggplot2
#Función ggplot tomando los datos de gapminder2007
#Se mapea gráfico con elemento estético
#El eje de las X estará dado por la expectativa de vida
#Se agrega capa para identificar el tipo de gráfico: geom_histogram
ggplot(data = gapminder2007,
       mapping = aes (x = lifeExp)) +
  geom_histogram()


#Histograma en ggplot2 con 9 intervalos (bins)
#Reduciendo ggplot anterior a nueve intervalos
ggplot(data = gapminder2007,
       mapping = aes (x = lifeExp)) +
  geom_histogram(bins = 9)

#Haciendo más cosas interesantes
#Añadiendo un llenado que dependa del factor continentes (fill)
ggplot(data = gapminder2007,
       mapping = aes (x = lifeExp,
                      fill = factor(continent))) +
  geom_histogram(bins = 9)


#--------------------FIN LABORATORIO 48---------------------------