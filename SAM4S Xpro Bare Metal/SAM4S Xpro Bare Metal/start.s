.syntax unified

.section .vectors 	
.skip 4	
.word start

.section .text
.thumb
.type start, %function
start:
	mov r0, #0x01			/* This is a comment */
	mov r1, #0x02
	mov r2, #0x03
	/* Question 1 */
	mov r3,r0
	mov r0,r1
	mov r1,r3
	/* Question 2 */
	mov r0, #0b01
	mov r1, #0b01
	and r2,r0,r1		
	mvn r4,r0
	mvn r5,r1
	or r4,r5
	b .
	/*Question 3*/
	mov r0, #0b01
	mov r1, #0b01

	mvn r2,r0
	mvn r3,r1

	and r0,r3
	and r2,r1
	b .