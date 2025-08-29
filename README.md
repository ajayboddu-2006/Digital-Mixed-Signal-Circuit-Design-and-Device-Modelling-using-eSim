# Digital & Mixed-Signal Circuit Design with Verilog and Device Modeling  

## About FOSSEE  
This repository is part of the **FOSSEE (Free/Libre and Open Source Software for Education)** initiative at **IIT Bombay**.  
The FOSSEE project promotes the use of **open-source software in education and research** by developing resources, supporting open-source tools, and encouraging student contributions. It provides alternatives to proprietary tools, making advanced technology more accessible.  

---
 
## About eSim  
**eSim** is an open-source **Electronic Design Automation (EDA) tool** developed by **FOSSEE, IIT Bombay**.  
The primary objective of eSim is to provide a **completely free and open-source alternative** to commercial circuit design and simulation software, thereby reducing dependency on expensive proprietary tools in academia and research.  

eSim integrates multiple open-source tools to provide a comprehensive design and simulation environment:  
- **KiCad** → schematic capture and PCB design  
- **NgSpice** → analog circuit simulation  
- **GHDL** → digital simulation with VHDL  
- **Makerchip** → online Transaction-Level Verilog (TL-Verilog) design and verification  
- **Python support** → custom simulations, netlist generation, and advanced automation  

One of the key features of eSim is its **Subcircuit feature**, which allows complex designs to be modularized into reusable blocks, simplifying the design of large systems. Additionally, eSim supports **device modeling**, enabling users to define and simulate custom semiconductor devices using real-world parameters. As part of its continuous development, eSim also supports the **SkyWater SKY130 PDK**, enabling simulations using an open-source **130nm Process Design Kit**, widely used in analog, mixed-signal, and digital IC design research. By supporting a **fully open-source toolchain**, eSim empowers students, educators, and researchers to gain hands-on experience with industry-relevant EDA tools and actively contribute to the **open-source hardware ecosystem**.  

### Key Features of eSim  
- **Open-source and Free**: Fully open-source with no licensing costs, ideal for academia and research.  
- **Integrated Toolchain**: Combines tools such as **KiCad** (schematic capture & PCB design), **NgSpice** (analog simulation), **GHDL** (digital simulation), and **Makerchip** (advanced digital design).  
- **Mixed-Signal Simulation**: Supports both analog and digital simulation for efficient mixed-signal circuit design.  
- **Subcircuit Feature**: Enables hierarchical and modular design by breaking complex circuits into reusable subcircuits.  
- **Device Modeling**: Allows simulation of real-world semiconductor devices using custom user-defined parameters.  
- **SkyWater SKY130 PDK Support**: Provides access to the open-source 130nm process design kit for IC design and simulation.  
- **Python Integration**: Supports automation, scripting, and advanced analysis through Python interfaces.  
- **User-Friendly Interface**: Intuitive GUI for circuit creation, simulation setup, and results analysis, suitable for beginners and advanced users.  
- **Cross-Platform Support**: Compatible with Linux and Windows.  
- **Active Community and Documentation**: Backed by FOSSEE’s tutorials, documentation, and community support.  

---

## Internship Work  

### 🔹 Digital Subcircuit Design?  
Subcircuit design focuses on creating **fundamental digital building blocks**. These smaller modules can be combined to form larger digital systems. As part of the internship, **IC subcircuits** were designed and validated in eSim by following a systematic  as follows:  

- **Datasheet Analysis**: Studied datasheets from multiple manufacturers to extract internal circuit diagrams, truth tables, pin configurations, and functional block representations.  
- **Subcircuit Creation**: Implemented the extracted circuits using eSim’s schematic editor, leveraging available device models from the internal library.  
- **Symbol Creation**: Designed custom IC symbols according to package type and pin configuration to enable proper integration into larger circuits.  
- **Test Circuit Design**: Created standard test circuits based on datasheet test conditions to validate functional correctness.  
- **Simulation and Validation**: Simulated test circuits using **NgSpice** and compared the results against reference plots and functional expectations from datasheets.  
 

### 🔹 What is Mixed-Signal Circuit Design & Simulation?  
Mixed-signal circuits combine both **digital and analog components** (e.g., ADCs, DACs, and interface circuits). This part involves using eSim’s NGVeri feature for mixed-signal simulation by integrating analog circuits with digital HDL designs. NGVeri allows simultaneous simulation of analog (NgSpice) and digital (Verilator) domains. The approach for Mixed Signal Simulation using eSim is as follows:

- **Verilog Code Development**: The digital portion of the circuit was described using **Verilog, SystemVerilog, or TL-Verilog**, depending on design requirements.  
- **Code Verification using Icarus Verilog**: Initial verification of the digital design was carried out with **Icarus Verilog** to ensure functional correctness before integration.  
- **Makerchip IDE (optional)**: Additional debugging and simulation of Verilog/TL-Verilog code was performed using the **Makerchip IDE**.  
- **NGVeri Model Creation**: Verified Verilog files were imported into **NGVeri**. For TL-Verilog designs, **SandPiper SaaS** was used to convert them into SystemVerilog, which was then compiled using **Verilator** to generate NGVeri models.  
- **Analog Circuit Design**: The analog portion of the circuit was created in eSim’s **schematic editor** through the **KiCad interface**.  
- **Mixed-Signal Simulation**: The complete design, including both digital and analog sections, was simulated using **NGVeri with NgSpice and Verilator**. Output waveforms were analyzed and verified using eSim’s plotting tools and NgSpice.  



### 🔹 What is Device Modeling?  
Device modeling involves creating **mathematical and simulation models** for semiconductor devices such as **diodes and MOSFETs**. These models are used to study device-level behavior (I–V curves, Transfer characteristics etc.) and integrate them into larger circuits. Using **Model Editor in eSim**, custom models can be created and tested for accuracy against theoretical characteristics.

- **Parameter Extraction**: Critical parameters such as **saturation current, ideality factor, junction capacitances, and breakdown voltage** were extracted from datasheets or calculated using theoretical equations.  
- **Model File Creation**: Extracted parameters were entered into eSim’s **Model Editor**, which generated corresponding **XML model files** for integration.  
- **Test Circuit Design**: Standard test circuits were designed to evaluate the behavior of the newly modeled devices under typical operating conditions.  
- **Simulation and Validation**: The test circuits were simulated using **NgSpice**, and the results were compared against datasheet characteristics to verify accuracy and consistency.  

---

## Circuits Implemented  
Following circuits and models were implemented as part of this internship:  

- **Digital SubCircuits**  
  - SN74LVC4245A - Octal Bus Transceiver and 3.3V to 5V Level Shifter with 3-state outputs  
  - SN74S64 - 4-2-3-2 Input AOI Gates
  - SN74100 - 8-Bit Bistable Latches
  - SN74120 - Dual Pulse Synchronizers/Drivers 
  - CD4048BMS -  CMOS Multifunction Expandable 8 Input Gate
  - CBTL02043B -  2 differential channel, 2:1 multiplexer/demultiplexer switch
  - AN1186 - Cyclic Redundancy Check Generator Unit for 1-wire Protocol

- **Mixed-Signal Circuits**  
  - IDT72V201 - 256 x 9 CMOS Sync FIFO  
  - DS90CR285 - Rising Edge Data Strobe LVDS 28-Bit Channel Link - Serializer 
  - DS90CR286 - Rising Edge Data Strobe LVDS 28-Bit Channel Link - Deserializer 

- **Device Modeling**  
  - ZTX1048A - NPN Silicon Planar medium Power High Gain Transistor
  - 2N3055 - NPN Silicon Power Transistor  
  - 2N5401 - PNP Silicon Epitaxial Planar Transistors
  - PMEG2005EB - Low VF MEGA Schottky barrier diode
  - LS5907 - Low Leakage Low Drift Monolithic N-Channel JFET
 

---

## Tools & Technologies  
- **HDL**: Verilog  
- **Simulation Tools**: eSim  
