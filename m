Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5912AE00AF2; Tue,  8 Dec 2015 17:27:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.229.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm32-vm1.bullet.mail.ne1.yahoo.com
	(nm32-vm1.bullet.mail.ne1.yahoo.com [98.138.229.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A522E00B5A
	for <yocto@yoctoproject.org>; Tue,  8 Dec 2015 17:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1449624424; bh=A4pDcHEFXxXvQy0TyyPw+i9rsBUm0VO9vTwqp/ihZHw=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=oUkwzG41GalOCD55IGbwFTslQzc08LyXEuiXYmnoQxxbprkxSKWIrnZjtYbjLoIGAi7nP5F3dUnmmyelsDuHkegZ4TWG33fvdUoySO/Xigfhe8lUUC5Vf4Bgu49oElXPBHTCcWIWs4ydZY4+vX19g5Iu0V+KUGaJNaab7brkrdKkbXd+wI5S4E3IwSH2w7+GyNIr1AuSBNHOYdgm9rfR3xfQ7mn4xgBSVqx/LE6KBLeYTm/tuau7xIdMJcewJXqr7CrJ1B+wkXAVvMafO7MfnhRYd7MiCzPsJCzZMWcvB36OfYdj/mmZMdCs6gMP1sMRa+HitOf5MQZFHpW1i6HURw==
Received: from [127.0.0.1] by nm32.bullet.mail.ne1.yahoo.com with NNFMP;
	09 Dec 2015 01:27:04 -0000
Received: from [98.138.101.129] by nm32.bullet.mail.ne1.yahoo.com with NNFMP;
	09 Dec 2015 01:24:15 -0000
Received: from [98.138.89.173] by tm17.bullet.mail.ne1.yahoo.com with NNFMP;
	09 Dec 2015 01:24:15 -0000
Received: from [127.0.0.1] by omp1029.mail.ne1.yahoo.com with NNFMP;
	09 Dec 2015 01:24:15 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 926435.18471.bm@omp1029.mail.ne1.yahoo.com
X-YMail-OSG: xxxyXisVM1no1kQ8UniPMfw79Mem44GmYo75qA1lTEXkf7Iw9YIJBOWvoJ_Ch5U
	fsm88vgtAUhtjOnhQMMdYrcERoZL3ETpdONuFFyoCQme13OWnmt_s9flZnA7T8iiXSDCJGaPsnRT
	SF7_qXC3egyCGfWN1SA3F8dir894Cd8k0QSg46_KQdoVqjdmBjc8LlAeSBEJ1CuwP_D1CRkxKEQe
	apW9xsl7JDcxx9sPvIBiLYzpFeKBxEUZ6sUqEsQuaWUgQ4cAr7iASNel3ZwlkUREW6nGmKsV_ZuI
	1II5yLquDH5YdmGkEYqoDKewLA9HzcbQXEXqJ5K4JLS4PAvIovVpNQFAQTP5GpySOiSt9YCv_5cv
	6xaS5Evq.a2dtAq5K2ELTsPXJflzRhTxX_DCbbTG8DP7qXonuQWnN9UcTCFsRFOvqB2MZJ1bCcRE
	vWp2YeZ7NV6YUyuuqWoSZb9V1y_.pAe7oPMlkkov3gxQ_p1vUmgnTk7J7wqS6zD0kAYkihWCUTI2
	YUgqqoOJyj8eiLjPRyxTiWHhStFyrATao_FvRAytOxbguDwbYyCMBMzbKcye03Q--
Received: by 98.138.105.210; Wed, 09 Dec 2015 01:24:15 +0000 
Date: Wed, 9 Dec 2015 01:23:26 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1092349235.423354.1449624206714.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
References: <1092349235.423354.1449624206714.JavaMail.yahoo.ref@mail.yahoo.com>
Subject: meta-raspberry build fails with either VLC or FireFire.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 Dec 2015 01:27:07 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_423353_1006214046.1449624206707"

------=_Part_423353_1006214046.1449624206707
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All,
My earlier build included VLC and FireFox.
meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D "fido:0f8d89ce66cfffccc9911d6c61470a58=
5173b79d"
meta-raspberrypi=C2=A0 =3D "master:7457bf182c8fd550ec877ecd786a3edd16e65495=
"
meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0
meta-python=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0
meta-multimedia=C2=A0 =C2=A0
meta-gnome=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "fido:0f8d89ce66cf=
ffccc9911d6c61470a585173b79d"

These were pulled a day ago.
I upgraded to the following and now VLC & FireFox causes errors
meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D "master:dd282d475cb4fde4f4e6fd7afe437d=
c001584587"
meta-raspberrypi=C2=A0 =3D "master:f2cff839f52a6e6211337fc45c7c3eabf0fac113=
"
meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0
meta-python=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0
meta-multimedia=C2=A0 =C2=A0
meta-gnome=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "master:dd282d475c=
b4fde4f4e6fd7afe437dc001584587"
meta-browser=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "master:ca96f4326345dcd779fc=
539877a04f069f431749"

Since VLC & FireFox depend on gtk+3-3.18.2 In the above repos. =C2=A0
They fail in do_configure when I add to IMAGE_INSTALL_append=20
in my local.conf file.

These are the what I added in added local.conf

#MACHINE ??=3D "qemux86"
ENABLE_SPI_BUS =3D "1"
MACHINE ??=3D "raspberrypi2"
GPU_MEM =3D "16"
PREFERRED_PROVIDER_virtual/egl ?=3D "vc-graphics-hardfp"
PREFERRED_PROVIDER_virtual/libgles2 ?=3D "vc-graphics-hardfp"
PREFERRED_PROVIDER_jpeg =3D "libjpeg-turbo"
PREFERRED_PROVIDER_jpeg-native =3D "libjpeg-turbo-native"
#adding the XSTOOLs depends
IMAGE_INSTALL_append =3D " xterm git \
=C2=A0intelhex python-bitstring pyusb PyPubSub xstools=C2=A0=C2=A0 \
=C2=A0chkconfig v4l-utils python-imaging socat lame=C2=A0 \
=C2=A0linux-firmware jasper gsl=C2=A0 hexedit man iproute2 \
=C2=A0gperf tree cmake tar pv openjpeg squashfs-tools \
=C2=A0rsync yasm=C2=A0 gparted=C2=A0 tcl tk rpi-gpio geany python-pip iputi=
ls \
=C2=A0opencv opencv-samples opencv-apps python-opencv devmem2 \
"

#DL_DIR ?=3D "${TOPDIR}/downloads"
DL_DIR ?=3D "/home/vidal/wkg/yocto/kernel_test/downloads"

EXTRA_IMAGE_FEATURES =3D "debug-tweaks dev-pkgs tools-sdk doc-pkgs qt4-pkgs=
"

This what is in bblayers.conf

# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION =3D "6"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
=C2=A0 /home/vidal/wkg/yocto/kernel_test/poky/meta \
=C2=A0 /home/vidal/wkg/yocto/kernel_test/poky/meta-yocto \
=C2=A0 /home/vidal/wkg/yocto/kernel_test/poky/meta-yocto-bsp \
=C2=A0 /home/vidal/wkg/yocto/kernel_test/poky/meta-raspberrypi \
=C2=A0 /home/vidal/wkg/yocto/kernel_test/poky/meta-oe \
=C2=A0 /home/vidal/wkg/yocto/kernel_test/poky/meta-python \
=C2=A0 /home/vidal/wkg/yocto/kernel_test/poky/meta-multimedia \
=C2=A0 /home/vidal/wkg/yocto/kernel_test/poky/meta-gnome \
=C2=A0 /home/vidal/wkg/yocto/kernel_test/poky/meta-browser \
=C2=A0 "
BBLAYERS_NON_REMOVABLE ?=3D " \
=C2=A0 /home/vidal/wkg/yocto/kernel_test/poky/meta \
=C2=A0 /home/vidal/wkg/yocto/kernel_test/poky/meta-yocto \
=C2=A0 "
Any and all help is appreciated.

This is the goal of the build.

Transferred to my google dropbox core-image-sato120815.zip
If you do not access let me know and I will add you to share list.

The sha1sum should be the following:
12dc5b4e9cb737696b71c6502ffd095f5a896720=C2=A0 core-image-sato120815.zip
In the file sha1sum.txt

1.4 GB (1,449,293,907 bytes)

This is what I used to transfer to a micro SD card.

"gzip -dc /home/vidal/wkg/yocto/core-image-sato120815.zip | pv | dd bs=3D16=
M of=3D/dev/sdb"
3.64GB 0:08:01 [7.74MB/s]
The root passwd is raspberrypi

This will fit on 4GB micro SD card.

Provides the Linux 4.1.10 Kernel, git, gcc-5.2.0, OpenCV, Myhdl, Iverilog,=
=20
gsl, yosys, arachne-pnr, CAT-Board, rhea, Xstools and Gtkwave. =C2=A0

CAT-Board Features

* Lattice iCE40-HX8K FPGA in 256-pin BGA.
* 32 MByte SDRAM (16M x 16).
* Serial configuration flash (at least 2 Mbit).
* Three Grove connectors.
* Two PMOD connectors.
* One 20x2 header with 3.3V, ground and 18 FPGA I/Os.
* Two SATA headers (for differential signals; don't know if they would work=
 with SATA HDDs.)
* DIP switch with four SPST switches.
* Two momentary pushbuttons.
* Four LEDs.
* 100 MHz oscillator.
* 5.0 V jack for external power supply.
* 3.3 V and 1.2 V regulators.
* Adjustable voltage on one bank of FPGA I/O pins.
* 32 KByte HAT EEPROM.
* 40-pin RPi GPIO header.

See Driving an Array of LED Digits with the CAT Board at
https://hackaday.io/project/7982-cat-board. =C2=A0

The prototype has been tested with Yocto & RaspBian on RPi2B.
With these tools, this combo is a complete development system, to develop, =
test and program
=C2=A0FPGA applications completly on the RPi2B and CAT-Board.

The schematic is available at
https://raw.githubusercontent.com/xesscorp/CAT-Board/master/docs/Manual/pic=
s/CAT_schematic.pdf

This should be around the cost as the StickIt-MB & XulA2-LX9.=C2=A0 Dave wi=
ll be finalizing the price soon.

The led digit provides a good method to test the CAT-Board and RPi2B.


see xess.com

Cheers,=C2=A0
=C2=A0Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_423353_1006214046.1449624206707
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px">Hi All,<br class=3D"" id=3D"yui_3_16_0_1_1449624=
103988_3264">My earlier build included VLC and FireFox.<br class=3D"" id=3D=
"yui_3_16_0_1_1449624103988_3266">meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D "fid=
o:0f8d89ce66cfffccc9911d6c61470a585173b79d"<br class=3D"" id=3D"yui_3_16_0_=
1_1449624103988_3268">meta-raspberrypi&nbsp; =3D "master:7457bf182c8fd550ec=
877ecd786a3edd16e65495"<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3270=
">meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br c=
lass=3D"" id=3D"yui_3_16_0_1_1449624103988_3272">meta-python&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; &nbsp;<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3274"=
>meta-multimedia&nbsp; &nbsp;<br class=3D"" id=3D"yui_3_16_0_1_144962410398=
8_3276">meta-gnome&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "fido:0f8d=
89ce66cfffccc9911d6c61470a585173b79d"<br class=3D"" id=3D"yui_3_16_0_1_1449=
624103988_3278"><br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3280">These=
 were pulled a day ago.<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3282=
">I upgraded to the following and now VLC &amp; FireFox causes errors<br cl=
ass=3D"" id=3D"yui_3_16_0_1_1449624103988_3284">meta-yocto-bsp&nbsp;&nbsp;&=
nbsp; =3D "master:dd282d475cb4fde4f4e6fd7afe437dc001584587"<br class=3D"" i=
d=3D"yui_3_16_0_1_1449624103988_3286">meta-raspberrypi&nbsp; =3D "master:f2=
cff839f52a6e6211337fc45c7c3eabf0fac113"<br class=3D"" id=3D"yui_3_16_0_1_14=
49624103988_3288">meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; &nbsp;<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3290">meta-pytho=
n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br class=3D"" id=3D"yui_3_16_0_1_144=
9624103988_3292">meta-multimedia&nbsp; &nbsp;<br class=3D"" id=3D"yui_3_16_=
0_1_1449624103988_3294">meta-gnome&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; =3D "master:dd282d475cb4fde4f4e6fd7afe437dc001584587"<br class=3D"" id=3D=
"yui_3_16_0_1_1449624103988_3296">meta-browser&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; =3D "master:ca96f4326345dcd779fc539877a04f069f431749"<br class=3D"" id=3D=
"yui_3_16_0_1_1449624103988_3298"><br class=3D"" id=3D"yui_3_16_0_1_1449624=
103988_3300">Since VLC &amp; FireFox depend on gtk+3-3.18.2 In the above re=
pos. &nbsp;<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3302">They fail =
in do_configure when I add to IMAGE_INSTALL_append <br class=3D"" id=3D"yui=
_3_16_0_1_1449624103988_3304">in my local.conf file.<br class=3D"" id=3D"yu=
i_3_16_0_1_1449624103988_3306"><br class=3D"" id=3D"yui_3_16_0_1_1449624103=
988_3308">These are the what I added in added local.conf<br class=3D"" id=
=3D"yui_3_16_0_1_1449624103988_3310"><br class=3D"" id=3D"yui_3_16_0_1_1449=
624103988_3312">#MACHINE ??=3D "qemux86"<br class=3D"" id=3D"yui_3_16_0_1_1=
449624103988_3314">ENABLE_SPI_BUS =3D "1"<br class=3D"" id=3D"yui_3_16_0_1_=
1449624103988_3316">MACHINE ??=3D "raspberrypi2"<br class=3D"" id=3D"yui_3_=
16_0_1_1449624103988_3318">GPU_MEM =3D "16"<br class=3D"" id=3D"yui_3_16_0_=
1_1449624103988_3320">PREFERRED_PROVIDER_virtual/egl ?=3D "vc-graphics-hard=
fp"<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3322">PREFERRED_PROVIDER=
_virtual/libgles2 ?=3D "vc-graphics-hardfp"<br class=3D"" id=3D"yui_3_16_0_=
1_1449624103988_3324">PREFERRED_PROVIDER_jpeg =3D "libjpeg-turbo"<br class=
=3D"" id=3D"yui_3_16_0_1_1449624103988_3326">PREFERRED_PROVIDER_jpeg-native=
 =3D "libjpeg-turbo-native"<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_=
3328">#adding the XSTOOLs depends<br class=3D"" id=3D"yui_3_16_0_1_14496241=
03988_3330">IMAGE_INSTALL_append =3D " xterm git \<br class=3D"" id=3D"yui_=
3_16_0_1_1449624103988_3332">&nbsp;intelhex python-bitstring pyusb PyPubSub=
 xstools&nbsp;&nbsp; \<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3334"=
>&nbsp;chkconfig v4l-utils python-imaging socat lame&nbsp; \<br class=3D"" =
id=3D"yui_3_16_0_1_1449624103988_3336">&nbsp;linux-firmware jasper gsl&nbsp=
; hexedit man iproute2 \<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_333=
8">&nbsp;gperf tree cmake tar pv openjpeg squashfs-tools \<br class=3D"" id=
=3D"yui_3_16_0_1_1449624103988_3340">&nbsp;rsync yasm&nbsp; gparted&nbsp; t=
cl tk rpi-gpio geany python-pip iputils \<br class=3D"" id=3D"yui_3_16_0_1_=
1449624103988_3342">&nbsp;opencv opencv-samples opencv-apps python-opencv d=
evmem2 \<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3344">"<br class=3D=
"" id=3D"yui_3_16_0_1_1449624103988_3346"><br class=3D"" id=3D"yui_3_16_0_1=
_1449624103988_3348">#DL_DIR ?=3D "${TOPDIR}/downloads"<br class=3D"" id=3D=
"yui_3_16_0_1_1449624103988_3350">DL_DIR ?=3D "/home/vidal/wkg/yocto/kernel=
_test/downloads"<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3352"><br c=
lass=3D"" id=3D"yui_3_16_0_1_1449624103988_3354">EXTRA_IMAGE_FEATURES =3D "=
debug-tweaks dev-pkgs tools-sdk doc-pkgs qt4-pkgs"<br class=3D"" id=3D"yui_=
3_16_0_1_1449624103988_3356"><br class=3D"" id=3D"yui_3_16_0_1_144962410398=
8_3358">This what is in bblayers.conf<br class=3D"" id=3D"yui_3_16_0_1_1449=
624103988_3360"><br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3362"># LAY=
ER_CONF_VERSION is increased each time build/conf/bblayers.conf<br class=3D=
"" id=3D"yui_3_16_0_1_1449624103988_3364"># changes incompatibly<br class=
=3D"" id=3D"yui_3_16_0_1_1449624103988_3366">LCONF_VERSION =3D "6"<br class=
=3D"" id=3D"yui_3_16_0_1_1449624103988_3368"><br class=3D"" id=3D"yui_3_16_=
0_1_1449624103988_3370">BBPATH =3D "${TOPDIR}"<br class=3D"" id=3D"yui_3_16=
_0_1_1449624103988_3372">BBFILES ?=3D ""<br class=3D"" id=3D"yui_3_16_0_1_1=
449624103988_3374"><br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3376">BB=
LAYERS ?=3D " \<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3378">&nbsp;=
 /home/vidal/wkg/yocto/kernel_test/poky/meta \<br class=3D"" id=3D"yui_3_16=
_0_1_1449624103988_3380">&nbsp; /home/vidal/wkg/yocto/kernel_test/poky/meta=
-yocto \<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3382">&nbsp; /home/=
vidal/wkg/yocto/kernel_test/poky/meta-yocto-bsp \<br class=3D"" id=3D"yui_3=
_16_0_1_1449624103988_3384">&nbsp; /home/vidal/wkg/yocto/kernel_test/poky/m=
eta-raspberrypi \<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3386">&nbs=
p; /home/vidal/wkg/yocto/kernel_test/poky/meta-oe \<br class=3D"" id=3D"yui=
_3_16_0_1_1449624103988_3388">&nbsp; /home/vidal/wkg/yocto/kernel_test/poky=
/meta-python \<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3390">&nbsp; =
/home/vidal/wkg/yocto/kernel_test/poky/meta-multimedia \<br class=3D"" id=
=3D"yui_3_16_0_1_1449624103988_3392">&nbsp; /home/vidal/wkg/yocto/kernel_te=
st/poky/meta-gnome \<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3394">&=
nbsp; /home/vidal/wkg/yocto/kernel_test/poky/meta-browser \<br class=3D"" i=
d=3D"yui_3_16_0_1_1449624103988_3396">&nbsp; "<br class=3D"" id=3D"yui_3_16=
_0_1_1449624103988_3398">BBLAYERS_NON_REMOVABLE ?=3D " \<br class=3D"" id=
=3D"yui_3_16_0_1_1449624103988_3400">&nbsp; /home/vidal/wkg/yocto/kernel_te=
st/poky/meta \<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3402">&nbsp; =
/home/vidal/wkg/yocto/kernel_test/poky/meta-yocto \<br class=3D"" id=3D"yui=
_3_16_0_1_1449624103988_3404">&nbsp; "<br class=3D"" id=3D"yui_3_16_0_1_144=
9624103988_3406">Any and all help is appreciated.<br class=3D"" id=3D"yui_3=
_16_0_1_1449624103988_3408"><br class=3D"" id=3D"yui_3_16_0_1_1449624103988=
_3410">This is the goal of the build.<br class=3D"" id=3D"yui_3_16_0_1_1449=
624103988_3412"><br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3414">Trans=
ferred to my google dropbox core-image-sato120815.zip<br class=3D"" id=3D"y=
ui_3_16_0_1_1449624103988_3416">If you do not access let me know and I will=
 add you to share list.<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3418=
"><br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3420">The sha1sum should =
be the following:<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3422">12dc=
5b4e9cb737696b71c6502ffd095f5a896720&nbsp; core-image-sato120815.zip<br cla=
ss=3D"" id=3D"yui_3_16_0_1_1449624103988_3424">In the file sha1sum.txt<br c=
lass=3D"" id=3D"yui_3_16_0_1_1449624103988_3426"><br class=3D"" id=3D"yui_3=
_16_0_1_1449624103988_3428">1.4 GB (1,449,293,907 bytes)<br class=3D"" id=
=3D"yui_3_16_0_1_1449624103988_3430"><br class=3D"" id=3D"yui_3_16_0_1_1449=
624103988_3432">This is what I used to transfer to a micro SD card.<br clas=
s=3D"" id=3D"yui_3_16_0_1_1449624103988_3434"><br class=3D"" id=3D"yui_3_16=
_0_1_1449624103988_3436">"gzip -dc /home/vidal/wkg/yocto/core-image-sato120=
815.zip | pv | dd bs=3D16M of=3D/dev/sdb"<br class=3D"" id=3D"yui_3_16_0_1_=
1449624103988_3438">3.64GB 0:08:01 [7.74MB/s]<br class=3D"" id=3D"yui_3_16_=
0_1_1449624103988_3440">The root passwd is raspberrypi<br class=3D"" id=3D"=
yui_3_16_0_1_1449624103988_3442"><br class=3D"" id=3D"yui_3_16_0_1_14496241=
03988_3444">This will fit on 4GB micro SD card.<br class=3D"" id=3D"yui_3_1=
6_0_1_1449624103988_3446"><br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3=
448">Provides the Linux 4.1.10 Kernel, git, gcc-5.2.0, OpenCV, Myhdl, Iveri=
log, <br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3450">gsl, yosys, arac=
hne-pnr, CAT-Board, rhea, Xstools and Gtkwave. &nbsp;<br class=3D"" id=3D"y=
ui_3_16_0_1_1449624103988_3452"><br class=3D"" id=3D"yui_3_16_0_1_144962410=
3988_3454">CAT-Board Features<br class=3D"" id=3D"yui_3_16_0_1_144962410398=
8_3456"><br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3458">* Lattice iCE=
40-HX8K FPGA in 256-pin BGA.<br class=3D"" id=3D"yui_3_16_0_1_1449624103988=
_3460">* 32 MByte SDRAM (16M x 16).<br class=3D"" id=3D"yui_3_16_0_1_144962=
4103988_3462">* Serial configuration flash (at least 2 Mbit).<br class=3D""=
 id=3D"yui_3_16_0_1_1449624103988_3464">* Three Grove connectors.<br class=
=3D"" id=3D"yui_3_16_0_1_1449624103988_3466">* Two PMOD connectors.<br clas=
s=3D"" id=3D"yui_3_16_0_1_1449624103988_3468">* One 20x2 header with 3.3V, =
ground and 18 FPGA I/Os.<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_347=
0">* Two SATA headers (for differential signals; don't know if they would w=
ork with SATA HDDs.)<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3472">*=
 DIP switch with four SPST switches.<br class=3D"" id=3D"yui_3_16_0_1_14496=
24103988_3474">* Two momentary pushbuttons.<br class=3D"" id=3D"yui_3_16_0_=
1_1449624103988_3476">* Four LEDs.<br class=3D"" id=3D"yui_3_16_0_1_1449624=
103988_3478">* 100 MHz oscillator.<br class=3D"" id=3D"yui_3_16_0_1_1449624=
103988_3480">* 5.0 V jack for external power supply.<br class=3D"" id=3D"yu=
i_3_16_0_1_1449624103988_3482">* 3.3 V and 1.2 V regulators.<br class=3D"" =
id=3D"yui_3_16_0_1_1449624103988_3484">* Adjustable voltage on one bank of =
FPGA I/O pins.<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3486">* 32 KB=
yte HAT EEPROM.<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3488">* 40-p=
in RPi GPIO header.<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3490"><b=
r class=3D"" id=3D"yui_3_16_0_1_1449624103988_3492">See Driving an Array of=
 LED Digits with the CAT Board at<br class=3D"" id=3D"yui_3_16_0_1_14496241=
03988_3494">https://hackaday.io/project/7982-cat-board. &nbsp;<br class=3D"=
" id=3D"yui_3_16_0_1_1449624103988_3496"><br class=3D"" id=3D"yui_3_16_0_1_=
1449624103988_3498">The prototype has been tested with Yocto &amp; RaspBian=
 on RPi2B.<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3500">With these =
tools, this combo is a complete development system, to develop, test and pr=
ogram<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3502">&nbsp;FPGA appli=
cations completly on the RPi2B and CAT-Board.<br class=3D"" id=3D"yui_3_16_=
0_1_1449624103988_3504"><br class=3D"" id=3D"yui_3_16_0_1_1449624103988_350=
6">The schematic is available at<br class=3D"" id=3D"yui_3_16_0_1_144962410=
3988_3508">https://raw.githubusercontent.com/xesscorp/CAT-Board/master/docs=
/Manual/pics/CAT_schematic.pdf<br class=3D"" id=3D"yui_3_16_0_1_14496241039=
88_3510"><br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3512">This should =
be around the cost as the StickIt-MB &amp; XulA2-LX9.&nbsp; Dave will be fi=
nalizing the price soon.<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_351=
4"><br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3516">The led digit prov=
ides a good method to test the CAT-Board and RPi2B.<br class=3D"" id=3D"yui=
_3_16_0_1_1449624103988_3518"><br class=3D"" id=3D"yui_3_16_0_1_14496241039=
88_3520"><br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3522">see xess.com=
<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3524"><br class=3D"" id=3D"=
yui_3_16_0_1_1449624103988_3526"><div dir=3D"ltr">Cheers,</div><div dir=3D"=
ltr" id=3D"yui_3_16_0_1_1449624103988_3211"><span id=3D"yui_3_16_0_1_144962=
4103988_3212">&nbsp;<br class=3D"" id=3D"yui_3_16_0_1_1449624103988_3220"><=
/span></div><div id=3D"yui_3_16_0_1_1449624103988_3209">&nbsp;</div><div id=
=3D"yui_3_16_0_1_1449624103988_3210" class=3D"signature">Edward Vidal Jr. e=
-mail develone@sbcglobal.net 915-595-1613</div></div></body></html>

------=_Part_423353_1006214046.1449624206707--
