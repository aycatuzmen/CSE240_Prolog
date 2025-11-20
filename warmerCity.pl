weather(phoenix, spring, hot). 
weather(seattle, spring, warm).
weather(seattle, winter, rainy).
weather(boston, fall, windy).
weather(miami, summer, humid).

warmer_than(C1,C2) :- weather(C1, spring, hot), weather(C2, spring, warm).
warmer_than(C1,C2) :- weather(C1, summer, hot), weather(C2, summer, warm).