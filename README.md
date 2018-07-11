# On Systematic Compositionality of Visual Question Answering Models

TODO hyperlinks

The paper draft (WIP): https://www.overleaf.com/16233948sbvjhbzwscjn#/62126987/

This code allows to train a number of VQA models on CLEVR, SHAPES and also on a family of custom FlatQA datasets.
The models available include:

- (Homogeneous-) Neural Module Networks (a.k.a. as Execution Engine (EE)) from Johnson et al, 2017
- (Heterogeneous-) Neural Module Networks from Andreas et al, 2016
- Compositional Attention Networks (a.k.a. Memory-Attention-Control (MAC)) from Hudson et al, 2010
- FiLM from Perez et al, 2018
- FiLM with attention, inspired by Strub et al, 2018, but implemented somewhat differently

## Installation

Clone the repository. Create a Conda environment and install the code in the environment in development mode:

```
conda create -f environment.yaml
pip install -e . 
```

Any time you want run the code, activate the environment first:

```
source activate nmn
```

When you are done, deactivate the environment:

```
source deactivate
```

## Training Models

Let `$ROOT` be the path to your checkout.

## Generating Datasets

### Acknowledgements.

This code is based on the reference implementation for "FiLM: Visual Reasoning with a General Conditioning Layer" by Ethan Perez, Florian Strub, Harm de Vries, Vincent Dumoulin, Aaron Courville.
