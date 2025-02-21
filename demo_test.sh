#!/bin/bash

# Image and model names
TEST_IMG=ADE_val_00001519.jpg
# MODEL_NAME=ade20k-resnet50dilated-ppm_deepsup
MODEL_NAME=ade20k-resnet101-upernet
MODEL_PATH=ckpt/$MODEL_NAME
RESULT_PATH=./

# ENCODER=$MODEL_NAME/encoder_epoch_20.pth
# DECODER=$MODEL_NAME/decoder_epoch_20.pth
ENCODER=$MODEL_NAME/encoder_epoch_2.pth
DECODER=$MODEL_NAME/decoder_epoch_2.pth

# Download model weights and image
if [ ! -e $MODEL_PATH ]; then
  mkdir -p $MODEL_PATH
fi
if [ ! -e $ENCODER ]; then
  # wget -P $MODEL_PATH http://sceneparsing.csail.mit.edu/model/pytorch/$ENCODER
  wget -O $MODEL_PATH/encoder_epoch_2.pth https://vk.com/doc166590718_619850441
fi
if [ ! -e $DECODER ]; then
  # wget -P $MODEL_PATH http://sceneparsing.csail.mit.edu/model/pytorch/$DECODER
  wget -O $MODEL_PATH/decoder_epoch_2.pth https://vk.com/doc166590718_619850891
fi
# if [ ! -e $TEST_IMG ]; then
#   wget -P $RESULT_PATH http://sceneparsing.csail.mit.edu/data/ADEChallengeData2016/images/validation/$TEST_IMG
# fi

# if [ -z "$DOWNLOAD_ONLY" ]
# then

# Inference
# python3 -u test.py \
#   --imgs $TEST_IMG \
#   --cfg config/ade20k-resnet50dilated-ppm_deepsup.yaml \
#   DIR $MODEL_PATH \
#   TEST.result ./ \
#   TEST.checkpoint epoch_20.pth

# fi

