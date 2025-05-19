# Fraud Detection Project

This project implements a fraud detection pipeline using Kubeflow Pipelines and One-Class SVM.

## Project Structure

The project is structured as follows:

```
fraud_detection/
├── components/
│   └── train/
│       ├── dockerfile
│       ├── run_notebook.sh
│       └── component.yaml
├── compose/
│   └── train/
├── data/
│   └── creditcard.csv
├── model/
│   └── oneclasssvm_fraud_detection.pkl
│   └── scaler.pkl
├── notebook/
│   └── fraud_detection.ipynb
├── pipeline/
│   ├── pipeline.py
│   └── fraud_pipeline.yaml
│   └── Dockerfile
├── requirements.txt
└── README.md
```

## Components

*   `components/train`: Contains the files for the training component. This component is responsible for training the fraud detection model.
    *   `dockerfile`: Dockerfile for building the training component image. This file specifies the base image, installs the necessary dependencies, and copies the training notebook and script.
    *   `run_notebook.sh`: Script to run the training notebook. This script executes the `fraud_detection.ipynb` notebook using Papermill, passing the input path and output directory as parameters.
    *   `component.yaml`: Kubeflow component definition. This file defines the component's inputs, outputs, and implementation.
*   `data`: Contains the credit card dataset (`creditcard.csv`). This dataset is used to train the fraud detection model. The dataset contains credit card transactions and a binary label indicating whether the transaction is fraudulent or not.
*   `model`: Contains the trained model (`oneclasssvm_fraud_detection.pkl`) and scaler (`scaler.pkl`). The model is a One-Class SVM trained to detect fraudulent transactions. The scaler is used to scale the input features before training the model.
*   `notebook`: Contains the Jupyter notebook for training the model (`fraud_detection.ipynb`). This notebook contains the code to load the data, preprocess it, train the One-Class SVM model, and save the model and scaler.
*   `pipeline`: Contains the Kubeflow pipeline definition.
    *   `pipeline.py`: Python file to define and compile the pipeline. This file defines the Kubeflow pipeline, which consists of a single training component.
    *   `fraud_pipeline.yaml`: Compiled Kubeflow pipeline. This file is the compiled version of the pipeline, which can be submitted to Kubeflow.
    *   `Dockerfile`: Dockerfile to build and run the pipeline. This file is used to create a Docker image that can be used to run the pipeline.

## How to Run the Pipeline

1.  Install Kubeflow Pipelines SDK: `pip install kfp`
2.  Compile the pipeline: `python fraud_detection/pipeline/pipeline.py`
3.  Run the compiled pipeline using Kubeflow.

Alternatively, you can build and run the pipeline using Docker:

1.  Build the Docker image: `docker build -t fraud-pipeline -f fraud_detection/pipeline/Dockerfile .`
2.  Run the Docker image: `docker run fraud-pipeline`

## Requirements

*   Python 3.9
*   Kubeflow Pipelines SDK
*   Docker
# FraudDetectionProject
