10 REM COPYRIGHT SCOTT ADAMS. 1978

20 D=-1

REM X=Y=Z:K=R=V:N=LL=F:TP$=K$:W=IP=P:

40 K=0:Z$="I'VE TOO MUCH TOO CARRY. TRY -TAKE INVENTORY-":GOSUB1240:GOTO100

50 CLS:PRINT"     ***   WELCOME TO ADVENTURE LAND. (#4.6) ***":PRINT:PRINT" UNLESS TOLD DIFFERENTLY YOU MUST FIND *TREASURES* AND-RETURN-THEM-TO-THEIR-PROPER--PLACE!"
60 PRINT:PRINT"I'M YOUR PUPPET. GIVE ME ENGLISH COMMANDS THAT"
70 PRINT"CONSIST OF A NOUN AND VERB. SOME EXAMPLES...":PRINT:PRINT"TO FIND OUT WHAT YOU'RE CARRYING YOU MIGHT SAY: TAKE INVENTORY"'"TO GO INTO A HOLE YOU MIGHT SAY: GO HOLE"'"TO SAVE CURRENT GAME: SAVE GAME"
80 PRINT:PRINT"YOU WILL AT TIMES NEED SPECIAL ITEMS TO DO THINGS, BUT I'M SURE YOU'LL BE A GOOD ADVENTURER AND FIGURE THESE THINGS OUT."
90 PRINT:INPUT"     HAPPY ADVENTURING... HIT ENTER TO START";K$:CLS:RETURN

100 R=AR:LX=LT:DF=0:SF=0:INPUT"USE OLD 'SAVED' GAME";K$:IFLEFT$(K$,1)<>"Y"THEN130
110 IFD<>-1THENCLOSE:OPEN"I",D,SV$ELSEINPUT"READY SAVED TAPE";K$:PRINTINT(IL*5/60)+1;"MINUTES"
120 INPUT#D,SF,LX,DF,R:FORX=0TOIL:INPUT#D,IA(X):NEXT:IFD<>-1CLOSE
130 GOSUB50:GOSUB240:GOTO160

140 INPUT"TELL ME WHAT TO DO";TP$:PRINT:GOSUB170:IF F PRINT"YOU USE WORD(S) I DON'T KNOW":GOTO140
150 GOSUB360:IFIA(9)<>-1 ELSE LX=LX-1:IFLX<0THENPRINT"LIGHT HAS RUN OUT":IA(9)=0ELSEIFLX<25PRINT"LIGHT RUNS OUT IN";LX;"TURNS!"
160 NV(0)=0:GOSUB360:GOTO140

REM Input routine
170 K=0:NT$(0)="":NT$(1)=""
180 FORX=1TOLEN(TP$):K$=MID$(TP$,X,1):IFK$=" "THEN K=1 ELSE NT$(K)=LEFT$(NT$(K)+K$,ln)
190 NEXTX:FORX=0TO1:NV(X)=0:IFNT$(X)=""THEN230 ELSE FORY=0TONL:K$=NV$(Y,X):IFLEFT$(K$,1)="*"THENK$=MID$(K$,2)
200 IFX=1IFY<7THENK$=LEFT$(K$,ln)
210 IF NT$(X)=K$ THEN NV(X)=Y:y=Y:Y=NL:NEXTY:Y=y ELSE NEXTY:GOTO230
220 IFLEFT$(NV$(NV(X),X),1)="*"THENNV(X)=NV(X)-1:GOTO220
230 NEXTX:F=NV(0)<1ORLEN(NT$(1))>0ANDNV(1)<1:RETURN

240 IF DF IFIA(9)<>-1ANDIA(9)<>RPRINT"I CAN'T SEE, ITS TOO DARK.":RETURN
250 K=-1:IFLEFT$(RS$(R),1)="*"THENPRINTMID$(RS$(R),2);ELSEPRINT"I'M IN A ";RS$(R);
260 FORZ=0TOIL:IF K IF IA(Z)=R PRINT"."'"VISIBLE ITEMS HERE:"':K=0
270 GOTO300
280 TP$=IA$(Z):IFRIGHT$(TP$,1)<>"/"THEN ELSE FOR W=LEN(TP$)-1TO1 STEP-1:IFMID$(TP$,W,1)="/"TP$=LEFT$(TP$,W-1):w=W:W=1:NEXTW:W=w:ELSE NEXT W
290 RETURN
300 IF IA(Z)<>R THEN320 ELSE GOSUB280:IFPOS+LEN(TP$)+3>63THENPRINT
310 PRINTTP$;".  ";
320 NEXT:PRINT
330 K=-1:FORZ=0TO5:IF K IFRM(R,Z)<>0PRINT'"OBVIOUS EXITS: ";:K=0
340 IFRM(R,Z)<>0PRINTNV$(Z+1,1);" ";
350 NEXT:PRINT:PRINT:RETURN

360 F2=-1:F=-1:F3=0:IFNV(0)=1 AND NV(1)<7 THEN 610 ELSE FORX=0TOCL:V=CA(X,0)/150:IF NV(0)=0 IFV<>0 x=X:X=CL:NEXTX:X=x:RETURN
370 IF NV(0)<>V THEN NEXTX:GOTO990 ELSE N=CA(X,0)-V*150
380 IF NV(0)<>0 ELSE F=0:IF RND(100)<=N THEN 400 ELSE NEXTX:GOTO990
390 IF N<>NV(1) AND N<>0 THEN NEXTX:GOTO990
400 F2=-1:F=0:F3=-1:FORY=1TO5:W=CA(X,Y):LL=W/20:K=W-LL*20:F1=-1:ON K+1 GOTO550,430,450,470,490,500,510,520,530,540,410,420,440,460,480
410 F1=-1:FORZ=0TOIL:IFIA(Z)=-1 THEN z=Z:Z=IL:NEXT:Z=z:GOTO550 ELSENEXT:F1=0:GOTO550
420 F1=0:FORZ=0TOIL:IFIA(Z)=-1 THEN z=Z:Z=IL:NEXT:Z=z:GOTO550 ELSENEXT:F1=-1:GOTO550
430 F1=IA(LL)=-1:GOTO550
440 F1=IA(LL)<>-1ANDIA(LL)<>R:GOTO550
450 F1=IA(LL)=R:GOTO550
460 F1=IA(LL)<>0:GOTO550
470 F1=IA(LL)=RORIA(LL)=-1:GOTO550
480 F1=IA(LL)=0:GOTO550
490 F1=R=LL:GOTO550
500 F1=IA(LL)<>R:GOTO550
510 F1=IA(LL)<>-1:GOTO550
520 F1=R<>LL:GOTO550
530 F1=SFANDCINT(2^LL+.5):F1=F1<>0:GOTO550
540 F1=SFANDCINT(2^LL+.5):F1=F1=0:GOTO550
550 F2=F2 AND F1:IF F2 THEN NEXTY ELSE y=Y:Y=5:NEXTY:Y=y:NEXTX:GOTO990

REM Closing the FOR loop at l.360
555 x=X:X=CL:NEXTX:X=x

560 IP=0:FORY=1TO4:K=(Y-1)/2+6:ON Y GOTO570,580,570,580
570 AC=CA(X,K)/150:GOTO590
580 AC=CA(X,K)-INT(CA(X,K)/150)*150
590 IF AC>101 THEN600 ELSE IFAC=0 THEN960 ELSE IFAC<52 THEN PRINTMS$(AC):GOTO960:ELSE ON AC-51 GOTO660,700,740,760,770,780,790,760,810,830,840,850,860,870,890,920,930,940,950,710,750
600 PRINTMS$(AC-50):GOTO960
610 L=DF:IFL THEN L=DF AND IA(9)<>R AND IA(9)<>-1:IF L PRINT"DANGEROUS TO MOVE IN THE DARK!"
620 IFNV(1)<1PRINT"GIVE ME A DIRECTION TOO.":GOTO1040
630 K=RM(R,NV(1)-1):IFK>=1 ELSE IFL THENPRINT"I FELL DOWN AND BROKE MY NECK.":K=RL:DF=0:ELSE PRINT"I CAN'T GO IN THAT DIRECTION":GOTO1040
640 IF NOT L PROCcls
650 R=K:GOSUB240:GOTO1040
660 L=0:FORZ=1TOIL:IFIA(Z)=-1LETL=L+1
670 NEXTZ
680 IFL>=MXPRINTZ$:GOTO970
690 GOSUB1050:IA(P)=-1:GOTO960
700 GOSUB1050:IA(P)=R:GOTO960
710 PRINT"SAVING GAME":IFD=-1THENINPUT"READY OUTPUT TAPE";K$:PRINTINT(IL*5/60)+1;"MINUTES"ELSEOPEN"O",D,SV$
720 PRINT#D,SF,LX,DF,R:FORW=0TOIL:PRINT#D,IA(W):NEXT:IFD<>-1CLOSE
730 GOTO960
740 GOSUB1050:R=P:GOTO960
750 GOSUB1050:L=P:GOSUB1050:Z=IA(P):IA(P)=IA(L):IA(L)=Z:GOTO960
760 GOSUB1050:IA(P)=0:GOTO960
770 DF=-1:GOTO960
780 DF=0:GOTO960
790 GOSUB1050
800 SF=SF ORCINT(.5+2^P):GOTO960
810 GOSUB1050
820 SF=SFANDNOTCINT(.5+2^P):GOTO960
830 PRINT"I'M DEAD...":R=RL:DF=0:GOTO860
840 GOSUB1050:L=P:GOSUB1050:IA(L)=P:GOTO960
850 INPUT"THE GAME IS NOW OVER"'"ANOTHER GAME";K$:IFLEFT$(K$,1)="N"THENEND ELSE FORX=0TOIL:IA(X)=I2(X):NEXT:GOTO100
860 GOSUB240:GOTO960
870 L=0:FORZ=1TOIL:IFIA(Z)=TR IFLEFT$(IA$(Z),1)="*"LET L=L+1
880 NEXTZ:PRINT"I'VE STORED";L;"TREASURES."'"ON A SCALE OF 0 TO 100 THAT RATES A ";INT(L/TT*100):IFL=TT THENPRINT"WELL DONE.":GOTO850 ELSE960
890 PRINT"I'M CARRYING:":K$="NOTHING":FORZ=0TOIL:IFIA(Z)<>-1THEN910 ELSEGOSUB280:IFLEN(TP$)+POS>63PRINT
900 PRINTTP$;".",;:K$=""
910 NEXT:PRINTK$:GOTO960
920 P=0:GOTO800
930 P=0:GOTO820
940 LX=LT:IA(9)=-1:GOTO960
950 PROCcls:GOTO960
960 NEXTY
970 IFNV(0)<>0THEN990
980 NEXTX
990 REM
1000 IFNV(0)=0THEN1040
1010 GOSUB1060
1020 IF F PRINT"I DON'T UNDERSTAND YOUR COMMAND":GOTO1040
1030 IF NOT F2 PRINT"I CAN'T DO THAT YET":GOTO1040
1040 RETURN
1050 IP=IP+1:W=CA(X,IP):P=W/20:M=W-P*20:IF M<>0 THEN1050 ELSE RETURN
1060 IF NV(0)<>10 AND NV(0)<>18 OR F3 THEN 1230
1070 IFNV(1)=0PRINT"WHAT?":GOTO1180
1080 IFNV(0)<>10THEN1110
1090 L=0:FORZ=0TOIL:IFIA(Z)=-1THENL=L+1
1100 NEXT:IF L>=MX PRINTZ$:GOTO1180
1110 K=0:FOR X=0TOIL:IF RIGHT$(IA$(X),1)<>"/"THEN1190 ELSE LL=LEN(IA$(X))-1:TP$=MID$(IA$(X),1,LL):FORY=LL TO2 STEP-1:IFMID$(TP$,Y,1)<>"/"THEN NEXTY:GOTO1190 ELSE y=Y:Y=2:NEXTY:Y=y
1120 TP$=LEFT$(MID$(TP$,Y+1),ln)
1130 IFTP$<>NV$(NV(1),1)THEN1190
1140 IFNV(0)=10THEN1160
1150 IFIA(X)<>-1THENK=1:GOTO1190 ELSE IA(X)=R:K=3:GOTO1170
1160 IFIA(X)<>R THEN K=2:GOTO1190 ELSE IA(X)=-1:K=3
1170 PRINT"OK, ";
1180 F=0:RETURN
1190 NEXTX
1200 IFK=1THENPRINT"I'M NOT CARRYING IT" ELSE IFK=2PRINT"I DON'T SEE IT HERE"
1210 IFK=0IFNOTF3PRINT"ITS BEYOND MY POWER TO DO THAT":F=0
1220 IFK<>0THENF=0
1230 RETURN
1240 IFD<>-1THEN1330 ELSEINPUT"READY DATA TAPE. HIT ENTER";K$
1245 D=OPENIN("DAT")
1250 INPUT#D,IL,CL,NL,RL,MX,AR,TT,ln,LT,ML,TR
1260 W=(IL+CL/2+NL/10+RL+ML)/12:REM PRINTW+1;"MINUTES TO LOAD."
1270 DIMNV(1),CA(CL,7),NV$(NL,1),IA$(IL),IA(IL),RS$(RL),RM(RL,5),MS$(ML),NT$(1),I2(IL)
1280 FORX=0TOCL STEP2:Y=X+1:INPUT#D,CA(X,0),CA(X,1),CA(X,2),CA(X,3),CA(X,4),CA(X,5),CA(X,6),CA(X,7),CA(Y,0),CA(Y,1),CA(Y,2),CA(Y,3),CA(Y,4),CA(Y,5),CA(Y,6),CA(Y,7):NEXT
1290 FORX=0TONL STEP10:FORY=0TO1:INPUT#D,NV$(X,Y),NV$(X+1,Y),NV$(X+2,Y),NV$(X+3,Y),NV$(X+4,Y),NV$(X+5,Y),NV$(X+6,Y),NV$(X+7,Y),NV$(X+8,Y),NV$(X+9,Y):
1295 P.NV$(X,Y),NV$(X+1,Y),NV$(X+2,Y),NV$(X+3,Y),NV$(X+4,Y),NV$(X+5,Y),NV$(X+6,Y),NV$(X+7,Y),NV$(X+8,Y),NV$(X+9,Y)
1297 NEXTY,X
1300 FORX=0TORL:INPUT#D,RM(X,0),RM(X,1),RM(X,2),RM(X,3),RM(X,4),RM(X,5),RS$(X):NEXT
1310 FORX=0TOML:INPUT#D,MS$(X):NEXT
1320 FORX=0TOIL:INPUT#D,IA$(X),IA(X):I2(X)=IA(X):NEXT:CLOSE#D:RETURN
1330 REM

2000 DEFPROCcls:ENDPROC
