FROM nvcr.io/nvidia/pytorch:22.08-py3
RUN apt-get update && apt-get install -y vim git-lfs ctags
RUN pip install astropy astroquery numpy matplotlib dataclasses zstandard boto3 sh tqdm pytz ephem torchmetrics awscli s3cmd
RUN pip install glumpy 
RUN git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim
ADD .vimrc /root/
RUN vim +VundleInstall +qall
