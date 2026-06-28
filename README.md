# CarthoCAD

Plugin para AutoCAD voltado a topografia, georreferenciamento e mapeamento cadastral.

## Funcionalidades

### Pontos Topográficos

- Importação de pontos via arquivos TXT/CSV (separador configurável)
- Edição de atributos (nome, descrição, cota, coordenadas, precisão)
- Exibição configurável de dados do ponto (tags, cores, escala)
- Associação de blocos DWG como símbolos por tipo de ponto
- Conversão de pontos para blocos COGO com atributos
- Cálculo de perímetro e filtro de pontos por polilinha

### MDT / Modelo Digital de Terreno

- Triangulação de Delaunay a partir de pontos topográficos
- Geração de curvas de nível (Bezier)
- Coloração hipsométrica configurável por faixas de altitude
- Gerenciamento de múltiplas superfícies (listar, editar, excluir)

### Parcelamento de Imóveis

- Criação e edição de imóveis rurais, urbanos, quadras e lotes
- Numeração sequencial de vértices
- Cálculo automático de áreas e perímetros
- Exportação para planilha ODS compatível com certificação SIGEF/INCRA
- Referência a estações RBMC (Rede Brasileira de Monitoramento Contínuo)

### Desenho Inteligente

- Polilinha com tipos de linha pré-configurados (cerca, muro, tubulação, drenagem, etc.)
- Retângulo dinâmico por 3 pontos
- Concordância/fillet dinâmico em vértices de polilinhas
- Rotulação de área e perímetro com unidades configuráveis
- Ajuste de polilinhas a curvas com tolerância configurável
- Deformação/morphing de formas

### Pranchas e Impressão

- Formatação de folhas com moldura, margens e dobras (A0 a A4 e personalizado)
- Grade de coordenadas UTM ou geográficas sobre a área de desenho
- Impressão em lote de múltiplas pranchas com CTB e nomenclatura configuráveis
- Configuração de viewports no paper space com escala e rotação

### Georreferenciamento

- Calculadora geodésica: conversão entre UTM, coordenadas geográficas e datums
- Configuração de sistema de coordenadas (SIRGAS2000, SAD69, WGS84, hemisfério, fuso)
- Cálculo de declinação magnética via NOAA
- Rotulação de coordenadas UTM e geográficas nos pontos

### Google Maps

- Captura de imagens de satélite/terreno georreferenciadas via Google Maps
- Suporte a mosaico de múltiplos tiles
- Configuração de datum, fuso e zoom

### Texto

- Inserção de textos com fonte, alinhamento e escala configuráveis
- Numeração sequencial com prefixo, sufixo e incremento
- Exportação de textos para CSV
- Moldura ao redor de textos
- Rotação de textos pelo centro

## Principais Comandos

| Comando | Descrição |
| --------- | ----------- |
| `Cpontos` | Gerenciador de pontos topográficos |
| `CpontoExib` | Configurar exibição dos pontos |
| `CpontoEdit` | Editar pontos selecionados |
| `CpontoSimb` | Atribuir símbolos (blocos) aos tipos de ponto |
| `CPontosBlk` | Converter pontos em blocos COGO |
| `Destri` | Criar triangulação de Delaunay (MDT) |
| `MDTConfig` | Gerenciador de superfícies MDT |
| `Imovel` | Gerenciador de parcelas/imóveis |
| `ImovelEdit` | Editar imóvel selecionado |
| `ImovelQuadra` | Criar/renumerar quadras e lotes |
| `ImovelSigef` | Exportar imóvel para SIGEF/INCRA |
| `Ipl` | Desenhar polilinha inteligente |
| `IRet` | Retângulo por 3 pontos |
| `IConc` | Concordância/fillet dinâmico |
| `AreaPl` | Rotular área/perímetro de polilinhas |
| `GeoCalc` | Calculadora geodésica |
| `DatumEdit` | Configurar sistema de coordenadas |
| `Ccoord` | Rotular coordenadas nos pontos |
| `GmapsImg` | Capturar imagem do Google Maps |
| `MALHAC` | Gerar grade de coordenadas |
| `iPranchaNova` | Criar nova folha formatada |
| `MultiPlot` | Impressão em lote |
| `VPConfig` | Configurar viewport |
| `IText` | Inserir texto configurado |
| `Numerar` | Numeração sequencial |
| `FontConfigCartho` | Configurar fonte e estilo padrão |
| `CarthoCAD` | Informações e licenciamento |
| `CarthoCADMenu` | Carregar menu CUIx do plugin |

## Dependências

- **AutoCAD 2019** ou superior
- **.NET Framework 4.7.1** ou superior
- **Windows 10** ou superior
- Conexão com internet para ativação da licença, cálculo de declinação magnética e captura de imagens do Google Maps

## Instalação

### Via Instalador MSI (recomendado)

Execute o instalador `CarthoCAD_vX.Y.Z.msi`. O plugin será instalado automaticamente na pasta `%AppData%\Autodesk\ApplicationPlugins\CarthoCAD.bundle`, reconhecida pelo AutoCAD.

### Após Instalação

Execute o comando `CarthoCAD` para verificar o licenciamento
