#!/bin/bash

kubectl_version=v1.4.3
vagrant_box=coreos-stable

install_kubectl(){
  if [ "$(uname)" == "Darwin" ]; then
    platform=darwin
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    platform=linux
  elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    echo "Unsupported Platform"
    exit 1
  fi

  if [ ! -f "/usr/local/bin/kubectl"  ];then
    curl -O https://storage.googleapis.com/kubernetes-release/release/${kubectl_version}/bin/${platform}/amd64/kubectl
    chmod +x kubectl
    sudo mv kubectl /usr/local/bin/kubectl
  fi
}

install_kubectl
