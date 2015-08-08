Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F574E00707; Sat,  8 Aug 2015 07:50:52 -0700 (PDT)
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
	*      [98.138.91.95 listed in list.dnswl.org]
Received: from nm19-vm2.bullet.mail.ne1.yahoo.com
	(nm19-vm2.bullet.mail.ne1.yahoo.com [98.138.91.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7819E00343
	for <yocto@yoctoproject.org>; Sat,  8 Aug 2015 07:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1439045441; bh=9Vs3by4QgDjb2qqDOY5YYr/xXrsvRVltvLDLLAPhXnU=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=ulxT6XoukWrTyXmN4ZcTuI49Ws6EbJ7WS3A8r4+9mkL5IDqnqliCp9yQsTiZxO6vHnIwHaesP78fAA0pEcCMDysqeU3h2zcW65S63FxvzSu84cM1jVHdB1jsN4J2Az/I2GKll1rifnZX+5j0ytUTS89TBWEoxnXlBxcmUwxQ/pLpBqmzyvHJJg/swSkOFD7Lofg/A7qFVWWRu8VWF1AjBWB+FI5KMjC2clqrYrTFYhzBS5y7wbKu65xFZJ0Z/0MoSAs6yY4D518BDZJ1kb4sbm+pwfMT/HN07WLDOJJHpTKf7yXnPsPQkfljn5aXlGebT1jN9+UJ4cT0ytx9hUN5wg==
Received: from [98.138.100.102] by nm19.bullet.mail.ne1.yahoo.com with NNFMP;
	08 Aug 2015 14:50:41 -0000
Received: from [98.138.89.195] by tm101.bullet.mail.ne1.yahoo.com with NNFMP;
	08 Aug 2015 14:50:41 -0000
Received: from [127.0.0.1] by omp1053.mail.ne1.yahoo.com with NNFMP;
	08 Aug 2015 14:50:41 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 322385.70564.bm@omp1053.mail.ne1.yahoo.com
X-YMail-OSG: 0TpmRNQVM1k1AuJutojTe26ftW73Yu7cP_57.moxES88OI9CChY4O0J15lAbTv4
	zFamsS_g9SdJxRfzt8lQqCo_RXAdMBQqQr1XyDNoKR3XStHEMT21kJzPqDrt4p0khBnXKM1WU.5A
	vAJhSb1QX._4IMZzEG9nINTynpdLvI8n52gmczfvDoKqs3D40cgfJAGZEBM3pEr81wn7gvcxOkEZ
	gmK.S9rrNb0j3RZPeYm9oEDl3FOdEPDi6G1FjzMpyg6pJ.oTGNEJQguSEKQkWX4oDeoJ5VxlweTr
	n2Jy0jxl59TVzeizLMpzcyRYY.jpehEAGJgJzlgvVRfhooJnAl6R4f760w185pSGmUxb6FHcLxGm
	bRRamk2vbHI9pUZMO7NxFi2svwHiUJgs9k3MtWjVFuicpaeiHVUgxPi7_SZkC07FCW12yDw80_X4
	GlTavcyZFI8oZKS2n8vVg1kiq9nznyN6xNw21HDMmIRsZz4rKKHWscGS78ioXELW1KqTvbut3b97
	lpMXg0xyzPoR249.WEUQ.a9RVpRkxb1RCQEJmhr7NMfLB7auTXcU2sNID03YLRrc-
Received: by 98.138.105.195; Sat, 08 Aug 2015 14:50:40 +0000 
Date: Sat, 8 Aug 2015 14:50:40 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1862141010.1283763.1439045440428.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: kernel src included in core-image
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
X-List-Received-Date: Sat, 08 Aug 2015 14:50:52 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1283762_1158982605.1439045440422"

------=_Part_1283762_1158982605.1439045440422
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,I am working on Raspberry Pi 2 B and need the kernel src included=
.This is what I currently including on core-image-sato build.
=C2=A0kernel-dev xterm git \
=C2=A0jasper gsl gsl-dev python-netserver python-pygtk python-pygtk-dev \
=C2=A0python-numpy liba52 liba52-dev libmad libmad-dev libmad-staticdev \
=C2=A0chkconfig v4l-utils python-imaging parted python-distribute \
=C2=A0python-pyrex python-pexpect gperf tree libav libav-dev \
=C2=A0x264 x264-dev libav libav-dev opencv opencv-samples cmake \
=C2=A0opencv-apps python-opencv tcl tk rpi-gpio python-myhdl python-bitstri=
ng \
=C2=A0PyPubSub tar intelhex pyusb argparse pv openjpeg libftdi"I am working=
 on a fido buildmeta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D "fido:0f8d89ce66cfffcc=
c9911d6c61470a585173b79d"
meta-raspberrypi=C2=A0 =3D "fido:7457bf182c8fd550ec877ecd786a3edd16e65495"
meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "fi=
do:0f8d89ce66cfffccc9911d6c61470a585173b79d"

I see many rpms in this area=20
poky/build/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/3.18.=
11+gitd64fa8121fca9883d6fb14ca06d2abf66496195e-r0/deploy-rpms/raspberrypi2T=
he installed rpm with kernel is 1381.


Thanks in advance.

Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_1283762_1158982605.1439045440422
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1439042989042_2659"><span>Hello All,<=
/span></div><div><span>I am working on Raspberry Pi 2 B and need the kernel=
 src included.</span></div><div id=3D"yui_3_16_0_1_1439042989042_2735"><spa=
n>This is what I currently including on core-image-sato build.</span></div>=
<div><span><br></span></div><div dir=3D"ltr"><span>&nbsp;kernel-dev xterm g=
it \<br class=3D"">&nbsp;jasper gsl gsl-dev python-netserver python-pygtk p=
ython-pygtk-dev \<br class=3D"">&nbsp;python-numpy liba52 liba52-dev libmad=
 libmad-dev libmad-staticdev \<br class=3D"">&nbsp;chkconfig v4l-utils pyth=
on-imaging parted python-distribute \<br class=3D"">&nbsp;python-pyrex pyth=
on-pexpect gperf tree libav libav-dev \<br class=3D"">&nbsp;x264 x264-dev l=
ibav libav-dev opencv opencv-samples cmake \<br class=3D"">&nbsp;opencv-app=
s python-opencv tcl tk rpi-gpio python-myhdl python-bitstring \<br class=3D=
"">&nbsp;PyPubSub tar intelhex pyusb argparse pv openjpeg libftdi"</span></=
div><div id=3D"yui_3_16_0_1_1439042989042_2768"><div id=3D"yui_3_16_0_1_143=
9042989042_2780">I am working on a fido build</div><div dir=3D"ltr" id=3D"y=
ui_3_16_0_1_1439042989042_2818">meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D "fido:=
0f8d89ce66cfffccc9911d6c61470a585173b79d"<br class=3D"">meta-raspberrypi&nb=
sp; =3D "fido:7457bf182c8fd550ec877ecd786a3edd16e65495"<br class=3D"">meta-=
oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "fido:0f=
8d89ce66cfffccc9911d6c61470a585173b79d"<br></div><div dir=3D"ltr" id=3D"yui=
_3_16_0_1_1439042989042_2835"><br></div><div id=3D"yui_3_16_0_1_14390429890=
42_12432" dir=3D"ltr">I see many rpms in this area <br></div><div dir=3D"lt=
r">poky/build/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/3.=
18.11+gitd64fa8121fca9883d6fb14ca06d2abf66496195e-r0/deploy-rpms/raspberryp=
i2</div><div dir=3D"ltr">The installed rpm with kernel is 1381.</div><div d=
ir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_143=
9042989042_12373"><br></div><div>Thanks in advance.</div><div><br></div><di=
v><br></div></div><div><div>Edward Vidal Jr.<br>e-mail develone@sbcglobal.n=
et<br>915-595-1613</div></div></div></body></html>

------=_Part_1283762_1158982605.1439045440422--
