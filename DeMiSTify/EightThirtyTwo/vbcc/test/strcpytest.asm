	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_main
_main:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//strcpytest.c, line 20
						// (a/p assign)
						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_st
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// matchobj comparing flags 130 with 130
						// static
	.liabs	l3,0
						// static pe is varadr
						// (save temp)store type a
	st	r0
						//save_temp done

						//strcpytest.c, line 22
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//strcpytest.c, line 23
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						// static
	.liabs	l3,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//strcpytest.c, line 23
						//call
						//pcreltotemp
	.lipcrel	___strlen
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//strcpytest.c, line 23
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 4a type 103
						// reg r0 - only match against tmp
	mt	r0
	cmp	r4
						// freereg r1

						//strcpytest.c, line 23
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l27
		add	r7
						// freereg r2
l25: # 
						// allocreg r2

						//strcpytest.c, line 23
						// (bitwise/arithmetic) 	//ops: 0, 5, 3
						// (obj to r2) flags 2 type a
						// extern
	.liabs	_st
						//extern deref
						//sizemod based on type 0xa
	ldt
	mr	r2
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 2
						// reg r4 - only match against tmp
	mt	r4
	add	r2
						// (save result) // isreg
						// allocreg r1

						//strcpytest.c, line 23
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 66
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//strcpytest.c, line 23
						//call
						//pcreltotemp
	.lipcrel	_tolower
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r2

						//strcpytest.c, line 23
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r2
						// allocreg r1

						//strcpytest.c, line 23
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 74
						// extern
	.liabs	_st
						//extern deref
						//sizemod based on type 0xa
	ldt
	mr	r1
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 2
						// reg r4 - only match against tmp
	mt	r4
	add	r1
						// (save result) // isreg

						//strcpytest.c, line 23
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 66
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1

						//strcpytest.c, line 23
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	1
	add	r4
						// (save result) // isreg
						// allocreg r1

						//strcpytest.c, line 23
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_st
						//extern deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//strcpytest.c, line 23
						//call
						//pcreltotemp
	.lipcrel	___strlen
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//strcpytest.c, line 23
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 4a type 103
						// reg r0 - only match against tmp
	mt	r0
	cmp	r4
						// freereg r1

						//strcpytest.c, line 23
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l25
		add	r7
l27: # 
						// freereg r3

						//strcpytest.c, line 25
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l8,0
	mr	r0
						// (prepobj r1)
 						// matchobj comparing flags 130 with 2
						// matchobj comparing flags 130 with 2
						// extern (offset 0)
	.liabs	_strbuf
						// extern pe not varadr
	mr	r1
					// Copying 2 words and 2 bytes to strbuf
					// Copying 2 words to strbuf
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 2
	.liconst	8
	addt	r1
	mr	r2
.cpystrbufwordloop0:
	ldinc	r0
	stinc	r1
	mt	r1
	cmp	r2
	cond	NEQ
		.lipcrel	.cpystrbufwordloop0
		add	r7
					// Copying 2 byte tail to strbuf
	ldbinc	r0
	stbinc	r1
	ldbinc	r0
	stbinc	r1
						// allocreg r1

						//strcpytest.c, line 26
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// extern
	.liabs	_st
						//extern deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//strcpytest.c, line 26
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 2
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 2
						// extern (offset 0)
	.liabs	_strbuf
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done

						//strcpytest.c, line 26
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 74 with 130
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done
						// allocreg r3

						//strcpytest.c, line 26
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	5
						// (save temp)isreg
	mr	r3
						//save_temp done

						//strcpytest.c, line 26
						//call
						//pcreltotemp
	.lipcrel	___strncat
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//strcpytest.c, line 27
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// extern
	.liabs	_st
						//extern deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//strcpytest.c, line 27
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 2
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 2
						// extern (offset 0)
	.liabs	_strbuf
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done

						//strcpytest.c, line 27
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 74 with 130
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//strcpytest.c, line 27
						//call
						//pcreltotemp
	.lipcrel	___strcat
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1

						//strcpytest.c, line 28
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//strcpytest.c, line 29
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// extern (offset 0)
	.liabs	_strbuf
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//strcpytest.c, line 29
						//call
						//pcreltotemp
	.lipcrel	___strlen
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//strcpytest.c, line 29
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 4a type 103
						// reg r0 - only match against tmp
	mt	r0
	cmp	r4
						// freereg r1

						//strcpytest.c, line 29
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l28
		add	r7
l26: # 
						// allocreg r2
						// allocreg r3

						//strcpytest.c, line 29
						// (bitwise/arithmetic) 	//ops: 0, 5, 4
						// (obj to r3) flags 82 type a
						// (prepobj r3)
 						// extern (offset 0)
	.liabs	_strbuf
						// extern pe is varadr
	mr	r3
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 130
						// reg r4 - only match against tmp
	mt	r4
	add	r3
						// (save result) // isreg
						// allocreg r1

						//strcpytest.c, line 29
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 66
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//strcpytest.c, line 29
						//call
						//pcreltotemp
	.lipcrel	___toupper
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//strcpytest.c, line 29
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//strcpytest.c, line 29
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 74
						// reg r1 - only match against tmp
						// (save temp)store type 1
	stbinc	r3
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// freereg r3

						//strcpytest.c, line 29
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	1
	add	r4
						// (save result) // isreg
						// allocreg r1

						//strcpytest.c, line 29
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// extern (offset 0)
	.liabs	_strbuf
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//strcpytest.c, line 29
						//call
						//pcreltotemp
	.lipcrel	___strlen
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//strcpytest.c, line 29
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 4a type 103
						// reg r0 - only match against tmp
	mt	r0
	cmp	r4
						// freereg r1

						//strcpytest.c, line 29
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l26
		add	r7
l28: # 
						// allocreg r3
						// allocreg r1

						//strcpytest.c, line 31
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_strbuf
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//strcpytest.c, line 31
						//call
						//pcreltotemp
	.lipcrel	___strlen
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//strcpytest.c, line 31
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//strcpytest.c, line 32
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	28
	cmp	r4

						//strcpytest.c, line 32
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l14
		add	r7
						// allocreg r1

						//strcpytest.c, line 33
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// static
	.liabs	l15,0
						// static pe is varadr
	stdec	r6

						//strcpytest.c, line 33
						//call
						//pcreltotemp
	.lipcrel	_printf
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//strcpytest.c, line 35
						//pcreltotemp
	.lipcrel	l16
	add	r7
l14: # 

						//strcpytest.c, line 35
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	stdec	r6

						//strcpytest.c, line 35
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 66
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 66
						// static
	.liabs	l17,0
						// static pe is varadr
	stdec	r6

						//strcpytest.c, line 35
						//call
						//pcreltotemp
	.lipcrel	_printf
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
						// freereg r2
						// freereg r3
l16: # 
						// allocreg r3

						//strcpytest.c, line 37
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_strbuf
						// extern pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//strcpytest.c, line 37
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// static
	.liabs	l18,0
						// static pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//strcpytest.c, line 37
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
	.liconst	7
						// (save temp)isreg
	mr	r1
						//save_temp done

						//strcpytest.c, line 37
						//call
						//pcreltotemp
	.lipcrel	___strncpy
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1
						// allocreg r2

						//strcpytest.c, line 38
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_strbuf
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//strcpytest.c, line 38
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// static
	.liabs	l21,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//strcpytest.c, line 38
						//call
						//pcreltotemp
	.lipcrel	___strcmp
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// allocreg r1

						//strcpytest.c, line 38
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//strcpytest.c, line 38
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l20
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//strcpytest.c, line 39
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 74
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 74
						// static
	.liabs	l22,0
						// static pe is varadr
	stdec	r6

						//strcpytest.c, line 39
						//call
						//pcreltotemp
	.lipcrel	_printf
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6

						//strcpytest.c, line 41
						//pcreltotemp
	.lipcrel	l23
	add	r7
l20: # 

						//strcpytest.c, line 41
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_strbuf
						// extern pe is varadr
	stdec	r6

						//strcpytest.c, line 41
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// static
	.liabs	l24,0
						// static pe is varadr
	stdec	r6

						//strcpytest.c, line 41
						//call
						//pcreltotemp
	.lipcrel	_printf
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
l23: # 

						//strcpytest.c, line 42
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
	.lipcrel	.functiontail, 2
	add	r7

.functiontail:
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata
l3:
	.byte	72
	.byte	69
	.byte	76
	.byte	76
	.byte	79
	.byte	44
	.byte	32
	.byte	119
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	33
	.byte	10
	.byte	0
l8:
	.byte	84
	.byte	101
	.byte	115
	.byte	116
	.byte	105
	.byte	110
	.byte	103
	.byte	58
	.byte	32
	.byte	0
l15:
	.byte	115
	.byte	116
	.byte	114
	.byte	108
	.byte	101
	.byte	110
	.byte	58
	.byte	32
	.byte	27
	.byte	91
	.byte	51
	.byte	50
	.byte	109
	.byte	80
	.byte	97
	.byte	115
	.byte	115
	.byte	101
	.byte	100
	.byte	27
	.byte	91
	.byte	48
	.byte	109
	.byte	10
	.byte	0
l17:
	.byte	115
	.byte	116
	.byte	114
	.byte	108
	.byte	101
	.byte	110
	.byte	58
	.byte	32
	.byte	27
	.byte	91
	.byte	51
	.byte	49
	.byte	109
	.byte	70
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	27
	.byte	91
	.byte	48
	.byte	109
	.byte	32
	.byte	45
	.byte	32
	.byte	103
	.byte	111
	.byte	116
	.byte	32
	.byte	37
	.byte	100
	.byte	44
	.byte	32
	.byte	115
	.byte	104
	.byte	111
	.byte	117
	.byte	108
	.byte	100
	.byte	32
	.byte	98
	.byte	101
	.byte	32
	.byte	50
	.byte	56
	.byte	10
	.byte	0
l18:
	.byte	72
	.byte	101
	.byte	108
	.byte	108
	.byte	111
	.byte	44
	.byte	32
	.byte	87
	.byte	111
	.byte	114
	.byte	108
	.byte	100
	.byte	10
	.byte	0
l21:
	.byte	72
	.byte	101
	.byte	108
	.byte	108
	.byte	111
	.byte	44
	.byte	32
	.byte	58
	.byte	32
	.byte	72
	.byte	69
	.byte	76
	.byte	76
	.byte	79
	.byte	72
	.byte	69
	.byte	76
	.byte	76
	.byte	79
	.byte	44
	.byte	32
	.byte	87
	.byte	79
	.byte	82
	.byte	76
	.byte	68
	.byte	33
	.byte	10
	.byte	0
l22:
	.byte	115
	.byte	116
	.byte	114
	.byte	99
	.byte	109
	.byte	112
	.byte	58
	.byte	32
	.byte	27
	.byte	91
	.byte	51
	.byte	50
	.byte	109
	.byte	80
	.byte	97
	.byte	115
	.byte	115
	.byte	101
	.byte	100
	.byte	27
	.byte	91
	.byte	48
	.byte	109
	.byte	10
	.byte	0
l24:
	.byte	115
	.byte	116
	.byte	114
	.byte	99
	.byte	109
	.byte	112
	.byte	58
	.byte	32
	.byte	27
	.byte	91
	.byte	51
	.byte	49
	.byte	109
	.byte	70
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	27
	.byte	91
	.byte	48
	.byte	109
	.byte	32
	.byte	45
	.byte	32
	.byte	103
	.byte	111
	.byte	116
	.byte	32
	.byte	37
	.byte	115
	.byte	10
	.byte	0
	.section	.bss
	.global	_st
	.comm	_st,4
	.global	_strbuf
	.comm	_strbuf,20
