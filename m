Return-Path: <vidal.develone@gmail.com>
Received: from mail-qc0-f179.google.com (mail-qc0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03BD9E01422
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 13:01:44 -0700 (PDT)
Received: by mail-qc0-f179.google.com with SMTP id l4so4953274qcv.10
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 13:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=hwIKLXxsa7bOaTtRtjf+ISjwzAjNHArK9hbLKSafs7Y=;
	b=pQoK59hDE8LCPeBSjEXXHWGN5t4AY5hRoi35/p/f2htk0JgZ3rx6bBCQWjLcsQFvc5
	lxIo8vTTupyQ01YiZJVM0ZeYMFzo3ta9fs+mf9o7AbN9kzLtbZ0GkfzXfKvX0yjH2jt2
	U6lD35rLxTqSMc9vrQeGEeXhbkV5be0d5dNfQvoC57YXHVJG8/+gIVQHEYLJ/mvXfv+z
	rAXJ6VVWpoTZS6I1eTOqNxIslybI04OaNoMiJdqsZFhy47ysiBLnjXab09+iqLhqJxQE
	KYe1JmZUVR5OIXnreaCbSJUmVUlGQp/wb77orPtB60yAuZnQBSftLfQSFBLHsaCAkqbw
	A7Sg==
MIME-Version: 1.0
X-Received: by 10.49.95.135 with SMTP id dk7mr31858338qeb.3.1379534503559;
	Wed, 18 Sep 2013 13:01:43 -0700 (PDT)
Received: by 10.140.87.206 with HTTP; Wed, 18 Sep 2013 13:01:43 -0700 (PDT)
Date: Wed, 18 Sep 2013 14:01:43 -0600
Message-ID: <CANwz6nwXoLnX3ntfvW=SY5DSbaAwZcM7Yz0nX6vvCifNCybSCA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: state machine for X86_64 beaglebone zedboard & pic32.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Sep 2013 20:01:46 -0000
Content-Type: multipart/alternative; boundary=047d7b677f0c0a4a8d04e6ade85e

--047d7b677f0c0a4a8d04e6ade85e
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I have test QPC which is state machine on my beagleboard and zedboard.
This product provides a good method for developing application that are
need for Real Time appliction .
http://www.state-machine.com/ There is considerable  information at this
site.  I shared several e-mails with Dr. Miro Samek about becoming Yocto
compatible.   On my Fedora18 there is also a  product QSP for debugging.
Basic pieces are  either qpc_4.5.04.zip & qdkc_pic32-xc32.zip for C or
qpcpp_4.5.04.zip & qdkcpp_pic32-xc32.zip for C++.  The heart of the process
is QM which is a graphical process for developing the the state machine.
The are ports for many arch.  I have tested on arduino chipKIT 32 MAX
beagleboard and just now on the zedboard.
This is the is
  root@zedboard:~/qpc/examples/posix/gnu/dpp/dbg# ./dpp
Dining Philosopher Problem example
QEP 4.5.04
QF  4.5.04
Press p to pause/un-pause
Press ESC to quit...
Philosopher  0 is thinking
Philosopher  1 is thinking
Philosopher  2 is thinking
Philosopher  3 is thinking
Philosopher  4 is thinking
Philosopher  4 is hungry
Philosopher  4 is eating
Philosopher  0 is hungry
Philosopher  2 is hungry
Philosopher  2 is eating
Philosopher  1 is hungry
Philosopher  3 is hungry
Philosopher  4 is thinking
Philosopher  0 is eating
Philosopher  2 is thinking
Philosopher  3 is eating
Philosopher  4 is hungry
Philosopher  3 is thinking
Philosopher  0 is thinking

This is an example of QSP on Fedora18 x86_64
[vidal@ws009 spy]$ ./dpp
Dining Philosopher Problem example
QEP 4.5.04
QF  4.5.04
Press p to pause/un-pause
Press ESC to quit...
-T 4
-O 4
-F 4
-S 2
-E 4
-Q 4
-P 4
-B 4
-C 4

********** QS_RESET
********** QS_RESET
           Obj Dic: 0000000008054592->&l_clock_tick
           Usr Dic: 00000046        ->PHILO_STAT
           Obj Dic: 0000000008058540->l_smlPoolSto
           Obj Dic: 0000000008058460->l_tableQueueSto
           Obj Dic: 0000000008058480->l_philoQueueSto[0]
           Obj Dic: 0000000008058494->l_philoQueueSto[1]
           Obj Dic: 00000000080584A8->l_philoQueueSto[2]
           Obj Dic: 00000000080584BC->l_philoQueueSto[3]
           Obj Dic: 00000000080584D0->l_philoQueueSto[4]
           Obj Dic: 00000000080585C0->&l_philo[0]
           Obj Dic: 0000000008058618->&l_philo[0].timeEvt
           Obj Dic: 000000000805862C->&l_philo[1]
           Obj Dic: 0000000008058684->&l_philo[1].timeEvt
           Obj Dic: 0000000008058698->&l_philo[2]
           Obj Dic: 00000000080586F0->&l_philo[2].timeEvt
           Obj Dic: 0000000008058704->&l_philo[3]
           Obj Dic: 000000000805875C->&l_philo[3].timeEvt
           Obj Dic: 0000000008058770->&l_philo[4]
           Obj Dic: 00000000080587C8->&l_philo[4].timeEvt
           Fun Dic: 000000000804983E->&Philo_initial
           Fun Dic: 0000000008049E13->&Philo_thinking
           Fun Dic: 0000000008049F03->&Philo_hungry
           Fun Dic: 000000000804A01A->&Philo_eating
           Sig Dic: 00000009,Obj=00000000080585C0 ->HUNGRY_SIG
           Sig Dic: 0000000A,Obj=00000000080585C0 ->TIMEOUT_SIG
           Q_INIT : Obj=l_philo[0] Source=0805119C Target=Philo_thinking
           Q_ENTRY: Obj=l_philo[0] State=Philo_thinking
0000000000 ==>Init: Obj=l_philo[0] New=Philo_thinking
           Sig Dic: 00000009,Obj=000000000805862C ->HUNGRY_SIG
           Sig Dic: 0000000A,Obj=000000000805862C ->TIMEOUT_SIG
           Q_INIT : Obj=l_philo[1] Source=0805119C Target=Philo_thinking
           Q_ENTRY: Obj=l_philo[1] State=Philo_thinking
0000000000 ==>Init: Obj=l_philo[1] New=Philo_thinking
           Sig Dic: 00000009,Obj=0000000008058698 ->HUNGRY_SIG
           Sig Dic: 0000000A,Obj=0000000008058698 ->TIMEOUT_SIG
           Q_INIT : Obj=l_philo[2] Source=0805119C Target=Philo_thinking
           Q_ENTRY: Obj=l_philo[2] State=Philo_thinking
0000000000 ==>Init: Obj=l_philo[2] New=Philo_thinking
           Sig Dic: 00000009,Obj=0000000008058704 ->HUNGRY_SIG
           Sig Dic: 0000000A,Obj=0000000008058704 ->TIMEOUT_SIG
           Q_INIT : Obj=l_philo[3] Source=0805119C Target=Philo_thinking
           Q_ENTRY: Obj=l_philo[3] State=Philo_thinking
0000000000 ==>Init: Obj=l_philo[3] New=Philo_thinking
           Sig Dic: 00000009,Obj=0000000008058770 ->HUNGRY_SIG
           Sig Dic: 0000000A,Obj=0000000008058770 ->TIMEOUT_SIG
           Q_INIT : Obj=l_philo[4] Source=0805119C Target=Philo_thinking
           Q_ENTRY: Obj=l_philo[4] State=Philo_thinking
0000000000 ==>Init: Obj=l_philo[4] New=Philo_thinking
           Obj Dic: 00000000080587E0->&l_table
           Fun Dic: 000000000805119C->&QHsm_top
           Fun Dic: 000000000804A19C->&Table_initial
           Fun Dic: 000000000804A5D8->&Table_serving
           Sig Dic: 00000005,Obj=0000000000000000 ->DONE_SIG
           Sig Dic: 00000004,Obj=0000000000000000 ->EAT_SIG
           Sig Dic: 00000006,Obj=0000000000000000 ->PAUSE_SIG
           Sig Dic: 00000007,Obj=0000000000000000 ->TERMINATE_SIG
           Sig Dic: 00000009,Obj=00000000080587E0 ->HUNGRY_SIG
Philosopher  0 is thinking
Philosopher  1 is thinking
Philosopher  2 is thinking
Philosopher  3 is thinking
Philosopher  4 is thinking
0000000000 PHILO_STAT: 0 thinking
0000000000 PHILO_STAT: 1 thinking
0000000000 PHILO_STAT: 2 thinking
0000000000 PHILO_STAT: 3 thinking
0000000000 PHILO_STAT: 4 thinking
           Q_INIT : Obj=l_table Source=QHsm_top Target=Table_serving
           Q_ENTRY: Obj=l_table State=Table_serving
0000000000 ==>Init: Obj=l_table New=Table_serving
Philosopher  4 is hungry
Philosopher  4 is eating
0000000000 Disp==>: Obj=l_philo[4] Sig=TIMEOUT_SIG Active=Philo_thinking
           Q_ENTRY: Obj=l_philo[4] State=Philo_hungry
0000000000 ==>Tran: Obj=l_philo[4] Sig=TIMEOUT_SIG Source=Philo_thinking
New=Philo_hungry
0000000000 Disp==>: Obj=l_table Sig=HUNGRY_SIG Active=Table_serving
0000000000 PHILO_STAT: 4 hungry
0000000000 Disp==>: Obj=l_philo[4] Sig=EAT_SIG Active=Philo_hungry
           Q_ENTRY: Obj=l_philo[4] State=Philo_eating
0000000000 ==>Tran: Obj=l_philo[4] Sig=EAT_SIG Source=Philo_hungry
New=Philo_eating
0000000000 Disp==>: Obj=l_philo[3] Sig=EAT_SIG Active=Philo_thinking
0000000000 Intern : Obj=l_philo[3] Sig=EAT_SIG Source=Philo_thinking
0000000000 Disp==>: Obj=l_philo[2] Sig=EAT_SIG Active=Philo_thinking
0000000000 Intern : Obj=l_philo[2] Sig=EAT_SIG Source=Philo_thinking
0000000000 Disp==>: Obj=l_philo[1] Sig=EAT_SIG Active=Philo_thinking
0000000000 Intern : Obj=l_philo[1] Sig=EAT_SIG Source=Philo_thinking
0000000000 Disp==>: Obj=l_philo[0] Sig=EAT_SIG Active=Philo_thinking
0000000000 Intern : Obj=l_philo[0] Sig=EAT_SIG Source=Philo_thinking
0000000000 PHILO_STAT: 4 eating
0000000000 Intern : Obj=l_table Sig=HUNGRY_SIG Source=Table_serving
Philosopher  0 is hungry
If you have any questions feel free to contact me.
Edward Vidal Jr vidal.develone@gmail.com or develone@sbcglobal.net

--047d7b677f0c0a4a8d04e6ade85e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br></div>I have test QPC which is st=
ate machine on my beagleboard and zedboard.<br></div>This product provides =
a good method for developing application that are need for Real Time applic=
tion .<br>
<a href=3D"http://www.state-machine.com/">http://www.state-machine.com/</a>=
 There is considerable=A0 information at this site.=A0 I shared several e-m=
ails with Dr. Miro Samek about becoming Yocto compatible. =A0 On my Fedora1=
8 there is also a=A0 product QSP for debugging.=A0 Basic pieces are=A0 eith=
er qpc_4.5.04.zip &amp; qdkc_pic32-xc32.zip for C or qpcpp_4.5.04.zip &amp;=
 qdkcpp_pic32-xc32.zip for C++.=A0 The heart of the process is QM which is =
a graphical process for developing the the state machine. The are ports for=
 many arch.=A0 I have tested on arduino chipKIT 32 MAX beagleboard and just=
 now on the zedboard.<br>
</div><div>This is the is <br></div><div>=A0 root@zedboard:~/qpc/examples/p=
osix/gnu/dpp/dbg# ./dpp <br>Dining Philosopher Problem example<br>QEP 4.5.0=
4<br>QF=A0 4.5.04<br>Press p to pause/un-pause<br>Press ESC to quit...<br>P=
hilosopher=A0 0 is thinking<br>
Philosopher=A0 1 is thinking<br>Philosopher=A0 2 is thinking<br>Philosopher=
=A0 3 is thinking<br>Philosopher=A0 4 is thinking<br>Philosopher=A0 4 is hu=
ngry=A0 <br>Philosopher=A0 4 is eating=A0 <br>Philosopher=A0 0 is hungry=A0=
 <br>Philosopher=A0 2 is hungry=A0 <br>
Philosopher=A0 2 is eating=A0 <br>Philosopher=A0 1 is hungry=A0 <br>Philoso=
pher=A0 3 is hungry=A0 <br>Philosopher=A0 4 is thinking<br>Philosopher=A0 0=
 is eating=A0 <br>Philosopher=A0 2 is thinking<br>Philosopher=A0 3 is eatin=
g=A0 <br>Philosopher=A0 4 is hungry=A0 <br>
Philosopher=A0 3 is thinking<br>Philosopher=A0 0 is thinking<br><br></div><=
div>This is an example of QSP on Fedora18 x86_64<br>[vidal@ws009 spy]$ ./dp=
p<br>Dining Philosopher Problem example<br>QEP 4.5.04<br>QF=A0 4.5.04<br>Pr=
ess p to pause/un-pause<br>
Press ESC to quit...<br>-T 4<br>-O 4<br>-F 4<br>-S 2<br>-E 4<br>-Q 4<br>-P =
4<br>-B 4<br>-C 4<br><br>********** QS_RESET<br>********** QS_RESET<br>=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 0000000008054592-&gt;&amp;l_clock_tick=
<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Usr Dic: 00000046=A0=A0=A0=A0=A0=A0=A0 -=
&gt;PHILO_STAT<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 0000000008058540-&gt;l_smlPoolSto<b=
r>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 0000000008058460-&gt;l_tableQueue=
Sto<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 0000000008058480-&gt;l_philo=
QueueSto[0]<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 0000000008058494-&gt=
;l_philoQueueSto[1]<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 00000000080584A8-&gt;l_philoQueueSt=
o[2]<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 00000000080584BC-&gt;l_phil=
oQueueSto[3]<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 00000000080584D0-&g=
t;l_philoQueueSto[4]<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 00000000080=
585C0-&gt;&amp;l_philo[0]<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 0000000008058618-&gt;&amp;l_philo[0=
].timeEvt<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 000000000805862C-&gt;&=
amp;l_philo[1]<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 0000000008058684-=
&gt;&amp;l_philo[1].timeEvt<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 0000=
000008058698-&gt;&amp;l_philo[2]<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 00000000080586F0-&gt;&amp;l_philo[2=
].timeEvt<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 0000000008058704-&gt;&=
amp;l_philo[3]<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 000000000805875C-=
&gt;&amp;l_philo[3].timeEvt<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 0000=
000008058770-&gt;&amp;l_philo[4]<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 00000000080587C8-&gt;&amp;l_philo[4=
].timeEvt<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Fun Dic: 000000000804983E-&gt;&=
amp;Philo_initial<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Fun Dic: 0000000008049E=
13-&gt;&amp;Philo_thinking<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Fun Dic: 00000=
00008049F03-&gt;&amp;Philo_hungry<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Fun Dic: 000000000804A01A-&gt;&amp;Philo_eat=
ing<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Sig Dic: 00000009,Obj=3D0000000008058=
5C0 -&gt;HUNGRY_SIG<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Sig Dic: 0000000A,Obj=
=3D00000000080585C0 -&gt;TIMEOUT_SIG<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Q_IN=
IT : Obj=3Dl_philo[0] Source=3D0805119C Target=3DPhilo_thinking<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Q_ENTRY: Obj=3Dl_philo[0] State=3DPhilo_thin=
king<br>0000000000 =3D=3D&gt;Init: Obj=3Dl_philo[0] New=3DPhilo_thinking<br=
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Sig Dic: 00000009,Obj=3D000000000805862C -&=
gt;HUNGRY_SIG<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Sig Dic: 0000000A,Obj=3D000=
000000805862C -&gt;TIMEOUT_SIG<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Q_INIT : Obj=3Dl_philo[1] Source=3D0805119C =
Target=3DPhilo_thinking<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Q_ENTRY: Obj=3Dl_=
philo[1] State=3DPhilo_thinking<br>0000000000 =3D=3D&gt;Init: Obj=3Dl_philo=
[1] New=3DPhilo_thinking<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Sig Dic: 0000000=
9,Obj=3D0000000008058698 -&gt;HUNGRY_SIG<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Sig Dic: 0000000A,Obj=3D0000000008058698 -&g=
t;TIMEOUT_SIG<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Q_INIT : Obj=3Dl_philo[2] S=
ource=3D0805119C Target=3DPhilo_thinking<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
Q_ENTRY: Obj=3Dl_philo[2] State=3DPhilo_thinking<br>0000000000 =3D=3D&gt;In=
it: Obj=3Dl_philo[2] New=3DPhilo_thinking<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Sig Dic: 00000009,Obj=3D0000000008058704 -&g=
t;HUNGRY_SIG<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Sig Dic: 0000000A,Obj=3D0000=
000008058704 -&gt;TIMEOUT_SIG<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Q_INIT : Ob=
j=3Dl_philo[3] Source=3D0805119C Target=3DPhilo_thinking<br>=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 Q_ENTRY: Obj=3Dl_philo[3] State=3DPhilo_thinking<br>
0000000000 =3D=3D&gt;Init: Obj=3Dl_philo[3] New=3DPhilo_thinking<br>=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 Sig Dic: 00000009,Obj=3D0000000008058770 -&gt;HUNG=
RY_SIG<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Sig Dic: 0000000A,Obj=3D0000000008=
058770 -&gt;TIMEOUT_SIG<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Q_INIT : Obj=3Dl_=
philo[4] Source=3D0805119C Target=3DPhilo_thinking<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Q_ENTRY: Obj=3Dl_philo[4] State=3DPhilo_thin=
king<br>0000000000 =3D=3D&gt;Init: Obj=3Dl_philo[4] New=3DPhilo_thinking<br=
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Obj Dic: 00000000080587E0-&gt;&amp;l_table<=
br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Fun Dic: 000000000805119C-&gt;&amp;QHsm_t=
op<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Fun Dic: 000000000804A19C-&gt;&amp;Table_ini=
tial<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Fun Dic: 000000000804A5D8-&gt;&amp;T=
able_serving<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Sig Dic: 00000005,Obj=3D0000=
000000000000 -&gt;DONE_SIG<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Sig Dic: 00000=
004,Obj=3D0000000000000000 -&gt;EAT_SIG<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Sig Dic: 00000006,Obj=3D0000000000000000 -&g=
t;PAUSE_SIG<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Sig Dic: 00000007,Obj=3D00000=
00000000000 -&gt;TERMINATE_SIG<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Sig Dic: 0=
0000009,Obj=3D00000000080587E0 -&gt;HUNGRY_SIG<br>Philosopher=A0 0 is think=
ing<br>
Philosopher=A0 1 is thinking<br>Philosopher=A0 2 is thinking<br>Philosopher=
=A0 3 is thinking<br>Philosopher=A0 4 is thinking<br>0000000000 PHILO_STAT:=
 0 thinking <br>0000000000 PHILO_STAT: 1 thinking <br>0000000000 PHILO_STAT=
: 2 thinking <br>
0000000000 PHILO_STAT: 3 thinking <br>0000000000 PHILO_STAT: 4 thinking <br=
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Q_INIT : Obj=3Dl_table Source=3DQHsm_top Ta=
rget=3DTable_serving<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Q_ENTRY: Obj=3Dl_tab=
le State=3DTable_serving<br>0000000000 =3D=3D&gt;Init: Obj=3Dl_table New=3D=
Table_serving<br>
Philosopher=A0 4 is hungry=A0 <br>Philosopher=A0 4 is eating=A0 <br>0000000=
000 Disp=3D=3D&gt;: Obj=3Dl_philo[4] Sig=3DTIMEOUT_SIG Active=3DPhilo_think=
ing<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Q_ENTRY: Obj=3Dl_philo[4] State=3DPhi=
lo_hungry<br>0000000000 =3D=3D&gt;Tran: Obj=3Dl_philo[4] Sig=3DTIMEOUT_SIG =
Source=3DPhilo_thinking New=3DPhilo_hungry<br>
0000000000 Disp=3D=3D&gt;: Obj=3Dl_table Sig=3DHUNGRY_SIG Active=3DTable_se=
rving<br>0000000000 PHILO_STAT: 4 hungry=A0=A0 <br>0000000000 Disp=3D=3D&gt=
;: Obj=3Dl_philo[4] Sig=3DEAT_SIG Active=3DPhilo_hungry<br>=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 Q_ENTRY: Obj=3Dl_philo[4] State=3DPhilo_eating<br>
0000000000 =3D=3D&gt;Tran: Obj=3Dl_philo[4] Sig=3DEAT_SIG Source=3DPhilo_hu=
ngry New=3DPhilo_eating<br>0000000000 Disp=3D=3D&gt;: Obj=3Dl_philo[3] Sig=
=3DEAT_SIG Active=3DPhilo_thinking<br>0000000000 Intern : Obj=3Dl_philo[3] =
Sig=3DEAT_SIG Source=3DPhilo_thinking<br>
0000000000 Disp=3D=3D&gt;: Obj=3Dl_philo[2] Sig=3DEAT_SIG Active=3DPhilo_th=
inking<br>0000000000 Intern : Obj=3Dl_philo[2] Sig=3DEAT_SIG Source=3DPhilo=
_thinking<br>0000000000 Disp=3D=3D&gt;: Obj=3Dl_philo[1] Sig=3DEAT_SIG Acti=
ve=3DPhilo_thinking<br>
0000000000 Intern : Obj=3Dl_philo[1] Sig=3DEAT_SIG Source=3DPhilo_thinking<=
br>0000000000 Disp=3D=3D&gt;: Obj=3Dl_philo[0] Sig=3DEAT_SIG Active=3DPhilo=
_thinking<br>0000000000 Intern : Obj=3Dl_philo[0] Sig=3DEAT_SIG Source=3DPh=
ilo_thinking<br>0000000000 PHILO_STAT: 4 eating=A0=A0 <br>
0000000000 Intern : Obj=3Dl_table Sig=3DHUNGRY_SIG Source=3DTable_serving<b=
r>Philosopher=A0 0 is hungry=A0 <br></div><div>If you have any questions fe=
el free to contact me.<br></div><div>Edward Vidal Jr <a href=3D"mailto:vida=
l.develone@gmail.com">vidal.develone@gmail.com</a> or <a href=3D"mailto:dev=
elone@sbcglobal.net">develone@sbcglobal.net</a><br>
<br></div><div><br></div></div>

--047d7b677f0c0a4a8d04e6ade85e--
