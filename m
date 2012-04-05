Return-Path: <sophie.lennon@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8598BE0070C
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 03:11:25 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Apr 2012 03:11:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; 
	d="scan'208,217";a="128969150"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga002.jf.intel.com with ESMTP; 05 Apr 2012 03:11:24 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 5 Apr 2012 11:10:55 +0100
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.40]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.127]) with mapi id
	14.01.0355.002; Thu, 5 Apr 2012 11:10:54 +0100
From: "Lennon, Sophie" <sophie.lennon@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: 32bit to a 64bit image build
Thread-Index: Ac0TFGAytIsPPQ9kSnGOtACWIg72OA==
Date: Thu, 5 Apr 2012 10:10:54 +0000
Message-ID: <D217AB7137D8684EAF03C83444A0D7191877ED0E@IRSMSX101.ger.corp.intel.com>
Accept-Language: en-IE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: 32bit to a 64bit image build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 Apr 2012 10:11:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D217AB7137D8684EAF03C83444A0D7191877ED0EIRSMSX101gercor_"

--_000_D217AB7137D8684EAF03C83444A0D7191877ED0EIRSMSX101gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using a Fedora 16 64bit build server. I am using meta-n450 BSP. I have=
 built a 32bit image that boots. I want to build a 64bit image. I added TAR=
GET_ARCH =3D"x86_64"to my local.conf file. My build doesn't run successfull=
y when this is changed:

/home/tester/yocto/N450QAT/tmp/work/atom_pc-poky-linux/core-image-minimal-i=
nitramfs-1.0-r0/temp/run.do_rootfs.15179: line 119: x86_64-poky-
linux-depmod: command not found
ERROR: Function 'do_rootfs' failed (see /home/tester/yocto/N450QAT/tmp/work=
/atom_pc-poky-linux/core-image-minimal-initramfs-1.0-r0/temp/log
.do_rootfs.15179 for further information)

Trying to find the correct procedure to change the target architecture syst=
em
--------------------------------------------------------------
Intel Shannon Limited
Registered in Ireland
Registered Office: Collinstown Industrial Park, Leixlip, County Kildare
Registered Number: 308263
Business address: Dromore House, East Park, Shannon, Co. Clare

This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). Any review or distribution by others =
is strictly prohibited. If you are not the intended recipient, please conta=
ct the sender and delete all copies.


--_000_D217AB7137D8684EAF03C83444A0D7191877ED0EIRSMSX101gercor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-IE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using a Fedora 16 64bit build server. I am usin=
g meta-n450 BSP. I have built a 32bit image that boots. I want to build a 6=
4bit image. I added TARGET_ARCH =3D&#8221;x86_64&#8221;to my local.conf fil=
e. My build doesn&#8217;t run successfully when this is
 changed: <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">/home/tester/yocto/N450QAT/tmp/work/atom_pc-poky-lin=
ux/core-image-minimal-initramfs-1.0-r0/temp/run.do_rootfs.15179: line 119: =
x86_64-poky-<o:p></o:p></p>
<p class=3D"MsoNormal">linux-depmod: command not found<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Function 'do_rootfs' failed (see /home/tester=
/yocto/N450QAT/tmp/work/atom_pc-poky-linux/core-image-minimal-initramfs-1.0=
-r0/temp/log<o:p></o:p></p>
<p class=3D"MsoNormal">.do_rootfs.15179 for further information)<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Trying to find the correct procedure to change the t=
arget architecture system<o:p></o:p></p>
</div>
<font face=3D"monospace">--------------------------------------------------=
------------<br>
Intel Shannon Limited<br>
Registered in Ireland<br>
Registered Office: Collinstown Industrial Park, Leixlip, County Kildare<br>
Registered Number: 308263<br>
Business address: Dromore House, East Park, Shannon, Co. Clare<br>
<br>
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). Any review or distribution by others =
is strictly prohibited. If you are not the intended recipient, please conta=
ct the sender and delete all copies.<br>
</font></body>
</html>

--_000_D217AB7137D8684EAF03C83444A0D7191877ED0EIRSMSX101gercor_--
