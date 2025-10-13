#pasamos un argumento general df para que la función sea para todo df
funcion_ciclos <- function(df) {
  
  # Recorrer columnas
  for (col_name in names[df]) {
    # Verificar el tipo de la columna para realizarle otros procedimientos
    if(is.numeric(df[[col_name]])){
      media_col <- mean(df[[col_name]], na.rm=TRUE)
    }
    
    
  }

      media <- mean(data_frame[[col]])
      
      # Crear un vector vacío para las etiquetas
      etiquetas <- c()
      
      # Recorrer cada valor de la columna
      for (valor in data_frame[[col]]) {
        if (valor > media) {
          etiquetas <- c(etiquetas, "Alto")
        } else if (valor < media) {
          etiquetas <- c(etiquetas, "Bajo")
        } else {
          etiquetas <- c(etiquetas, "Medio")
        }
      }
      
      # Agregar el vector como nueva columna
      nuevo_nombre <- paste0("Categoria_", col)
      data_frame[[nuevo_nombre]] <- etiquetas
    }
  }
  
  return(data_frame)
}

