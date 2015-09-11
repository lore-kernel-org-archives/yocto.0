Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97105E00C24; Fri, 11 Sep 2015 15:50:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.241 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm19-vm5.bullet.mail.ne1.yahoo.com
	(nm19-vm5.bullet.mail.ne1.yahoo.com [98.138.91.241])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25F97E00B68
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 15:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1442011817; bh=SzJMjxAAesZHnsu3UUgNTPbkMiRK5hXem2Ba0Gex70o=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=X3nHL8QuwicxAF7i5lJZcBeKJwCkK1DZ9WiDZw8bLoJyVNlWOcqS+OI9Epeqc/aXO+FMcuixkEv9yWPJN2POXbKa7ur1j/clVX9hjfPz+o0uP/H/0CZTtOmyRePe+M38JekdL/fERncUYfiO1CttR/EJ5RxekSGZx4usyv3U3tZoyhz50IMBT8gQUzlr814U2qnsIeoTgjK8jakLBf6EmyvEVnb0Asj58hIbQfQ8Z3oM+T3W0RVQdCCfZbQJ9wEDfpZuVDBUBtu4vYajkfHgl1BZkzjPclB4UALuVAol+VpA6TtxE17S0QTEC48/ulTN0AJqj3O88sUn6t/yUR3feA==
Received: from [98.138.100.114] by nm19.bullet.mail.ne1.yahoo.com with NNFMP;
	11 Sep 2015 22:50:17 -0000
Received: from [98.138.87.8] by tm105.bullet.mail.ne1.yahoo.com with NNFMP;
	11 Sep 2015 22:50:16 -0000
Received: from [127.0.0.1] by omp1008.mail.ne1.yahoo.com with NNFMP;
	11 Sep 2015 22:50:16 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 975941.81140.bm@omp1008.mail.ne1.yahoo.com
X-YMail-OSG: JZhDq0IVM1mdS_lzJwperUaMj3k61C22afAU_pwaXvNQ0.xH47rme3jxa5D6a.e
	jvTfNgbHu0nqlB09lDyzD_R8fA0wR0w21cWWFdDK3ZmyIKUG3F3Gvsx_GkI2T17hnLm8pTUtTJ3u
	o2VRmx1NB5_h7mWrY64TY99acqWQ6PQY86lP9aPhuXTSq4rcPJ8TLhDta73GPOxa_uoN8Nob.xme
	pKgq02uxrdbyDjz4ol7edOi7Ry0tQ0wrVOiRTgiknUWaqKOtGR0xGVJSuKdGA2G8_JFgHMDAyeFG
	h31_PCUF7Vw6.qg2E6wmc.2UcZFKK0gAFD2_vxuuZDuXGnc5.gXedH0uH5N_fkKbBzUR363tzQ1q
	1H.ov1ob44eO5oJl3Bu73who9fcxcxVF_AAWDgXnwMM9KA0yuk5mcQK6jzox8q1rmZ_IcY7ONKXG
	EwT_e5aJwIUBcqKKDnWfmBkG_0zRyCCxEYltTTAbq4yHs81GystvQPb66436C0xtCiQ7Qs57LLrh
	gPiN7gPJc3QvRjBDTpV.7aGs242eP8nzXOOGLod7UKBwhI0WdEVwA9gxNQTLvtxY-
Received: by 98.138.101.161; Fri, 11 Sep 2015 22:50:16 +0000 
Date: Fri, 11 Sep 2015 22:50:14 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <2145163550.1408159.1442011814253.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi] rootfs fails
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
X-List-Received-Date: Fri, 11 Sep 2015 22:50:22 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1408158_96435939.1442011814248"

------=_Part_1408158_96435939.1442011814248
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,
My rootfs is failing when adding liba52, libmad, libav. x264, and libav.

This is for a raspberrypi2.=20
I updated the meta data on 09/10/15.

meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D "fido:d4585fa23d56a58c583ee33db067a231=
77a936b1"
meta-raspberrypi=C2=A0 =3D "fido:17dad9328b100beda1cf870c9075e509b5cbfa90"
meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20
meta-multimedia=C2=A0=C2=A0=20
meta-python=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20
meta-gnome=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "fido:d4585fa23d56=
a58c583ee33db067a23177a936b1"
meta-browser=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "fido:ca96f4326345dcd779fc53=
9877a04f069f431749"

This is the IMAGE_INSTALL_append in my local.conf

IMAGE_INSTALL_append =3D " intelhex python-bitstring pyusb PyPubSub git \
=C2=A0chkconfig tar v4l-utils tree python-imaging python-pip \
=C2=A0jasper gsl hexedit man openjpeg tcl tk liba52=C2=A0 libmad libav x264=
=C2=A0 libav"=20

This errors below occurred when I added the following liba52=C2=A0 libmad l=
ibav x264=C2=A0 libav to my IMAGE_INSTALL_append

WARNING: QA Issue: ELF binary '/home/vidal/wkg/yocto/RaspberryPi2/poky/buil=
d/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/x264/r2491+gitAUTOI=
NC+c8a773ebfc-r0/packages-split/x264/usr/lib/libx264.so.144' has relocation=
s in .text [textrel]
WARNING: QA Issue: ELF binary '/home/vidal/wkg/yocto/RaspberryPi2/poky/buil=
d/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/libav/9.18-r0/packa=
ges-split/libavcodec/usr/lib/libavcodec.so.54.35.0' has relocations in .tex=
t [textrel]
ERROR: Error: The image creation script '/home/vidal/wkg/yocto/RaspberryPi2=
/poky/build/tmp/work/raspberrypi2-poky-linux-gnueabi/core-image-sato/1.0-r0=
/temp/create_image.rpi-sdimg' returned 2:
expr: non-integer argument
WARNING: exit code 2 from a shell command.

ERROR: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /home/vidal/wkg/yocto/RaspberryPi2/pok=
y/build/tmp/work/raspberrypi2-poky-linux-gnueabi/core-image-sato/1.0-r0/tem=
p/log.do_rootfs.1142

In the ~/wkg/yocto/RaspberryPi2/poky/build/tmp/work/cortexa7hf-vfp-vfpv4-ne=
on-poky-linux-gnueabi I can see that the deploy-rpms were generated in each=
 folder liba52=C2=A0 libmad libav x264=C2=A0 libav.
The file core-image-sato-raspberrypi2-20150911214448.rootfs.tar.bz2 gets ge=
nerated which can see in the /home/vidal/wkg/yocto/RaspberryPi2/poky/build/=
tmp/work/raspberrypi2-poky-linux-gnueabi/core-image-sato/1.0-r0/temp/log.do=
_rootfs.1142These and other packages were added with the meta-data I had do=
wnload on 07/20/15.=C2=A0 I am using the fido branch.

Thanks in advance for your help in solving this problems.=C2=A0Edward Vidal=
 Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_1408158_96435939.1442011814248
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1442007464364_2424"><span=
 class=3D"" id=3D"yui_3_16_0_1_1442007464364_2559">Hello All,<br class=3D""=
>My rootfs is failing when adding liba52, libmad, libav. x264, and libav.<b=
r class=3D""><br class=3D"">This is for a raspberrypi2. <br class=3D"">I up=
dated the meta data on 09/10/15.<br class=3D""><br class=3D"">meta-yocto-bs=
p&nbsp;&nbsp;&nbsp; =3D "fido:d4585fa23d56a58c583ee33db067a23177a936b1"<br =
class=3D"">meta-raspberrypi&nbsp; =3D "fido:17dad9328b100beda1cf870c9075e50=
9b5cbfa90"<br class=3D"">meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; <br class=3D"">meta-multimedia&nbsp;&nbsp; <br class=3D""=
>meta-python&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br class=3D"">meta-gnome&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "fido:d4585fa23d56a58c583ee33=
db067a23177a936b1"<br class=3D"">meta-browser&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D "fido:ca96f4326345dcd779fc539877a04f069f431749"<br class=3D""><br clas=
s=3D"">This is the IMAGE_INSTALL_append in my local.conf<br class=3D""><br =
class=3D"">IMAGE_INSTALL_append =3D " intelhex python-bitstring pyusb PyPub=
Sub git \<br class=3D"">&nbsp;chkconfig tar v4l-utils tree python-imaging p=
ython-pip \<br class=3D"">&nbsp;jasper gsl hexedit man openjpeg tcl tk liba=
52&nbsp; libmad libav x264&nbsp; libav" <br class=3D""><br class=3D"">This =
errors below occurred when I added the following liba52&nbsp; libmad libav =
x264&nbsp; libav to my IMAGE_INSTALL_append<br class=3D""><br class=3D"">WA=
RNING: QA Issue: ELF binary '/home/vidal/wkg/yocto/RaspberryPi2/poky/build/=
tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/x264/r2491+gitAUTOINC=
+c8a773ebfc-r0/packages-split/x264/usr/lib/libx264.so.144' has relocations =
in .text [textrel]<br class=3D"">WARNING: QA Issue: ELF binary '/home/vidal=
/wkg/yocto/RaspberryPi2/poky/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-=
linux-gnueabi/libav/9.18-r0/packages-split/libavcodec/usr/lib/libavcodec.so=
.54.35.0' has relocations in .text [textrel]<br class=3D"">ERROR: Error: Th=
e image creation script '/home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/=
work/raspberrypi2-poky-linux-gnueabi/core-image-sato/1.0-r0/temp/create_ima=
ge.rpi-sdimg' returned 2:<br class=3D"">expr: non-integer argument<br class=
=3D"">WARNING: exit code 2 from a shell command.<br class=3D""><br class=3D=
"">ERROR: Function failed: do_rootfs<br class=3D"">ERROR: Logfile of failur=
e stored in: /home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/work/raspber=
rypi2-poky-linux-gnueabi/core-image-sato/1.0-r0/temp/log.do_rootfs.1142<br =
class=3D""><br class=3D"">In the ~/wkg/yocto/RaspberryPi2/poky/build/tmp/wo=
rk/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi I can see that the deploy-r=
pms were generated in each folder liba52&nbsp; libmad libav x264&nbsp; liba=
v.<br class=3D"">The file core-image-sato-raspberrypi2-20150911214448.rootf=
s.tar.bz2 gets generated which can see in the</span><span class=3D"" id=3D"=
yui_3_16_0_1_1442007464364_2559"> /home/vidal/wkg/yocto/RaspberryPi2/poky/b=
uild/tmp/work/raspberrypi2-poky-linux-gnueabi/core-image-sato/1.0-r0/temp/l=
og.do_rootfs.1142</span><span id=3D"yui_3_16_0_1_1442007464364_2559"><span =
class=3D"" id=3D"yui_3_16_0_1_1442007464364_2559"></span></span></div><div =
dir=3D"ltr"><span id=3D"yui_3_16_0_1_1442007464364_2559"><span class=3D"" i=
d=3D"yui_3_16_0_1_1442007464364_2559"></span>These and other packages were =
added with the meta-data I had download on 07/20/15.&nbsp; I am using the f=
ido branch.<br class=3D""><br class=3D"">Thanks in advance for your help in=
 solving this problems.</span></div><div>&nbsp;</div><div class=3D"signatur=
e">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613</div></div><=
/body></html>

------=_Part_1408158_96435939.1442011814248--
