# Subreddit Post Classification - Data Engineering Project

## Project Overview
This project aims to preprocess a dataset of Reddit posts to train a machine learning algorithm that classifies posts into specific subreddits. The dataset used is from [Zenodo](https://zenodo.org/records/1043504#.Wzt7PbhXryo), and preprocessing is done on an Ubuntu server.

## Dataset
- **Source:** [Zenodo Dataset](https://zenodo.org/records/1043504#.Wzt7PbhXryo)
- **Description:** Contains Reddit posts with metadata, requiring preprocessing to extract meaningful features.

## Objectives
1. Preprocess text data for ML training.
2. Implement feature engineering techniques.
3. Train and evaluate classification models.
4. Deploy a trained model for inference.

## Repository Structure

- /data/          -->   Raw and processed datasets (not included in GitHub) 
- /notebooks/     -->   Jupyter notebooks for exploration 
- /src/           -->   Python scripts for preprocessing and training 
- /models/        -->   Saved trained models 
- /config/        -->   Config files (e.g., preprocessing parameters) 
- /docs/          -->   Documentation and reports

## Get Started:

## Spark Setup Script (`setup_spark.sh`)

This script automates the setup of **Apache Spark, PySpark, and JupyterLab** on an Ubuntu server.

### Features:
- Installs **Java 11, Git, Python3, Pip**
- Installs **PySpark, Pandas, Matplotlib**
- Sets up **JupyterLab**
- Configures **Spark environment**
- Updates **/etc/hosts** for Spark worker nodes

### How to Run:
Run the following command in your terminal:
```bash
bash scripts/setup_spark.sh

After installation, start the notebook with:
jupyter lab --port=8888

