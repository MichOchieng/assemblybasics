.syntax unified

.section .vectors 	
.skip 4	
.word start

.section .text
.thumb
.type start, %function
start:	
	/* Question 1 */
	/*mov r3,r0
	mov r0,r1
	mov r1,r3
	b .*/
	/* Question 2 */
	mov r0, #0b01
	mov r1, #0b01
	mov r2, #0b01
	mov r3, #0b01

	and r0,r1
	mvn r0

	mvn r2
	mvn r3
	and r2,r3	
	b .
	/*Question 3*/
	/*	In the first step of this algorithm the xor of r0 (10) and r1 (01) is take and then stored in r0 (new value is 11) then in
		the second step r1 is xor'd with r0 (resulting in 10 being stored in r1) and finally r0 is xor'd one more time with r1
		resulting in 01 being put in r0. r0 is now 01 (r1's initial value) and r1 is now 10 (r0's initial value). The registers have
		successfully swapped values.
	*/
	/*mov r0, #0b10
	mov r1, #0b01

	eor r0,r1
	eor r1,r0
	eor r0,r1
	b .*/