#!/bin/bash
#SBATCH --job-name=mri_ndata                     # Job name
#SBATCH --output=download.out  # Standard output and error log
#SBATCH --mail-type=ALL                      # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=       # Where to send mail
#SBATCH --cpus-per-task=2                    # Number of cores per MPI rank 
#SBATCH --ntasks=1                           # Number of MPI ranks
#SBATCH --nodes=1                            # Number of nodes
#SBATCH --mem-per-cpu=50gb                   # Memory per CPU
#SBATCH --time=500:00:00                     # Time limit hrs:min:sec



module load python

AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION="us-east-1"
AWS_DEFAULT_OUTPUT="json"


aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set default.region $AWS_DEFAULT_REGION
aws configure set default.output $AWS_DEFAULT_OUTPUT

aws s3 ls s3://remote-directory --recursive --human-readable --summarize | tail -n 2
aws s3 sync s3://remote-directory your_own_download_path