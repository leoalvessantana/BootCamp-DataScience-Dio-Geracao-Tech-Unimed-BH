# Criação de Banco de Dados com DynamoDB e AWS CLI

### Serviço utilizado
  - Amazon DynamoDB
  - Amazon CLI para execução em linha de comando

### Comandos para execução do experimento:


#### Criar uma tabela

```
aws dynamodb create-table \
    --table-name Music_Coldplay \
    --attribute-definitions \
        AttributeName=Artist,AttributeType=S \
        AttributeName=SongTitle,AttributeType=S \
    --key-schema \
        AttributeName=Artist,KeyType=HASH \
        AttributeName=SongTitle,KeyType=RANGE \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5
```

#### Inserir um item

```
aws dynamodb put-item \
    --table-name Music_Coldplay \
    --item file://itemmusic.json \
```

#### Inserir múltiplos itens

```
aws dynamodb batch-write-item \
    --request-items file://batchmusic.json
```

#### Criar um index global secundário baseado no título do álbum

```
aws dynamodb update-table \
    --table-name Music_Coldplay \
    --attribute-definitions AttributeName=AlbumTitle,AttributeType=S \
    --global-secondary-index-updates \
        "[{\"Create\":{\"IndexName\": \"AlbumTitle-index\",\"KeySchema\":[{\"AttributeName\":\"AlbumTitle\",\"KeyType\":\"HASH\"}], \
        \"ProvisionedThroughput\": {\"ReadCapacityUnits\": 10, \"WriteCapacityUnits\": 5      },\"Projection\":{\"ProjectionType\":\"ALL\"}}}]"
```

#### Criar um index global secundário baseado no nome do artista e no título do álbum

```
aws dynamodb update-table \
    --table-name Music_Coldplay \
    --attribute-definitions\
        AttributeName=Artist,AttributeType=S \
        AttributeName=AlbumTitle,AttributeType=S \
    --global-secondary-index-updates \
        "[{\"Create\":{\"IndexName\": \"ArtistAlbumTitle-index\",\"KeySchema\":[{\"AttributeName\":\"Artist\",\"KeyType\":\"HASH\"}, {\"AttributeName\":\"AlbumTitle\",\"KeyType\":\"RANGE\"}], \
        \"ProvisionedThroughput\": {\"ReadCapacityUnits\": 10, \"WriteCapacityUnits\": 5      },\"Projection\":{\"ProjectionType\":\"ALL\"}}}]"
```

#### Criar um index global secundário baseado no título da música e no ano

```
aws dynamodb update-table \
    --table-name Music_Coldplay \
    --attribute-definitions\
        AttributeName=SongTitle,AttributeType=S \
        AttributeName=SongYear,AttributeType=S \
    --global-secondary-index-updates \
        "[{\"Create\":{\"IndexName\": \"SongTitleYear-index\",\"KeySchema\":[{\"AttributeName\":\"SongTitle\",\"KeyType\":\"HASH\"}, {\"AttributeName\":\"SongYear\",\"KeyType\":\"RANGE\"}], \
        \"ProvisionedThroughput\": {\"ReadCapacityUnits\": 10, \"WriteCapacityUnits\": 5      },\"Projection\":{\"ProjectionType\":\"ALL\"}}}]"
```

#### Pesquisar item por artista

```
aws dynamodb query \
    --table-name Music_Coldplay \
    --key-condition-expression "Artist = :artist" \
    --expression-attribute-values  '{":artist":{"S":"Coldplay"}}'
```

#### Pesquisar item por artista e título da música

```
aws dynamodb query \
    --table-name Music_Coldplay \
    --key-condition-expression "Artist = :artist and SongTitle = :title" \
    --expression-attribute-values file://keyconditions.json
```

#### Pesquisa pelo index secundário baseado no título do álbum

```
aws dynamodb query \
    --table-name Music_Coldplay \
    --index-name AlbumTitle-index \
    --key-condition-expression "AlbumTitle = :name" \
    --expression-attribute-values  '{":name":{"S":"Parachutes"}}'
```

#### Pesquisa pelo index secundário baseado no nome do artista e no título do álbum

```
aws dynamodb query \
    --table-name Music_Coldplay \
    --index-name ArtistAlbumTitle-index \
    --key-condition-expression "Artist = :v_artist and AlbumTitle = :v_title" \
    --expression-attribute-values  '{":v_artist":{"S":"Coldplay"},":v_title":{"S":"Parachutes"} }'
```

#### Pesquisa pelo index secundário baseado no título da música e no ano

```
aws dynamodb query \
    --table-name Music_Coldplay \
    --index-name SongTitleYear-index \
    --key-condition-expression "SongTitle = :v_song and SongYear = :v_year" \
    --expression-attribute-values  '{":v_song":{"S":"Up&Up"},":v_year":{"S":"2015"} }'
```
