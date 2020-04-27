Received: from EUR02-HE1-obe.outbound.protection.outlook.com (EUR02-HE1-obe.outbound.protection.outlook.com [40.107.1.126])
 by mx.groups.io with SMTP id smtpd.web10.5436.1587994228008325472
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Apr 2020 06:30:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@qt.io header.s=selector2 header.b=nSHJq9Zb;
 spf=pass (domain: qt.io, ip: 40.107.1.126, mailfrom: samuli.piippo@qt.io)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VAsLhuEjXZ/fiEbcVcVpieHQ6TYY58coMUwkBb4GPEFKZM3vb7bFIQ7O/TXCKFimXRQbOAZjih3DXqRp7+F1yOTlZ/Fc7qyDRxMEPUYbbh+zGa8NMYLytGWI25W462h4QiQ+3wAPuH0suS3wUsxZCP8V5TdHe6JxM1kaayvLNks0R7IDE07eYamCrCvvWJEpGKsDj37HLq/gjihgYOsCIvepLXR4aa+QrvZwen4t+UONWbRntlXewZfytJ6l2szy6mdeRCuN09DHDCegyHd5Vra6irn8MIs/MGXhFL0TP+0TirwBcf5M1j0MVelMZx6hnwmrZcERUW0ZxGRhS5NGbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1W/ThPX+CqqL0HQksZ2ilcBx2/LOk2c34Ac21gtDIAY=;
 b=mHA4C8OMxLIli4pLNuEjipHAuYncTg2O+4FybDFD7gsAJx8tB+0OEQ9onl3eWYBwgQ4mdG/WWg/l6/OdB0lWmMApTsB6eezXCOjgU5OBk4uY7uLX8UlYcSgrna/rOwihrXVWCL6rZme3U/AgazWx1fXUJGUe29fb3Syv9jXYAgVY9IirwiDbS6CoQ8ndndqDZeuVv9fB5zqyTzk8WVqUVJ+SDpcUagcn9yqPXXTxf9+d7r75mpuUraGMdtDxY+vkzH6p4gNLNOR3CgaZNLEZBtWV5IqXzRdQ04bzOj1MssNq3AdyrFIl78ZbCI92JbR5FTPZdO4g+8AKqlrq6vWumg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qt.io; dmarc=pass action=none header.from=qt.io; dkim=pass
 header.d=qt.io; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qt.io; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1W/ThPX+CqqL0HQksZ2ilcBx2/LOk2c34Ac21gtDIAY=;
 b=nSHJq9ZbPNae3UcndE9LRzhnzTtcupWWc/B6L2v25U1P1l71gnzfl9EgFxFQtAkdRKOfZe7UgVayMP/fB9hfha6PcGAEMLBo4VtonbZ6lvVxquHHHE/KpKZjjLxsrrJ4Ovt1LBrHMfB4yJd9T5Frw3v8KAiA3R6nuAY7/ZefHZ4=
Received: from DB3PR0202MB3449.eurprd02.prod.outlook.com (2603:10a6:8:d::29)
 by DB3PR0202MB3499.eurprd02.prod.outlook.com (2603:10a6:8:7::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Mon, 27 Apr
 2020 13:30:25 +0000
Received: from DB3PR0202MB3449.eurprd02.prod.outlook.com
 ([fe80::5d16:de0e:8356:3d4f]) by DB3PR0202MB3449.eurprd02.prod.outlook.com
 ([fe80::5d16:de0e:8356:3d4f%7]) with mapi id 15.20.2937.023; Mon, 27 Apr 2020
 13:30:25 +0000
From: "Samuli Piippo" <samuli.piippo@qt.io>
To: "d.fourdrigniez@idplus.org.mx" <d.fourdrigniez@idplus.org.mx>, 'Joshua
 Watt' <jpewhacker@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [Yocto] Building Qt5 toolchain for windows
Thread-Topic: [Yocto] Building Qt5 toolchain for windows
Thread-Index: AQHWGAl8WwWjEmolDUKXrU4iLw4scaiFSBQAgAe2CQQ=
Date: Mon, 27 Apr 2020 13:30:25 +0000
Message-ID: 
 <DB3PR0202MB344969354B985B8428D20711E9AF0@DB3PR0202MB3449.eurprd02.prod.outlook.com>
References: <002301d61806$afd72030$0f856090$@idplus.org.mx>
 <085e51b2-4740-e41a-c7df-f0449b5ffb28@gmail.com>,<000a01d618bc$150e5f30$3f2b1d90$@idplus.org.mx>
In-Reply-To: <000a01d618bc$150e5f30$3f2b1d90$@idplus.org.mx>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=samuli.piippo@qt.io; 
x-originating-ip: [84.250.25.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7290f827-c8da-42d0-2561-08d7eaaf24b5
x-ms-traffictypediagnostic: DB3PR0202MB3499:
x-microsoft-antispam-prvs: 
 <DB3PR0202MB3499914D7864BAD43E485834E9AF0@DB3PR0202MB3499.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0386B406AA
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB3PR0202MB3449.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(366004)(39850400004)(136003)(396003)(376002)(346002)(966005)(5660300002)(44832011)(9686003)(33656002)(7696005)(66476007)(6506007)(66556008)(478600001)(2906002)(52536014)(53546011)(86362001)(64756008)(66446008)(21615005)(76116006)(66946007)(8676002)(81156014)(186003)(316002)(110136005)(71200400001)(19627405001)(4326008)(26005)(55016002)(19627235002)(8936002);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: qt.io does not designate permitted
 sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 /ip4nOTaosadFwAkp25uHJ1AYhdc73nF2xk9hHInTVejRBTKb2ze4+ZM8zoSt3WiFGAoCZ6KplzZKHuECEjJNhQdXbHcRzq6epX5MpnqNvIquFu0jJaPjs6wNNfkM715IqRQGhYAchUPPpF5kW4QGM4hJ1zvBDSnlloGPETB+zaR5vhAqVPT2wPnQam4+fyUBnhybdSJ+rz3ojmN/eNl+Em7ukXzz3qn/NI2MIBFRHH4T/cqbjMNOgV+ZewUzYVHSlHKSB8CmyenEKVkQ7qAvSq3zgIVDlQLKQKl6MFGjx5uIW951AWPmTv4jQW3zBByi6Rya0hS8lCnqnHPYcKYu40BlrjScQS4QjSgHeG0wu8veAHlMNIVGYPslsZGxvlvjA1/if7W71oaM+nU+MSl3DGRicll8/bl5sBDb6HTXKcNiWiEmYuO/sRHHtKwazaC+RkYaxO2kKuN8C8bnBx/1VJAZiIwyjZlRUCr8m7tLNfdZBGVGKo+KN36UCV5NS9epjwRp3bp118lIsjjAoinhA==
x-ms-exchange-antispam-messagedata: 
 LG4WnLKcFOkhCFtFCeuegJ9mLMWBxqA2eLwBsLp/p0u1Soyl0uo/cPS8204zrBpv50DRldfGGf/tnhCdgZ4v+qukKZAQ5jqArda7hKAtJpchN+/9+y/nJXjOg3A3huosOT/vjFK64Ipj0BN3rpJPIe02G5PIvgfxlk4pEl62WNVGqzDfFZCcHZekVmbHsgzsprxpfzysDBmFpoELvhOoAUwrC5DQ7NAfbkdr2boLb+q0NAxlQ0+M9HlwvkvloVzRXFIHxeTLClAeTmITpY4Ox37CjC8jCTYXx3za78T3cHiCP9MjdDGLTvLysYCEkba7DZu815awPRx+WB0pyqW6ohrZpr7y4AjLOX2FwDOzTT1qRZk91IzSeYY+ZuDuPZT78DQye+Q4b8VZ+BbIwMbkF96BxetdbboFtGEEi62jUigVTV5gpsNGQ0F9Ddt2L+dvUenw8BRIfBRH8ZBt6Lu7UlUKvnyk5Px8oCso4CAi3e9GDMQak3HQbP4vLwtLzS83U9/AUvfitWQJDg0yImUw8Ror8QmpcprnLYmOmt6XXG+tReC0qpOxJk1+SoxsW+bqLcy67owJf4PNrtQVV8Vbq1k9J0pTlCADR+LNoThWqKlUcN9LK0550VumhvzJkkRe28q2EO7E4msQrbbsezDyu4V5hyk+uiIAytUrSCVzAU216KcMpuW0+KxS2K3Lc+/zGw8vqZvdJPU/GkimEo3QHpwiBhDY5oGvcnDDsT8Scz0+Gn+UvPxacHRBvF7UPmkAjqJJR+yImi8lDHG/O2VdzHsF9RwPQl+CcAgRf5BQBZY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: qt.io
X-MS-Exchange-CrossTenant-Network-Message-Id: 7290f827-c8da-42d0-2561-08d7eaaf24b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2020 13:30:25.0813
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 20d0b167-794d-448a-9d01-aaeccc1124ac
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cg4HLSV5WaympoB25GHwggLbrtN7qqBlNXLGVOHSb1nLg7789vzWUJOcFdv1hPz73TcgR1ADNptOt9PeelbEgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3499
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_DB3PR0202MB344969354B985B8428D20711E9AF0DB3PR0202MB3449_"

--_000_DB3PR0202MB344969354B985B8428D20711E9AF0DB3PR0202MB3449_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

Our changes for supporting mingw builds for Qt5 nativesdk tools are still p=
art of the meta-boot2qt layer (https://code.qt.io/cgit/yocto/meta-boot2qt.g=
it/), which is used in the Qt for Device Creation product. Some of these ch=
anges could be moved over to meta-qt5. CMake support is still partial and w=
ill only work with the Qt Creator integration.

-samuli


________________________________
From: d.fourdrigniez@idplus.org.mx <d.fourdrigniez@idplus.org.mx>
Sent: 22 April 2020 18:38
To: 'Joshua Watt' <jpewhacker@gmail.com>
Cc: Samuli Piippo <samuli.piippo@qt.io>; yocto@lists.yoctoproject.org <yoct=
o@lists.yoctoproject.org>
Subject: RE: [Yocto] Building Qt5 toolchain for windows


Hello Joshua,



Thank you for your reply,



Just for information, I put the following parameters in local.conf



MACHINE ?=3D =93qemuarm=94



SDKMACHINE =3D =93i686-mingw32=94



IMAGE_INSTALL_append =3D =93 gcc g++ binutils libgcc-dev libstdc++ libstdc+=
+-dev libstdc++-staticdev qtbase qtcharts qtconnectivity qtdeclarative qten=
ginio qtgraphicaleffects qtlocation qtmultimedia qtscript qtsensors qtseria=
lport qtsystems qttools qttranslations qtvirtualkeyboard qtwebsockets qtxml=
patterns openssh-sftp-server gdb gdbserver=94



And here is the error I get when I run the command: bitbake meta-toolchain-=
qt5



| In file included from /home/david/yocto/poky/build/tmp/work/i686-nativesd=
k-mingw32-pokysdk-mingw32/nativesdk-qtbase/5.13.2+gitAUTOINC+a7a24784ee-r0/=
recipe-sysroot/opt/poky/3.0.2/sysroots/i686-pokysdk-mingw32/usr/include/win=
base.h:18,

|                  from /home/david/yocto/poky/build/tmp/work/i686-nativesd=
k-mingw32-pokysdk-mingw32/nativesdk-qtbase/5.13.2+gitAUTOINC+a7a24784ee-r0/=
recipe-sysroot/opt/poky/3.0.2/sysroots/i686-pokysdk-mingw32/usr/include/win=
dows.h:70,

|                  from /home/david/yocto/poky/build/tmp/work/i686-nativesd=
k-mingw32-pokysdk-mingw32/nativesdk-qtbase/5.13.2+gitAUTOINC+a7a24784ee-r0/=
git/qmake/library/ioutils.cpp:35:

| /home/david/yocto/poky/build/tmp/work/i686-nativesdk-mingw32-pokysdk-ming=
w32/nativesdk-qtbase/5.13.2+gitAUTOINC+a7a24784ee-r0/recipe-sysroot/opt/pok=
y/3.0.2/sysroots/i686-pokysdk-mingw32/usr/include/fileapi.h:53:48: note:   =
initializing argument 1 of 'void* CreateFileA(LPCSTR, DWORD, DWORD, LPSECUR=
ITY_ATTRIBUTES, DWORD, DWORD, HANDLE)'

|    53 |   WINBASEAPI HANDLE WINAPI CreateFileA (LPCSTR lpFileName, DWORD =
dwDesiredAccess, DWORD dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttribu=
tes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTempl=
ateFile);

|       |                                         ~~~~~~~^~~~~~~~~~

| Makefile:212: recipe for target 'ioutils.o' failed

| make: *** [ioutils.o] Error 1

| WARNING: exit code 2 from a shell command.

|

ERROR: Task (/home/david/yocto/poky/meta-qt5/recipes-qt/qt5/nativesdk-qtbas=
e_git.bb:do_configure) failed with exit code '1'

NOTE: Tasks Summary: Attempted 3299 tasks of which 3161 didn't need to be r=
erun and 1 failed.



Summary: 1 task failed:

  /home/david/yocto/poky/meta-qt5/recipes-qt/qt5/nativesdk-qtbase_git.bb:do=
_configure

Summary: There was 1 ERROR message shown, returning a non-zero exit code.



Best regards,



David FOURDRIGNIEZ
Mobile +33 6 27 94 03 25

Email d.fourdrigniez@idplus.org.mx<mailto:d.fourdrigniez@idplus.org.mx>



From: Joshua Watt <jpewhacker@gmail.com>
Sent: mardi 21 avril 2020 13:20
To: d.fourdrigniez@idplus.org.mx
Cc: Samuli Piippo <samuli.piippo@qt.io>; yocto@lists.yoctoproject.org
Subject: Re: [Yocto] Building Qt5 toolchain for windows





On 4/21/20 1:00 PM, d.fourdrigniez@idplus.org.mx<mailto:d.fourdrigniez@idpl=
us.org.mx> wrote:

Hello,



I=92m working on a project and I need to build a Qt5 toolchain for Windows,

I=92m using meta-qt5 and meta-mingw and my build machine is an ubuntu 18.04

However I keep having errors when i execute =AB bitbake meta-toolchain-qt5 =
=BB, very much like the one in below forum thread

https://www.yoctoproject.org/pipermail/yocto/2019-March/044512.html



Am I doing something wrong ? Could you help sending me some ideas on how I =
could accomplish what I want ?



I don't actually know a whole lot about cmake/qt5, so I'm not sure what wou=
ld need to be done (other than what I've already stated in the message abov=
e). Samuli Piippo (cc'd) recently did some work to get cmake to build for M=
inGW, so he might have some insight.



Thanks,



Best regards,

David Fourdrigniez.

--_000_DB3PR0202MB344969354B985B8428D20711E9AF0DB3PR0202MB3449_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<div><br>
</div>
<div>Our changes for supporting mingw builds for Qt5 nativesdk tools are st=
ill part of the meta-boot2qt layer (https://code.qt.io/cgit/yocto/meta-boot=
2qt.git/), which is used in the Qt for Device Creation product. Some of the=
se changes could be moved over to
 meta-qt5. CMake support is still partial and will only work with the Qt Cr=
eator integration.<br>
</div>
<div><br>
</div>
<div>-samuli<br>
</div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> d.fourdrigniez@idplus=
.org.mx &lt;d.fourdrigniez@idplus.org.mx&gt;<br>
<b>Sent:</b> 22 April 2020 18:38<br>
<b>To:</b> 'Joshua Watt' &lt;jpewhacker@gmail.com&gt;<br>
<b>Cc:</b> Samuli Piippo &lt;samuli.piippo@qt.io&gt;; yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> RE: [Yocto] Building Qt5 toolchain for windows</font>
<div>&nbsp;</div>
</div>
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
a:link, span.x_MsoHyperlink
	{color:#0563C1;
	text-decoration:underline}
span.x_EmailStyle20
	{font-family:"Calibri",sans-serif;
	color:windowtext}
.x_MsoChpDefault
	{font-size:10.0pt}
@page WordSection1
	{margin:70.85pt 3.0cm 70.85pt 3.0cm}
div.x_WordSection1
	{}
-->
</style>
<div lang=3D"FR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal">Hello Joshua,</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Thank you for your reply,</sp=
an></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Just for information, I put t=
he following parameters in local.conf</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">MACHINE ?=3D =93qemuarm=94</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">SDKMACHINE =3D =93i686-mingw32=94</span><=
/p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">IMAGE_INSTALL_append =3D =93 gcc g&#43;&#=
43; binutils libgcc-dev libstdc&#43;&#43; libstdc&#43;&#43;-dev libstdc&#43=
;&#43;-staticdev qtbase qtcharts qtconnectivity qtdeclarative qtenginio qtg=
raphicaleffects
 qtlocation qtmultimedia qtscript qtsensors qtserialport qtsystems qttools =
qttranslations qtvirtualkeyboard qtwebsockets qtxmlpatterns openssh-sftp-se=
rver gdb gdbserver=94</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">And here is the error I get w=
hen I run the command:
</span><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">b=
itbake meta-toolchain-qt5</span><span lang=3D"EN-US"></span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">| In file included from /home/david/yocto=
/poky/build/tmp/work/i686-nativesdk-mingw32-pokysdk-mingw32/nativesdk-qtbas=
e/5.13.2&#43;gitAUTOINC&#43;a7a24784ee-r0/recipe-sysroot/opt/poky/3.0.2/sys=
roots/i686-pokysdk-mingw32/usr/include/winbase.h:18,</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /home/d=
avid/yocto/poky/build/tmp/work/i686-nativesdk-mingw32-pokysdk-mingw32/nativ=
esdk-qtbase/5.13.2&#43;gitAUTOINC&#43;a7a24784ee-r0/recipe-sysroot/opt/poky=
/3.0.2/sysroots/i686-pokysdk-mingw32/usr/include/windows.h:70,</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /home/d=
avid/yocto/poky/build/tmp/work/i686-nativesdk-mingw32-pokysdk-mingw32/nativ=
esdk-qtbase/5.13.2&#43;gitAUTOINC&#43;a7a24784ee-r0/git/qmake/library/iouti=
ls.cpp:35:</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">| /home/david/yocto/poky/build/tmp/work/i=
686-nativesdk-mingw32-pokysdk-mingw32/nativesdk-qtbase/5.13.2&#43;gitAUTOIN=
C&#43;a7a24784ee-r0/recipe-sysroot/opt/poky/3.0.2/sysroots/i686-pokysdk-min=
gw32/usr/include/fileapi.h:53:48:
 note:&nbsp;&nbsp; initializing argument 1 of 'void* CreateFileA(LPCSTR, DW=
ORD, DWORD, LPSECURITY_ATTRIBUTES, DWORD, DWORD, HANDLE)'</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">|&nbsp;&nbsp;&nbsp; 53 |&nbsp;&nbsp; WINB=
ASEAPI HANDLE WINAPI CreateFileA (LPCSTR lpFileName, DWORD dwDesiredAccess,=
 DWORD dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCre=
ationDisposition,
 DWORD dwFlagsAndAttributes, HANDLE hTemplateFile);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;~~~~~~~^~~~~~~~~~</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">| Makefile:212: recipe for target 'ioutil=
s.o' failed</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">| make: *** [ioutils.o] Error 1</span></p=
>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">| WARNING: exit code 2 from a shell comma=
nd.</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">|
</span></p>
<p class=3D"x_MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:9.0pt; =
font-family:&quot;Courier New&quot;; color:red">ERROR: Task (/home/david/yo=
cto/poky/meta-qt5/recipes-qt/qt5/nativesdk-qtbase_git.bb:do_configure) fail=
ed with exit code '1'</span></b></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">NOTE: Tasks Summary: Attempted 3299 tasks=
 of which 3161 didn't need to be rerun and 1 failed.</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">Summary: 1 task failed:</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">&nbsp; /home/david/yocto/poky/meta-qt5/re=
cipes-qt/qt5/nativesdk-qtbase_git.bb:do_configure</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt; fon=
t-family:&quot;Courier New&quot;">Summary: There was 1 ERROR message shown,=
 returning a non-zero exit code.</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Best regards,</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<div>
<p class=3D"x_MsoNormal"><b><span style=3D"font-size:10.0pt; color:#5B9BD5"=
>David FOURDRIGNIEZ<br>
</span></b><b><span style=3D"font-size:8.0pt; color:#5B9BD5">Mobile </span>=
</b><span style=3D"font-size:8.0pt">&#43;33 6 27 94 03 25</span><b><span st=
yle=3D"font-size:10.0pt; color:#5B9BD5"></span></b></p>
<p class=3D"x_MsoNormal"><b><span style=3D"font-size:8.0pt; color:#5B9BD5">=
Email</span></b><span style=3D"font-size:8.0pt">
<a href=3D"mailto:d.fourdrigniez@idplus.org.mx"><span style=3D"color:#0563C=
1">d.fourdrigniez@idplus.org.mx</span></a></span></p>
</div>
<p class=3D"x_MsoNormal">&nbsp;</p>
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0c=
m 0cm 0cm">
<p class=3D"x_MsoNormal"><b><span lang=3D"EN-US" style=3D"">From:</span></b=
><span lang=3D"EN-US" style=3D""> Joshua Watt &lt;jpewhacker@gmail.com&gt;
<br>
<b>Sent:</b> mardi 21 avril 2020 13:20<br>
<b>To:</b> d.fourdrigniez@idplus.org.mx<br>
<b>Cc:</b> Samuli Piippo &lt;samuli.piippo@qt.io&gt;; yocto@lists.yoctoproj=
ect.org<br>
<b>Subject:</b> Re: [Yocto] Building Qt5 toolchain for windows</span></p>
</div>
</div>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p>&nbsp;</p>
<div>
<p class=3D"x_MsoNormal">On 4/21/20 1:00 PM, <a href=3D"mailto:d.fourdrigni=
ez@idplus.org.mx">
d.fourdrigniez@idplus.org.mx</a> wrote:</p>
</div>
<blockquote style=3D"margin-top:5.0pt; margin-bottom:5.0pt">
<p class=3D"x_MsoNormal">Hello,</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">I=92m working on a project and I need to build a Q=
t5 toolchain for Windows,</p>
<p class=3D"x_MsoNormal">I=92m using meta-qt5 and meta-mingw and my build m=
achine is an ubuntu 18.04</p>
<p class=3D"x_MsoNormal">However I keep having errors when i execute =AB&nb=
sp;bitbake meta-toolchain-qt5&nbsp;=BB, very much like the one in below for=
um thread&nbsp;</p>
<p class=3D"x_MsoNormal"><a href=3D"https://www.yoctoproject.org/pipermail/=
yocto/2019-March/044512.html">https://www.yoctoproject.org/pipermail/yocto/=
2019-March/044512.html</a></p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Am I doing something wrong&nbsp;? Could you help s=
ending me some ideas on how I could accomplish what I want&nbsp;?</p>
</blockquote>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p>I don't actually know a whole lot about cmake/qt5, so I'm not sure what =
would need to be done (other than what I've already stated in the message a=
bove). Samuli Piippo (cc'd) recently did some work to get cmake to build fo=
r MinGW, so he might have some insight.</p>
<blockquote style=3D"margin-top:5.0pt; margin-bottom:5.0pt">
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Thanks,</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Best regards,</p>
<p class=3D"x_MsoNormal">David Fourdrigniez.</p>
</blockquote>
</div>
</div>
</body>
</html>

--_000_DB3PR0202MB344969354B985B8428D20711E9AF0DB3PR0202MB3449_--
