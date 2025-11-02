# 4BIT-ADDER-VHDL
This project implements a 4-bit Ripple Carry Adder using VHDL. The design is built structurally using four instances of a Full Adder (FA) component. Each full adder handles one bit addition along with the carry propagation.
Sure! Here is your **README.md** for the **4-bit Ripple Carry Adder**, formatted exactly like your decoder README style:

---

# 4-BIT-ADDER-VHDL

## Overview

<br>

* A 4-bit Ripple Carry Adder implemented in VHDL and simulated using ModelSim.

* A Ripple Carry Adder is a combinational circuit that adds two binary numbers along with an input carry.

* In this 4-bit Adder, two 4-bit inputs (`A` and `B`) and a carry input (`Cin`) are added to produce a 4-bit sum (`S`) and a carry-out (`Co`).

* The circuit is built by cascading four **Full Adders** (1-bit adders), where each stage’s carry-out becomes the next stage’s carry-in.

## Block Diagram (Conceptual)

```
 Cin → [FA0] → [FA1] → [FA2] → [FA3] → Co
         |       |       |       |
        S0      S1      S2      S3
```

## Full Adder Logic

| Inputs    | Outputs                 |
| --------- | ----------------------- |
| A, B, Cin | S (Sum), Co (Carry Out) |

**Logic Equations:**

```
S  = A ⊕ B ⊕ Cin
Co = (A ∧ B) ∨ (B ∧ Cin) ∨ (A ∧ Cin)
```

## Truth Table (Full Adder)

|  A  |  B  | Cin |  S  |  Co |
| :-: | :-: | :-: | :-: | :-: |
|  0  |  0  |  0  |  0  |  0  |
|  0  |  0  |  1  |  1  |  0  |
|  0  |  1  |  0  |  1  |  0  |
|  0  |  1  |  1  |  0  |  1  |
|  1  |  0  |  0  |  1  |  0  |
|  1  |  0  |  1  |  0  |  1  |
|  1  |  1  |  0  |  0  |  1  |
|  1  |  1  |  1  |  1  |  1  |


## Simulation Details

**Simulation Type:** Behavioral Simulation
**Tool Used:** ModelSim
**Language Used:** VHDL

**Inputs:**

* `A` (4-bit)
* `B` (4-bit)
* `Cin` (1-bit carry input)

**Outputs:**

* `S` (4-bit sum output)
* `Co` (carry output)

---

If you want, I can **also generate a testbench** and **waveform screenshot** for simulation.
Just tell me 😊
