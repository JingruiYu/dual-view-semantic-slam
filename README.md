# Dual-View Semantic SLAM

[中文](#中文说明) | [English](#english)

## English

A visual SLAM research prototype that combines **front-view camera observations**, **bird's-eye-view geometry**, and **semantic cues** for autonomous-driving localization and mapping.

The project explores how multi-view geometric information and semantic scene structure can improve visual localization robustness in road environments.

## Motivation

Autonomous-driving scenes are challenging for monocular SLAM because of low-texture road surfaces, dynamic objects, repetitive structures, and large viewpoint changes. A dual-view formulation can provide complementary constraints:

- front-view image features for visual tracking;
- bird's-eye-view structure for road-layout consistency;
- semantic cues for more stable scene understanding;
- optimization modules for trajectory and map consistency.

## Main ideas

- Dual-view SLAM pipeline with front-view and BEV observations.
- Semantic feature usage for robust tracking and matching.
- Motion-prior assisted matching in driving scenes.
- Re-localization / re-initialization logic for tracking failure cases.
- ORB-SLAM-style architecture with pose-graph and bundle-adjustment components.

## Repository structure

```text
.
├── Examples/                 # Monocular and semantic SLAM entry points
├── Thirdparty/               # Third-party SLAM dependencies
├── CMakeLists.txt
└── README.md
```

## Keywords

`semantic SLAM`, `visual SLAM`, `bird's-eye view`, `BEV`, `fisheye camera`, `autonomous driving`, `visual localization`, `pose graph optimization`, `bundle adjustment`

## Related publication

This repository contains experimental code related to the ideas in the following paper:

- [**Hierarchical Multi-Level Information Fusion for Robust and Consistent Visual SLAM**](https://ieeexplore.ieee.org/document/9613790/)

The code should be treated as a **research prototype / partial implementation**, not as an official or complete reproduction of the paper.

## Project status

This is a research prototype. It may require dependency and dataset-path adaptation before being used in a modern environment.

---

## 中文说明

这是一个面向自动驾驶场景的视觉 SLAM 研究原型，尝试融合 **前视图像观测**、**鸟瞰图 / BEV 几何信息** 和 **语义线索** 来提升定位与建图的鲁棒性。

项目关注的问题是：在道路场景中，单目视觉 SLAM 容易受到低纹理、动态物体、重复结构和视角变化影响；如果引入 BEV 结构和语义信息，是否能够提供更稳定的几何约束。

## 关键词

语义 SLAM、视觉 SLAM、BEV、鸟瞰图、鱼眼相机、自动驾驶定位、位姿图优化、Bundle Adjustment。

## 相关论文

该仓库包含与以下论文思想相关的实验代码：

- [**Hierarchical Multi-Level Information Fusion for Robust and Consistent Visual SLAM**](https://ieeexplore.ieee.org/document/9613790/)

需要注意：该仓库更适合作为**研究原型 / 部分实现**来看待，不应理解为论文的官方完整复现。
