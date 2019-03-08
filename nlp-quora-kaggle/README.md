# NLP-Quora-Kaggle
Attempting: Quora Insincere Questions Classification

Submitted By:
Aleena Yunus-03694179
Rinkita Mittal-03703372

This project contains a collection of Notebooks from 0-6 which build upon one another.

# Notebook 0- Data Analysis
This notebook delves into analysing and visualizing the data before diving into anything concrete. We checked the number of data items, items in each class, the longest questions, the shortest question and printed out some of the questions to get an idea of what the data was like. We also found that qid column was not being used so we can just ignore it.

# Notebook 1- Downsampling
Since we had a huge imbalance in the train data set we downsampled the data to get equal number of samples from each class. We used pandas to read the .csv file and then sampled a certain amount (equal to the size of the minority class) of data points from each class and saved those into a new .csv file.

# Notebook 2- Preprocessing and Feature Extraction
This notebook deals with cleaning the text, tokenizing it and lemmatizing it to make it more sensical. It also includes the function for extracting features from the data like the word to index map or vice versa. This file also contains spell correcting functions which were not used at the end since they take too much time to run on the amount of data we have.

# Notebook 3- Glove Pretrained Word Embeddings
In this notebook we used the pretrained embeddings from gloVe to find embeddings for our dataset. We checked if each word in the gloVe embedding is present in our dataset or not and if it is we extract its embedding. For the out of vocabulary words, we use the zero vector embedding.

# Notebook 4- Paragram Pretrained Word Embeddings
Does the same thing as Notebook3 just with embeddings from Paragram. They both perform almost the same.

# Notebook 5- Single LSTM with Supervised Word Embeddings
In this notebook we created the model with a single LSTM cell fed into a dynamic RNN and then the last output of that fed through a linear layer. We did not use any pretrained embeddings here, rather we used self learning embeddings using the embeddings lookup function from tensorflow. The model was then run on unbalanced train data.  

# Notebook 6- Final_LSTMModel
This was the final notebook which integrated things from the previous notebooks. It downsampled the data first, then pre-processed it, extracted features, embedded the words using gloVe, created the computational graph for the model created in notebook 5, then ran the model on train data, test data (predictions stored in submission.csv) and also has an added code block for testing your own questions for sincerity. It also includes tensor board visualization for visualizing the cross entropy loss, embeddings and the comp graph. Model checkpointing was also done by saving the model after certain intervals. 

# Running the Project
Do the following steps to run the project:
1. Run the script download_dataset.sh to unzip the data and embeddings
2. (Optional) Run Notebooks 0-5
3. Run Notebook 6!
4. To see the tensorboard visualizations, use the checkpointing directory as the LOG_DIR
