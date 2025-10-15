# DETERMINACIÓN DEL CAPITAL NETO CORRESPONDIENTE A: BANKITO


# ------------------------------ Activos Sujetos A Riesgo ------------------------------------
act_suj_riesgo_tot <- 155988.961392809
act_suj_riesgo_cred_est <- 105988.961392809
act_suj_riesgo_cred_int <- 50000

#                           --------PARTE FUNDAMENTAL--------

##                                CAPITAL CONTRIBUIDO

#### 95005: Títulos representativos de capital social que cumplan con el anexo 1-Q
cod_95005 <- datos %>%
  dplyr::filter(concepto == 95005) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95010: Prima en venta de acciones  de títulos representativos del capital que cumplan con el anexo 1-Q
cod_95010 <- datos %>%
  dplyr::filter(concepto == 95010) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95035: Aportaciones para futuros aumentos de capital formalizados por su órgano de gobierno
cod_95035 <- datos %>%
  dplyr::filter(concepto == 95035) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#..................................................................................#
## Total Capital Contribuido
capital_contribuido <- cod_95005 + cod_95010 + cod_95035
#..................................................................................#


#                             CAPITAL GANADO 

#### 95045: Reservas de capital
cod_95045 <- datos %>%
  dplyr::filter(concepto == 95045) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95050: Resultado de Ejercicios Anteriores
cod_95050 <- datos %>%
  dplyr::filter(concepto == 95050) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95055: Resultado Neto
cod_95055 <- datos %>%
  dplyr::filter(concepto == 95055) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95060: Resultado por valuación de títulos disponibles para la venta
cod_95060 <- datos %>%
  dplyr::filter(concepto == 95060) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95066: Resultado por valuación  de instrumentos de cobertura de flujos de efectivo
cod_95066 <- datos %>%
  dplyr::filter(concepto == 95066) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95068: Resultado por remediciones por beneficios definidos a los empleados.
cod_95068 <- datos %>%
  dplyr::filter(concepto == 95068) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#..................................................................................#
## Total Capital Ganado
capital_ganado <- cod_95045 + cod_95050 + cod_95055 + cod_95060 + cod_95066 + cod_95068
#..................................................................................#


#                       INVERSIONES EN OTROS INSTRUMENTOS

#### 95185: Instrumentos de deuda subordinados
cod_95185 <- datos %>%
  dplyr::filter(concepto == 95185) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95195: Beneficio sobre el remanente en operaciones de bursatilización
cod_95195 <- datos %>%
  dplyr::filter(concepto == 95195) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95200: Utilidad o incremento en el valor de los activos respecto de los activos  registrados en el balance del originador de acuerdo con el 2 Bis 56
cod_95200 <- datos %>%
  dplyr::filter(concepto == 95200) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#..................................................................................#
## Total inversiones en otros instumentos
inversiones_otros_instrumentos <- cod_95185 + cod_95195 + cod_95200
#..................................................................................#


#       INVERSIONES EN ENTIDADES FINANCIERAS (DIRECTAS E INDIRECTAS)

#### 95130: Acciones propias  adquiridas conforme a lo previsto en la LIC
cod_95130 <- datos %>%
  dplyr::filter(concepto == 95130) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95135: Subsidiarias financieras sujetas a requerimiento de capital: 
cod_95135 <- datos %>%
  dplyr::filter(concepto == 95135) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95146: Controladoras de grupos financieros
cod_95146 <- datos %>%
  dplyr::filter(concepto == 95146) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95150: Sociedades Financieras de Objeto Múltiple
cod_95150 <- datos %>%
  dplyr::filter(concepto == 95150) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95151: Administradoras de fondos para el retiro y Sociedades de inversión especializadas de fondos para el retiro
cod_95151 <- datos %>%
  dplyr::filter(concepto == 95151) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 92350: Cámaras de compensación, empresas, fideicomisos  u otro tipo de figuras similares que tengan por finalidad actuar como socio liquidador.
cod_92350 <- datos %>%
  dplyr::filter(concepto == 92350) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95152: Sociedades y fondos de inversión, parte relativa al capital fijo (incluye la inversión en controladoras de sociedades de inversión)
cod_95152 <- datos %>%
  dplyr::filter(concepto == 95152) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 92792: De capitales y de objeto limitado, cotizadas, respecto de las cuales la tenencia de la Institución exceda del 15 % del capital de la sociedad de inversión, por la parte de tales sociedades que esté representada por títulos accionarios
cod_92792 <- datos %>%
  dplyr::filter(concepto == 92792) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95160: Organismos Multilaterales de Desarrollo o de Fomento Internacional que cuenten con calificación crediticia asignada por alguna de las Instituciones Calificadoras al emisor, igual o mejor al grado de riesgo 2 a largo plazo
cod_95160 <- datos %>%
  dplyr::filter(concepto == 95160) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95175: Otras entidades financieras del país distintas a las comprendidas en los conceptos anteriores
cod_95175 <- datos %>%
  dplyr::filter(concepto == 95175) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95176: Otras entidades financieras del exterior distintas a las comprendidas en los conceptos anteriores
cod_95176 <- datos %>%
  dplyr::filter(concepto == 95176) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#..................................................................................#
# Total inversiones en entidades financieras directas e indirectas
inversiones_ef_d_i <- cod_95130 + cod_95135 + cod_95146 + cod_95150 + cod_95151 + cod_92350 + cod_95152 + cod_92792 + cod_95160 + cod_95175 + cod_95176
#..................................................................................#


#                               INVERSIONES INDIRECTAS

#### 95215: Valores  referenciados a índices accionarios que incluyan acciones propias de la institución
cod_95215 <- datos %>%
  dplyr::filter(concepto == 95215) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#..................................................................................#
# Total Inversiones Indirectas
inversiones_indirectas <- cod_95215
#..................................................................................#


#                INVERSIONES EN ENTIDADES NO FINANCIERAS

#### 95251: Empresas denominadas como  "capital de riesgo" (sólo para Bancos de Desarrollo)
cod_95251 <- datos %>%
  dplyr::filter(concepto == 95251) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 92375: Empresas (cotizadas y no cotizadas) accionistas de la propia Institución, de la controladora del grupo financiero o de las demás entidades financieras integrantes del grupo financiero, o de las filiales financieras de todas éstas
cod_92375 <- datos %>%
  dplyr::filter(concepto == 92375) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 92389: Empresas ( cotizadas y no cotizadas) relacionadas con la institución en los términos de los artículos 73, 73 BIS y 73 BIS 1 de la L.I.C., cuya inversión no derive de capitalizaciones o daciones en pago de adeudos
cod_92389 <- datos %>%
  dplyr::filter(concepto == 92389) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 92385: Cuya capitalización o dación en pago tenga más de 5 años de haberse efectuado
cod_92385 <- datos %>%
  dplyr::filter(concepto == 92385) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#..................................................................................#
# Total inversiones en entidades no financieras
inversiones_ent_no_fin <- cod_95251 + cod_92375 + cod_92389 + cod_92385
#..................................................................................#

#................................TOTAL INVERSIONES..................................#
inversiones <- inversiones_ef_d_i + inversiones_indirectas + inversiones_ent_no_fin
#..................................................................................#

#                                      RESERVAS

#### Reservas constituidas con cargo a cuentas distintas de resultados o de capital
cod_resv_1 <- datos %>%
  dplyr::filter(concepto %in% c(95667, 95286, 95700)) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)
  
#### Reservas pendientes de constituirse
cod_resv_2 <- datos %>%
  dplyr::filter(concepto %in% c(95668, 95284, 95699)) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

##### 95295: Pérdidas esperadas totales 
cod_95295 <- datos %>%
  dplyr::filter(concepto == 95295) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

##### 95290: Reservas admisibles totales
cod_95290 <- datos %>%
  dplyr::filter(concepto == 95290) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#..................................................................................#
#### Faltante de reservas  derivadas de modelos internos
cod_resv_3 <- max(0, cod_95295 - cod_95290)

#..................................................................................#
# Total Reservas
reservas_fundamental <- cod_resv_1 + cod_resv_2 + cod_resv_3
#..................................................................................#


#                          APORTACIONES Y FINANCIAMIENTOS
  
#### 95300: Aportaciones destinadas a la adquisición de acciones  de la sociedad controladora del grupo financiero, de otras entidades financieras integrantes del grupo o de las filiales financieras de todas
cod_95300 <- datos %>%
  dplyr::filter(concepto == 95300) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95305: Financiamiento cuyo destino directo o indirecto sea la adquisición de acciones de subsidiarias financieras de las entidades financieras integrantes del grupo.
cod_95305 <- datos %>%
  dplyr::filter(concepto == 95305) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 93910: Créditos y demás operaciones que se realicen en contravención a las disposiciones aplicables
cod_93910 <- datos %>%
  dplyr::filter(concepto == 93910) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#..................................................................................#
# Total Aportaciones y Financiamiento
aportaciones_financiamientos <- cod_95300 + cod_95305 + cod_93910
#..................................................................................#


#                                  INTANGIBLES

#### 95315: Intangibles distintos a crédito mercantil
cod_95315 <- datos %>%
  dplyr::filter(concepto == 95315) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95320: Crédito mercantil
cod_95320 <- datos %>%
  dplyr::filter(concepto == 95320) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

##### 95325: De inversiones en acciones de las que se restan para determinar el Capital Básico 1 
cod_95325 <- datos %>%
  dplyr::filter(concepto == 95325) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

##### 95330: De  otras inversiones
cod_95330 <- datos %>%
  dplyr::filter(concepto == 95330) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95345: Erogaciones o gastos cuyo reconocimiento en el capital contable se difiera en el tiempo, provenientes de  cargos diferidos  y pagos anticipados cuyo plazo remanente de afectación a resultados sea mayor a un año.
cod_95345 <- datos %>%
  dplyr::filter(concepto == 95345) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

##### 95341: Pagos anticipados , cuyo plazo remanente de afectación a resultados sea mayor a un año.
cod_95341 <- datos %>%
  dplyr::filter(concepto == 95341) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

##### 95342: Cargos diferidos , cuyo plazo remanente de afectación a resultados sea mayor a un año.
cod_95342 <- datos %>%
  dplyr::filter(concepto == 95342) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#..................................................................................#
# Total Intangibles
intangibles <- cod_95315 + cod_95320 + cod_95345
#..................................................................................#


#                            IMPUESTOS DIFERIDOS

#### 95360: Pérdidas fiscales
cod_95360 <- datos %>%
  dplyr::filter(concepto == 95360) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95375: Créditos Fiscales
cod_95375 <- datos %>%
  dplyr::filter(concepto == 95375) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95376: Participación de los trabajadores en las utilidades diferida activa
cod_95376 <- datos %>%
  dplyr::filter(concepto == 95376) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#..................................................................................#
# Total Partidas a Favor Provenientes de Perdidas y Creditos Fiscales
partidas_perdidas_creditos <- cod_95360 + cod_95375 + cod_95376
#..................................................................................#


#   IMPUESTOS DIFERIDOS, PARTIDAS A FAVOR PROVENIENTES DE  DIFERENCIAS TEMPORALES

##### 95380: Diferencias temporales activas
cod_95380 <- datos %>%
  dplyr::filter(concepto == 95380) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

##### 95390: Diferencias temporales pasivas
cod_95390 <- datos %>%
  dplyr::filter(concepto == 95390) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### Límite de computabilidad
limite_computabilidad <- max(0, 0.1*(capital_contribuido + capital_ganado - inversiones_otros_instrumentos - inversiones - reservas_fundamental - aportaciones_financiamientos - intangibles- partidas_perdidas_creditos))

#..................................................................................#
#### Otras diferencias temporales activas netas de las partidas pasivas
otras_dif_temp_act <- max(0, cod_95380 - cod_95390)

#..................................................................................#
# Total Impuestos Diferidos, partidas a favor provenientes de diferencias temporales
impuestos_diferidos_dif_temp <- max(cod_imp_otros - limite_computabilidad)

#..................................................................................#
# Total Impuestos Diferidos
impuestos_diferidos <- partidas_perdidas_creditos + impuestos_diferidos_dif_temp
#..................................................................................#

# RESULTADO POR VALUACIÓN DE INSTRUMENTOS DE COBERTURA DE FLUJOS DE EFECTIVO PARTIDAS VALUADAS A COSTO AMORTIZADO 

#### 95398: Resultado de valuación positivo que se deduce
cod_95398 <- datos %>%
  dplyr::filter(concepto == 95398) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95398: Resultado de valuación negativo que se suma
cod_95398 <- datos %>%
  dplyr::filter(concepto == 95398) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#..................................................................................#
# Total Resultado por Valuacion de Instrumentos
resultado_valuacion_instrumentos <- cod_95398 + cod_95398
#..................................................................................#


#     MONTO A DEDUCIR DE OPERACIONES REALIZADAS CON PERSONAS RELACIONADAS RELEVANTES

#### 93916: Operaciones Realizadas Con Personas Relacionadas Relevantes,  celebradas con posterioridad al 3 de marzo 2011
cod_93916 <- datos %>%
  dplyr::filter(concepto == 93916) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### Límite de computabilidad (25%  Capital Fundamental antes de personas relacionadas relevantes)
lim_compu <- max(0, 0.25 *(capital_contribuido+ capital_ganado - inversiones_otros_instrumentos - inversiones - reservas_fundamental - aportaciones_financiamientos - intangibles - partidas_perdidas_creditos - impuestos_diferidos_dif_temp - cod_resul_1))

#..................................................................................#
# Total Monto deduccion personas relevantes
monto_ded_pers_relev <- max(0, cod_93916 - lim_compu)
#..................................................................................#


# MONTO A DEDUCIR DE OPERACIONES REALIZADAS CON GRANDES EXPOSICIONES QUE EXCEDEN LOS LÍMITES ESTABLECIDOS EN EL ARTÍCULO 54 DE LA CUB

#### 96510: Excedente de Grandes Exposiciones con limite del 25% del C.B
cod_96510 <- datos %>%
  dplyr::filter(concepto == 96510) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 96520: Excedente de Grandes Exposiciones con limite del 15% del C.B
cod_96520 <- datos %>%
  dplyr::filter(concepto == 96520) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 96530: Excedente de Grandes Exposiciones con limite del 100% del C.B
cod_96530 <- datos %>%
  dplyr::filter(concepto == 96530) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#..................................................................................#
# Total Monto a deducir de operaciones realizadas
monto_ded_exp_art54 <- cod_96510 + cod_96520 + cod_96530
#..................................................................................#

# .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-TOTAL CAPITAL FUNDAMENTAL .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
capital_fundamental <- capital_contribuido + capital_ganado - inversiones_otros_instrumentos - inversiones - reservas_fundamental - aportaciones_financiamientos - intangibles - impuestos_diferidos - resultado_valuacion_instrumentos - monto_ded_pers_relev - monto_ded_exp_art54
  
  
  
#                        --------PARTE NO FUNDAMENTAL--------


#                   TÍTULOS REPRESENTATIVOS  DEL CAPITAL SOCIAL

#### 95015: Títulos representativos del capital social que cumplan con el anexo 1-R
cod_95015 <- datos %>%
  dplyr::filter(concepto == 95015) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95020: Prima en venta de acciones de títulos representativos del capital social que cumplan con el  anexo 1-R
cod_95020 <- datos %>%
  dplyr::filter(concepto == 95020) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#..................................................................................#
# Total Titulos representativos de capital social
titulos_rep_cap_social <- cod_95015 + cod_95020
#..................................................................................#


#                              INSTRUMENTOS DE CAPITAL

#### 95075: Instrumentos de Capital que cumplan con el anexo 1-R
cod_95075 <- datos %>%
  dplyr::filter(concepto == 95075) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

##################################### Parentesis ##################################### 
coef_cap_fundamental <- (capital_fundamental / act_suj_riesgo_tot)*100
#####################################            ##################################### 

#### Límite de computabilidad conforme artículo 2 bis 6  fracción II inciso b,  a partir de diciembre 2017
lim_compu_art2 <- ifelse(coef_cap_fundamental >= 0.1, cod_95075, 0.5 * capital_fundamental)

# Instrumentos de cápita computables en el básico no fundamental
inst_cap_b_no_fun <- max(0, min(cod_95075,lim_compu_art2))

#..................................................................................#
# Total Instrumentos de capital
instrumentos_de_capital <- inst_cap_b_no_fun
#..................................................................................#



#        TÍTULOS ART.64 DE LA LIC. EMITIDOS ANTES DEL 31 DE DICIEMBRE 2012( TRANSITORIOS)

#### 95550: Monto máximo permitido de Obligaciones Subordinadas e Instrumentos de capital emitidos con anterioridad al 31 de diciembre de 2012 que computan como Capital Básico No Fundamental 
cod_95550 <- datos %>%
  dplyr::filter(concepto == 95550) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#..................................................................................#
# Total Titulos Art. 64
titulos_art64 <- cod_95550
#..................................................................................#


# .-.-.-.-.-.-.-.-.-.-.-.-.-.-TOTAL CAPITAL NO FUNDAMENTAL .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
capital_no_fundamental <- titulos_rep_cap_social + instrumentos_de_capital + titulos_art64


#                     ----------CAPITAL COMPLEMENTARIO----------



#                    TÍTULOS REPRESENTATIVOS  DEL CAPITAL SOCIAL

#### 95025: Títulos representativos del capital social que cumplan con el  anexo 1-S
cod_95025 <- datos %>%
  dplyr::filter(concepto == 95025) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#### 95030: Prima en venta de acciones de títulos representativos del capital social que cumplan con el  anexo 1-S
cod_95030 <- datos %>%
  dplyr::filter(concepto == 95030) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#..................................................................................#
# Total titulos representativos de capital social
titulos_rep_cap_social <- 0
##### Duda: Se supone que los datos contienen más información o por que se referencía a una celda dado que solo llega hasta la 69
#..................................................................................#


#                                 INSTRUMENTOS DE CAPITAL

##### 95080: Instrumentos de Capital que cumplan con el anexo 1-S  con plazos de amortización
cod_95080 <- datos %>%
  dplyr::filter(concepto == 95080) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

##### Límite de computabilidad conforme artículo 2 bis 7  fracción II a partir de diciembre 2017
limite_comp_art2_7bis <- ifelse(coef_cap_fundamental >= 0.1, cod_95080, 0.5 * capital_fundamental) 

#### Instrumentos de cápita computables en el complementario
instrumentos_capital_comp <- max(0, max(cod_95080, limite_comp_art2_7bis))

#..................................................................................#
instrumentos_capital <- 0
##### Duda: Se supone que los datos contienen más información o por que se referencía a una celda dado que solo llega hasta la 69
#..................................................................................#


#       TÍTULOS ART. 64  DE LA LIC. EMITIDOS ANTÉS DEL 31 DE DICIEMBRE 2012 (TRANSITORIOS)

#### 95555: Monto máximo permitido de Obligaciones Subordinadas e Instrumentos de capital emitidos con anterioridad al 31 de diciembre de 2012 que computan como Capital Complementario
cod_95555 <- datos %>%
  dplyr::filter(concepto == 95555) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

#..................................................................................#
# Total Titulos art 64 
titulos_art64 = titulos_art64
#..................................................................................#

#                                       RESERVAS


##### 95691: Reservas admisibles totales.
cod_95691 <- datos %>%
  dplyr::filter(concepto == 95691) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

##### 95695: Pérdidas Esperadas Totales
cod_95695 <- datos %>%
  dplyr::filter(concepto == 95695) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

##### Límite de computabilidad de reservas bajo metodología interna
lim_comp_resv_int <- 0.006 * act_suj_riesgo_cred_int 

#..................................................................................#
#### Reservas computables de cartera bajo método interno
resv_comp_cart_int <- min(max(0, cod_95691 - cod_95695), lim_comp_resv_int)


##### 95704: Reservas Admisibles Totales
cod_95704 <- datos %>%
  dplyr::filter(concepto == 95704) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

##### 95708: Pérdidas Esperadas Totales
cod_95708 <- datos %>%
  dplyr::filter(concepto == 95708) %>%
  dplyr::summarise(suma = sum(importe1, na.rm = TRUE)) %>%
  dplyr::pull(suma)

##### Límite de computabilidad de reservas bajo metodología estándar
lim_reserv_comp_est <- 0.0125 * act_suj_riesgo_cred_est

#..................................................................................#
#### Reservas computables de cartera bajo método estándar
resv_comp_cart_est <- min(max(0, cod_95704 - cod_95708), lim_reserv_comp_est)

#..................................................................................#
# Total reservas capital complementario
reservas_complementario <- resv_comp_cart_int + resv_comp_cart_est
#..................................................................................#

# .-.-.-.-.-.-.-.-.-.-.-.-.-.-TOTAL CAPITAL COMPLEMENTARIO .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
capital_complementario <- titulos_rep_cap_social + instrumentos_capital + titulos_art64 + reservas_complementario



# --------------------DETERMINACION POR TIPOS DE CAPITALES-------------------------#

# 1. Capital Basico
capital_basico <- capital_fundamental + capital_no_fundamental
cat("El Capital Basico es:", capital_basico, "\n")

# 2. Capital Fundamental
cat("El Capital Fundamental es:", capital_fundamental, "\n")

# 3. Capital Básico No Fundamental
cat("El Capital Basico No Fundamental es:", capital_no_fundamental, "\n")

# 4. Capital Complementario
cat("El Capital Complementario es:", capital_complementario, "\n")

# 5. Capital Neto
capital_neto <- capital_basico + capital_complementario
cat("El Capital Complementario es:", capital_neto, "\n")


#-------------------------------------COEFICIENTES---------------------.------------#
coef_cap_fundamental <- (capital_fundamental_1 / act_suj_riesgo_tot)*100
coef_cap_basico <-  (capital_basico / act_suj_riesgo_tot)*100
indice <- act_suj_riesgo_tot / capital_neto
