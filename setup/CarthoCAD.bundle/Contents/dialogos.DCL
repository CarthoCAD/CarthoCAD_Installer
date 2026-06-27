estq : dialog {
	label = "Estaqueamento";
	: boxed_column {
		label = "Parâmetros";
		fixed_width = true;
		: edit_box {
			label = "Escala 1/";
			key = "escala";
			edit_width = 6;
			alignment = right;
		}
		: edit_box {
			label = "Indicar a cada (m)";
			key = "distancia";
			edit_width = 6;
			alignment = right;
		}
	}
	: boxed_column {
		label = "Estacas";
		alignment = centered;
		: radio_column {
			key = "estaq";
			:radio_button {
	        		label = "Estaqueada";
	        		key = "estaq1";
	        	}
	        	:radio_button {
	        		label = "Acumulada";
	        		key = "estaq2";
	        	}
		}
		: edit_box {
			label = "Estacas de (m)";
			key = "incremento";
			edit_width = 6;
			alignment = right;
		}
	}
	: boxed_radio_column {
		label = "PI";
		key = "pis";
		alignment = centered;
		:radio_button {
        		label = "Sem PI";
        		key = "pi1";
        	}
        	:radio_button {
        		label = "PI sem cota";
        		key = "pi2";
        	}
        	:radio_button {
        		label = "PI com cota de triang";
        		key = "pi3";
        	}
        	:radio_button {
        		label = "PI com cota de pts";
        		key = "pi4";
        	}
	}
	: button {    
			label = "OK";
			is_default = true;
			key = "accept";
			width = 8;
			alignment = centered;
			fixed_width = true;
		}
}
perfil1 : dialog {
	   label = "Perfil do Terreno";
		: edit_box {
			label = "Nome do Perfil";
			key = "nome";
			edit_width = 40;
			alignment = right;
		}
	   : row {
	   	: column {
	   	: boxed_column {
			label = "Parâmetros";
			: edit_box {
				label = "Escala 1/";
				key = "escala";
				edit_width = 6;
				alignment = right;
			}
			: edit_box {
				label = "Intervalo Horizontal";
				key = "esp_hori";
				edit_width = 6;
				alignment = right;
			}
			: edit_box {
				label = "Intervalo Vertical";
				key = "esp_vert";
				edit_width = 6;
				alignment = right;
			}
			: edit_box {
				label = "Exagero Vertical";
				key = "exagero";
				edit_width = 6;
				alignment = right;
			}
		}
		: boxed_column {
			label = "Perfil";
			alignment = centered;
			: toggle {
			  label = "Estacas/Cotas";
			  key = "est_cota";
			}
			: toggle {
			  label = "Pts de Geo. Horizontal";
			  key = "geometria";
			}
		}
		}
		: boxed_column {
			label = "Bandas";
			fixed_width = true;
			: toggle {
			  label = "Km Progressivo";
			  key = "kmp";
			}
			: toggle {
			  label = "Km Desenvolvido";
			  key = "kmd";
			}
			: toggle {
			  label = "Estacas";
			  key = "estc";
			}
			: toggle {
			  label = "Distancia Parcial";
			  key = "dist";
			}
			: toggle{
			label = "Cotas do Terreno";
			key = "cota";
			}
			: toggle{
			label = "Cobert. Min. Duto";
			key = "cobertura";
			}
		}
	}


	: boxed_row {
		fixed_width = true;
		: toggle {
		  label = "Usar pontos de eixo";
		  key = "metodo";
		}
		: toggle {
		  label = "Distância em Quilometro";
		  key = "unidade";
		}
	}	
	: row {
		: button {    
				label = "OK";
				is_default = true;
				key = "accept";
				width = 8;
				alignment = centered;
				fixed_width = true;
			}
		: button {    
				label = "Simples";
				key = "mod";
				width = 8;
				alignment = centered;
				fixed_width = true;
			}
	}
}
perfil2 : dialog {
	label = "Perfil";
	: text {
		fixed_width = true;
		label = "AT para atualizar o perfil.";
		alignment = centered;
		}
	: boxed_column {
		label = "Atualmente";
		fixed_width = true;
		alignment = centered;
			: edit_box {
				label = "Int. Horizontal";
				key = "esp_hori";
				edit_width = 6;
				alignment = right;
			}
			: edit_box {
				label = "Int. Vertical";
				key = "esp_vert";
				edit_width = 6;
				alignment = right;
			}
	}
	: boxed_column {
		label = "Parâmetros";
		fixed_width = true;
		alignment = centered;
		: edit_box {
			label = "Cota Máxima";
			key = "altmax";
			edit_width = 6;
			alignment = right;
		}
		: edit_box {
			label = "Cota Mínima";
			key = "altmin";
			edit_width = 6;
			alignment = right;
		}
		: edit_box {
			label = "Estaca Inicial";
			key = "estac_ini";
			edit_width = 6;
			alignment = right;
		}
		: edit_box {
			label = "Estaca Final";
			key = "estac_fim";
			edit_width = 6;
			alignment = right;
		}
	}
	: boxed_column {
		label = "Trechos";
		fixed_width = true;
		alignment = centered;
		: toggle {
			  label = "Dividir em trechos";
			  value = "0";
			  key = "multiplos";
			}
		: edit_box {
			label = "Comprimento";
			key = "trecho";
			edit_width = 6;
			value = "400.00";
			alignment = right;
		}
	}
	:row {
		alignment = centered;
		fixed_width = true;
		: button {      label = "OK";
				key = "accept";
				width = 8;
				fixed_width = true;
			}
		: spacer {width = 1;}
		: button {      label = "AT";
				is_default = true;
				key = "apply";
				width = 8;
				fixed_width = true;
			}
	}
}
perfil3 : dialog {
	   label = "Perfil do Terreno";
		: edit_box {
			label = "Nome do Perfil";
			key = "nome";
			edit_width = 30;
			alignment = right;
		}
	   : row {
	   	: column {
	   	: boxed_column {
			label = "Parâmetros";
			fixed_width = true;
			: edit_box {
				label = "Escala 1/";
				key = "escala";
				edit_width = 6;
				alignment = right;
			}
			: edit_box {
				label = "Exag. Vertical";
				key = "exagero";
				edit_width = 6;
				alignment = right;
			}
			: toggle {
			  	label = "Pontos de Eixo";
			  	key = "metodo";
			}
			: toggle {
			  	label = "Distância em Km";
			  	key = "unidade";
			}
		}
		}
       		: boxed_radio_column {
       		        label = "Tipo";
       			key = "tipo";
                        fixed_height = true;
       			fixed_width = true;
       			: radio_button {
       				label = "Sem Bandas";
       				key = "P1";
       			}
       			: radio_button {
       				label = "Simples";
       				key = "P2";
       			}
       			: radio_button {
       				label = "Normal";
       				key = "P3";
       			}
       			: radio_button {
       				label = "Completo";
       				key = "P4";
       			}
       		}
	}	
	
	: row {
		: button {   
				label = "OK";
				is_default = true;
				key = "accept";
				width = 8;
				alignment = centered;
				fixed_width = true;
			}
		: button {    
				label = "Avançado";
				key = "mod";
				width = 8;
				alignment = centered;
				fixed_width = true;
			}
	}
}
perfil4 : dialog {
	   label = "Edição de Perfil";
	   : row {
	   	: column {
		   	: boxed_column {
				label = "Parâmetros";
				fixed_width = true;
				: edit_box {
					label = "Escala 1/";
					key = "escala";
					edit_width = 6;
					alignment = right;
				}
				: edit_box {
					label = "Intervalo Horizontal";
					key = "esp_hori";
					edit_width = 6;
					alignment = right;
				}
				: edit_box {
					label = "Intervalo Vertical";
					key = "esp_vert";
					edit_width = 6;
					alignment = right;
				}
				: edit_box {
					label = "Exagero Vertical";
					key = "exagero";
					edit_width = 6;
					alignment = right;
				}
			}
			: boxed_column {
				label = "Limites/Unid.";
				alignment = centered;
				: edit_box {
					label = "Cota Máxima";
					key = "altmax";
					edit_width = 8;
					alignment = right;
				}
				: edit_box {
					label = "Cota Mínima";
					key = "altmin";
					edit_width = 8;
					alignment = right;
				}
				: edit_box {
					label = "Estaca Inicial";
					key = "estac_ini";
					edit_width = 8;
					alignment = right;
				}
				: edit_box {
					label = "Estaca Final";
					key = "estac_fim";
					edit_width = 8;
					alignment = right;
				}
				: toggle {
				  	label = "Distância em Km";
				  	key = "unidade";
				}
			}
		}
		: column {
			: boxed_column {
	   			label = "Nome do Perfil";
	   			: edit_box {
					key = "nome";
					edit_width = 28;
					alignment = centered;
				}
		   	}
		   	: boxed_column {
				label = "Perfil";
				alignment = centered;
				: toggle {
				  label = "Estacas/Cotas";
				  key = "est_cota";
				}
				: toggle {
				  label = "Pts de Geo. Horizontal";
				  key = "geometria";
				}
			}
			: boxed_column {
				label = "Bandas";
				: toggle {
				  label = "Km Progressivo";
				  key = "kmp";
				}
				: toggle {
				  label = "Km Desenvolvido";
				  key = "kmd";
				}
				: toggle {
				  label = "Estacas";
				  key = "estc";
				}
				: toggle {
				  label = "Distancia Parcial";
				  key = "dist";
				}
				: toggle{
				label = "Cotas do Terreno";
				key = "cota";
				}
				: toggle{
				label = "Cobert. Min. Duto";
				key = "cobertura";
				}
			}
		}
	}	
	:row {
		alignment = left;
		//fixed_width = true;
		: button {      label = "OK";
				key = "accept";
				width = 8;
				fixed_width = true;
			}
		: spacer {width = 1;}
		: button {      label = "AT";
				is_default = true;
				key = "apply";
				width = 8;
				fixed_width = true;
			}
		: spacer {
			width = 16;
		}
		: toggle {
			  label = "Dividir";
			  key = "multiplos";
			  alignment = centered;
			  value = "0";
			}
		: edit_box {
			edit_width = 8;
			key = "trecho";
			value = "400.00";
		}
	}
}
detima : dialog {
		label = "Imagens: ";
		: list_box {
			alignment = centered;
			width = 46;
			height = 20;
			fixed_width = true;
			fixed_height = true;
			key = "mlista";
		}
		: row {
			:boxed_column {
				  fixed_width = true;
				  alignment = centered;
				  : popup_list {
				        label = "Formato";
				        list = "A0\nA1\nA2\nA3\nA4";
				        value = "1";
				        key = "pran";
				        edit_width = 6;
				  }
				  : edit_box {
					label = "Escala 1/";
					key = "esc";
					value = "1000";
					edit_width = 6;
				        alignment = right;
				  }
			 }
			 : column {
				: button {    
						label = "Sair";
						key = "sair";
						width = 18;
						alignment = centered;
						fixed_width = true;
				}
				: button {    
						label = "Atualizar";
						key = "update";
						width = 18;
						alignment = centered;
						fixed_width = true;
				}
				: button {    
						label = "Desenhar";
						is_default = true;
						key = "accept";
						width = 18;
						alignment = centered;
						fixed_width = true;
				}
			}
		}
}
leader : dialog {
		label = "Detalhamento: ";
		: row {
			alignment = centered;
			fixed_width = true;
			: boxed_column {
				label = "Tipo";
				fixed_width = true;
				: popup_list {
					key = "numero";
				        edit_width = 8;
				}
				: radio_column {
			        	:radio_button {
			        		label = "Anotação";
			        		key = "anoblue";
			        	}
			        	:radio_button {
			        		label = "Interferência";
			        		key = "anored";
			        	}
			        }
		        }
			:boxed_column {
			  label = "Descrição";
			  fixed_width = true;
			  alignment = centered;
			  : edit_box {
			  	key = "desc1";
			  	edit_width = 30;
			        alignment = centered;
			  }
			  : edit_box {
			  	key = "desc2";
			  	edit_width = 30;
			        alignment = centered;
			  }
			  : edit_box {
			  	key = "desc3";
			  	edit_width = 30;
			        alignment = centered;
			  }
			}       
		}
		: edit_box {
				key = "ifile";
				edit_width = 59;
			        alignment = centered;
		}
		:row {
			alignment = centered;
			fixed_width = true;
			: edit_box {
				label = "Escala 1/";
				key = "escala";
				edit_width = 6;
				alignment = right;
			}
			: button {      label = "OK";
					key = "accept";
					width = 8;
					fixed_width = true;
				}
			: spacer {width = 1;}
			: button {      label = "Selec. Imagem";
					is_default = true;
					key = "select";
					width = 8;
					fixed_width = true;
				}
		}
}
memo : dialog {
	       label = "Memorial: ";
	       : boxed_column {
	       	      label = "Dados Cadastrais";
	              fixed_width = true;
	              : edit_box {
	              		label = "Imóvel";
	              		key = "imovel";
	              		edit_width = 68.5;
	              		alignment =right;
	              }
	              : edit_box {
	              		label = "Proprietário";
	              		key = "prop";
	              		edit_width = 68.5;
	              		alignment =right;
	              }
	              :row {
		              : edit_box {
		              		label = "Endereço ";
		              		key = "endere";
		              		edit_width = 31;
		              		alignment =right;
		              }
		              : edit_box {
		              		label = "Cidade";
		              		key = "cidade";
		              		edit_width = 10;
		              		alignment =right;
		              }
		              : edit_box {
		              		label = "UF";
		              		key = "estado";
		              		edit_width = 2;
		              		alignment =right;
		              }
	              }
	       }
	       : row{
	       : column {
		       : boxed_column {
		       	      label = "Responsável Técnico";
		       	      alignment = left;
		              fixed_width = true;
		              fixed_height = true;
		              : edit_box {
		              		label = "Nome";
		              		key = "resp";
		              		edit_width = 46;
		              		alignment =right;
		              }
		              :row {
		              	      : edit_box {
			              		label = "Título";
			              		key = "tit";
			              		edit_width = 9;
			              		alignment =right;
		              		}
			              : edit_box {
			              		label = "CREA";
			              		key = "ncrea";
			              		edit_width = 8;
			              		alignment =right;
			              }
			              : edit_box {
			              		label = "Data";
			              		key = "data";
			              		edit_width = 6;
			              		alignment =right;
			              }
		              }
		       }
		       :boxed_column {
		       		label = "Confontrantes e Situações";
		       		fixed_width = true;
		       		: row {
			              : edit_box {
			              		label = "Conf.";
			              		key = "conf";
			              		edit_width = 18.5;
			              		alignment = right;
			              }
			              : edit_box {
			              		label = "Situ.";
			              		key = "situ";
			              		edit_width = 18;
			              		alignment = right;
			              }
		       		}
		       		: row {
		       		      fixed_width = true;
		       		      : text { label = "Lado ";}
		       		      : toggle {
					  label = "Confrontante            ";
					  key = "isconf";
					  alignment = centered;
				      }
		       		      : toggle {
					  label = "Situação";
					  key = "issitu";
					  alignment = centered;
				      }
		       		}
		       		: column {
		       		: row {
			       		: list_box {
			       			key = "list1";
			       			width = 6;
			       			fixed_width = true;
			       			height = 13;
			       		}
			       		: list_box {
			       			key = "list2";
			       			width = 27;
			       			is_enabled = false;
			       			fixed_width = true;
			       		}
			       		: list_box {
			       			key = "list3";
			       			width = 20;
			       			is_enabled = false;
			       			fixed_width = true;
			       		}
		       		}
		       		: row {
		       		        : button {
			       			label = "Sel. Lado";
			       			key = "sellado";
			       		}
			       		: boxed_radio_row {
			       			key = "confdir";
			                        fixed_height = true;
			       			fixed_width = true;
			       			: radio_button {
			       				label = "N";
			       				key = "CN";
			       			}
			       			: radio_button {
			       				label = "S";
			       				key = "CS";
			       			}
			       			: radio_button {
			       				label = "L";
			       				key = "CL";
			       			}
			       			: radio_button {
			       				label = "O";
			       				key = "CO";
			       			}
			       		}
		       		}
		       		}
		       }
	       }
	       	: boxed_column {
	       	      label = "Configurações";
	              fixed_width = true;
	              : edit_box {
	              		label = "Escala 1/";
	              		key = "escala";
	              		edit_width = 8;
	              		alignment = left;
	              }
	              : edit_box {
	              		label = "Merid. Central";
	              		key = "merid";
	              		edit_width = 2;
	              		alignment = left;
	              }
		      : boxed_radio_row {
		      		label = "Hemisfério";
				key = "hemi";
				:radio_button {
		        		label = "Norte";
		        		key = "N";
		        	}
		        	:radio_button {
		        		label = "Sul";
		        		key = "S";
		        	}
			}
	              : popup_list {
			        label = "Datun";
			        key = "datun";
			        edit_width = 10;
			        alignment = left;
		      }
		      : column {
			      : boxed_radio_column {
			      		label = "Sentido";
					key = "sentido";
					:radio_button {
			        		label = "Horário";
			        		key = "hora";
			        	}
			        	:radio_button {
			        		label = "Anti-Horário";
			        		key = "ante";
			        	}
				}
		              : boxed_column {
		              		label = "Ponto Inicial";
					: toggle {
					  label = "Mais ao Norte";
					  key = "point1";
					  alignment = left;
					}
				       	: button {   
						label = "Selecione";
						key = "point2";
						width = 2;
						fixed_width = true;
						alignment = centered;
					}
		              }
	              }
	       }
	       }
	       : row {
	       : column {
	       		: row {
		       	: button {    // defines the OK button
				label = " O K ";
				is_default = true;
				key = "accept";
				width = 8;
				alignment = centered;
			}
			: button {
				label = "Cancel";
				is_cancel = true;
				key = "cancel";
				width = 8;
				alignment = centered;
			}
			}
			: row {
			: button {
				label = "Abrir";
				key = "open";
				width = 8;
				alignment = centered;
			}
			: button {
				label = "Salvar";
				key = "save";
				width = 8;
				alignment = centered;
			}
			}
		}
		: column {
			: row {
			fixed_width = true;
			alignment = left;
			: toggle {
				  label = "Memorial";
				  key = "ismemo";
				  alignment = centered;
			}
			: toggle {
				  label = "Quadro Analítico";
				  key = "isquad";
				  alignment = centered;
			}
			}
			: row {
			//fixed_width = true;
			alignment = left;
			: toggle {
				  label = "Vertices ";
				  key = "isvert";
				  alignment = centered;
			}
			: toggle {
				  label = "Texto Lado";
				  key = "islado";
				  alignment = centered;
			}
			: toggle {
				  label = "Novo Des.";
				  key = "isnovo";
				  alignment = centered;
			}
			}
		}}
}
ccota : dialog {
		label = "Config";
		:column {
			alignment = centered;
			fixed_width = true;
			: edit_box {
				label = "Escala 1/";
				key = "escala";
				edit_width = 6;
				alignment = centered;
			}
			: boxed_column {
				label = "Precisão";
				alignment = centered;
				: toggle {
					  label = "Automática";
					  key = "auto";
					  alignment = centered;
				}
				: edit_box {
					label = "Num. de Casas";
					key = "prec";
					edit_width = 4;
					alignment = centered;
				}
			}
			: toggle {
				  label = "Ignorar cota zero";
				  key = "zero";
				  alignment = centered;
			}
			: button {      label = "OK";
					key = "accept";
					is_default = true;
					width = 8;
					fixed_width = true;
					alignment = centered;
			}
		}
}
curvas : dialog {
		label = "Config";
		: column {
			alignment = centered;
			: boxed_column {
				label = "Intervalos";
				alignment = centered;
				: edit_box {
					label = "CN. Princ.";
					key = "prin";
					edit_width = 4;
					alignment = centered;
				}
				: edit_box {
					label = "CN. Interm.";
					key = "inter";
					edit_width = 4;
					alignment = centered;
				}
			}
			: button {      label = "OK";
					key = "accept";
					is_default = true;
					width = 8;
					fixed_width = true;
					alignment = centered;
			}
		}
	}
pontos : dialog {
		label = "PT";
		fixed_width = true;
		: edit_box {
			label = "Escala 1/";
			key = "escala";
			edit_width = 4;
			alignment = centered;
		}
		: edit_box {
			label = "Extensão";
			key = "exte";
			edit_width = 4;
			alignment = centered;
		}
		: edit_box {
			label = "Sep. Valores";
			key = "valo";
			edit_width = 1;
			alignment = centered;
		}
		: popup_list {
		        label = "Formato";
		        key = "formato";
		        list = "pnezd\npenzd\npnedz\npendz";
		        edit_width = 7;
		        alignment = centered;
	        }
		: boxed_radio_column {
	      		label = "Decimais";
			key = "deci";
			alignment = centered;
			:radio_button {
	        		label = "Ponto";
	        		key = "pon";
	        	}
	        	:radio_button {
	        		label = "Virgula";
	        		key = "vir";
	        	}
		}
		: toggle {
			  label = "Apenas num.";
			  key = "anum";
			  alignment = centered;
		}
		: button {      label = "OK";
				key = "accept";
				is_default = true;
				width = 8;
				fixed_width = true;
				alignment = centered;
		}	
	}
greide : dialog {
		label = "PIV";
		: column {
			alignment = centered;
			: boxed_column {
				label = "Distâncias";
				alignment = centered;
				: toggle {
					  label = "Sem Parábola";
					  fixed_width = true;
					  key = "stran";
					  alignment = centered;
				}
				: edit_box {
					label = "DIST. PCV";
					key = "dpcv";
					edit_width = 6;
					alignment = centered;
				}
				: edit_box {
					label = "DIST. PTV";
					key = "dpiv";
					edit_width = 6;
					alignment = centered;
				}
			}
			: button {      label = "OK";
					key = "accept";
					is_default = true;
					width = 8;
					fixed_width = true;
					alignment = centered;
			}
		}
	}
lote : dialog {
	       label = "Lote";
	       : boxed_column {
	       	      label = "Dados Cadastrais";
	              fixed_width = true;
	              : edit_box {
	              		label = "Imóvel";
	              		key = "imovel";
	              		edit_width = 68.5;
	              		alignment =right;
	              }
	              : edit_box {
	              		label = "Proprietário";
	              		key = "prop";
	              		edit_width = 68.5;
	              		alignment =right;
	              }
	              :row {
		              : edit_box {
		              		label = "Endereço ";
		              		key = "endere";
		              		edit_width = 31;
		              		alignment =right;
		              }
		              : edit_box {
		              		label = "Cidade";
		              		key = "cidade";
		              		edit_width = 10;
		              		alignment =right;
		              }
		              : edit_box {
		              		label = "UF";
		              		key = "estado";
		              		edit_width = 2;
		              		alignment =right;
		              }
	              }
	       }
       		: row {
       			alignment = centered;
       			fixed_width = true;
		       	: button { 
				label = " O K ";
				is_default = true;
				key = "accept";
				width = 8;
				alignment = centered;
			}
			: button {
				label = "Cancel";
				is_cancel = true;
				key = "cancel";
				width = 8;
				alignment = centered;
			}
		}
}

volumesimples : dialog {
	       label = "Quadro de Cubação";
	       : row {
		       : boxed_column {
		       	      label = "Parametros";
		              fixed_width = true;
		              : edit_box {
		              		label = "Larg. Reg.";
		              		key = "largreg";
		              		edit_width = 8;
		              		alignment =right;
		              }
		              : edit_box {
		              		label = "Alt. Reg.";
		              		key = "altreg";
		              		edit_width = 8;
		              		alignment =right;
		              }
		              : edit_box {
		              		label = "Fat. Corte";
		              		key = "cortfat";
		              		edit_width = 8;
		              		alignment =right;
		              }
		              : edit_box {
		              		label = "Fat. Aterro";
		              		key = "aterfat";
		              		edit_width = 8;
		              		alignment =right;
		              }
		              
		       }
		       : boxed_column {
		       	      label = "Calculo";
		              fixed_width = true;
		              : edit_box {
		              		label = "Dist. Calc.";
		              		key = "dist";
		              		edit_width = 8;
		              		//fixed_width = true;
		              }
		              : row {
					//fixed_width = true;
					: toggle {
						  label = "Dividir";
						  key = "div";
					}
					: edit_box {
			              		//label = "Num. de Linhas";
			              		key = "distdiv";
			              		edit_width = 8;
			                }
		                }
		              : radio_column {
					key = "calc";
					fixed_width = true;
					:radio_button {
			        		label = "Calculo Simples";
			        		key = "c1";
			        	}
			        	:radio_button {
			        		label = "Calculo Exato";
			        		key = "c2";
			        	}
				}
		       }
	       }
       		: row {
       			alignment = centered;
       			fixed_width = true;
		       	: button { 
				label = " O K ";
				is_default = true;
				key = "accept";
				width = 8;
				alignment = centered;
			}
			: button {
				label = "Remover";
				key = "remove";
				width = 8;
				alignment = centered;
			}
			: button {
				label = "Cancel";
				is_cancel = true;
				key = "cancel";
				width = 8;
				alignment = centered;
			}
		}
}