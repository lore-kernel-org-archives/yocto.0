Return-Path: <josiasinacio@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 798D5E009D7; Tue, 19 Jan 2016 21:25:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.1 required=5.0 tests=BAYES_50,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW,XPRIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (josiasinacio[at]hotmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4955]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.190.145 listed in list.dnswl.org]
	*  2.0 XPRIO Has X-Priority header
Received: from BAY004-OMC3S7.hotmail.com (bay004-omc3s7.hotmail.com
	[65.54.190.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDA52E008C8
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 21:25:21 -0800 (PST)
Received: from BAY173-DS8 ([65.54.190.189]) by BAY004-OMC3S7.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Tue, 19 Jan 2016 21:25:20 -0800
X-TMN: [GqqQ+NHNov9eP3+1r1F5xntG46sWLINf]
X-Originating-Email: [josiasinacio@hotmail.com]
Message-ID: <BAY173-DS88E76BBDB2957BD352190C1C20@phx.gbl>
From: Josias Inacio da Silva Filho <josiasinacio@hotmail.com>
To: <yocto@yoctoproject.org>
Date: Wed, 20 Jan 2016 00:25:19 -0500
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-Mailer: Microsoft Windows Live Mail 16.4.3528.331
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
X-OriginalArrivalTime: 20 Jan 2016 05:25:20.0495 (UTC)
	FILETIME=[F478A7F0:01D15342]
Subject: Modify U-Boot without forking source
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
X-List-Received-Date: Wed, 20 Jan 2016 05:25:23 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00B9_01D15319.0ADDC950"

------=_NextPart_000_00B9_01D15319.0ADDC950
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

Is there a way of modifying U-Boot config without actually =
forking/branching its source? E.g. through a .bbapend or something, =
similar to how I change the kernel configuration. An example:

In my custom machine .conf file, I have:

UBOOT_MACHINE =3D =E2=80=9Cxilinx_zynqmp_ep_defconfig=E2=80=9D

That xilinx_zynqmp_ep_defconfig is here:
http://git.denx.de/?p=3Du-boot.git;a=3Dblob;f=3Dconfigs/xilinx_zynqmp_ep_=
defconfig;h=3Ddd2a9edffb8154f5722ca441ed97902ae557c279;hb=3DHEAD

However, I want to create my own config file for U-Boot rather than =
using xilinx_zynqmp_ep_defconfig. And inside that file, I could then =
change this:

CONFIG_DEFAULT_DEVICE_TREE=3D"zynqmp-ep108"

to

CONFIG_DEFAULT_DEVICE_TREE=3D"my_own_device_tree"

Or something similar. Is this possible? Also, if it is, where should =
=E2=80=9Cmy_own_device_tree=E2=80=9D file used in the example reside? It =
looks like U-Boot only looks inside its source (e.g. /arch/arm/dts) for =
those files.

Thanks,
Josias

------=_NextPart_000_00B9_01D15319.0ADDC950
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<STYLE><!--
.hmmessage P
{
margin:0px;
padding:0px
}
body.hmmessage
{
font-size: 12pt;
font-family:Calibri
}
--></STYLE>
</HEAD>
<BODY dir=3Dltr class=3Dhmmessage>
<DIV dir=3Dltr>
<DIV style=3D"FONT-FAMILY: 'Arial'; COLOR: #000000; FONT-SIZE: 10pt">
<DIV=20
style=3D"FONT-STYLE: normal; DISPLAY: inline; FONT-FAMILY: 'Calibri'; =
COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: normal; TEXT-DECORATION: =
none">
<DIV dir=3Dltr><SPAN>Hi all,</SPAN></DIV>
<DIV dir=3Dltr><SPAN></SPAN>&nbsp;</DIV>
<DIV dir=3Dltr><SPAN>Is there a way of modifying U-Boot config without =
actually=20
forking/branching its source? E.g. through a .bbapend or something, =
similar to=20
how I change the kernel configuration. </SPAN><SPAN><FONT size=3D2 =
face=3DArial>An=20
example:</FONT></SPAN></DIV>
<DIV dir=3Dltr><SPAN><FONT size=3D2 =
face=3DArial></FONT></SPAN>&nbsp;</DIV>
<DIV dir=3Dltr><SPAN><FONT size=3D2 face=3DArial>In my custom machine =
.conf file, I=20
have:</FONT></SPAN></DIV>
<DIV dir=3Dltr><SPAN><FONT size=3D2 =
face=3DArial></FONT></SPAN>&nbsp;</DIV>
<DIV dir=3Dltr><SPAN><FONT size=3D2 face=3DArial>UBOOT_MACHINE =3D=20
=E2=80=9Cxilinx_zynqmp_ep_defconfig=E2=80=9D</FONT></SPAN></DIV>
<DIV dir=3Dltr><SPAN><FONT size=3D2 =
face=3DArial></FONT></SPAN>&nbsp;</DIV>
<DIV dir=3Dltr><SPAN><FONT size=3D2 face=3DArial>That =
xilinx_zynqmp_ep_defconfig is=20
here:</FONT></SPAN></DIV>
<DIV dir=3Dltr><A=20
title=3Dhttp://git.denx.de/?p=3Du-boot.git;a=3Dblob;f=3Dconfigs/xilinx_zy=
nqmp_ep_defconfig;h=3Ddd2a9edffb8154f5722ca441ed97902ae557c279;hb=3DHEAD =

href=3D"http://git.denx.de/?p=3Du-boot.git;a=3Dblob;f=3Dconfigs/xilinx_zy=
nqmp_ep_defconfig;h=3Ddd2a9edffb8154f5722ca441ed97902ae557c279;hb=3DHEAD"=
>http://git.denx.de/?p=3Du-boot.git;a=3Dblob;f=3Dconfigs/xilinx_zynqmp_ep=
_defconfig;h=3Ddd2a9edffb8154f5722ca441ed97902ae557c279;hb=3DHEAD</A></DI=
V>
<DIV dir=3Dltr><FONT size=3D2 face=3DArial></FONT>&nbsp;</DIV>
<DIV dir=3Dltr><FONT size=3D2 face=3DArial>However, I want to create my =
own config=20
file for U-Boot rather than using xilinx_zynqmp_ep_defconfig. And inside =
that=20
file, I could then change this:</FONT></DIV>
<DIV dir=3Dltr><FONT size=3D2 face=3DArial></FONT>&nbsp;</DIV>
<DIV dir=3Dltr><SPAN=20
style=3D"LINE-HEIGHT: normal; WIDOWS: 1; TEXT-TRANSFORM: none; =
TEXT-INDENT: 0px; DISPLAY: inline !important; FONT-FAMILY: ; =
WHITE-SPACE: pre; FLOAT: none; LETTER-SPACING: normal; WORD-SPACING: =
0px; -webkit-text-stroke-width: 0px"><FONT=20
face=3D"Courier New"><FONT=20
style=3D"FONT-SIZE: =
9pt">CONFIG_DEFAULT_DEVICE_TREE=3D"zynqmp-ep108"</FONT></FONT></SPAN></DI=
V>
<DIV dir=3Dltr><SPAN=20
style=3D"LINE-HEIGHT: normal; WIDOWS: 1; TEXT-TRANSFORM: none; =
TEXT-INDENT: 0px; DISPLAY: inline !important; FONT-FAMILY: ; =
WHITE-SPACE: pre; FLOAT: none; LETTER-SPACING: normal; WORD-SPACING: =
0px; -webkit-text-stroke-width: 0px"><FONT=20
face=3D"Courier New"></FONT></SPAN>&nbsp;</DIV>
<DIV dir=3Dltr><SPAN=20
style=3D"LINE-HEIGHT: normal; WIDOWS: 1; TEXT-TRANSFORM: none; =
TEXT-INDENT: 0px; DISPLAY: inline !important; FONT-FAMILY: ; =
WHITE-SPACE: pre; FLOAT: none; LETTER-SPACING: normal; WORD-SPACING: =
0px; -webkit-text-stroke-width: 0px"><FONT=20
face=3D"Courier New">to</FONT></SPAN></DIV>
<DIV dir=3Dltr><SPAN=20
style=3D"LINE-HEIGHT: normal; WIDOWS: 1; TEXT-TRANSFORM: none; =
TEXT-INDENT: 0px; DISPLAY: inline !important; FONT-FAMILY: ; =
WHITE-SPACE: pre; FLOAT: none; LETTER-SPACING: normal; WORD-SPACING: =
0px; -webkit-text-stroke-width: 0px"><FONT=20
face=3D"Courier New"></FONT></SPAN>&nbsp;</DIV>
<DIV dir=3Dltr><SPAN=20
style=3D"LINE-HEIGHT: normal; WIDOWS: 1; TEXT-TRANSFORM: none; =
TEXT-INDENT: 0px; DISPLAY: inline !important; FONT-FAMILY: ; =
WHITE-SPACE: pre; FLOAT: none; LETTER-SPACING: normal; WORD-SPACING: =
0px; -webkit-text-stroke-width: 0px"><FONT=20
face=3D"Courier New"><FONT=20
style=3D"FONT-SIZE: =
9pt">CONFIG_DEFAULT_DEVICE_TREE=3D"my_own_device_tree"</FONT></FONT></SPA=
N></DIV>
<DIV dir=3Dltr><SPAN=20
style=3D"LINE-HEIGHT: normal; WIDOWS: 1; TEXT-TRANSFORM: none; =
TEXT-INDENT: 0px; DISPLAY: inline !important; FONT-FAMILY: ; =
WHITE-SPACE: pre; FLOAT: none; LETTER-SPACING: normal; WORD-SPACING: =
0px; -webkit-text-stroke-width: 0px"><FONT=20
face=3D"Courier New"></FONT></SPAN>&nbsp;</DIV>
<DIV dir=3Dltr><FONT face=3DArial><FONT style=3D"FONT-SIZE: 10pt">Or =
something=20
similar. Is this possible? Also, if it is, where should =
=E2=80=9Cmy_own_device_tree=E2=80=9D=20
file used in the example reside? It looks like U-Boot only looks inside =
its=20
source (e.g. /arch/arm/dts) for those files.</FONT></FONT></DIV>
<DIV dir=3Dltr><FONT size=3D2 face=3DArial></FONT>&nbsp;</DIV>
<DIV dir=3Dltr><FONT size=3D2 face=3DArial>Thanks,</FONT></DIV>
<DIV dir=3Dltr><FONT size=3D2=20
face=3DArial>Josias</FONT></DIV></DIV></DIV></DIV></BODY></HTML>

------=_NextPart_000_00B9_01D15319.0ADDC950--
