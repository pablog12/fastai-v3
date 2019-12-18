# Starter for deploying [fast.ai](https://www.fast.ai) models on [Render](https://render.com)

This repo can be used as a starting point to deploy [fast.ai](https://github.com/fastai/fastai) models on Render.

The sample app described here is up at https://fastai-v3.onrender.com. Test it out with bear images!

You can test your changes locally by installing Docker and using the following command:

```
docker build -t fastai-v3 . && docker run --rm -it -p 5000:5000 fastai-v3
```

The guide for production deployment to Render is at https://course.fast.ai/deployment_render.html.

Please use [Render's fast.ai forum thread](https://forums.fast.ai/t/deployment-platform-render/33953) for questions and support.

# RUN set -e; \
#   apk update \
#   && apk add --virtual .build-deps gcc python3-dev musl-dev libffi-dev \
#   && apk add gcc \
#   && apk add python3-dev \
#   && apk add musl-dev \
#   && apk add libffi-dev \
#   && rm -rf .build-deps