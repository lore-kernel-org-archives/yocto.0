Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECE8FE006E9
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 09:26:16 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Jun 2013 09:26:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,898,1363158000"; 
	d="scan'208,217";a="356157069"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga002.fm.intel.com with ESMTP; 19 Jun 2013 09:26:15 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.83]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.217]) with mapi id
	14.03.0123.003; Wed, 19 Jun 2013 09:26:15 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Thanassis Silis <djnass_18@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] toolchain's environment-setup file that includes the
	image generated rootfs
Thread-Index: AQHObC7eU72lrLJF/Eu8QM5oAk0YOpk9OszA
Date: Wed, 19 Jun 2013 16:26:14 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C4629B@ORSMSX103.amr.corp.intel.com>
References: <DUB116-W535D2739FAA722F6E3D6BB988C0@phx.gbl>
In-Reply-To: <DUB116-W535D2739FAA722F6E3D6BB988C0@phx.gbl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: toolchain's environment-setup file that includes the image generated rootfs
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
X-List-Received-Date: Wed, 19 Jun 2013 16:26:19 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C73C4629BORSMSX103amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C73C4629BORSMSX103amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Overall, we don't suggest user to copy and alter the environment-setup file=
 manually.



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Thanassis Silis
Sent: Tuesday, June 18, 2013 7:19 AM
To: yocto@yoctoproject.org
Subject: [yocto] toolchain's environment-setup file that includes the image=
 generated rootfs



hello everyone,
tampering with eclipse I was advised to use the image generated rootfs for =
sysroot entry, under window->preferences->Yocto Project ADT. I also used th=
e meta-toolchain, which is extracted under /opt/poky/

If I copy extract the same toolchain and sysroots to another pc, I should a=
lter the environment-setup file.
Looking into this file some changes are obvious. Variables:

CC, CXX, CPP, LD should be appended with " --sysroot=3D/path/to/image-rootf=
s/", next to the already existing "--sysroot=3D/opt/poky/1.4.1/sysroots/arm=
v7a-vfp-neon-poky-linux-gnueabi".

It is not clear if the above should be appended in the CONFIGURE_FLAGS=3D"-=
-target=3Darm-poky-linux-gnueabi --host=3Darm-poky-linux-gnueabi --build=3D=
x86_64-linux --with-libtool-sysroot=3D/opt/poky/1.4.1/sysroots/armv7a-vfp-n=
eon-poky-linux-gnueabi"

as well.

Thank you.


--_000_C6510F6D410BB64A8C15398EDC6B847C73C4629BORSMSX103amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Overall, we don&#8217;t s=
uggest user to copy and alter the environment-setup file manually.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Thanassis Silis<br>
<b>Sent:</b> Tuesday, June 18, 2013 7:19 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] toolchain's environment-setup file that includes th=
e image generated rootfs<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;">hello everyone,<br>
tampering with eclipse I was advised to use the image generated rootfs for =
sysroot entry, under window-&gt;preferences-&gt;Yocto Project ADT. I also u=
sed the meta-toolchain, which is extracted under /opt/poky/<br>
<br>
If I copy extract the same toolchain and sysroots to another pc, I should a=
lter the environment-setup file.<br>
Looking into this file some changes are obvious. Variables:<br>
<br>
CC, CXX, CPP, LD should be appended with &quot; --sysroot=3D/path/to/image-=
rootfs/&quot;, next to the already existing &quot;--sysroot=3D/opt/poky/1.4=
.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi&quot;.<br>
<br>
It is not clear if the above should be appended in the CONFIGURE_FLAGS=3D&q=
uot;--target=3Darm-poky-linux-gnueabi --host=3Darm-poky-linux-gnueabi --bui=
ld=3Dx86_64-linux --with-libtool-sysroot=3D/opt/poky/1.4.1/sysroots/armv7a-=
vfp-neon-poky-linux-gnueabi&quot;<br>
<br>
as well.<br>
<br>
Thank you.<o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C73C4629BORSMSX103amrcor_--
