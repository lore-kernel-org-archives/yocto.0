Return-Path: <gstroz@qti.qualcomm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01B5CE00D2B; Wed, 12 Oct 2016 14:30:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [199.106.114.251 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from wolverine02.qualcomm.com (wolverine02.qualcomm.com
	[199.106.114.251])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAEDCE00C54
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 14:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
	s=qcdkim; t=1476307805; x=1507843805;
	h=from:to:subject:date:message-id:mime-version;
	bh=d4u+QnPgQo4gkLY2/763W1FTMw5pxQQP7j7M7WSDaWw=;
	b=W06dDR1JyF60427/6qYPW0uHj4B9HIcuxo75j5tdOCvZJs9Djxd6sSbN
	Yo4VTYK6+vUwYqN/kaMSL5rWoCXan2gc5ECgKQduNJruisiaggwCaNuVc
	Sj4tO6Mpv1Q4MGetqyPbuZz8kshZYf9Y/ReV4gRXG0W3tS8jE/Mm2udIN 0=;
X-IronPort-AV: E=Sophos;i="5.31,485,1473145200"; 
	d="scan'208,217";a="326482615"
Received: from ironmsg01-lv.qualcomm.com ([10.47.202.180])
	by wolverine02.qualcomm.com with ESMTP; 12 Oct 2016 14:30:04 -0700
X-IronPort-AV: E=McAfee;i="5700,7163,8316"; a="35928181"
Received: from nalasexr02h.na.qualcomm.com ([10.49.56.58])
	by ironmsg01-lv.qualcomm.com with ESMTP/TLS/RC4-SHA;
	12 Oct 2016 14:30:04 -0700
Received: from nalasexr02c.na.qualcomm.com (10.49.56.27) by
	nalasexr02h.na.qualcomm.com (10.49.56.58) with Microsoft SMTP Server
	(TLS) id 15.0.1178.4; Wed, 12 Oct 2016 14:30:03 -0700
Received: from nalasexr02c.na.qualcomm.com ([10.49.56.27]) by
	nalasexr02c.na.qualcomm.com ([10.49.56.27]) with mapi id 15.00.1178.000;
	Wed, 12 Oct 2016 14:30:03 -0700
From: "Stroz, Glenn" <gstroz@qti.qualcomm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Conflict between multilib glibc and non-multlib glibc
Thread-Index: AdIkCiATnVR2PhBxTCecaLVsdPvkYAAxZUOg
Date: Wed, 12 Oct 2016 21:30:03 +0000
Message-ID: <1f004fc54fbc48619b307c5df3c63ad9@nalasexr02c.na.qualcomm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.49.16.6]
MIME-Version: 1.0
Subject: Re: Conflict between multilib glibc and non-multlib glibc
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
X-List-Received-Date: Wed, 12 Oct 2016 21:30:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1f004fc54fbc48619b307c5df3c63ad9nalasexr02cnaqualcommco_"

--_000_1f004fc54fbc48619b307c5df3c63ad9nalasexr02cnaqualcommco_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I wanted to add that it's specifically the glibc development packages which=
 have this fpu_control.h file conflict.

IMAGE_INSTALL +=3D "glibc-dev"
IMAGE_INSTALL +=3D "lib32-glibc-dev"

-Glenn

From: Stroz, Glenn
Sent: Tuesday, October 11, 2016 4:54 PM
To: 'yocto@yoctoproject.org' <yocto@yoctoproject.org>
Subject: Conflict between multilib glibc and non-multlib glibc

Hi,

We have a project running an aarch64 compatible processor. For backward com=
patibility with some internal software packages, we're using the armv7a-vfp=
 machine type as a multilib lib32 variant. However, we have found that when=
 attempting to install both lib32-glibc and glibc we encounter a file confl=
ict in the root image.

ERROR: Multilib check error: duplicate files /local/mnt/workspace2/gstroz/L=
E-UM-yocto2/poky/build/tmp-glibc/work/apq8096-oe-linux/machine-image/1.0-r0=
/multilib/lib32/usr/include/fpu_control.h /local/mnt/workspace2/gstroz/LE-U=
M-yocto2/poky/build/tmp-glibc/work/apq8096-oe-linux/machine- -image/1.0-r0/=
rootfs/usr/include/fpu_control.h is not the same

This is because the fpu_control.h file varies based on the machine architec=
ture (in this case armv7-vfp and aarch64). Is this a known bug? If so, what=
 is the suggested solution? We would like to keep both 32 and 64 bit librar=
ies if possible.

-Glenn


--_000_1f004fc54fbc48619b307c5df3c63ad9nalasexr02cnaqualcommco_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I wanted to add that i=
t&#8217;s specifically the glibc development packages which have this fpu_c=
ontrol.h file conflict.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">IMAGE_INSTALL &#43;=3D=
 &quot;glibc-dev&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">IMAGE_INSTALL &#43;=3D=
 &quot;lib32-glibc-dev&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-Glenn<o:p></o:p></spa=
n></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Stroz, Glenn <br>
<b>Sent:</b> Tuesday, October 11, 2016 4:54 PM<br>
<b>To:</b> 'yocto@yoctoproject.org' &lt;yocto@yoctoproject.org&gt;<br>
<b>Subject:</b> Conflict between multilib glibc and non-multlib glibc<o:p><=
/o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We have a project running an aarch64 compatible proc=
essor. For backward compatibility with some internal software packages, we&=
#8217;re using the armv7a-vfp machine type as a multilib lib32 variant. How=
ever, we have found that when attempting
 to install both lib32-glibc and glibc we encounter a file conflict in the =
root image.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Multilib check error: duplicate files /local/=
mnt/workspace2/gstroz/LE-UM-yocto2/poky/build/tmp-glibc/work/apq8096-oe-lin=
ux/machine-image/1.0-r0/multilib/lib32/usr/include/fpu_control.h /local/mnt=
/workspace2/gstroz/LE-UM-yocto2/poky/build/tmp-glibc/work/apq8096-oe-linux/=
machine-
 -image/1.0-r0/rootfs/usr/include/fpu_control.h is not the same<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is because the fpu_control.h file varies based =
on the machine architecture (in this case armv7-vfp and aarch64). Is this a=
 known bug? If so, what is the suggested solution? We would like to keep bo=
th 32 and 64 bit libraries if possible.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-Glenn<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_1f004fc54fbc48619b307c5df3c63ad9nalasexr02cnaqualcommco_--
