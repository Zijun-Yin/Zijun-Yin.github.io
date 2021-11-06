# Deploying Your Vue Project
# With our Vue publicPath configured, we can now work on deploying our project.

# Step 2. Build your project using npm build
# This step is pretty self explanatory, we actually need to have a dist folder to deploy.
git add . && git commit -m "before build" && git push origin

npm run build

# Step 3. Run git add dist && git commit -m 'adding dist subtree'
# This commits our changes to the master branch so that we can create a dist subtree in the next step. Make sure that dist is not included in your .gitignore file!
git add dist -f
git commit -m "adding dist"

# Step 4. Run git subtree push --prefix dist origin gh-pages
# This step makes gh-pages a subtree of our master branch. The prefix option specifies the folder that we want for our the subtree. If we take a look at our gh-pages branch, we will see that it is equivalent to being the root of the dist folder.
git subtree push --prefix dist origin gh-pages