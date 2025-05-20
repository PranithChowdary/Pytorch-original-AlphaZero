# Pytorch-original-AlphaZero

My implementation of the original AlphaZero paper:  
**"A general reinforcement learning algorithm that masters Chess, Shogi, and Go through self-play"**  
→ [Silver et al., DeepMind, 2017](https://www.nature.com/articles/nature24270)


## 🚀 Overview

This project reimplements the core ideas of AlphaZero using PyTorch from scratch.  
It supports training and evaluation on board games like **Go** and **Gomoku**, with modular MCTS, a deep residual neural network, and a scalable self-play pipeline.  
Designed with **research reproducibility**, **educational clarity**, and **modular experimentation** in mind.


## 🔥 Key Features

- 🧠 **MCTS (v1 & v2)** — Custom implementations with tree reuse, visit counts, and exploration noise
- 🏗️ **Neural Network** — Deep residual CNN with separate policy and value heads
- ♻️ **Self-Play Training** — Built-in actor, learner, and replay loop
- 📊 **Evaluation Framework** — Elo rating, agent vs agent, and CrazyStone integration
- 📈 **TensorBoard Logging** — For real-time tracking of training metrics
- 🐳 **Docker Support** — Reproducible environment for fast deployment
- 🌐 **Notebook UI** — Play interactively against trained agents in-browser
- 🔍 **SGF Support** — Replay and analyze Go games using Sabaki or similar tools


## 🗂️ Project Structure

```

.
├── alpha\_zero/             # Core logic (MCTS, model, pipeline)
│   ├── core/                # MCTS, network, rating, replay
│   ├── envs/                # Go & Gomoku environments (Gym-style)
│   └── utils/               # SGF parsing, data transformations, logging
├── eval_play/               # GUI/CLI for evaluating trained agents
├── logs/                    # TensorBoard and evaluation logs
├── docker/                  # Dockerfile for reproducibility
├── others/                  # Analysis scripts, Elo graphs, score systems
├── unit_tests/              # Tests for environments, MCTS, transformations
├── plot_go.py               # Training visualization
├── plot_gomoku.py
├── run_unit_tests.sh
└── README.md

````


## ⚙️ Getting Started

### ✅ 1. Install with Docker (Recommended)

```bash
docker build -t alphazero-pytorch -f docker/Dockerfile .
docker run -it --rm -p 6006:6006 alphazero-pytorch
````

### ✅ 2. Or install manually

```bash
pip install -r requirements.txt
```


## 🏋️ Train an Agent

### Train Go (9x9 board):

```bash
python alpha_zero/training_go.py
```

### Train Gomoku (13x13 board):

```bash
python alpha_zero/training_gomoku.py
```

TensorBoard logs saved to `logs/`:

```bash
tensorboard --logdir logs/
```

## 🧪 Evaluate Agents

### GUI/Terminal Match:

```bash
python eval_play/eval_agent_go.py                 # GUI
python eval_play/eval_agent_go_cmd.py             # Terminal
```

### Match against Crazystone (manual proxy):

```bash
python eval_play/eval_agent_go_cmd.py --opponent crazystone
```


## 🎮 Play in Browser (Notebook)

Launch Jupyter and play interactively in-browser:

```bash
jupyter notebook notebooks/play_agent_demo.ipynb
```


## 📊 Visualize Progress

```bash
python plot_go.py        # Elo & Win-rate vs Checkpoints
python plot_gomoku.py
```

## 🧠 Research Notes

* Training is scaled-down for accessibility (fewer simulations, smaller nets)
* Designed to be **hackable**: plug in your own game, change architecture, modify MCTS
* All games stored in **SGF format** for compatibility with viewers like Sabaki


## 📌 To-Do & Roadmap

* [ ] Add full Chess and Shogi support
* [ ] Integrate Prioritized Replay Buffer
* [ ] Distributed Self-Play with Ray or Dask
* [ ] Improved GUI (Streamlit / WebRTC)
* [ ] Support for AlphaZero variants (MuZero, EfficientZero)


## 📜 License

This project is licensed under the **MIT License**. See [LICENSE](./LICENSE) for full details.


## 🙏 Acknowledgments

* DeepMind for AlphaZero and GTP logic
* MiniGo, Leela Zero, and Sabaki for inspiration
* OpenAI Gym and PyTorch for frameworks


## 🧠 Author

**Pranith Chowdary Karumanchi**
Research-focused AI Engineer | ML + RL + LLMs
[GitHub](https://github.com/yourusername) • [LinkedIn](https://linkedin.com/in/yourprofile)


Feel free to ⭐ this repo if you find it useful!
