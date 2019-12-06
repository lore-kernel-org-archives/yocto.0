Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.7200.1575653440981527814
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Dec 2019 09:30:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sbcglobal.net header.s=s2048 header.b=GOa/mCJX;
 spf=none, err=permanent DNS error (domain: sbcglobal.net, ip: 140.211.169.56, mailfrom: develone@sbcglobal.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C834E01157; Fri,  6 Dec 2019 09:30:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,MANY_SPAN_IN_TEXT,RCVD_IN_DNSWL_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [74.6.129.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 MANY_SPAN_IN_TEXT Many <SPAN> tags embedded within text
Received: from sonic301-6.consmr.mail.bf2.yahoo.com (sonic301-6.consmr.mail.bf2.yahoo.com [74.6.129.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 764C0E01155
	for <yocto@yoctoproject.org>; Fri,  6 Dec 2019 09:30:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048; t=1575653438; bh=pp8jCTvRCu4jtDTRbbz2mLSqjXS87jeD4gVcefha+OI=; h=Date:From:To:Subject:References:From:Subject; b=GOa/mCJXQfQvh5V8Qbk8YLwgE93AoqraZo4kLhN2NXyBz27VRsvrow3B9DW0itEjzU+5eCSo0NYXfUreGepJ1dS3jZ9MH5VWjR3768tAFpyS11KYpFUXGeQ+1BMBJosbBQOU2vZ5plf7D++8U8Q3NJoSJo9uk2tMNlkYub3oFI7VoRpHxVA1tM4swQjFtt9UVKlu0mWl4YGqIvu/zeLsA+W6NYQPFjrUqQJryS/G7d2Fl5QsJlzt4SsJkaBELxXDnkiN3nxjly2+Zje6kzqSs1mFnii5aav7iWKLIxGNAr8erucxXlQQ7SqpAZpwHWQUA7oLbUmZ71EPBSwmHHdc4w==
X-YMail-OSG: j0kt0.IVM1moES8Lb4BYqCmgufJwOyTQb3lSfl15UJ8Hdsf6QYtykaIlMms6F8x
 e7e1wUxXHVPPYIjKvcunuFB4wFFy.41hOL1zYnVozwOAhYuQKluXex19Gt26cKtzeqokd7BRWuZV
 zLfuAm.FN1s7rxMkTwlSMAc11KuDyAJshRj1zATsLto9TYRN2aoKCNMPT94AXY3.jrdmFNdiqIn3
 GWN4mJ_udxZhgXj_CYiSzQUb7RYxI8UocNtuYUbebQrqonGNFB.bO4_5WLWVfEQmnYxgEikv4tzx
 I3.jVYKpkxa3AiS68s.bHdQTKBUO5xEWHWR06IWhdtkxsOTIhaP32galkpqD8QxzYUQQVUtsHrqi
 2lP1B00sSvJ9x_.2iL.jU0fINgrccFtDLg8BcMBumKyFjIMaNYiQX3LliPwzDWVArX8HwtmpglAQ
 LyWJneA2V5HglW4rNuJfupoVD1qGZN3uyVNy3WBy5HXSb2YR4GIwwgM0aU7KuiC7.DsFP4GOftoy
 uCGclZ8vZhNQzD2YLZUKGbaaRP8o2kQhkJmnYJCnAFR7QCT6elXmraaNNgHTpdRrVcKvUQ_shBCF
 QmT22zo76tFRB0UcCPNvZ.FaRYl47frr_e9YbpA_pCYbHGah1ptWO9aJDONWV4n5KQ6O1Pd_Sp6C
 Mu3pJHpIUrs8kNdZi7aaQ9k1DVcihb3YQeSU1fcHWoaKfqGrt2KWt6g8U8.uECvn63ax92nO3rlP
 Axptbj2o_mlxwqkyE.FiSu2xMOlAwgin5GuTwFs5BOr.nOxzttL3m.RRFGQn4UzMDetJXQYJ10oC
 7zWMCsGM4Wrkq17nb_zR1wVoUePcKYWmCC7LEFLoQeRblkIZ.wwvTemLOV92yOG3K9t0cLkFM391
 1eM02VeidOx3Ty3XFuLX8zBsKpfPXbEI_QDmm7OYU.tuEb9lmw6ZodKAkK0JJ6D4csOQ8sl_XJyS
 P9hBcTziWPglrPZ4pUnsxLImDAMy9h1rLSzP9Qfuv0iSNSGyv7Dk4hafT.xeYea2kqXnYzZEDXS6
 4iRmm0hj1r2bs0E5SYF84aClE1xjUb7_Ee9ysv96czaQsJx9r5Jdpg3qVs.T8bRUJZwq3VR90HtE
 liwgkdSdTniLYZDgIhGt8E91_sG.PumDDfLwkAqKpB8txCiTYL_V39WBIdF2tK5o5z_aJadmpXwJ
 041KrDfVLnCOJkD1AyqwL2lwHATJsLLqqHpcG0E94Np5x61X9F7J_vUPt5ngsoVUgECd26CRb9cN
 mbdqf7gVpv.SBB_WLD8.O6aQtnqG2INzM.0oTSiT2CxZkU9jcdK1Lo0biXhqFk1GjtCpy95fcdTC
 AK2nz7R.EPhchp6BW9nLn9e9Y
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.bf2.yahoo.com with HTTP; Fri, 6 Dec 2019 17:30:38 +0000
Date: Fri, 6 Dec 2019 17:30:37 +0000 (UTC)
From: "Ed Vidal" <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1806078756.3050822.1575653437339@mail.yahoo.com>
Subject: sdk rpi3 & rpi4 different sysroot
MIME-Version: 1.0
References: <1806078756.3050822.1575653437339.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14822 YMailNorrin Mozilla/5.0 (X11; Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/74.0.3729.157 Chrome/74.0.3729.157 Safari/537.36
Content-Type: multipart/alternative; 
	boundary="----=_Part_3050821_1694063212.1575653437337"

------=_Part_3050821_1694063212.1575653437337
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,Any and all help is appreciated. Thanks in advance.Question 1 I tried us=
ing the sdk to build icestorm (a makefile project).=C2=A0 The sysroot for r=
pi3 sdk & rpi4 sdk are missing a ftdi.h header.=C2=A0 The target rpi4 build=
s icestorm okay.=C2=A0 see steps below.
Question 2 What is the procedure to update the meta-raspberrypi repo? An is=
sue with core-image-sato for rpi3 required adding vidal@ws009:~/wkg/yocto-z=
eus-3.0/raspberrypi4/poky/meta-raspberrypi$ git diff diff --git a/conf/mach=
ine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf index 581e47c..43a0a=
25 100644 --- a/conf/machine/raspberrypi3.conf +++ b/conf/machine/raspberry=
pi3.conf @@ -18,3 +18,4 @@ UBOOT_MACHINE =3D "rpi_3_32b_config" SERIAL_CONS=
OLES ?=3D "115200;ttyS0"=C2=A0 ARMSTUB ?=3D "armstub7.bin" +ENABLE_UART =3D=
 "1"  For rpi4 build I made the same in raspberrypi4.conf=C2=A0 diff --git =
a/conf/machine/raspberrypi4.conf b/conf/machine/raspberrypi4.conf index 1bc=
f931..0b91515 100644 --- a/conf/machine/raspberrypi4.conf +++ b/conf/machin=
e/raspberrypi4.conf @@ -18,3 +18,4 @@ SERIAL_CONSOLES ?=3D "115200;ttyS0"=
=C2=A0 VC4DTBO ?=3D "vc4-fkms-v3d" ARMSTUB ?=3D "armstub7.bin" +ENABLE_UART=
 =3D "1"Question 3 Why is the header file ftdi.h missing in rpi4 sdk and no=
t used in rpi3 sdk?=C2=A0
vidal@ws009:~/wkg/test-yocto-sdk$ git clone https://github.com/develone/ice=
storm.git
vidal@ws009:~/wkg/test-yocto-sdk$ . /opt/poky/3.0.1/rpi4/environment-setup-=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi
vidal@ws009:~/wkg/test-yocto-sdk$ cd icestorm/
vidal@ws009:~/wkg/test-yocto-sdk$ echo ${CC} arm-poky-linux-gnueabi-gcc -mt=
humb -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 --sysroot=3D/o=
pt/poky/3.0.1/rpi4/sysroots/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi
vidal@ws009:~/wkg/test-yocto-sdk/icestorm$ time make -e
The following error:make[1]: Entering directory '/home/vidal/wkg/test-yocto=
-sdk/icestorm/iceprog'arm-poky-linux-gnueabi-gcc=C2=A0 -mthumb -mfpu=3Dneon=
-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 --sysroot=3D/opt/poky/3.0.1/rpi=
4/sysroots/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi=C2=A0 -O2 -pipe -g -f=
eliminate-unused-debug-types=C2=A0 =C2=A0 -c -o iceprog.o iceprog.ciceprog.=
c:27:10: fatal error: ftdi.h: No such file or directory=C2=A0 =C2=A027 | #i=
nclude <ftdi.h>=C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~=
~~~~~compilation terminated.
Tried to locate ftdi.h using the command below none was found in my rpi4 sd=
k sysroot.
vidal@ws009:~/wkg/test-yocto-sdk/icestorm$ find /opt/poky/3.0.1/rpi4/sysroo=
ts/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/ -name ftdi.h
A ftdi.h file was found in my rpi3 sdk sysroot.vidal@ws009:~/wkg/test-yocto=
-sdk/icestorm$ find /opt/poky/3.0.1/sysroots/cortexa7t2hf-neon-vfpv4-poky-l=
inux-gnueabi/ -name ftdi.h/opt/poky/3.0.1/sysroots/cortexa7t2hf-neon-vfpv4-=
poky-linux-gnueabi/usr/include/libftdi1/ftdi.h
The only difference between the raspberrypi3 & raspberrypi4 builds are belo=
w.vidal@ws009:~/wkg/yocto-zeus-3.0/raspberrypi4/build$ diff ../../build/con=
f/local.conf conf/local.conf=C2=A039c39< MACHINE ??=3D "raspberrypi3"---> M=
ACHINE ??=3D "raspberrypi4"66a67> DL_DIR ?=3D "/home/vidal//wkg/yocto-zeus-=
3.0/build/downloads"Testing rpi3 sdk
vidal@ws009:~/wkg/test-yocto-sdk/icestorm$ . /opt/poky/3.0.1/environment-se=
tup-cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi
vidal@ws009:~/wkg/test-yocto-sdk/icestorm$ echo ${CC}arm-poky-linux-gnueabi=
-gcc -mthumb -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 --sysr=
oot=3D/opt/poky/3.0.1/sysroots/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi
vidal@ws009:~/wkg/test-yocto-sdk/icestorm$ make -e
The rpi3 sdk gets the same error as the rpi4 sdk (see above).=C2=A0target r=
pi4real 23m38.686suser 23m16.332ssys 0m9.949s
AMD 6 core sdkreal 3m33.809suser 3m33.304ssys 0m0.556s

Let me know if I can provide additional information,RegardsEdward Vidal Jr.=
 e-mail develone@sbcglobal.net 915-595-1613

------=_Part_3050821_1694063212.1575653437337
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp4be7c6a5yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div dir=3D"ltr" data-setdir=3D"false"><div><div>Hi,</div><div>Any and a=
ll help is appreciated. Thanks in advance.</div><div>Question 1</div><div><=
span style=3D"white-space: pre-wrap;">=09</span>I tried using the sdk to bu=
ild icestorm (a makefile project).&nbsp; The sysroot for rpi3 sdk &amp; rpi=
4 sdk are</div><div><span style=3D"white-space: pre-wrap;">=09</span>missin=
g a ftdi.h header.&nbsp; The target rpi4 builds icestorm okay.&nbsp; see st=
eps below.</div><div><br></div><div>Question 2</div><div><span style=3D"whi=
te-space: pre-wrap;">=09</span>What is the procedure to update the meta-ras=
pberrypi repo?</div><div><span style=3D"white-space: pre-wrap;">=09</span>A=
n issue with core-image-sato for rpi3 required adding</div><div><span style=
=3D"white-space: pre-wrap;">=09</span>vidal@ws009:~/wkg/yocto-zeus-3.0/rasp=
berrypi4/poky/meta-raspberrypi$ git diff</div><div><span style=3D"white-spa=
ce: pre-wrap;">=09</span>diff --git a/conf/machine/raspberrypi3.conf b/conf=
/machine/raspberrypi3.conf</div><div><span style=3D"white-space: pre-wrap;"=
>=09</span>index 581e47c..43a0a25 100644</div><div><span style=3D"white-spa=
ce: pre-wrap;">=09</span>--- a/conf/machine/raspberrypi3.conf</div><div><sp=
an style=3D"white-space: pre-wrap;">=09</span>+++ b/conf/machine/raspberryp=
i3.conf</div><div><span style=3D"white-space: pre-wrap;">=09</span>@@ -18,3=
 +18,4 @@ UBOOT_MACHINE =3D "rpi_3_32b_config"</div><div><span style=3D"whi=
te-space: pre-wrap;">=09</span>SERIAL_CONSOLES ?=3D "115200;ttyS0"</div><di=
v>&nbsp;</div><div><span style=3D"white-space: pre-wrap;">=09</span>ARMSTUB=
 ?=3D "armstub7.bin"</div><div><span style=3D"white-space: pre-wrap;">=09</=
span>+ENABLE_UART =3D "1"</div><div><span style=3D"white-space: pre-wrap;">=
=09</span></div><div><span style=3D"white-space: pre-wrap;">=09</span>For r=
pi4 build I made the same in raspberrypi4.conf&nbsp;</div><div><span style=
=3D"white-space: pre-wrap;">=09</span>diff --git a/conf/machine/raspberrypi=
4.conf b/conf/machine/raspberrypi4.conf</div><div><span style=3D"white-spac=
e: pre-wrap;">=09</span>index 1bcf931..0b91515 100644</div><div><span style=
=3D"white-space: pre-wrap;">=09</span>--- a/conf/machine/raspberrypi4.conf<=
/div><div><span style=3D"white-space: pre-wrap;">=09</span>+++ b/conf/machi=
ne/raspberrypi4.conf</div><div><span style=3D"white-space: pre-wrap;">=09</=
span>@@ -18,3 +18,4 @@ SERIAL_CONSOLES ?=3D "115200;ttyS0"</div><div>&nbsp;=
</div><div><span style=3D"white-space: pre-wrap;">=09</span>VC4DTBO ?=3D "v=
c4-fkms-v3d"</div><div><span style=3D"white-space: pre-wrap;">=09</span>ARM=
STUB ?=3D "armstub7.bin"</div><div><span style=3D"white-space: pre-wrap;">=
=09</span>+ENABLE_UART =3D "1"</div><div>Question 3</div><div><span style=
=3D"white-space: pre-wrap;">=09</span>Why is the header file ftdi.h missing=
 in rpi4 sdk and not used in rpi3 sdk?&nbsp;</div><div><br></div><div>vidal=
@ws009:~/wkg/test-yocto-sdk$ git clone https://github.com/develone/icestorm=
.git</div><div><br></div><div>vidal@ws009:~/wkg/test-yocto-sdk$ . /opt/poky=
/3.0.1/rpi4/environment-setup-cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi</d=
iv><div><br></div><div>vidal@ws009:~/wkg/test-yocto-sdk$ cd icestorm/</div>=
<div><br></div><div>vidal@ws009:~/wkg/test-yocto-sdk$ echo ${CC}</div><div>=
<span style=3D"white-space: pre-wrap;">=09</span>arm-poky-linux-gnueabi-gcc=
 -mthumb -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 --sysroot=
=3D/opt/poky/3.0.1/rpi4/sysroots/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi=
</div><div><br></div><div>vidal@ws009:~/wkg/test-yocto-sdk/icestorm$ time m=
ake -e</div><div><br></div><div>The following error:</div><div>make[1]: Ent=
ering directory '/home/vidal/wkg/test-yocto-sdk/icestorm/iceprog'</div><div=
>arm-poky-linux-gnueabi-gcc&nbsp; -mthumb -mfpu=3Dneon-vfpv4 -mfloat-abi=3D=
hard -mcpu=3Dcortex-a7 --sysroot=3D/opt/poky/3.0.1/rpi4/sysroots/cortexa7t2=
hf-neon-vfpv4-poky-linux-gnueabi&nbsp; -O2 -pipe -g -feliminate-unused-debu=
g-types&nbsp; &nbsp; -c -o iceprog.o iceprog.c</div><div>iceprog.c:27:10: f=
atal error: ftdi.h: No such file or directory</div><div>&nbsp; &nbsp;27 | #=
include &lt;ftdi.h&gt;</div><div>&nbsp; &nbsp; &nbsp; |&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; ^~~~~~~~</div><div>compilation terminated.</div><div><br></d=
iv><div>Tried to locate ftdi.h using the command below none was found in my=
 rpi4 sdk sysroot.</div><div><br></div><div>vidal@ws009:~/wkg/test-yocto-sd=
k/icestorm$ find /opt/poky/3.0.1/rpi4/sysroots/cortexa7t2hf-neon-vfpv4-poky=
-linux-gnueabi/ -name ftdi.h</div><div><br></div><div>A ftdi.h file was fou=
nd in my rpi3 sdk sysroot.</div><div>vidal@ws009:~/wkg/test-yocto-sdk/icest=
orm$ find /opt/poky/3.0.1/sysroots/cortexa7t2hf-neon-vfpv4-poky-linux-gnuea=
bi/ -name ftdi.h</div><div>/opt/poky/3.0.1/sysroots/cortexa7t2hf-neon-vfpv4=
-poky-linux-gnueabi/usr/include/libftdi1/ftdi.h</div><div><br></div><div>Th=
e only difference between the raspberrypi3 &amp; raspberrypi4 builds are be=
low.</div><div>vidal@ws009:~/wkg/yocto-zeus-3.0/raspberrypi4/build$ diff ..=
/../build/conf/local.conf conf/local.conf&nbsp;</div><div>39c39</div><div>&=
lt; MACHINE ??=3D "raspberrypi3"</div><div>---</div><div>&gt; MACHINE ??=3D=
 "raspberrypi4"</div><div>66a67</div><div>&gt; DL_DIR ?=3D "/home/vidal//wk=
g/yocto-zeus-3.0/build/downloads"</div><div>Testing rpi3 sdk</div><div><br>=
</div><div>vidal@ws009:~/wkg/test-yocto-sdk/icestorm$ . /opt/poky/3.0.1/env=
ironment-setup-cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi</div><div><br></d=
iv><div>vidal@ws009:~/wkg/test-yocto-sdk/icestorm$ echo ${CC}</div><div>arm=
-poky-linux-gnueabi-gcc -mthumb -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=
=3Dcortex-a7 --sysroot=3D/opt/poky/3.0.1/sysroots/cortexa7t2hf-neon-vfpv4-p=
oky-linux-gnueabi</div><div><br></div><div>vidal@ws009:~/wkg/test-yocto-sdk=
/icestorm$ make -e</div><div><br></div><div>The rpi3 sdk gets the same erro=
r as the rpi4 sdk (see above).&nbsp;</div><div>target rpi4</div><div>real<s=
pan style=3D"white-space: pre-wrap;">=09</span>23m38.686s</div><div>user<sp=
an style=3D"white-space: pre-wrap;">=09</span>23m16.332s</div><div>sys<span=
 style=3D"white-space: pre-wrap;">=09</span>0m9.949s</div><div><br></div><d=
iv>AMD 6 core sdk</div><div>real<span style=3D"white-space: pre-wrap;">=09<=
/span>3m33.809s</div><div>user<span style=3D"white-space: pre-wrap;">=09</s=
pan>3m33.304s</div><div>sys<span style=3D"white-space: pre-wrap;">=09</span=
>0m0.556s</div><div><br></div></div><br></div><div dir=3D"ltr" data-setdir=
=3D"false">Let me know if I can provide additional information,</div><div d=
ir=3D"ltr" data-setdir=3D"false">Regards</div><div class=3D"ydp4be7c6a5sign=
ature">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613</div></d=
iv></body></html>

------=_Part_3050821_1694063212.1575653437337--
