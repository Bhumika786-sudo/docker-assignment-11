# Use Node.js (the software that runs our website)
FROM node:18-alpine

# Create a folder inside Docker where our website will live
# IMPORTANT: Replace lastName_firstName with YOUR names
WORKDIR /Verma_Bhumika_site

# Copy the file that lists what software we need
COPY package*.json ./

# Install all the software our website needs
RUN npm install

# Copy all our website files into Docker
COPY . .

# Tell Docker our website uses port 7775
EXPOSE 7775

# Command to start our website
CMD ["npm", "start"]