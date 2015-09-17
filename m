Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BEC5E00E5F; Thu, 17 Sep 2015 12:39:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02626E00C67
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2015 12:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1442518747; bh=WPOtOQMXkyzQrGu+F1epteWLRcLFfKuVLW8OV9upyak=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=eLITa60SeaiuBFhAuJynHvkLTEcaWdae56BQnMkZ3yE4mzbgBCyko5GX8GjBrRWbw6mq6p1TIaJbqB27hYxVm9iU23EQTevfUFjrDL0YEuMOxQ5VnYiArPqheHn7+OjmennZd43epRgqsZPWON1YXsXwvJ0ZBmjXmCsUSaQAZSwOjwWhF5lnQoV3z9I8pBL8122nlXth1ECBeyb54nuQjocE2Mh5nHn9/Fsy1dcrD2rAK0dEAxNqLTPZnPpa4xK/HD4hAsbDY5cKAhs+iauCaGPlNlTQMbcpcvrSCTDL8Dlb5jLpjqyDQttiurtrGmWN+2PPN2/0e6JN5i9+TLDsRQ==
Received: from [98.138.101.128] by nm12.bullet.mail.ne1.yahoo.com with NNFMP;
	17 Sep 2015 19:39:07 -0000
Received: from [98.138.89.192] by tm16.bullet.mail.ne1.yahoo.com with NNFMP;
	17 Sep 2015 19:39:07 -0000
Received: from [127.0.0.1] by omp1050.mail.ne1.yahoo.com with NNFMP;
	17 Sep 2015 19:39:07 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 431580.13907.bm@omp1050.mail.ne1.yahoo.com
X-YMail-OSG: 1D3UnEcVM1nkVvLx4JrGkZlhWIixm1ISiFuIzRqyE.KDx.YSW91Ra.sQI9XbLZ3
	Du259chIAsYPSzzxuDgIv0E8FtZDG4kbbgKa5Kl0UHqkUSzFW6jeC1ch_sKlX2jz024Dxec5uQRo
	2OuXy9V.yEnOKRr12xd_5Or.LXdsh1swOhzKA_.ULRSEbzmApPuAbnkACnQaFbBrXEHozG0Kbwyn
	fIgSz90P_hyOCa7NL3upWNhWx0DNca.cmCCIbuMy1HO7TkoRv1pxBWP1RK8Toy3qdmmgYV2xrjW1
	iYD99bCzT0g446Ei_v8JXWr8aYP4UQoVDmkJvmJjss2ez.QLr1EEkd4zP_8DJOjC4aM1g3WChgIt
	q9KXVsls.I9peK9BZScYivVdlQ2rOIYPfr1XGoRdZu3DRKb4bITPBOCeShQ9MERgGkTChDyfVatl
	dD9jnRyxG7SmXu9zBdZPcXPzB_GiSAmBO8JM1np6rVqHkmlC6pnEBbTOgVUf3Fp5JNrTDy3kAmYb
	s703Dv.XTqeZz6al40YPAyS9W6X1RIyO6vmFSkzcRIVZJAhuiD583q9Dd_pB7vA--
Received: by 98.138.105.196; Thu, 17 Sep 2015 19:39:06 +0000 
Date: Thu, 17 Sep 2015 19:38:58 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1687591718.1178781.1442518738101.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: [meta-raspberry] HDL tools for Raspberry PI 2 B
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
X-List-Received-Date: Thu, 17 Sep 2015 19:39:12 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1178780_630694733.1442518738095"

------=_Part_1178780_630694733.1442518738095
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,
I need recipes for the GTKWAVE, Iverilog, and (Yosys, arachne-pnr, and iceb=
ox). The missing packages are compiled on target=C2=A0 P2 B. =C2=A0 Plus th=
e recipes that I already have working below.
These were built on a custom image for the Raspberry Pi 2 B with Yocto.
The following are the recipes that I have=C2=A0 created
#=C2=A0=C2=A0=C2=A0 meta/recipes-devtools/python/PyPubSub_3.1.3.bb
#=C2=A0=C2=A0=C2=A0 meta/recipes-devtools/python/intelhex_1.5.bb
#=C2=A0=C2=A0=C2=A0 meta/recipes-devtools/python/python-bitstring_3.1.3.bb
#=C2=A0=C2=A0=C2=A0 meta/recipes-devtools/python/pyusb_1.0.0a3.bb
#=C2=A0=C2=A0=C2=A0 meta/recipes-devtools/python/rhea_0.1.0.bb
#=C2=A0=C2=A0=C2=A0 meta/recipes-devtools/python/xsconnect_0.1.3.bb
#=C2=A0=C2=A0=C2=A0 meta/recipes-devtools/python/xstools_0.1.30.bb
Most are the depends are for XSTOOLS.=C2=A0 This supports the XuLA2-LX9 & X=
uLA2-LX25 with StickIt-MB.
http://www.xess.com/=C2=A0 This would be a great addition to the Yocto tool=
s.=C2=A0 What are the steps to add recipes to the Yocto Project?=C2=A0 I am=
 using a Fido branch of Yocto that fetch on 07/20/15.The image is created i=
n 4hrs. on 6 core AMD running Ubuntu 12.04.
I just completed=C2=A0 building the tools (Yosys, arachne-pnr, and icebox)=
=C2=A0 for the Lattice ICE-40.=C2=A0=C2=A0 The complete image fits on a 4GB=
 SD card.

With the board that XESS is making this will be a standalone HDL developmen=
t system with GTKWave, XSTOOLs, MyDHDl, Iverilog, arachne-pnr(place and rou=
te), Yosys (Yosys is a framework for Verilog RTL synthesis), icebox(this wi=
ll not be needed since XESS is going to push the bit file with GPIO instead=
 of USB), and MyHDL.=C2=A0 These=C2=A0 fit on a 4GB SD card.

With the board that XESS is making this will be a standalone HDL developmen=
t system with GTKWave, XSTOOLs, MyDHDl, Iverilog, arachne-pnr(place and rou=
te), Yosys (Yosys is a framework for Verilog RTL synthesis), icebox(this wi=
ll not be needed since XESS is going to push the bit file with GPIO instead=
 of USB), and MyHDL.

Dave Vandenbout completed the layout of the ICE-40 board a few days ago.

=C2=A0=C2=A0=C2=A0 Lattice iCE40-HX8K FPGA in 256-pin BGA.
=C2=A0=C2=A0=C2=A0 32 MByte SDRAM (16M x 16).
=C2=A0=C2=A0=C2=A0 Serial configuration flash (at least 2 Mbit).
=C2=A0=C2=A0=C2=A0 Three Grove connectors.
=C2=A0=C2=A0=C2=A0 Two PMOD connectors.
=C2=A0=C2=A0=C2=A0 One 20x2 header with 3.3V, ground and 18 FPGA I/Os.
=C2=A0=C2=A0=C2=A0 Two SATA headers (for differential signals; don't know i=
f they would work with SATA HDDs.)
=C2=A0=C2=A0=C2=A0 DIP switch with four SPST switches.
=C2=A0=C2=A0=C2=A0 Two momentary pushbuttons.
=C2=A0=C2=A0=C2=A0 Four LEDs.
=C2=A0=C2=A0=C2=A0 32 KByte HAT EEPROM.
=C2=A0=C2=A0=C2=A0 40-pin RPi GPIO header.

Chris Felton provided MyHDL code to take python generates a verilog or VHDL=
 and the synthesis,=20
place and route and creates a bin file.
Below are the bench marks for Pi 2B and 2 systems running Ubuntu 12.04.

Yocto Pi 2B=C2=A0=C2=A0=C2=A0=20
=C2=A0=C2=A0=C2=A0=20
real=C2=A0=C2=A0=C2=A0 0m20.943s
user=C2=A0=C2=A0=C2=A0 0m12.210s
sys=C2=A0=C2=A0=C2=A0 0m0.500s
=C2=A0=C2=A0=C2=A0=20
Ubuntu 2 core=C2=A0=C2=A0=C2=A0=20
real=C2=A0=C2=A0=C2=A0 0m5.310s
user=C2=A0=C2=A0=C2=A0 0m1.865s
sys=C2=A0=C2=A0=C2=A0 0m0.197s
=C2=A0=C2=A0=C2=A0=20
Ubuntu 6 core=C2=A0=C2=A0=C2=A0=20
=C2=A0=C2=A0=C2=A0=20
real=C2=A0=C2=A0=C2=A0 0m3.956s
user=C2=A0=C2=A0=C2=A0 0m1.093s
sys=C2=A0=C2=A0=C2=A0 0m0.120s

These were built on a custom image for the Raspberry Pi 2 B with Yocto.=20

These tools would apply to other boards such a Zynq 7000.

I am also running openCV with 2 C920 cameras.

If you have any questions feel free to contact me.

=C2=A0=C2=A0Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_1178780_630694733.1442518738095
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1442494215668_34173" dir=3D"ltr"><spa=
n id=3D"yui_3_16_0_1_1442494215668_33903">Hi all,<br class=3D"">I need reci=
pes for the GTKWAVE, Iverilog, and (Yosys, arachne-pnr, and icebox). The mi=
ssing packages are compiled on target&nbsp; P2 B. &nbsp; Plus the recipes t=
hat I already have working below.<br class=3D"">These were built on a custo=
m image for the Raspberry Pi 2 B with Yocto.<br class=3D"">The following ar=
e the recipes that I have&nbsp; created<br class=3D"">#&nbsp;&nbsp;&nbsp; m=
eta/recipes-devtools/python/PyPubSub_3.1.3.bb<br class=3D"">#&nbsp;&nbsp;&n=
bsp; meta/recipes-devtools/python/intelhex_1.5.bb<br class=3D"">#&nbsp;&nbs=
p;&nbsp; meta/recipes-devtools/python/python-bitstring_3.1.3.bb<br class=3D=
"">#&nbsp;&nbsp;&nbsp; meta/recipes-devtools/python/pyusb_1.0.0a3.bb<br cla=
ss=3D"">#&nbsp;&nbsp;&nbsp; meta/recipes-devtools/python/rhea_0.1.0.bb<br c=
lass=3D"">#&nbsp;&nbsp;&nbsp; meta/recipes-devtools/python/xsconnect_0.1.3.=
bb<br class=3D"">#&nbsp;&nbsp;&nbsp; meta/recipes-devtools/python/xstools_0=
.1.30.bb<br class=3D"">Most are the depends are for XSTOOLS.&nbsp; This sup=
ports the XuLA2-LX9 &amp; XuLA2-LX25 with StickIt-MB.<br class=3D"">http://=
www.xess.com/&nbsp; This would be a great addition to the Yocto tools.&nbsp=
; What are the steps to add recipes to the Yocto Project?</span><span id=3D=
"yui_3_16_0_1_1442494215668_33903">&nbsp; I am using a Fido branch of Yocto=
 that fetch on 07/20/15.</span></div><div dir=3D"ltr"><span id=3D"yui_3_16_=
0_1_1442494215668_33903">The image is created in 4hrs. on 6 core AMD runnin=
g Ubuntu 12.04.</span></div><div id=3D"yui_3_16_0_1_1442494215668_33992" di=
r=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1442494215668_34209" dir=3D"ltr=
"><span class=3D"" id=3D"yui_3_16_0_1_1442494215668_33903">I just completed=
&nbsp; building=20
the tools (Yosys, arachne-pnr, and icebox)&nbsp; for the Lattice ICE-40.&nb=
sp;&nbsp; The complete image fits on a 4GB SD card.<br class=3D""><br class=
=3D"">With=20
the board that XESS is making this will be a standalone HDL development=20
system with GTKWave, XSTOOLs, MyDHDl, Iverilog, arachne-pnr(place and=20
route), Yosys (Yosys is a framework for Verilog RTL synthesis),=20
icebox(this will not be needed since XESS is going to push the bit file=20
with GPIO instead of USB), and MyHDL.</span><span id=3D"yui_3_16_0_1_144249=
4215668_33903">&nbsp; These&nbsp; fit on a 4GB SD card.<br class=3D""><br c=
lass=3D"">With the board that XESS is making this will be a standalone HDL =
development system with GTKWave, XSTOOLs, MyDHDl, Iverilog, arachne-pnr(pla=
ce and route), Yosys (Yosys is a framework for Verilog RTL synthesis), iceb=
ox(this will not be needed since XESS is going to push the bit file with GP=
IO instead of USB), and MyHDL.<br class=3D""><br class=3D"">Dave Vandenbout=
 completed the layout of the ICE-40 board a few days ago.<br class=3D""><br=
 class=3D"">&nbsp;&nbsp;&nbsp; Lattice iCE40-HX8K FPGA in 256-pin BGA.<br c=
lass=3D"">&nbsp;&nbsp;&nbsp; 32 MByte SDRAM (16M x 16).<br class=3D"">&nbsp=
;&nbsp;&nbsp; Serial configuration flash (at least 2 Mbit).<br class=3D"">&=
nbsp;&nbsp;&nbsp; Three Grove connectors.<br class=3D"">&nbsp;&nbsp;&nbsp; =
Two PMOD connectors.<br class=3D"">&nbsp;&nbsp;&nbsp; One 20x2 header with =
3.3V, ground and 18 FPGA I/Os.<br class=3D"">&nbsp;&nbsp;&nbsp; Two SATA he=
aders (for differential signals; don't know if they would work with SATA HD=
Ds.)<br class=3D"">&nbsp;&nbsp;&nbsp; DIP switch with four SPST switches.<b=
r class=3D"">&nbsp;&nbsp;&nbsp; Two momentary pushbuttons.<br class=3D"">&n=
bsp;&nbsp;&nbsp; Four LEDs.<br class=3D"">&nbsp;&nbsp;&nbsp; 32 KByte HAT E=
EPROM.<br class=3D"">&nbsp;&nbsp;&nbsp; 40-pin RPi GPIO header.<br class=3D=
""></span></div><div dir=3D"ltr"><span id=3D"yui_3_16_0_1_1442494215668_339=
03"><br></span></div><div id=3D"yui_3_16_0_1_1442494215668_34239" dir=3D"lt=
r"><span id=3D"yui_3_16_0_1_1442494215668_33903">Chris Felton provided MyHD=
L code to take python generates a verilog or VHDL and the synthesis, <br cl=
ass=3D""></span></div><div id=3D"yui_3_16_0_1_1442494215668_34291" dir=3D"l=
tr"><span class=3D"" id=3D"yui_3_16_0_1_1442494215668_33903">place and rout=
e and creates a bin file.</span></div><div id=3D"yui_3_16_0_1_1442494215668=
_34292" dir=3D"ltr"><br></div><div dir=3D"ltr"><span class=3D"" id=3D"yui_3=
_16_0_1_1442494215668_33903">Below are the bench marks for Pi 2B and 2 syst=
ems running Ubuntu 12.04.<br class=3D""><br class=3D"">Yocto Pi 2B&nbsp;&nb=
sp;&nbsp; <br class=3D"">&nbsp;&nbsp;&nbsp; <br class=3D"">real&nbsp;&nbsp;=
&nbsp; 0m20.943s<br class=3D"">user&nbsp;&nbsp;&nbsp; 0m12.210s<br class=3D=
"">sys&nbsp;&nbsp;&nbsp; 0m0.500s<br class=3D"">&nbsp;&nbsp;&nbsp; <br clas=
s=3D"">Ubuntu 2 core&nbsp;&nbsp;&nbsp; <br class=3D"">real&nbsp;&nbsp;&nbsp=
; 0m5.310s<br class=3D"">user&nbsp;&nbsp;&nbsp; 0m1.865s<br class=3D"">sys&=
nbsp;&nbsp;&nbsp; 0m0.197s<br class=3D"">&nbsp;&nbsp;&nbsp; <br class=3D"">=
Ubuntu 6 core&nbsp;&nbsp;&nbsp; <br class=3D"">&nbsp;&nbsp;&nbsp; <br class=
=3D"">real&nbsp;&nbsp;&nbsp; 0m3.956s<br class=3D"">user&nbsp;&nbsp;&nbsp; =
0m1.093s<br class=3D"">sys&nbsp;&nbsp;&nbsp; 0m0.120s</span><br><span id=3D=
"yui_3_16_0_1_1442494215668_33903"></span></div><div dir=3D"ltr"><span id=
=3D"yui_3_16_0_1_1442494215668_33903"><br></span></div><div id=3D"yui_3_16_=
0_1_1442494215668_34172" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1442494215668=
_33903">These were built on a custom image for the Raspberry Pi 2 B with Yo=
cto. </span><span id=3D"yui_3_16_0_1_1442494215668_33903"><br class=3D""><b=
r class=3D"">These tools would apply to other boards such a Zynq 7000.<br c=
lass=3D""></span></div><div dir=3D"ltr"><span id=3D"yui_3_16_0_1_1442494215=
668_33903"><br></span></div><div id=3D"yui_3_16_0_1_1442494215668_34341" di=
r=3D"ltr"><span id=3D"yui_3_16_0_1_1442494215668_33903">I am also running o=
penCV with 2 C920 cameras.<br class=3D""></span></div><div dir=3D"ltr"><spa=
n id=3D"yui_3_16_0_1_1442494215668_33903"><br></span></div><div id=3D"yui_3=
_16_0_1_1442494215668_34343" dir=3D"ltr"><span id=3D"yui_3_16_0_1_144249421=
5668_33903">If you have any questions feel free to contact me.<br class=3D"=
"><br class=3D"">&nbsp;</span></div><div>&nbsp;</div><div class=3D"signatur=
e">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613</div></div><=
/body></html>

------=_Part_1178780_630694733.1442518738095--
