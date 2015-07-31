Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE7D8E00B63; Fri, 31 Jul 2015 07:55:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.90.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm12.bullet.mail.ne1.yahoo.com (nm12.bullet.mail.ne1.yahoo.com
	[98.138.90.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41126E009E5
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 07:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1438354530; bh=racZXN9waaG6v1bjI8bfDva4yLHqlHIid9j0yKEw5yc=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=ViHevM4Ngb8I6Gx4V8dgo4gOGTsg1zz/tWdCgeUXThwNViJiZ+RWAf8hLaKtBfjbU8BRoKYbgbiVyIlfgHdhOTItM2sf+iWIRbTzWBmO39AkzoFQOzBpA00ULaQyHNKLj+e5YNofV7l12WI5UOvhB6bpf2mUuDUcXtdd1d/eT3APIao58CLv9FevCq7MFTBSzVCrlj/YSGvwOdtRmuFG3e/6bUdYdEa8xXHvMymlL+SeuMELwbOVWEzPuorQ/Ax4stTsvM0eC/cNmPfPVrduMvmNoPq7II0m4Umaekv2j39I90RLNB5DjO3PDfjgXljjb2dDFsGyWjqHqBWAUI7iQw==
Received: from [98.138.100.117] by nm12.bullet.mail.ne1.yahoo.com with NNFMP;
	31 Jul 2015 14:55:30 -0000
Received: from [98.138.226.162] by tm108.bullet.mail.ne1.yahoo.com with NNFMP;
	31 Jul 2015 14:55:30 -0000
Received: from [127.0.0.1] by omp1063.mail.ne1.yahoo.com with NNFMP;
	31 Jul 2015 14:55:30 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 827414.8715.bm@omp1063.mail.ne1.yahoo.com
X-YMail-OSG: 8BOaDZAVM1klR6BmElkoJnJTR_ybq5pNEN_73QgflpL4UxoAKd7DXAeqJGDpLFQ
	qJYHGD0N.1Q5j6nJPyZADHQocOIa0kampWZAC3SRsqoUaqCF.LXeW1mROJ3oGF.zMMYC5vSF.YYk
	Icu7b0SLVu9UmKBiSX9F8rEt0vOhaFzzxALA5ouhgXyMQdfyBKU5HzdMceX9m3Jtq47WVvBBJ6uW
	v_gM1bonz5jzaAYFWQCEaK4hcM084TqaUSfaGl3rHuiLFlZgzuhJ.qeOZl5GyIFs8IXR16gVXeox
	boSBNVrktkC8HVRQi0Mmr_bu3sSAR2eaaoWNa2Zqa2fJWP57QQ5ueu2AXYDRYIskkqf6gjtmY3fc
	l1c_W2BOGpCOy10QDh2fmriyXtP1thfisXHY.lWIzr7ve.OkPr6X33s2t_KfhR7oMwAiQtTyQKWy
	H5SstrjCHf8YOt4EbA5IXwd92qHfI8gnX1HC54Wqj_dGu3Y0ydAZFHdNgeDfECKZKbWbbHrhf0H4
	Rb3Z43VRRQW0XV51QRZe_cUTa0xDY0WCRhlxRH88dqHMnk.1NYhPKJnGMphQNi5I-
Received: by 98.138.101.167; Fri, 31 Jul 2015 14:55:30 +0000 
Date: Fri, 31 Jul 2015 14:55:28 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <557531611.5819665.1438354528491.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: Recipes not in poky gtkwave fails on configure depends
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
X-List-Received-Date: Fri, 31 Jul 2015 14:55:34 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_5819664_2024311881.1438354528489"

------=_Part_5819664_2024311881.1438354528489
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All
All of my work is at https://github.com/develone/raspberrypi2_yocto.git.
see the gtkwave_3.6.66.bb
I am working on a few tools for FPGA Development.
This include MyHDL, GTKWAVE, Iverilog, and XSTOOLs.
These tools (MyHDL) lets you create either verilog or VHDL files.
MyHDL also provides Simulation & Co-Simulation of HDL.
MyHDL is Python package, I have already created a recipe
python-myhdl_1.0.0.bb that generated an RPM which I installed=20
on core-image-sato.=20

I want to thank Gary Thomas and Ross Burton for the help
on the core-image-sato for the RaspBerry Pi 2 B. and getting
the python-myhdl_1.0.0.bb working.

In addition, GTKWAVE provides a Graphical visual of the Signals=20
used in the Simulation. I installed GTKWAVE from source on a
core-image-sato with (./configure, make and make install).
The core-image-sato had the following apps "kernel-dev xterm git \
=C2=A0jasper gsl gsl-dev python-netserver python-pygtk python-pygtk-dev \
=C2=A0python-numpy liba52 liba52-dev libmad libmad-dev libmad-staticdev \
=C2=A0chkconfig v4l-utils python-imaging parted python-distribute \
=C2=A0python-pyrex python-pexpect gperf tree libav libav-dev \
=C2=A0x264 x264-dev libav libav-dev opencv opencv-samples cmake \
=C2=A0opencv-apps python-opencv tcl tk"=20
I have a recipe gtkwave_3.6.66.bb that fectchs gtkwave source
=C2=A0from sourceforge but fails on=20
With the following error.
checking for Tcl configuration... configure: error: Can't find Tcl configur=
ation definitions. Use --with-tcl to specify a directory containing tclConf=
ig.sh
Configure failed. The contents of all config.log files follows to aid debug=
ging
ERROR: oe_runconf failed


XSTOOLs provides the capability to transfer to XulA2 the bit file and to co=
mmunicate
with the FPGA during the run-time.

Iverilog provides the Co-Simulated to work with MyHDL.

I have installed this from source on the above core-image-sato the has
several apps.


I believe that this would be a great addition to the Yocto effort.
Let me what needs to be done to get this apps into the Yocto framework.
Thanks in advance.=C2=A0 =C2=A0Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_5819664_2024311881.1438354528489
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1438354320334_3270"><span=
>Hello All</span></div><div id=3D"yui_3_16_0_1_1438354320334_3334" dir=3D"l=
tr"><br><span class=3D"" id=3D"yui_3_16_0_1_1438354320334_3337">All of my w=
ork is at <a id=3D"yui_3_16_0_1_1438354320334_3335" href=3D"https://github.=
com/develone/raspberrypi2_yocto.git.">https://github.com/develone/raspberry=
pi2_yocto.git.</a><br class=3D""></span></div><div dir=3D"ltr"><span>see th=
e gtkwave_3.6.66.bb<br></span></div><div dir=3D"ltr"><span>I am working on =
a few tools for FPGA Development.<br class=3D"">This include MyHDL, GTKWAVE=
, Iverilog, and XSTOOLs.<br class=3D"">These tools (MyHDL) lets you create =
either verilog or VHDL files.<br class=3D"">MyHDL also provides Simulation =
&amp; Co-Simulation of HDL.<br class=3D"">MyHDL is Python package, I have a=
lready created a recipe<br class=3D"">python-myhdl_1.0.0.bb that generated =
an RPM which I installed <br class=3D"">on core-image-sato. <br class=3D"">=
<br class=3D"">I want to thank Gary Thomas and Ross Burton for the help<br =
class=3D"">on the core-image-sato for the RaspBerry Pi 2 B. and getting<br =
class=3D"">the python-myhdl_1.0.0.bb working.<br class=3D""><br class=3D"">=
In addition, GTKWAVE provides a Graphical visual of the Signals <br class=
=3D"">used in the Simulation. I installed GTKWAVE from source on a<br class=
=3D"">core-image-sato with (./configure, make and make install).<br class=
=3D"">The core-image-sato had the following apps "kernel-dev xterm git \<br=
 class=3D"">&nbsp;jasper gsl gsl-dev python-netserver python-pygtk python-p=
ygtk-dev \<br class=3D"">&nbsp;python-numpy liba52 liba52-dev libmad libmad=
-dev libmad-staticdev \<br class=3D"">&nbsp;chkconfig v4l-utils python-imag=
ing parted python-distribute \<br class=3D"">&nbsp;python-pyrex python-pexp=
ect gperf tree libav libav-dev \<br class=3D"">&nbsp;x264 x264-dev libav li=
bav-dev opencv opencv-samples cmake \<br class=3D"">&nbsp;opencv-apps pytho=
n-opencv tcl tk" <br class=3D"">I have a recipe gtkwave_3.6.66.bb that fect=
chs gtkwave source<br class=3D"">&nbsp;from sourceforge but fails on <br cl=
ass=3D"">With the following error.<br class=3D"">checking for Tcl configura=
tion... configure: error: Can't find Tcl configuration definitions. Use --w=
ith-tcl to specify a directory containing tclConfig.sh<br class=3D"">Config=
ure failed. The contents of all config.log files follows to aid debugging<b=
r class=3D"">ERROR: oe_runconf failed<br class=3D""><br class=3D""><br clas=
s=3D"">XSTOOLs provides the capability to transfer to XulA2 the bit file an=
d to communicate<br class=3D"">with the FPGA during the run-time.<br class=
=3D""><br class=3D"">Iverilog provides the Co-Simulated to work with MyHDL.=
<br class=3D""><br class=3D"">I have installed this from source on the abov=
e core-image-sato the has<br class=3D"">several apps.<br class=3D""><br cla=
ss=3D""><br class=3D"">I believe that this would be a great addition to the=
 Yocto effort.<br class=3D"">Let me what needs to be done to get this apps =
into the Yocto framework.<br class=3D"">Thanks in advance.&nbsp; </span></d=
iv><div>&nbsp;</div><div><div>Edward Vidal Jr.<br>e-mail develone@sbcglobal=
.net<br>915-595-1613</div></div></div></body></html>

------=_Part_5819664_2024311881.1438354528489--
