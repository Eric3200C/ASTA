# Additional Self-attention Transformer with Adapter for Thick Haze Removal

> **Abstract:** 
Remote sensing images (RSIs) are widely used in the fields of geological resources monitoring, earthquake relief and weather forecasting, but they are easily nullified due to haze cover. Transformer-based image dehazing model can better remove the haze in RSIs and improve the clarity of RSIs. However, due to the insufficient ability to extract detail information, the model performs poorly in the case of thick haze. To solve this problem, this paper introduces an additional self-attention mechanism to help the model acquire more detailed information on the basis of the existing Transformer-based image dehazing model, and introduces an adapter module to improve the model's fitting capacity with newly added content. Experiments on benchmark RSIs show that the proposed method has a more detailed and higher-quality dehazing ability, and achieves improvement in PSNR and SSIM.


## Preparation

### Install

We conduct all the experiments on Python 3.7 + PyTorch 1.10.2 + CUDA 11.3

1. Conda environment and dependencies
```
conda create -n asta python=3.7
conda activate asta
conda install pytorch=1.10.2 torchvision torchaudio cudatoolkit=11.3 -c pytorch
pip install -r requirements.txt
```

### Download

All the pretrained models can be obtained on [BaiduPan](https://pan.baidu.com/s/1C0j4vaVthGgMklGXce4JSA)(y9s4)

The final file path should be the same as the following:

```
┬─ save_models
│   ├─ asta.pth
│   └─ ... (model name)
└─ data
    ├─ Haze1k-thin
    │   ├─ train
    │   │   ├─ GT
    │   │   │   └─ ... (image filename)
    │   │   └─ hazy
    │   │       └─ ... (corresponds to the former)
    │   └─ test
    │       └─ ...
    └─ ... (dataset name)
```

## Training and Evaluation

### Train

Training settings can be modified in `config.json`
Then run the following script to train the model:

```sh
python train.py --dataset (dataset name)
```

For example, we train the ASTA on the Haze1k-thin:

```sh
python train.py --dataset Haze1k-thin
```

### Test

Run the following script to test the trained model:

```sh
python test.py --dataset (dataset name)
```

For example, we test the ASTA on the Haze1k-thin:

```sh
python test.py --dataset Haze1k-thin
```

If you have downloaded all the saved models, the test scripts can be found in `run.sh`.