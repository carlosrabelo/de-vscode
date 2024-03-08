# DE-VSCODE

Imagem Docker com code-server para ambientes de desenvolvimento VS Code no navegador.

## Destaques

- Instância code-server pré-configurada pronta para uso
- Baseada em uma imagem Debian leve
- Build e deploy com um único comando via Makefile
- Lint automatizado do Dockerfile com hadolint

## Pré-requisitos

- **Docker** — necessário para construir e executar a imagem

## Início Rápido

```bash
make build
docker run --rm -p 8080:8080 carlosrabelo/de-vscode:latest
```

## Uso

Execute a imagem expondo a porta 8080:

```bash
docker run --rm -p 8080:8080 carlosrabelo/de-vscode:latest
```

Abra o navegador em `http://localhost:8080` e autentique-se com a senha exibida nos logs do container.

## Desenvolvimento

```bash
make build      # Constroi a imagem Docker
make test       # Executa testes (verifica se code-server inicia)
make quality    # Faz lint do Dockerfile com hadolint
make push       # Envia a imagem para o registry
```

## Licença

Este projeto está licenciado sob a Licença MIT — veja [LICENSE](LICENSE) para detalhes.
