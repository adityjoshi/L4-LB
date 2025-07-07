# L4 LB Prototype 

This is a minimal prototype to demonstrate **Layer 4 (L4) Load Balancing** using:
- Two simple **TCP servers** written in **C**
- **HAProxy** configured in **L4 (TCP) proxy mode**
- **Docker + Docker Compose** to spin up the environment

---

##  What It Shows

- How an L4 Load Balancer operates at the **TCP level**
- How it handles connection routing based on **IP and port**
- The use of **proxy mode**, where HAProxy:
  - Terminates the client TCP connection
  - Opens a new connection to one of the backend servers
  - Keeps client and server isolated

---

##  Project Structure
```
├── Dockerfile           # Builds the C TCP server
├── docker-compose.yml   # Runs 2 TCP servers + HAProxy
├── tcp_server.c         # Simple echo server in C
├── haproxy.cfg          # HAProxy config (L4 mode)


# Clone and Build
git clone https://github.com/adityjoshi/L4-LB
docker-compose up --build




