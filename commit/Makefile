COLOR_RESET = \033[0m
COLOR_BLUE = \033[36m
COLOR_YELLOW = \033[33m
COLOR_GREEN = \033[32m
COLOR_RED = \033[31m

PROJECT := Lista de Commits

## FIX - Resolve um BUG.
fix:
	@echo "git commit -m \"FIX: commit inicial\""

## FEAT - Inicia a implementação de uma funcionalidade.
feat:
	@echo "git commit -m \"FEAT: commit inicial\""

## CHORE - Trabalho em progresso de uma funcionalidade.
chore:
	@echo "git commit -m \"CHORE: commit inicial\""

## REFACTOR - Sem mudar a lógica - Refatoração.
refactor:

	@echo "git commit -m \"REFACTOR: commit inicial\""

## TEST - Implementa testes automatizados.
test:
	@echo "git commit -m \"TEST: commit inicial\""

## STYLE - Mudanças de formatação do código - Lint.
style:
	@echo "git commit -m \"STYLE: commit inicial\""

## PERF - Ajustes de performance.
perf:
	@echo "git commit -m \"PERF: commit inicial\""

## DOCS - Insere documentação.
docs:
	@echo "git commit -m \"DOCS: commit inicial\""

## CI - Ajustes nas configurações de CI.
ci:
	@echo "git commit -m \"CI: commit inicial\""

## BUILD - Ajustes nas configurações de Build.
build:
	@echo "git commit -m \"BUILD: commit inicial\""

color:
	@echo "\n${COLOR_YELLOW}-----------------\n${PROJECT}\n-----------------\n${COLOR_RESET}"

##
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