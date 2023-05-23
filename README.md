# An example for my book "A Lisp Programmer Living in Python-Land: The Hy Programming Language" deploying Hy language Flask web apps on Google Cloud Platform

### Updated 2023/05/23 for Hylang version 0.26.0

My book on leanpub: [A Lisp Programmer Living in Python-Land: The Hy Programming Language](https://leanpub.com/hy-lisp-python)

This is an example for the next edition of my book.

I assume that you have some experience with GCP and have the following:

- GCP command line tools installed
- you have created a new project on the GCP AppEngine console named something like hy-gcp-test (if you choose a name already in use, you wil get a warning)

On the command line:

    gcloud auth login
    gcloud config set project hy-gcp-test
    gcloud app deploy
    gcloud app browse

If you have problems, look at your logs:

    gcloud app logs tail -s default

You can edit changes localling and test locally using:

    python main.py

Any changes can be tested by deploying again:

    gcloud app deploy

NOTE: everytime you deploy, a new instance is created. You will want to use the GCP AppEngine console to remove old instances, or all instances when you are done.
