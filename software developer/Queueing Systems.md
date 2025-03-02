Books written by Leonard Kleinrock
# Volume 1: Theory
> Hurry up and wait

## Flow system
- some *commodity* flows in finite-capacity *channels*
- channel can satisfy the demands at a finite rate only.

- arrival rate -> $R$
- service rate (or capacity) -> $C$
- if $R > C$ then *chaotic congestion* occurs

### Random or Stochastic Flow Problems
the times at which demands for service (use of the channel) arrive are uncertain or unpredictable and also that the size of the demands themselves that are placed upon the channel are unpredictable.

## Specification and Measure of Queueing System

- probability distribution of the inter arrival times of customers
	- $A(t) =P[\text{time between arrivals} \leq t]$
- probability distribution of service time
	- $B(x)=P[\text{service time} \leq x]$
- storage capacity available to hold waiting customers -> $K$
- number of *service stations* available
- queueing discipline: the order in which customers are taken from the queue and allowed into service (e.g. first-come-first-serve or last-come-first-serve or random or *priority* queueing)

### Definitions

- $C_n$ denotes the *nth* customer to enter
- $N(t) \triangleq$ number of customers in the system at time *t*
	- $\alpha(t) \triangleq$ number of arrivals in $(0,t)$
	- $\delta(t) \triangleq$ number of departures in $(0,t)$
	- $N(t) = \alpha(t)-\delta(t)$
- $U(t) \triangleq$ unfinished work at time t
-  $\tau_n \triangleq$ arrival time for $C_n$
- $t_n \triangleq \tau_n - \tau_{n-1}$  inter arrival time between $C_{n-1}$ and $C_{n}$
	- $A(t) = P[t_n \leq t]$
- $x_n \triangleq$ service time for $C_n$
	- $B(x) = P[x_n \leq x]$ 
- $w_n \triangleq$ waiting time (in queue) for $C_n$
- $s_n \triangleq w_n + x_n$  system time for $C_n$
- $\widetilde t \triangleq \lim_{n \to \infty}{t_n}$ : $\bar t$ is average inter arrival time between customer
- $\bar t \triangleq \frac{1}{\lambda}$ actually $\lambda$ is average arrival rate of customers
- $\bar w_n \to \bar w = W$ : average waiting time
- $\bar s_n \to \bar s = T$ : average system time
### Performance and Effectiveness Analysis

- waiting time for a customer
- the number of customers in system
- the length of a busy period
- the length of an idle period
- work backlog (time)

### Little's Result
> Measure buffer size 
- $\bar N = \lambda T$ : average number of customers in the system
- $\bar N_q = \lambda W$ : average number of customers in the queue
- $\bar N_s=\lambda \bar x$ : average number of customers in the service facility
- $T=\bar x + W \Rightarrow$ $\bar N=\bar N_q + \bar N_s$

### Utilization Factor
$\rho \triangleq (\text{average arrival rate of customres}) \times (\text{average service time}) = \lambda \bar x$
$\rho \triangleq \frac{\lambda \bar x}{m}$ for systems with $m$ servers


