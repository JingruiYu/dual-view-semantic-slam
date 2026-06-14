# Dual-View Semantic SLAM

A research prototype for visual SLAM that combines a **front-view fisheye camera** and a **bird's-eye-view representation** for autonomous-driving localization and mapping.

This repository records part of my PhD-stage work on AVP / autonomous-driving perception, where the core question was: how can semantic and geometric information from different camera views improve the robustness of visual localization?

## Motivation

Classical monocular SLAM can become fragile in autonomous-driving scenes because of:

- low-texture road regions;
- dynamic objects;
- large viewpoint changes;
- narrow effective field of view;
- accumulated drift in long sequences.

This project explored whether a dual-view design can make tracking and mapping more robust by combining:

- **front-view visual features** for image-level tracking;
- **bird's-eye-view cues** for geometric consistency;
- **semantic information** for more meaningful scene structure;
- **pose-graph / bundle-adjustment optimization** for global consistency.

## Main ideas

- Fuse front-view and bird's-eye-view observations in a SLAM pipeline.
- Use semantic cues to improve feature selection and matching robustness.
- Add motion priors to reduce lost matches in challenging driving sequences.
- Support re-initialization strategies when tracking is lost.
- Use pose-graph optimization and global bundle adjustment for map consistency.

## Technical keywords

- Visual SLAM
- Semantic SLAM
- Fisheye camera
- Bird's-eye view
- Autonomous driving
- Pose graph optimization
- Bundle adjustment
- ORB-SLAM-style architecture

## Repository structure

```text
.
├── Examples/                 # Example monocular / semantic SLAM entry points
├── Thirdparty/               # Third-party SLAM dependencies
├── CMakeLists.txt
└── README.md
```

## Notes

This is a historical research repository and may require environment adaptation before running on a modern system. I keep it public because it reflects a continuous line of work from classical SLAM and localization to today's robotics data infrastructure and embodied-AI perception systems.

For my more recent related work, see:

- [pyCuSFM: CUDA-accelerated Structure-from-Motion](https://github.com/nvidia-isaac/pyCuSFM)
- [NVIDIA Isaac Neural Reconstruction](https://docs.nvidia.com/nurec/robotics/neural_reconstruction_stereo.html)
