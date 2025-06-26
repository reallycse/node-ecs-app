# Step 1: Base image (Node.js)
FROM node:20

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy package files and install (no express, so will be quick)
COPY package*.json ./
RUN npm install

# Step 4: Copy rest of the files (like index.js)
COPY . .

# Step 5: Expose port 3000
EXPOSE 3000

# Step 6: Start the app
CMD ["npm", "start"]
