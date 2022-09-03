FROM nvcr.io/nvidia/pytorch:22.08-py3
RUN apt-get update && apt-get install -y vim
RUN pip install astropy astroquery numpy matplotlib dataclasses zstandard boto3 sh tqdm pytz ephem torchmetrics awscli s3cmd
RUN pip install glumpy 
