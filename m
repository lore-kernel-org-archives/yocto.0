Return-Path: <jfabernathy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BCBFE0132F
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2011 09:41:05 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yenm6 with SMTP id m6so2022083yen.35
	for <yocto@yoctoproject.org>; Wed, 09 Nov 2011 09:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=a2cf4ZAj3Vy/Vp5RRjFBG4LCh3P+bzUYeKu2RAQmyxE=;
	b=vrSzGXaORXUYCHCTj12sl+sbBc4gdOW1/Kpzm25VJ0b5fnhdjiQCfX1kFe+2l6wD0z
	yuvBkwZz16z0KNqAy3lfkuStFHpXBejUNKLJjCJXMznDG2O9aZTNIBh0AhVtlH/tS8Hd
	2XeDm4+iwsNFOHh+gGS3KFH7OXDUf4JKKU8hk=
MIME-Version: 1.0
Received: by 10.101.177.9 with SMTP id e9mr1525182anp.152.1320860464759; Wed,
	09 Nov 2011 09:41:04 -0800 (PST)
Received: by 10.236.157.138 with HTTP; Wed, 9 Nov 2011 09:41:04 -0800 (PST)
Date: Wed, 9 Nov 2011 12:41:04 -0500
Message-ID: <CANFv2EnZDD=wXJEz-Q1ovwRA3-+CaEuHErSbNe46S9vk9sNZJA@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
Subject: build failure on crownbay with EMGD
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 Nov 2011 17:41:05 -0000
Content-Type: multipart/alternative; boundary=00163691fb3dccc4cc04b150caa2

--00163691fb3dccc4cc04b150caa2
Content-Type: text/plain; charset=ISO-8859-1

In the past I've built the crownbay-noemgd successfully, using the
Development Manual Appendix A corrected instructions that have been
patched.  I thought I'd try my hand at building the crownbay with EMGD this
time.  Following the instructions in the Appendix A, but using the opposite
instructions related to EMGD, plus installing EMGD per the instructions in
the README file in the meta-crownbay directory, I got a long way into the
build, but failed toward the end in what looks like a dependance issue.
Can someone spot what I need to change???


NOTE: Running noexec task 4432 of 4436 (ID: 715,
/home/jim/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb,
do_package_write)
NOTE: package eglibc-locale-2.13-r16: task do_package_write_rpm: Succeeded
NOTE: Running task 4433 of 4436 (ID: 8,
/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb, do_rootfs)
NOTE: Running noexec task 4434 of 4436 (ID: 260,
/home/jim/poky/meta/recipes-core/eglibc/eglibc-locale_2.13.bb,
do_package_write)
NOTE: package core-image-sato-1.0-r0: task do_rootfs: Started
ERROR: Function 'do_rootfs' failed (see
/home/jim/poky/build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608
for further information)
ERROR: Logfile of failure stored in:
/home/jim/poky/build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608
Log data follows:
| Generating solve db for /home/jim/poky/build/tmp/deploy/rpm/mymachine...
|    total:               1      0.000000 MB      1.251276 secs
|    fingerprint:      1179      0.007580 MB      0.225419 secs
|    install:           393      0.000000 MB      0.467978 secs
|    dbadd:             393      0.000000 MB      0.458049 secs
|    dbget:            2413      0.000000 MB      0.002657 secs
|    dbput:             393      1.816904 MB      0.387933 secs
|    readhdr:          3931      3.623312 MB      0.007842 secs
|    hdrload:          1965      5.352088 MB      0.015769 secs
|    hdrget:          67287      0.000000 MB      0.025251 secs
| Generating solve db for /home/jim/poky/build/tmp/deploy/rpm/core2...
|    total:               1      0.000000 MB     30.690842 secs
|    fingerprint:     16377      0.192190 MB      1.357263 secs
|    install:          5459      0.000000 MB      9.185276 secs
|    dbadd:            5459      0.000000 MB      8.997421 secs
|    dbget:           61190      0.000000 MB      0.097393 secs
|    dbput:            5459     27.436448 MB      8.057184 secs
|    readhdr:         54591     55.326554 MB      0.216373 secs
|    hdrload:         27777     84.106654 MB      0.241450 secs
|    hdrget:         982855      0.000000 MB      0.367838 secs
| Generating solve db for /home/jim/poky/build/tmp/deploy/rpm/all...
|    total:               1      0.000000 MB      0.123502 secs
|    fingerprint:        96      0.003258 MB      0.004244 secs
|    install:            32      0.000000 MB      0.065233 secs
|    dbadd:              32      0.000000 MB      0.062755 secs
|    dbget:             585      0.000000 MB      0.000230 secs
|    dbput:              32      0.259492 MB      0.039171 secs
|    readhdr:           321      0.520536 MB      0.000570 secs
|    hdrload:           160      0.772764 MB      0.001263 secs
|    hdrget:           5288      0.000000 MB      0.002207 secs
| Generating solve db for /home/jim/poky/build/tmp/deploy/rpm/all...
|    total:               1      0.000000 MB      0.111927 secs
|    fingerprint:        96      0.003258 MB      0.004173 secs
|    install:            32      0.000000 MB      0.057706 secs
|    dbadd:              32      0.000000 MB      0.055191 secs
|    dbget:             585      0.000000 MB      0.000204 secs
|    dbput:              32      0.259492 MB      0.034089 secs
|    readhdr:           321      0.520536 MB      0.000673 secs
|    hdrload:           160      0.772764 MB      0.001158 secs
|    hdrget:           5288      0.000000 MB      0.001854 secs
| Processing locale-base-en-us...
| Processing locale-base-en-gb...
| Processing task-core-boot...
| Processing task-core-apps-console...
| Processing task-core-ssh-dropbear...
| Processing task-core-apps-x11-pimlico...
| Processing task-core-x11-sato...
| Processing zypper...
| Processing task-core-x11-base...
| Processing task-core-apps-x11-games...
| Processing task-core-apps-x11-core...
| Processing task-base-extended...
| Processing rpm...
| error: Failed dependencies:
|     libva.so.1 is needed by libegl1-1.8-r7.core2
| ERROR: Function 'do_rootfs' failed (see
/home/jim/poky/build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608
for further information)
NOTE: package core-image-sato-1.0-r0: task do_rootfs: Failed
ERROR: Task 8 (/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb,
do_rootfs) failed with exit code '1'
ERROR: '/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb' failed
jim@jim-ubuntu:~/poky/build$

--00163691fb3dccc4cc04b150caa2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>In the past I&#39;ve built the crownbay-noemgd successfully,=A0using t=
he Development Manual Appendix A corrected instructions that have been patc=
hed.=A0 I thought I&#39;d try my hand at building the crownbay with EMGD th=
is time.=A0 Following the instructions in the Appendix A, but using the opp=
osite instructions related to EMGD, plus installing EMGD per the instructio=
ns in the=A0README file in the meta-crownbay directory, I got a long way in=
to the build, but failed toward the end in what looks like a dependance iss=
ue.=A0 Can someone spot what I need to change???</div>

<div>=A0</div>
<div>
<p style=3D"MARGIN: 0in 0in 12pt" class=3D"MsoNormal"><font size=3D"3" face=
=3D"Times New Roman">NOTE: Running noexec task 4432 of 4436 (ID: 715, /home=
/jim/poky/meta/recipes-kernel/linux/</font><a href=3D"http://linux-yocto_3.=
0.bb/"><font color=3D"#0000ff" size=3D"3" face=3D"Times New Roman">linux-yo=
cto_3.0.bb</font></a><font size=3D"3" face=3D"Times New Roman">, do_package=
_write)<br>
NOTE: package eglibc-locale-2.13-r16: task do_package_write_rpm: Succeeded<=
br>NOTE: Running task 4433 of 4436 (ID: 8, /home/jim/poky/meta/recipes-sato=
/images/</font><a href=3D"http://core-image-sato.bb/"><font color=3D"#0000f=
f" size=3D"3" face=3D"Times New Roman">core-image-sato.bb</font></a><font s=
ize=3D"3" face=3D"Times New Roman">, do_rootfs)<br>
NOTE: Running noexec task 4434 of 4436 (ID: 260, /home/jim/poky/meta/recipe=
s-core/eglibc/</font><a href=3D"http://eglibc-locale_2.13.bb/"><font color=
=3D"#0000ff" size=3D"3" face=3D"Times New Roman">eglibc-locale_2.13.bb</fon=
t></a><font size=3D"3" face=3D"Times New Roman">, do_package_write)<br>
NOTE: package core-image-sato-1.0-r0: task do_rootfs: Started<br>ERROR: Fun=
ction &#39;do_rootfs&#39; failed (see /home/jim/poky/build/tmp/work/mymachi=
ne-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608 for further i=
nformation)<br>
ERROR: Logfile of failure stored in: /home/jim/poky/build/tmp/work/mymachin=
e-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608<br>Log data fo=
llows:<br>| Generating solve db for /home/jim/poky/build/tmp/deploy/rpm/mym=
achine...<br>
|=A0=A0=A0 total:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=
=A0 0.000000 MB=A0=A0=A0=A0=A0 1.251276 secs<br>|=A0=A0=A0 fingerprint:=A0=
=A0=A0=A0=A0 1179=A0=A0=A0=A0=A0 0.007580 MB=A0=A0=A0=A0=A0 0.225419 secs<b=
r>|=A0=A0=A0 install:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 393=A0=A0=A0=A0=A0 0.00=
0000 MB=A0=A0=A0=A0=A0 0.467978 secs<br>|=A0=A0=A0 dbadd:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 393=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.458049 s=
ecs<br>
|=A0=A0=A0 dbget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 2413=A0=A0=A0=A0=A0 0.00=
0000 MB=A0=A0=A0=A0=A0 0.002657 secs<br>|=A0=A0=A0 dbput:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 393=A0=A0=A0=A0=A0 1.816904 MB=A0=A0=A0=A0=A0 0.387933 s=
ecs<br>|=A0=A0=A0 readhdr:=A0=A0=A0=A0=A0=A0=A0=A0=A0 3931=A0=A0=A0=A0=A0 3=
.623312 MB=A0=A0=A0=A0=A0 0.007842 secs<br>|=A0=A0=A0 hdrload:=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 1965=A0=A0=A0=A0=A0 5.352088 MB=A0=A0=A0=A0=A0 0.015769 sec=
s<br>
|=A0=A0=A0 hdrget:=A0=A0=A0=A0=A0=A0=A0=A0=A0 67287=A0=A0=A0=A0=A0 0.000000=
 MB=A0=A0=A0=A0=A0 0.025251 secs<br>| Generating solve db for /home/jim/pok=
y/build/tmp/deploy/rpm/core2...<br>|=A0=A0=A0 total:=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0 30.690842 se=
cs<br>|=A0=A0=A0 fingerprint:=A0=A0=A0=A0 16377=A0=A0=A0=A0=A0 0.192190 MB=
=A0=A0=A0=A0=A0 1.357263 secs<br>
|=A0=A0=A0 install:=A0=A0=A0=A0=A0=A0=A0=A0=A0 5459=A0=A0=A0=A0=A0 0.000000=
 MB=A0=A0=A0=A0=A0 9.185276 secs<br>|=A0=A0=A0 dbadd:=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 5459=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 8.997421 secs<b=
r>|=A0=A0=A0 dbget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 61190=A0=A0=A0=A0=A0 0.00=
0000 MB=A0=A0=A0=A0=A0 0.097393 secs<br>|=A0=A0=A0 dbput:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 5459=A0=A0=A0=A0 27.436448 MB=A0=A0=A0=A0=A0 8.057184 secs<=
br>
|=A0=A0=A0 readhdr:=A0=A0=A0=A0=A0=A0=A0=A0 54591=A0=A0=A0=A0 55.326554 MB=
=A0=A0=A0=A0=A0 0.216373 secs<br>|=A0=A0=A0 hdrload:=A0=A0=A0=A0=A0=A0=A0=
=A0 27777=A0=A0=A0=A0 84.106654 MB=A0=A0=A0=A0=A0 0.241450 secs<br>|=A0=A0=
=A0 hdrget:=A0=A0=A0=A0=A0=A0=A0=A0 982855=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=
=A0=A0=A0 0.367838 secs<br>| Generating solve db for /home/jim/poky/build/t=
mp/deploy/rpm/all...<br>
|=A0=A0=A0 total:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=
=A0 0.000000 MB=A0=A0=A0=A0=A0 0.123502 secs<br>|=A0=A0=A0 fingerprint:=A0=
=A0=A0=A0=A0=A0=A0 96=A0=A0=A0=A0=A0 0.003258 MB=A0=A0=A0=A0=A0 0.004244 se=
cs<br>|=A0=A0=A0 install:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 32=A0=A0=A0=A0=
=A0 0.000000 MB=A0=A0=A0=A0=A0 0.065233 secs<br>|=A0=A0=A0 dbadd:=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 32=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0=
 0.062755 secs<br>
|=A0=A0=A0 dbget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 585=A0=A0=A0=A0=A0 0.=
000000 MB=A0=A0=A0=A0=A0 0.000230 secs<br>|=A0=A0=A0 dbput:=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 32=A0=A0=A0=A0=A0 0.259492 MB=A0=A0=A0=A0=A0 0.039=
171 secs<br>|=A0=A0=A0 readhdr:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 321=A0=A0=A0=
=A0=A0 0.520536 MB=A0=A0=A0=A0=A0 0.000570 secs<br>|=A0=A0=A0 hdrload:=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 160=A0=A0=A0=A0=A0 0.772764 MB=A0=A0=A0=A0=A0 0=
.001263 secs<br>
|=A0=A0=A0 hdrget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 5288=A0=A0=A0=A0=A0 0.0000=
00 MB=A0=A0=A0=A0=A0 0.002207 secs<br>| Generating solve db for /home/jim/p=
oky/build/tmp/deploy/rpm/all...<br>|=A0=A0=A0 total:=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.111927 =
secs<br>|=A0=A0=A0 fingerprint:=A0=A0=A0=A0=A0=A0=A0 96=A0=A0=A0=A0=A0 0.00=
3258 MB=A0=A0=A0=A0=A0 0.004173 secs<br>
|=A0=A0=A0 install:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 32=A0=A0=A0=A0=A0 0.00=
0000 MB=A0=A0=A0=A0=A0 0.057706 secs<br>|=A0=A0=A0 dbadd:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 32=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.055191=
 secs<br>|=A0=A0=A0 dbget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 585=A0=A0=A0=
=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.000204 secs<br>|=A0=A0=A0 dbput:=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 32=A0=A0=A0=A0=A0 0.259492 MB=A0=A0=A0=A0=
=A0 0.034089 secs<br>
|=A0=A0=A0 readhdr:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 321=A0=A0=A0=A0=A0 0.5205=
36 MB=A0=A0=A0=A0=A0 0.000673 secs<br>|=A0=A0=A0 hdrload:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 160=A0=A0=A0=A0=A0 0.772764 MB=A0=A0=A0=A0=A0 0.001158 secs<br=
>|=A0=A0=A0 hdrget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 5288=A0=A0=A0=A0=A0 0.000=
000 MB=A0=A0=A0=A0=A0 0.001854 secs<br>| Processing locale-base-en-us...<br=
>
| Processing locale-base-en-gb...<br>| Processing task-core-boot...<br>| Pr=
ocessing task-core-apps-console...<br>| Processing task-core-ssh-dropbear..=
.<br>| Processing task-core-apps-x11-pimlico...<br>| Processing task-core-x=
11-sato...<br>
| Processing zypper...<br>| Processing task-core-x11-base...<br>| Processin=
g task-core-apps-x11-games...<br>| Processing task-core-apps-x11-core...<br=
>| Processing task-base-extended...<br>| Processing rpm...<br>| error: Fail=
ed dependencies:<br>
| =A0=A0=A0 libva.so.1 is needed by libegl1-1.8-r7.core2<br>| ERROR: Functi=
on &#39;do_rootfs&#39; failed (see /home/jim/poky/build/tmp/work/mymachine-=
poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608 for further info=
rmation)<br>
NOTE: package core-image-sato-1.0-r0: task do_rootfs: Failed<br>ERROR: Task=
 8 (/home/jim/poky/meta/recipes-sato/images/</font><a href=3D"http://core-i=
mage-sato.bb/"><font color=3D"#0000ff" size=3D"3" face=3D"Times New Roman">=
core-image-sato.bb</font></a><font size=3D"3" face=3D"Times New Roman">, do=
_rootfs) failed with exit code &#39;1&#39;<br>
ERROR: &#39;/home/jim/poky/meta/recipes-sato/images/</font><a href=3D"http:=
//core-image-sato.bb/"><font color=3D"#0000ff" size=3D"3" face=3D"Times New=
 Roman">core-image-sato.bb</font></a><font size=3D"3"><font face=3D"Times N=
ew Roman">&#39; failed<br>
jim@jim-ubuntu:~/poky/build$ </font></font></p></div>

--00163691fb3dccc4cc04b150caa2--
