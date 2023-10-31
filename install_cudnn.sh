#!/bin/bash

CUDA_VERSION="11.0"
CUDNN_VERSION="8.0.5"
CUDNN_FILE="libcudnn8_${CUDNN_VERSION}-1+cuda${CUDA_VERSION}_amd64.deb"

# cuDNNのdebファイルをダウンロード
wget 
"https://developer.nvidia.com/compute/machine-learning/cudnn/secure/${CUDNN_VERSION}/prod/11.0_20201027/${CUDNN_FILE}"

# cuDNNのインストール
sudo dpkg -i "${CUDNN_FILE}"

# クリーンアップ
rm "${CUDNN_FILE}"

