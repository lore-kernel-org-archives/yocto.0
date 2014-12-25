Return-Path: <Neil.Wu@Emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 046C4E00932; Wed, 24 Dec 2014 19:08:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [144.191.128.192 listed in list.dnswl.org]
Received: from USSTLZ-PINFEZ08.extemr.org (usstlz-pinfez08.extemr.org
	[144.191.128.192])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6C6BE00897
	for <yocto@yoctoproject.org>; Wed, 24 Dec 2014 19:08:28 -0800 (PST)
Received: from USSTLZ-PMSG008.emrsn.org (10.16.72.190) by
	USSTLZ-PINFEZ08.extemr.org (10.16.8.81) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Thu, 25 Dec 2014 03:08:27 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.90]) by
	USSTLZ-PMSG008.emrsn.org ([169.254.3.244]) with mapi id 14.03.0158.001;
	Thu, 25 Dec 2014 03:08:27 +0000
From: <Neil.Wu@Emerson.com>
To: <yocto@yoctoproject.org>
Thread-Topic: problem of install kernel module(*.ko) to rootfs folder
Thread-Index: AdAf8AxbXJjDYkGQQumQmYA5YIOjog==
Date: Thu, 25 Dec 2014 03:08:27 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C8522035764B@USSTLZ-PMSG012.emrsn.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Subject: problem of install kernel module(*.ko) to rootfs folder
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
X-List-Received-Date: Thu, 25 Dec 2014 03:08:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3204FE6663E1F14CAF4CA6928E60C8522035764BUSSTLZPMSG012em_"

--_000_3204FE6663E1F14CAF4CA6928E60C8522035764BUSSTLZPMSG012em_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

First of all , merry Christmas.

I run menuconfig and save the .config as following:

CONFIG_SPI_DEV_INTERFACE=3Dm
CONFIG_PACKAGE_kmod-usb-core=3Dm

Then I build the linux-yocto and core-image-minimal :
Bitbake linux-yocto
Bitbake core-image-minimal

I expected all the kernel module will install in core-image-minimal rootfs,=
 but , in the ./lib/modules/3.4.44-G4 , I just find

modules.alias,  modules.alias.bin , modules.builtin.bin,  modules.dep ...

It have nothing kernel modules (*.ko) file in ./lib/modules/. How to instal=
l the *.ko to rootfs  automatically ?

Someone tell me to change the .config file as these :
CONFIG_SPI_DEV_INTERFACE=3Dy
CONFIG_PACKAGE_kmod-usb-core=3Dy
I have test it what will build the kernel modules (*.ko ) to kernel image, =
 that's not what I need.


so ,   I just want to know . how to install the kernel modules (*.ko) to co=
re-image-minimal rootfs ?  If you know it , please help me .
Thank you very much.

Neil








--_000_3204FE6663E1F14CAF4CA6928E60C8522035764BUSSTLZPMSG012em_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"Section1">
<p class=3D"MsoNormal">Hi all, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">First of all , merry Christmas.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I run menuconfig and save the .config as following:<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">CONFIG_SPI_DEV_INTERFACE=3Dm<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_PACKAGE_kmod-usb-core=3Dm<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Then I build the linux-yocto and core-image-minimal =
:<o:p></o:p></p>
<p class=3D"MsoNormal">Bitbake linux-yocto<o:p></o:p></p>
<p class=3D"MsoNormal">Bitbake core-image-minimal<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I expected all the kernel module will install in cor=
e-image-minimal rootfs, but , in the ./lib/modules/3.4.44-G4 , I just find
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">modules.alias, &nbsp;modules.alias.bin , modules.bui=
ltin.bin, &nbsp;modules.dep &#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It have nothing kernel modules (*.ko) file in ./lib/=
modules/. How to install the *.ko to rootfs&nbsp; automatically ?<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Someone tell me to change the .config file as these =
:<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_SPI_DEV_INTERFACE=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_PACKAGE_kmod-usb-core=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">I have test it what will build the kernel modules (*=
.ko ) to kernel image,&nbsp; that&#8217;s not what I need.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">so ,&nbsp;&nbsp; I just want to know . how to instal=
l the kernel modules (*.ko) to core-image-minimal rootfs ? &nbsp;If you kno=
w it , please help me .
<o:p></o:p></p>
<p class=3D"MsoNormal">Thank you very much.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Neil<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_3204FE6663E1F14CAF4CA6928E60C8522035764BUSSTLZPMSG012em_--
