Return-Path: <meenakumari.s@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53166E00B65; Sat, 17 May 2014 22:33:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.4 required=5.0 tests=HTML_MESSAGE,MIME_HTML_ONLY,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.1 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from GWS06.hcl.com (unknown [203.105.185.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E694E00B20
	for <yocto@yoctoproject.org>; Sat, 17 May 2014 22:33:16 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.98,861,1392143400"; d="scan'208,217";a="69913063"
Received: from unknown (HELO NDA-CORP-HT03.CORP.HCL.IN) ([10.248.64.35])
	by GWS06.hcl.com with ESMTP/TLS/AES128-SHA; 18 May 2014 10:56:32 +0530
Received: from NDA-HCLT-CSHT05.HCLT.CORP.HCL.IN (10.98.132.30) by
	NDA-CORP-HT03.CORP.HCL.IN (10.248.64.35) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Sun, 18 May 2014 11:03:14 +0530
Received: from NDA-HCLT-MBS02.HCLT.CORP.HCL.IN ([10.98.132.17]) by
	NDA-HCLT-CSHT05.HCLT.CORP.HCL.IN ([10.98.132.30]) with mapi id
	14.03.0123.003; Sun, 18 May 2014 11:03:14 +0530
From: Meenakumari Shedole <meenakumari.s@hcl.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-bounces@yoctoproject.org" <yocto-bounces@yoctoproject.org>
Thread-Topic: Qt5 Integration in Yocto Dora Branch--Issue in qtquickcontrols
	build
Thread-Index: AQHPclqo/Zg9FPK+X0myCtt+XRxp4w==
Date: Sun, 18 May 2014 05:33:13 +0000
Message-ID: <E4938C0D959B3445943720B88F0721341563020D@NDA-HCLT-MBS02.hclt.corp.hcl.in>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.96.4.252]
MIME-Version: 1.0
Subject: Qt5 Integration in Yocto Dora Branch--Issue in qtquickcontrols build
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
X-List-Received-Date: Sun, 18 May 2014 05:33:28 -0000
Content-Language: en-US
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" id=3D"owaParaStyle"></style>
</head>
<body fpstyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">HI.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">We integrating the Qt5 in yoc=
to Dora branch, all dependents plugins are installed and get executed with =
their libraries expect
 the qtquickcontrols while building this I am getting following error messa=
ge. <o:p>
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">Below are the steps, download=
ed link and build error message.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">1. git clone https://github.c=
om/meta-qt5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">2. modified local.conf and bb=
layer.conf file<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">3. downloaded qtquickcontrols=
 source from http://download.qt-project.org/official_releases/qt/5.2/5.2.1/=
submodules/qtquickcontrols-opensource-src-5.2.1.tar.xz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">4. At yocto build getting bel=
ow error.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">| &#43; grep -q ^qtquickcontr=
ols-[^-]*-[^-]*@noarch$ /home/user1/poky/build/tmp/work/baytrail32-poky-lin=
ux/core-image-sato/1.0-r0/rootfs/install/tmp/fullpkglist.query<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">| &#43; grep -q ^qtquickcontr=
ols-[^-]*-[^-]*@any$ /home/user1/poky/build/tmp/work/baytrail32-poky-linux/=
core-image-sato/1.0-r0/rootfs/install/tmp/fullpkglist.query<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">| &#43; grep -q ^qtquickcontr=
ols-[^-]*-[^-]*@all$ /home/user1/poky/build/tmp/work/baytrail32-poky-linux/=
core-image-sato/1.0-r0/rootfs/install/tmp/fullpkglist.query<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">| &#43; [ qtquickcontrols =3D=
 qtquickcontrols ]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">| &#43; echo Error: qtquickco=
ntrols not found in the base feeds (baytrail32 core2 i686 i586 i486 i386 x8=
6 noarch any all).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">| Error: qtquickcontrols not =
found in the base feeds (baytrail32 core2 i686 i586 i486 i386 x86 noarch an=
y all).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">| &#43; [ Error =3D Error ]<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">| &#43; exit 1<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">| &#43; bb_exit_handler<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">| &#43; ret=3D1<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">| &#43; echo WARNING: exit co=
de 1 from a shell command.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">| WARNING: exit code 1 from a=
 shell command.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">| &#43; exit 1<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">| ERROR: Function failed: do_=
rootfs (log file is located at /home/user1/poky/build/tmp/work/baytrail32-p=
oky-linux/core-image-sato/1.0-r0/temp/log.do_rootfs.7098)<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">5. Verified /home/user1/poky/=
build/tmp/work/core2-poky-linux/qtquickcontrols/5.2.1-ro/build.....(empty)<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp; /image/....(empty)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp; /deploy-rpms/core2/qtquickcontrols-dbg-5.2.1.core=
2.rpm/...(empty)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp; /deploy-rpms/core2/qtquickcontrols-dev-5.2.1.core=
2.rpm/...(empty)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">6. Compared with other plugin=
s BB files.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">Please suggest me why I am no=
t able to build qtquickcontrols plugins , Is there any dependency for this =
plugins.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">Thanks in Advance.<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ascii-font-family:Calibri;mso-han=
si-font-family:
Calibri;color:#4F81BD;mso-themecolor:accent1">Meena<o:p></o:p></span></p>
</div>
<span style=3D"FONT-FAMILY: 'Arial','sans-serif'; COLOR: gray; FONT-SIZE: 7=
.5pt; mso-fareast-font-family: 'Times New Roman'">
<P style=3D"MARGIN: 0in 0in 0pt" class=3DMsoNormal><br><br><font style=3D"F=
ONT-FAMILY: 'Arial','sans-serif'; COLOR: gray; FONT-SIZE: 9px">::DISCLAIMER=
::<br>---------------------------------------------------------------------=
---------------------------------------------------------------------------=
----</font></P>
<P style=3D"MARGIN: 0in 0in 0pt" class=3DMsoNormal><font style=3D"FONT-FAMI=
LY: 'Arial','sans-serif'; COLOR: gray; FONT-SIZE: 11px">The contents of thi=
s e-mail and any attachment(s) are confidential and intended for the named =
recipient(s) only.<br>E-mail transmission is not guaranteed to be secure or=
 error-free as information could be intercepted, corrupted, <br>lost, destr=
oyed, arrive late or incomplete, or may contain viruses in transmission. Th=
e e mail and its contents <br>(with or without referred errors) shall there=
fore not attach any liability on the originator or HCL or its affiliates. <=
br>Views or opinions, if any, presented in this email are solely those of t=
he author and may not necessarily reflect the <br>views or opinions of HCL =
or its affiliates. Any form of reproduction, dissemination, copying, disclo=
sure, modification, <br>distribution and / or publication of this message w=
ithout the prior written consent of authorized representative of <br>HCL is=
 strictly prohibited. If you have received this email in error please delet=
e it and notify the sender immediately. <br>Before opening any email and/or=
 attachments, please check them for viruses and other defects.</font></P>
<P style=3D"MARGIN: 0in 0in 0pt" class=3DMsoNormal><font style=3D"FONT-FAMI=
LY: 'Arial','sans-serif'; COLOR: gray; FONT-SIZE: 11px">-------------------=
---------------------------------------------------------------------------=
------------------------------------------------------</font></span></P></b=
ody>
</html>


