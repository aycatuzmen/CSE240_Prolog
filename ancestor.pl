%facts
mother_of(elaine, gloria). 
mother_of(gloria, sarah). 
mother_of(mary_lou, bubba). 
mother_of(elizabeth, elaine). 
father_of(mike, gloria). 
father_of(bubba, sarah). 
father_of(bill_bobb, bubba). 
father_of(herman, elaine). 

%rules
parent(Parent, Child) :- 
	mother_of(Parent, Child). 
parent(Parent, Child) :- 
	father_of(Parent, Child).
ancestor(A, D) :- 
	parent(A, D). 
ancestor(A, D) :- 
	parent(A, P), 
	ancestor(P, D).  