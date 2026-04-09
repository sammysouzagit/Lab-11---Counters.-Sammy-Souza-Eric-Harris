# Lab-11---Counters.-Sammy-Souza-Eric-Harris

# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Eric Harris
Sammy Souza
## Summary

In this lab we made a modulo counter and a ripple counter to count up, and down with the 
ability also to reset the count back to zero whenever we please. For the modulo counter
we used a combination of adders and D flip flops to count data and store it, when the 
count hits 5, we used a comparator and an extra D flip flop to reset the count back to 0.
For the ripple counter, we used 3 T flip flops with a asychronus clock to implement a 
similar, reverse counter. 

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
One cycle is when the signal goes from low to high, then back to low, so each stage needs two positive edges per cycle.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
The ring counter is designed to count down, so when all of the flip-flops are at 0, the next clock cycle brings the count back to 7 (111).
If the counter was designed to count up instead, then the output after the first clock cycle would be 1 (001).

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
A 100 MHz is 100000 KHz, so we will need log2(100000) stages in the ring counter to get an approximately 1 KHz signal.
log2(100000) = 16.6 so rounding up we would need a ring counter with a width of 17.
