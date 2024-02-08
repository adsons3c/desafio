# Aplicação para Desafio DevOps / IaC

Para executar a aplicação, basta executar:

```bash
./gradlew bootRun
```

Caso queira gerar o JAR, ao invés disso, basta executar:


Para fazer o build, basta executar:

```bash
./gradlew build
```

O JAR ficará disponível em `build/libs/`.


# Atividade Realizadas 

1 - Foi criado um arquivo Dockerfile, para criação da imagem docker da aplicação enviada 

2 - Foi criado um manifesto Terraform para o provisionamento da infraestrutura na AWS

3 - Foi desenvolvido uma pipeline, utilizando o Jenkins para a automação do processo de criação da imagem docker, push da imagem para ECR e provisionamento da infra na AWS 

Obs. O ECR não foi provisionado utilizando o manifesto Terraform. 


