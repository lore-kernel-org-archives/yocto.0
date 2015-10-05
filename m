Return-Path: <akorsos@kranzetech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B96CDE00C10; Mon,  5 Oct 2015 12:31:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.169 listed in list.dnswl.org]
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B59F5E00A31
	for <yocto@yoctoproject.org>; Mon,  5 Oct 2015 12:31:37 -0700 (PDT)
Received: by obbzf10 with SMTP id zf10so137021288obb.2
	for <yocto@yoctoproject.org>; Mon, 05 Oct 2015 12:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kranzetech.com; s=google;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=auyAIouJs5BNMxzgtKyw9TL9GCPHgns95oNHlG0QLvU=;
	b=aKGrI12W/hHrMzCTgPMjdo//V1A8jR1IgKmz8yLj162mYTJmANwG59E/LMIegBbtFD
	Va+IJgCJzcFaNu2GpLzCbkHUbwk0WTriHnP66HgdZxHudOUiruzW7Vp2d6s35XqOAirw
	Kw0vpZISr3SBBGxzq7KfKuB4+1cFIGaO622sM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=auyAIouJs5BNMxzgtKyw9TL9GCPHgns95oNHlG0QLvU=;
	b=TpJywGJFQH3oLx5et/PyQPFNKv9Ypf76NbHijcHcUqHT9ERO7MNfcuIn9MNH+fU57h
	WHZcepAK3PrBNcr8xEtokNWLMDOvxoEkQBfsOSK0GB7IsE9toML81yDCBmn2oJJ3VB3Q
	pj9HZ6iEdW9kuIFHhFc9Q9s3fAxwCqfMw03lUWAmF1KOTo+9as9HzrzcZ1k2jTRENkNO
	CqwaDfEmeXMRZZ+yIqgMY6nB8vxoirxnP4ol+Smu3Jb2l1IlO2N7YPZr3afazO34hCqj
	EE7BsanMjdSKvNQjKAL+Dg3fE0fsm3JjzhBTYN54Gh/1EcVAB0XcfRXHw0lGfgaJJqHE
	MiNQ==
X-Gm-Message-State: ALoCoQkHV+mmFac5RIYDPsWxnfF1n0KQD+wnD+pJbzeDA3FigFv5gG0n15rKzCSlp0ifonCByg5x
MIME-Version: 1.0
X-Received: by 10.60.144.138 with SMTP id sm10mr19215558oeb.56.1444073496756; 
	Mon, 05 Oct 2015 12:31:36 -0700 (PDT)
Received: by 10.76.174.39 with HTTP; Mon, 5 Oct 2015 12:31:36 -0700 (PDT)
Date: Mon, 5 Oct 2015 14:31:36 -0500
Message-ID: <CAGqgsEj=FFA-t=xPY7BR0g_ZjzinFkME+hR2kuwh1SH1FqTxRA@mail.gmail.com>
From: Alexander Korsos <akorsos@kranzetech.com>
To: yocto@yoctoproject.org
Subject: Flashing Yocto to SOM?
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
X-List-Received-Date: Mon, 05 Oct 2015 19:31:40 -0000
Content-Type: multipart/alternative; boundary=047d7b33956dcddb760521608fd2

--047d7b33956dcddb760521608fd2
Content-Type: text/plain; charset=UTF-8

Hi,

I'm trying to flash Yocto Dizzy (core-image-minimal built with BitBake)
onto a LogicPD DM3730 / AM3730 Torpedo + Wireless SOM using the following
commands at the U-Boot prompt:

# nand erase.chip
# env default -f

# setenv loadaddr 0x81000000

# setenv ramdiskaddr 0x82000000

# setenv kernel_nand_offset 0x00280000

# setenv kernel_nand_size 0x00400000

# setenv ramdisk_nand_offset 0x00680000

# setenv ramdisk_nand_size 0x00dd8680

# setenv kernel_location nand

# setenv rootfs_location nand

# setenv rootfs_type ramdisk

# saveenv

# mmc init

# mw.l ${loadaddr} 0xFFFFFFFF 0x400000

# fatload mmc 0 ${loadaddr} mlo

# nandecc hw

# nand write ${loadaddr} 0x00000000 0x00020000

# nand write ${loadaddr} 0x00020000 0x00020000

# nand write ${loadaddr} 0x00040000 0x00020000

# nand write ${loadaddr} 0x00060000 0x00020000

# mw.l ${loadaddr} 0xFFFFFFFF 0x400000

# fatload mmc 0 ${loadaddr} u-boot.bin

# nandecc sw

# nand write.i ${loadaddr} 0x00080000 0x00080000

# mw.l ${loadaddr} 0xffffffff 0x400000

# fatload mmc 0 ${loadaddr} uImage

# nand write.i ${loadaddr} ${kernel_nand_offset} ${kernel_nand_size}

# mw.l ${loadaddr} 0xffffffff 0x400000
# fatload mmc 0 ${loadaddr} rootfs.ext2.gz.u-boot

# nand write.i ${loadaddr} ${ramdisk_nand_offset} ${ramdisk_nand_size}



The source files I'm using in my boot partition are the MLO, u-boot.bin,
rootfs.ext2.gz.u-boot, uImage, and u-boot.img. I am able to burn all the
necessary files onto the SOM, but when I complete the steps and power
cycle, I get:



U-Boot SPL 2012.07-dirty (Sep 30 2015 - 17:31:44)
Board: DM37xx Torpedo
Error: Bad compare! failed
Error: Bad compare! failed
Error: Bad compare! failed

...

mkimage signature not found - ih_magic = ea000014

...

Error: Bad compare! failed
Error: Bad compare! failed

...



I've done a good amount of research online and some people say that it's an
issue with the nandecc setting, but my only options in U-Boot are hw
(hardware) and sw (software) ecc algorithms. Just curious if anyone could
identify my errors or possibly point me in the direction of good
documentation?



Thanks!

Alex

--047d7b33956dcddb760521608fd2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"margin:0px 0px 8px;padding:0px;border:0px;font=
-family:Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line-height:18px;vert=
ical-align:baseline;color:rgb(65,85,96)">Hi,</p><p style=3D"margin:0px 0px =
8px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,sans-serif;font-=
size:12px;line-height:18px;vertical-align:baseline;color:rgb(65,85,96)">I&#=
39;m trying to flash Yocto Dizzy (core-image-minimal built with BitBake) on=
to a LogicPD DM3730 / AM3730 Torpedo + Wireless SOM using the following com=
mands at the U-Boot prompt:=C2=A0</p><p style=3D"margin:0px;padding:0px;bor=
der:0px;font-family:Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line-heig=
ht:18px;vertical-align:baseline;color:rgb(65,85,96)"><span style=3D"margin:=
0px;padding:0px;border:0px;font-family:&#39;Courier New&#39;;font-size:inhe=
rit;font-style:inherit;font-variant:inherit;line-height:inherit;vertical-al=
ign:baseline"># nand erase.chip<br># env default -f=C2=A0</span></p><p styl=
e=3D"margin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,sans=
-serif;font-size:12px;line-height:18px;vertical-align:baseline;color:rgb(65=
,85,96)"><span style=3D"margin:0px;padding:0px;border:0px;font-family:&#39;=
Courier New&#39;;font-size:inherit;font-style:inherit;font-variant:inherit;=
line-height:inherit;vertical-align:baseline"># setenv loadaddr 0x81000000=
=C2=A0</span></p><p style=3D"margin:0px;padding:0px;border:0px;font-family:=
Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line-height:18px;vertical-ali=
gn:baseline;color:rgb(65,85,96)"><span style=3D"margin:0px;padding:0px;bord=
er:0px;font-family:&#39;Courier New&#39;;font-size:inherit;font-style:inher=
it;font-variant:inherit;line-height:inherit;vertical-align:baseline"># sete=
nv ramdiskaddr 0x82000000=C2=A0</span></p><p style=3D"margin:0px;padding:0p=
x;border:0px;font-family:Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line=
-height:18px;vertical-align:baseline;color:rgb(65,85,96)"><span style=3D"ma=
rgin:0px;padding:0px;border:0px;font-family:&#39;Courier New&#39;;font-size=
:inherit;font-style:inherit;font-variant:inherit;line-height:inherit;vertic=
al-align:baseline"># setenv kernel_nand_offset 0x00280000=C2=A0</span></p><=
p style=3D"margin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahom=
a,sans-serif;font-size:12px;line-height:18px;vertical-align:baseline;color:=
rgb(65,85,96)"><span style=3D"margin:0px;padding:0px;border:0px;font-family=
:&#39;Courier New&#39;;font-size:inherit;font-style:inherit;font-variant:in=
herit;line-height:inherit;vertical-align:baseline"># setenv kernel_nand_siz=
e 0x00400000=C2=A0</span></p><p style=3D"margin:0px;padding:0px;border:0px;=
font-family:Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line-height:18px;=
vertical-align:baseline;color:rgb(65,85,96)"><span style=3D"margin:0px;padd=
ing:0px;border:0px;font-family:&#39;Courier New&#39;;font-size:inherit;font=
-style:inherit;font-variant:inherit;line-height:inherit;vertical-align:base=
line"># setenv ramdisk_nand_offset 0x00680000=C2=A0</span></p><p style=3D"m=
argin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,sans-serif=
;font-size:12px;line-height:18px;vertical-align:baseline;color:rgb(65,85,96=
)"><span style=3D"margin:0px;padding:0px;border:0px;font-family:&#39;Courie=
r New&#39;;font-size:inherit;font-style:inherit;font-variant:inherit;line-h=
eight:inherit;vertical-align:baseline"># setenv ramdisk_nand_size 0x00dd868=
0=C2=A0</span></p><p style=3D"margin:0px;padding:0px;border:0px;font-family=
:Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line-height:18px;vertical-al=
ign:baseline;color:rgb(65,85,96)"><span style=3D"margin:0px;padding:0px;bor=
der:0px;font-family:&#39;Courier New&#39;;font-size:inherit;font-style:inhe=
rit;font-variant:inherit;line-height:inherit;vertical-align:baseline"># set=
env kernel_location nand</span></p><p style=3D"margin:0px;padding:0px;borde=
r:0px;font-family:Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line-height=
:18px;vertical-align:baseline;color:rgb(65,85,96)"><span style=3D"margin:0p=
x;padding:0px;border:0px;font-family:&#39;Courier New&#39;;font-size:inheri=
t;font-style:inherit;font-variant:inherit;line-height:inherit;vertical-alig=
n:baseline"># setenv rootfs_location nand=C2=A0</span></p><p style=3D"margi=
n:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,sans-serif;fon=
t-size:12px;line-height:18px;vertical-align:baseline;color:rgb(65,85,96)"><=
span style=3D"margin:0px;padding:0px;border:0px;font-family:&#39;Courier Ne=
w&#39;;font-size:inherit;font-style:inherit;font-variant:inherit;line-heigh=
t:inherit;vertical-align:baseline"># setenv rootfs_type ramdisk=C2=A0</span=
></p><p style=3D"margin:0px;padding:0px;border:0px;font-family:Oxygen,Arial=
,Tahoma,sans-serif;font-size:12px;line-height:18px;vertical-align:baseline;=
color:rgb(65,85,96)"><span style=3D"margin:0px;padding:0px;border:0px;font-=
family:&#39;Courier New&#39;;font-size:inherit;font-style:inherit;font-vari=
ant:inherit;line-height:inherit;vertical-align:baseline"># saveenv</span></=
p><p style=3D"margin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Ta=
homa,sans-serif;font-size:12px;line-height:18px;vertical-align:baseline;col=
or:rgb(65,85,96)"><span style=3D"margin:0px;padding:0px;border:0px;font-fam=
ily:&#39;Courier New&#39;;font-size:inherit;font-style:inherit;font-variant=
:inherit;line-height:inherit;vertical-align:baseline"># mmc init</span></p>=
<p style=3D"margin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Taho=
ma,sans-serif;font-size:12px;line-height:18px;vertical-align:baseline;color=
:rgb(65,85,96)"><span style=3D"margin:0px;padding:0px;border:0px;font-famil=
y:&#39;Courier New&#39;;font-size:inherit;font-style:inherit;font-variant:i=
nherit;line-height:inherit;vertical-align:baseline"># mw.l ${loadaddr} 0xFF=
FFFFFF 0x400000=C2=A0</span></p><p style=3D"margin:0px;padding:0px;border:0=
px;font-family:Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line-height:18=
px;vertical-align:baseline;color:rgb(65,85,96)"><span style=3D"margin:0px;p=
adding:0px;border:0px;font-family:&#39;Courier New&#39;;font-size:inherit;f=
ont-style:inherit;font-variant:inherit;line-height:inherit;vertical-align:b=
aseline"># fatload mmc 0 ${loadaddr} mlo=C2=A0</span></p><p style=3D"margin=
:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,sans-serif;font=
-size:12px;line-height:18px;vertical-align:baseline;color:rgb(65,85,96)"><s=
pan style=3D"margin:0px;padding:0px;border:0px;font-family:&#39;Courier New=
&#39;;font-size:inherit;font-style:inherit;font-variant:inherit;line-height=
:inherit;vertical-align:baseline"># nandecc hw=C2=A0</span></p><p style=3D"=
margin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,sans-seri=
f;font-size:12px;line-height:18px;vertical-align:baseline;color:rgb(65,85,9=
6)"><span style=3D"margin:0px;padding:0px;border:0px;font-family:&#39;Couri=
er New&#39;;font-size:inherit;font-style:inherit;font-variant:inherit;line-=
height:inherit;vertical-align:baseline"># nand write ${loadaddr} 0x00000000=
 0x00020000=C2=A0</span></p><p style=3D"margin:0px;padding:0px;border:0px;f=
ont-family:Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line-height:18px;v=
ertical-align:baseline;color:rgb(65,85,96)"><span style=3D"margin:0px;paddi=
ng:0px;border:0px;font-family:&#39;Courier New&#39;;font-size:inherit;font-=
style:inherit;font-variant:inherit;line-height:inherit;vertical-align:basel=
ine"># nand write ${loadaddr} 0x00020000 0x00020000=C2=A0</span></p><p styl=
e=3D"margin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,sans=
-serif;font-size:12px;line-height:18px;vertical-align:baseline;color:rgb(65=
,85,96)"><span style=3D"margin:0px;padding:0px;border:0px;font-family:&#39;=
Courier New&#39;;font-size:inherit;font-style:inherit;font-variant:inherit;=
line-height:inherit;vertical-align:baseline"># nand write ${loadaddr} 0x000=
40000 0x00020000=C2=A0</span></p><p style=3D"margin:0px;padding:0px;border:=
0px;font-family:Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line-height:1=
8px;vertical-align:baseline;color:rgb(65,85,96)"><span style=3D"margin:0px;=
padding:0px;border:0px;font-family:&#39;Courier New&#39;;font-size:inherit;=
font-style:inherit;font-variant:inherit;line-height:inherit;vertical-align:=
baseline"># nand write ${loadaddr} 0x00060000 0x00020000=C2=A0</span></p><p=
 style=3D"margin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma=
,sans-serif;font-size:12px;line-height:18px;vertical-align:baseline;color:r=
gb(65,85,96)"><span style=3D"margin:0px;padding:0px;border:0px;font-family:=
&#39;Courier New&#39;;font-size:inherit;font-style:inherit;font-variant:inh=
erit;line-height:inherit;vertical-align:baseline"># mw.l ${loadaddr} 0xFFFF=
FFFF 0x400000=C2=A0</span></p><p style=3D"margin:0px;padding:0px;border:0px=
;font-family:Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line-height:18px=
;vertical-align:baseline;color:rgb(65,85,96)"><span style=3D"margin:0px;pad=
ding:0px;border:0px;font-family:&#39;Courier New&#39;;font-size:inherit;fon=
t-style:inherit;font-variant:inherit;line-height:inherit;vertical-align:bas=
eline"># fatload mmc 0 ${loadaddr} u-boot.bin=C2=A0</span></p><p style=3D"m=
argin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,sans-serif=
;font-size:12px;line-height:18px;vertical-align:baseline;color:rgb(65,85,96=
)"><span style=3D"margin:0px;padding:0px;border:0px;font-family:&#39;Courie=
r New&#39;;font-size:inherit;font-style:inherit;font-variant:inherit;line-h=
eight:inherit;vertical-align:baseline"># nandecc sw</span></p><p style=3D"m=
argin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,sans-serif=
;font-size:12px;line-height:18px;vertical-align:baseline;color:rgb(65,85,96=
)"><span style=3D"margin:0px;padding:0px;border:0px;font-family:&#39;Courie=
r New&#39;;font-size:inherit;font-style:inherit;font-variant:inherit;line-h=
eight:inherit;vertical-align:baseline"># nand write.i ${loadaddr} 0x0008000=
0 0x00080000=C2=A0</span></p><p style=3D"margin:0px;padding:0px;border:0px;=
font-family:Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line-height:18px;=
vertical-align:baseline;color:rgb(65,85,96)"><span style=3D"margin:0px;padd=
ing:0px;border:0px;font-family:&#39;Courier New&#39;;font-size:inherit;font=
-style:inherit;font-variant:inherit;line-height:inherit;vertical-align:base=
line"># mw.l ${loadaddr} 0xffffffff 0x400000=C2=A0</span></p><p style=3D"ma=
rgin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,sans-serif;=
font-size:12px;line-height:18px;vertical-align:baseline;color:rgb(65,85,96)=
"><span style=3D"margin:0px;padding:0px;border:0px;font-family:&#39;Courier=
 New&#39;;font-size:inherit;font-style:inherit;font-variant:inherit;line-he=
ight:inherit;vertical-align:baseline"># fatload mmc 0 ${loadaddr} uImage</s=
pan></p><p style=3D"margin:0px;padding:0px;border:0px;font-family:Oxygen,Ar=
ial,Tahoma,sans-serif;font-size:12px;line-height:18px;vertical-align:baseli=
ne;color:rgb(65,85,96)"><span style=3D"margin:0px;padding:0px;border:0px;fo=
nt-family:&#39;Courier New&#39;;font-size:inherit;font-style:inherit;font-v=
ariant:inherit;line-height:inherit;vertical-align:baseline"># nand write.i =
${loadaddr} ${kernel_nand_offset} ${kernel_nand_size}=C2=A0</span></p><p st=
yle=3D"margin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,sa=
ns-serif;font-size:12px;line-height:18px;vertical-align:baseline;color:rgb(=
65,85,96)"><span style=3D"margin:0px;padding:0px;border:0px;font-family:&#3=
9;Courier New&#39;;font-size:inherit;font-style:inherit;font-variant:inheri=
t;line-height:inherit;vertical-align:baseline"># mw.l ${loadaddr} 0xfffffff=
f 0x400000<br># fatload mmc 0 ${loadaddr} rootfs.ext2.gz.u-boot</span></p><=
p style=3D"margin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahom=
a,sans-serif;font-size:12px;line-height:18px;vertical-align:baseline;color:=
rgb(65,85,96)"><span style=3D"margin:0px;padding:0px;border:0px;font-family=
:&#39;Courier New&#39;;font-size:inherit;font-style:inherit;font-variant:in=
herit;line-height:inherit;vertical-align:baseline"># nand write.i ${loadadd=
r} ${ramdisk_nand_offset} ${ramdisk_nand_size}=C2=A0</span></p><p style=3D"=
margin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,sans-seri=
f;font-size:12px;line-height:18px;vertical-align:baseline;color:rgb(65,85,9=
6)">=C2=A0</p><p style=3D"margin:0px;padding:0px;border:0px;font-family:Oxy=
gen,Arial,Tahoma,sans-serif;font-size:12px;line-height:18px;vertical-align:=
baseline;color:rgb(65,85,96)">The source files I&#39;m using in my boot par=
tition are the MLO, u-boot.bin, rootfs.ext2.gz.u-boot, uImage, and u-boot.i=
mg. I am able to burn all the necessary files onto the SOM, but when I comp=
lete the steps and power cycle, I get:</p><p style=3D"margin:0px;padding:0p=
x;border:0px;font-family:Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line=
-height:18px;vertical-align:baseline;color:rgb(65,85,96)">=C2=A0</p><p styl=
e=3D"margin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,sans=
-serif;font-size:12px;line-height:18px;vertical-align:baseline;color:rgb(65=
,85,96)"><span style=3D"margin:0px;padding:0px;border:0px;font-family:&#39;=
Courier New&#39;;font-size:inherit;font-style:inherit;font-variant:inherit;=
line-height:inherit;vertical-align:baseline">U-Boot SPL 2012.07-dirty (Sep =
30 2015 - 17:31:44)<br>Board: DM37xx Torpedo<br>Error: Bad compare! failed<=
br>Error: Bad compare! failed<br>Error: Bad compare! failed<br></span></p><=
p style=3D"margin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahom=
a,sans-serif;font-size:12px;line-height:18px;vertical-align:baseline;color:=
rgb(65,85,96)"><span style=3D"margin:0px;padding:0px;border:0px;font-family=
:&#39;Courier New&#39;;font-size:inherit;font-style:inherit;font-variant:in=
herit;line-height:inherit;vertical-align:baseline">...</span></p><p style=
=3D"margin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,sans-=
serif;font-size:12px;line-height:18px;vertical-align:baseline;color:rgb(65,=
85,96)"><span style=3D"margin:0px;padding:0px;border:0px;font-family:&#39;C=
ourier New&#39;;font-size:inherit;font-style:inherit;font-variant:inherit;l=
ine-height:inherit;vertical-align:baseline">mkimage signature not found - i=
h_magic =3D ea000014<br></span></p><p style=3D"margin:0px;padding:0px;borde=
r:0px;font-family:Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line-height=
:18px;vertical-align:baseline;color:rgb(65,85,96)"><span style=3D"margin:0p=
x;padding:0px;border:0px;font-family:&#39;Courier New&#39;;font-size:inheri=
t;font-style:inherit;font-variant:inherit;line-height:inherit;vertical-alig=
n:baseline">...</span></p><p style=3D"margin:0px;padding:0px;border:0px;fon=
t-family:Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line-height:18px;ver=
tical-align:baseline;color:rgb(65,85,96)"><span style=3D"margin:0px;padding=
:0px;border:0px;font-family:&#39;Courier New&#39;;font-size:inherit;font-st=
yle:inherit;font-variant:inherit;line-height:inherit;vertical-align:baselin=
e">Error: Bad compare! failed<br>Error: Bad compare! failed<br></span></p><=
p style=3D"margin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahom=
a,sans-serif;font-size:12px;line-height:18px;vertical-align:baseline;color:=
rgb(65,85,96)"><span style=3D"margin:0px;padding:0px;border:0px;font-family=
:&#39;Courier New&#39;;font-size:inherit;font-style:inherit;font-variant:in=
herit;line-height:inherit;vertical-align:baseline">...=C2=A0</span></p><p s=
tyle=3D"margin:0px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,s=
ans-serif;font-size:12px;line-height:18px;vertical-align:baseline;color:rgb=
(65,85,96)">=C2=A0</p><p style=3D"margin:0px 0px 8px;padding:0px;border:0px=
;font-family:Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line-height:18px=
;vertical-align:baseline;color:rgb(65,85,96)">I&#39;ve done a good amount o=
f research online and some people say that it&#39;s an issue with the nande=
cc setting, but my only options in U-Boot are hw (hardware) and sw (softwar=
e) ecc algorithms. Just curious if anyone could identify my errors or possi=
bly point me in the direction of good documentation?</p><p style=3D"margin:=
0px 0px 8px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,sans-ser=
if;font-size:12px;line-height:18px;vertical-align:baseline;color:rgb(65,85,=
96)">=C2=A0</p><p style=3D"margin:0px 0px 8px;padding:0px;border:0px;font-f=
amily:Oxygen,Arial,Tahoma,sans-serif;font-size:12px;line-height:18px;vertic=
al-align:baseline;color:rgb(65,85,96)">Thanks!</p><p style=3D"margin:0px 0p=
x 8px;padding:0px;border:0px;font-family:Oxygen,Arial,Tahoma,sans-serif;fon=
t-size:12px;line-height:18px;vertical-align:baseline;color:rgb(65,85,96)">A=
lex</p></div>

--047d7b33956dcddb760521608fd2--
