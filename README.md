# RTL Design of a 2×2 Systolic Array for AI Accelerator Applications

## Project Overview

This project presents the RTL design and simulation of a 2×2 Systolic Array using Verilog HDL. The architecture consists of four Multiply-Accumulate (MAC) units operating in parallel to perform matrix multiplication computations.

Systolic arrays are widely used in AI accelerators because they provide high throughput, efficient data reuse, and parallel processing capabilities for neural network workloads.

---

## Objectives

- Design a 2×2 Systolic Array using Verilog HDL
- Implement MAC (Multiply-Accumulate) units
- Demonstrate parallel processing
- Verify functionality through simulation
- Understand AI accelerator architecture concepts

---

## Architecture

A basic 2×2 systolic array consists of four interconnected MAC units.

```text
          B1        B2
           ↓         ↓

A1 →     MAC1 ----> MAC2
           ↓         ↓

A2 →     MAC3 ----> MAC4
           ↓         ↓

         C1,C2    C3,C4
```

Each MAC unit performs:

Output = Sum_In + (A × B)

---

## Features

- Verilog HDL implementation
- Parallel MAC computation
- Modular design
- Clock synchronized operation
- Functional simulation verification
- AI accelerator oriented architecture

---

## Tools Used

- Verilog HDL
- RTL Design
- Jdoodle / EDA Playground
- GitHub

---

## Simulation Results

### Input Values

| Signal | Value |
|----------|----------|
| A1 | 2 |
| A2 | 3 |
| B1 | 4 |
| B2 | 5 |

### Output Values

| Output | Value |
|----------|----------|
| C1 | 8 |
| C2 | 10 |
| C3 | 12 |
| C4 | 15 |

### Verification

- 2 × 4 = 8
- 2 × 5 = 10
- 3 × 4 = 12
- 3 × 5 = 15

The simulation results confirm correct parallel computation.

---

## Applications

- AI Accelerators
- Neural Network Processing
- Matrix Multiplication Engines
- Deep Learning Hardware
- Face Recognition Systems
- Image Processing
- Edge AI Devices
- TPU Architectures

---

## Advantages

- High computational throughput
- Parallel processing capability
- Efficient hardware utilization
- Reduced computation time
- Scalable architecture

---

## Future Scope

- 4×4 Systolic Array Design
- Pipelined Architecture
- FPGA Implementation
- CNN Accelerator Design
- Low-Power AI Hardware Optimization

---

## Conclusion

A 2×2 Systolic Array was successfully designed and simulated using Verilog HDL. The project demonstrated parallel MAC computations and provided practical understanding of AI accelerator architectures, dataflow concepts, and matrix multiplication hardware.

---

## Author

**A. Vamsi Krishna**

VLSI Design and AI Hardware Research
