# Usa a imagem oficial do Node para a execução
FROM node:20-slim

# Define a porta que a sua API escuta (ajuste se for diferente)
EXPOSE 3001

# Define o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copia package.json e package-lock.json e instala as dependências de produção
COPY package*.json ./
RUN npm install --only=production

# Copia o restante do código da API
COPY . .

# Comando para iniciar a API (ajuste se for 'npm start' ou outro)
# Assumimos que o comando para iniciar é 'node index.js'
CMD [ "node", "index.js" ]