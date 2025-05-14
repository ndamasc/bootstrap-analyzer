# Analisador de Logs do Bootstrap no Linux

Este projeto tem como objetivo analisar o conteúdo do arquivo de log `/var/log/bootstrap.log` em sistemas Linux e gerar um relatório automatizado contendo informações relevantes sobre a configuração de pacotes durante o processo de inicialização do sistema.

## 📌 Objetivo
Automatizar a execução de scripts  a leitura e extração de dados do log `bootstrap.log`, aplicando filtros para:

- Pacotes configurados durante o boot
- Quantidade total de pacotes
- Possíveis erros, falhas ou avisos
- Geração de relatório nomeado com a data da análise


## Observações
Aqui foi utilizado o arquivo `bootstrap.log` mas a lógica extende-se a qualquer arquivo desejado
