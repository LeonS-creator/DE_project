# Update apt repo metadata: 
sudo apt update

# Install java: 
sudo apt install -y openjdk-17-jdk

# Env variable so the workers know which Python to use...
echo "export PYSPARK_PYTHON=python3" >> ~/.bashrc
source ~/.bashrc

# Install git
sudo apt install -y git

# Install python packages manager: 
sudo apt install -y python3-pip

# Check the version:
python3 -m pip --version

# Install pyspark (version must be matched as the Spark cluster), and some other useful deps
python3 -m pip install pyspark==3.5.4 --user
python3 -m pip install pandas --user
python3 -m pip install matplotlib --user

# Clone the examples from the lectures, so you have a copy to experiment with
git clone https://github.com/usamazf/DE1-Spark.git

# Install jupyterlab
python3 -m pip install jupyterlab --user



sudo /bin/bash -c 'for ((i = 1 ; i <= 255 ; i++)); do echo "192.168.2.${i} de1-spark-host-${i}" >> /etc/hosts; done'




sudo apt install jupyter-core


 python3 -m site --user-base

export PATH=$HOME/.local/bin:$PATH
ubuntu@project-32:~$ echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc

Verify it works:
jupyter server --Version

Enter in Browser
http://localhost:8888/lab


#!/bin/bash

# Update package repository metadata
echo "Updating package lists..."
sudo apt update -y

# Install Java 11 (Recommended for Spark) instead of Java 17
echo "Installing OpenJDK 11..."
sudo apt install -y openjdk-11-jdk

# Verify Java installation
java -version

# Set Python environment variable for PySpark
echo "Setting up PySpark environment variable..."
echo "export PYSPARK_PYTHON=python3" >> ~/.bashrc
source ~/.bashrc

# Install Git
echo "Installing Git..."
sudo apt install -y git

# Install Python3 and Pip
echo "Installing Python3 and Pip..."
sudo apt install -y python3-pip

# Verify Pip installation
echo "Checking Pip version..."
python3 -m pip --version

# Install PySpark (Ensure it matches the Spark cluster version) and other dependencies
echo "Installing PySpark and dependencies..."
python3 -m pip install pyspark==3.5.4 --user
python3 -m pip install pandas matplotlib --user

# Clone the Spark example repository
echo "Cloning Spark example repository..."
git clone https://github.com/usamazf/DE1-Spark.git

# Install JupyterLab
echo "Installing JupyterLab..."
python3 -m pip install jupyterlab --user

# Add local Spark hosts to /etc/hosts (for cluster networking)
echo "Adding local Spark hosts..."
sudo /bin/bash -c 'for ((i = 1 ; i <= 255 ; i++)); do echo "192.168.2.${i} de1-spark-host-${i}" >> /etc/hosts; done'

# Install Jupyter Core
echo "Installing Jupyter Core..."
sudo apt install -y jupyter-core

# Ensure Jupyter is in PATH
echo "Updating PATH for Jupyter..."
export PATH=$HOME/.local/bin:$PATH
echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

# Verify Jupyter installation
echo "Verifying Jupyter installation..."
jupyter server --version

# Display completion message
echo "Setup complete! You can now start JupyterLab with:"
echo "jupyter lab --port=8888"

# Provide browser access link
echo "To access JupyterLab, open your browser and go to:"
echo "http://localhost:8888/lab"


