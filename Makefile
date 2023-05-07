COLOR_RESET = \033[0m
COLOR_BLUE = \033[36m
COLOR_YELLOW = \033[33m
COLOR_GREEN = \033[32m
COLOR_RED = \033[31m

PROJECT := Lista de Comandos

# all: say_hello say_hello_2 say_hello_3 create

## Exportando o path GCP.
export_path:
	export PATH="/Users/ricardo.fahham/google-cloud-sdk/bin:$PATH" && source ~/.bashrc

## Mensagem 1.
say_hello_1:
	say "Hello World 1"

## Mensagem 2.
say_hello_2:
	say "Hello World 2"

## Mensagem 3.
say_hello_3:
	say "Hello World 3"

## Cria uma lista de arquivos.
create-file:
	@echo "Creating empty text files..."
	touch file-{1..10}.txt

## Remove a lista de arquivos criados.
remove-file:
	@echo "Cleaning up..."
	rm *.txt

## Exibe o Caminho absoluto.
caminho:
	pwd

## Cria uma lista de diretorios.
create-dir:
	@echo "Creating empty text files..."
	mkdir dir-{1..10}.txt

## Remove a lista de diretórios criados.
remove-dir:
	@echo "Remove Diretório"
	rm -rf dir*

color:
	@echo "\n${COLOR_YELLOW}-----------------\n${PROJECT}\n-----------------\n${COLOR_RESET}"

## Exibe os comandos disponíveis.
help:
	@echo "\n${COLOR_YELLOW}-----------------\n${PROJECT}\n-----------------\n${COLOR_RESET}"
	@awk '/^[a-zA-Z\-\_0-9\.%]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "${COLOR_BLUE}$$ make %s${COLOR_RESET} %s\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST) | sort
	@printf "\n"
	
# Pode executar o que não estiver no all
# $ make remove

# https://opensource.com/article/18/8/what-how-makefile