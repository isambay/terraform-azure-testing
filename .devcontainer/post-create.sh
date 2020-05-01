#Install GO

wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz

tar -xvf go1.13.4.linux-amd64.tar.gz

sudo mv go /usr/local

rm go1.13.4.linux-amd64.tar.gz

echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
echo 'export GOPATH=$HOME/workspace' >> ~/.bashrc
echo 'export PATH=$GOROOT/bin:$GOPATH/bin:$PATH' >> ~/.bashrc

source ~/.profile

#Install Pre-Commit

pip install pre-commit

# Install Terraform
wget https://releases.hashicorp.com/terraform/0.12.23/terraform_0.12.23_linux_amd64.zip
unzip terraform_0.12.23_linux_amd64.zip
mv terraform /usr/local/bin/
rm terraform_0.12.23_linux_amd64.zip

#Install go fmt


#Install tflint
curl -L "$(curl -Ls https://api.github.com/repos/terraform-linters/tflint/releases/latest | grep -o -E "https://.+?_linux_amd64.zip")" -o tflint.zip && unzip tflint.zip && rm tflint.zip
mv tflint /usr/local/bin/

#Install Terraform Documents
GO111MODULE="on" go get github.com/segmentio/terraform-docs@v0.9.1