# Step 1: Use official Node.js image as a base
FROM node:16

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy the package.json and package-lock.json (or yarn.lock) first to install dependencies separately from the application code
COPY package*.json ./

# Step 4: Install the application dependencies
RUN npm install

# Step 5: Copy the entire project into the container
COPY . .

# Step 6: Expose the port that the app will run on (e.g., 3000)
EXPOSE 3000

# Step 7: Command to run the app
CMD ["npm", "start"]

