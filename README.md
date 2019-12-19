# Starter for deploying [fast.ai](https://www.fast.ai) models on [Render](https://render.com)

This repo can be used as a starting point to deploy [fast.ai](https://github.com/fastai/fastai) models on Render.

The sample app described here is up at https://fastai-v3.onrender.com. Test it out with bear images!

You can test your changes locally by installing Docker and using the following command:

```
docker build -t fastai-v3 . && docker run --rm -it -p 5000:5000 fastai-v3
```

The guide for production deployment to Render is at https://course.fast.ai/deployment_render.html.

Please use [Render's fast.ai forum thread](https://forums.fast.ai/t/deployment-platform-render/33953) for questions and support.

# How to run local

Install Anaconda, create a venv and activate
```
conda create -n dinodex
conda activate dinodex
```
Install all the packages you can from requirement.txt
```
conda install < torch torchvision and everything you can from requirements.txt >
```
Install whats missing with pip
```
Pip install < all the packages that cant be installed with conda >
```

FROM python:3.7-slim-stretch