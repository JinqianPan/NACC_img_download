# NACC_img_download

This repo is some experience of downloading the image data from NACC AWS S3 bucket.

After you requesting data from the NACC, they will sent an email, which including the AWS S3's access key, secret access key and remote-directory. 
Based on these information, we could download data from AWS S3 bucket without sign in the AWS.

--------
### Download the AWS CLI.
The [official website](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) gives ways to download it.
You also could use the code below:

```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

### Configure
Typing the code below after install the CLI.
```
aws configure
```
The commend line will show you:
```
AWS Access Key ID [None]: accesskey
AWS Secret Access Key [None]: secretkey
Default region name [None]: us-east-2
Default output format [None]:
```

>[!TIP]
>You could find `Default region name` in the Google to find which one is good for you. 
