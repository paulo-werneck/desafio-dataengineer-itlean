# Desafio DE - ITLean

## Introdução

Neste repositório encontra-se a solução proposta para o desafio de Engenheiro de dados,
aonde o problema / necessidade inicial é o processamento de grandes volumes de dados. 


## Solução

Para o processamento dos dados foi-se utilizado a ferramenta DuckDB.
O DuckDB é um DBMS (Data Base Management System), e pode-se destacar algumas características:

* Fácil instalação:
  * Não tem dependência de aplicações nem infraestruturas externas, bastando apenas a instalação do próprio DuckDB.
* Manipulação via query SQL:
  * Todas as operações analíticas podem ser executadas utilizando queries SQL, trazendo maior facilidade para os envolvidos.
* Single Node:
  * Desenvolvido para realizar processamentos em uma única máquina, logo, é uma ótima opção para soluções que não utilizam processamento em cluster (exe: spark)
* Performance:
  * O DuckDB, diferente de outras libs de processamento single node (como pandas), utiliza técnicas de "Vetorização" e aplica planos de execução de query para escolha dos melhores "caminhos" durante a execução.


## Estrutura projeto

O projeto foi construído utilizando o gerenciador de dependências poetry.
O Poetry permite a reprodução do projeto utilizando build determinístico, evitando problemas futuros de dependências de pacote.

### pastas

[src](src) > pasta princial, contendo todo o conteúdo.<br>
[src/queries](src/queries) > pasta com os arquivos sql utilizados nas análises.


## Execução

Para execução do projeto, siga os passos:

```bash
export INPUT_DATASET=<<PATH_ARQUIVO_VENDAS>>

pip install -r requirements.txt

python3 src/main.py

```