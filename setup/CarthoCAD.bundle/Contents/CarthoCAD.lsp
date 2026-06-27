(vl-load-com)
(load "acetutil.fas")
;;;temporárias
;;;CONFIGURAÇÕES
;;;definição de variáveis globais para acessar o model e o paperspace
(setq *Model* (vla-get-ModelSpace (vla-get-ActiveDocument (vlax-get-Acad-Object))));; adiciona um poteiro para o modelspace na variavel indicada
(defun get-paper ()
  (vla-get-paperspace (vla-get-activedocument (vlax-get-acad-object)));;retorna um ponteiro para o layout ativo no momento
)

(if (/= nil (tblsearch "style" "standard"))
  (vla-put-fontfile (vla-item (vla-get-textstyles (vla-get-activedocument (vlax-get-acad-object))) "standard") "c:\\windows\\fonts\\arial.ttf")
)

;;;Definição das variáveis globais para estaqueamento;

(setq estq_data (list
		    (cons 8 "EST-TXT")
		    (cons 200 1.0);;;escala
		    (cons 9 20.0);;;incremento
		    (cons 40 20.0);;;distância entre estacas
		    (cons 600 "estaq1")
		    (cons 601 "pi3")
	      )
      coord_esc 1.0
      coord_datum "SAD-69"
      coord_merid 33
      coord_hemi "S"
      coord_tip "UTM"
)

;;;Definição das variáveis globais para perfil;

(setq perfil_data (list
		    (cons 7 "EIXO XX")
		    (cons 8 '("PERF" "PERF-TXT" "PERF-LIN"));;;layers
		    (cons 800 '("PERF-TERRENO" "32" "1"))
		    (CONS 801 '("PERF-TITULOS" "90" "1"))
		    (cons 802 '("PERF-BANDAS-LIN" "5" "1"))
		    (CONS 803 '("PERF-BANDAS-TXT" "7" "1"))
		    (CONS 804 '("PERF-MALHA" "252" "1"))
		    (cons 40 2.0);;;Espaçamento vertical do grid
		    (cons 41 20.0);;;Espaçamento horizontal do grid
		    (cons 201 10.0);;;Exagero vertical
		    (cons 200 1.0);;;Escala de anotação
		    (cons 600 '("0" "1" "1" "0" "1" "0"))
		    (cons 601 '("0" "1"))
		    (cons 602 '("0" "0"))
		    (cons 603 t);;;caso verdadeiro redireciona para a caixa de dialogo simplificada
		    (cons 604 "P2");;;tipo para a caixa de dialogo simplificada de perfil
		  )
)

(setq greide_data (list
		    (cons 8 '("PERF-GREIDE" "130" t))
		    (cons 90 (list 20.0 20.0))
		    (cons 91 "0")
		  )
      greide_band "Adicionar"
)

(setq tubo_data (list
		    (cons 8 '("PERF-TUBO" "130" t))
		    (cons 9 '("PERF-TUBO-HATCH" "254" t))
		    (cons 90 0.1)
		  )
)
		  

(setq pontos_data (list
		    (cons 200 1.0);;escala de anotação
		    (cons 201 "csv");;extenção do arquivo a ser usada
		    (cons 202 ";");;separador de valores do arquivo
		    (cons 203 '("pnezd" "penzd" "pnedz" "pendz"));;ditribuição dos valores no arquivo
		    (cons 204 "vir");;separados de casas decimais
		    (cons 205 "0");;converter pontos em numeros (0 = não ; 1 = sim)
		    (cons 206 0);;indici da lista de formatos
		   )
)

(setq desenhar_orto nil)

(setq viewconf_op "Rotacao")

(setq cota_esc 1.0 cota_auto "0" cota_zero "1" cota_prec 1 cota_selec "Unico")

(setq curvas_laypri (list "CN-PRINC" "3" t) curvas_layint (list "CN-INTER" "8" t) curvas_pri 5.0 curvas_int 1.0)

(setq memo_data (list (cons 31 "Fazenda xxxx");;nome da propriedade
		      (cons 32 "João da Silva");;proprietário
		      (cons 33 "Rua xxxx, Nº 000, Bairro");;endereço
		      (cons 34 "Natal");;cidade
		      (cons 35 "RN");;estado
		      (cons 38 "XX/2013");;data
		      (cons 39 "José Humberto Dantas de Medeiros");;;resp. tecni.
		      (cons 40 "Engenheiro Civil");;título
		      (cons 41 "210244991-2");;nº do crea
		      (cons 42 1);;indice do elipsoide de referência
		      (cons 43 "33");;meridiano central
		      (cons 46 '("1" "0"));;confrontante e situação
		      (cons 47 "hora");;horario ou antehorario ("hora" ou "ante")
		      (cons 48 "1");;selecionar o mais ao norte
		      (cons 49 '("1" "1" "1" "1"));;;configurações para desenho
		      (cons 50 '("SAD-69" "SIRGAS" "WGS-84" "Cor. Alegre"));;lista de elipsoides
		      (cons 51 1.0);;;escala (dividida por mil)
		      (cons 8 (list '("MEM-TXT" "11" "1") '("MEM-LIN" "1" "1")));;layers
		      (cons 52 "S")
		      (cons 54 "0");;novo desenho
		 )
)

(setq lote_data (list (cons 31 "Fazenda xxxx");;nome da propriedade
		      (cons 32 "João da Silva");;proprietário
		      (cons 33 "Rua xxxx, Nº 000, Bairro");;endereço
		      (cons 34 "Natal");;cidade
		      (cons 35 "RN");;estado
		 )
)

(setq volumecalc_data (list 7.00 0.20 1.0 1.0 20.0 "0" 40 "c1"))

(setq malha:model_op "Retangulo")

;;;FIM_DAS_CONFIGURAÇÕES
(princ)