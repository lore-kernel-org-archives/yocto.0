Return-Path: <gstroz@qti.qualcomm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 885A9E00DD8; Thu, 26 May 2016 15:33:35 -0700 (PDT)
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
	*      [score: 0.0003]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 125 seconds by postgrey-1.32 at yocto-www;
	Thu, 26 May 2016 15:33:32 PDT
Received: from wolverine02.qualcomm.com (wolverine02.qualcomm.com
	[199.106.114.251])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CE1CE00931
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 15:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
	s=qcdkim; t=1464302013; x=1495838013;
	h=from:to:subject:date:message-id:mime-version;
	bh=+HURLB/nwP33yGqvHH5RKGSHOLOk4AL6xGHOZCHluKY=;
	b=xQWAgwhvpEMvO3qdjY3csIb7bEXLuNzVLrt6t8FPFyM+SOo3Am0Lws5M
	opdLuKt9a3NBB48WGMfbNVQPaO4RtoQvJL9tVDA+JwR2vcc5/a14O/KvN
	9Ih2U7PuR4/RsdEZnlqTmtc3fBvYlNtZIBbq/kiEd9LRE7Uk8tTJhWW7O k=;
X-IronPort-AV: E=Sophos;i="5.26,370,1459839600"; 
	d="scan'208,217";a="291220031"
Received: from ironmsg05-lv.qualcomm.com ([10.47.202.182])
	by wolverine02.qualcomm.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	26 May 2016 15:31:27 -0700
X-IronPort-AV: E=McAfee;i="5700,7163,8177"; a="28647918"
Received: from nalasexr02h.na.qualcomm.com ([10.49.56.58])
	by ironmsg05-lv.qualcomm.com with ESMTP/TLS/RC4-SHA;
	26 May 2016 15:31:25 -0700
Received: from nalasexr02c.na.qualcomm.com (10.49.56.27) by
	nalasexr02h.na.qualcomm.com (10.49.56.58) with Microsoft SMTP Server
	(TLS) id 15.0.1178.4; Thu, 26 May 2016 15:31:25 -0700
Received: from nalasexr02c.na.qualcomm.com ([10.49.56.27]) by
	nalasexr02c.na.qualcomm.com ([10.49.56.27]) with mapi id 15.00.1178.000;
	Thu, 26 May 2016 15:31:25 -0700
From: "Stroz, Glenn" <gstroz@qti.qualcomm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: On target gdb support for multiple architectures?
Thread-Index: AdG3macJMDi96tkSQ8yW/FGLHX3nFQ==
Date: Thu, 26 May 2016 22:31:25 +0000
Message-ID: <402820becd8447d1a6740c206eeab042@nalasexr02c.na.qualcomm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.47.70.6]
MIME-Version: 1.0
Subject: On target gdb support for multiple architectures?
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
X-List-Received-Date: Thu, 26 May 2016 22:33:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_402820becd8447d1a6740c206eeab042nalasexr02cnaqualcommco_"

--_000_402820becd8447d1a6740c206eeab042nalasexr02cnaqualcommco_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We're trying to setup our target for onboard debugging. We have multiple ar=
chitectures being built with multilib. An armv7 variant which is 32 bit and=
 an armv8 variant which is 64 bit. We would like the gdb installed in the i=
mage to support both architectures. Right now, even when adding both gdb an=
d lib32-gdb to the image we see it only supports aarch64.

#
# Multilib configuration
#
# This sets any packages preprended with lib32- to be built with
# the armv7a tuning (32 bit) instead of 64 bit aarch.
#
require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7a-neon"

When adding lib32-gdb and gdb to image:
(gdb) set architecture
Requires an argument. Valid arguments are aarch64, aarch64:ilp32, auto.

When adding only lib32-gdb to image:
(gdb) set architecture
Requires an argument. Valid arguments are arm, armv2, armv2a, armv3, armv3m=
, armv4, armv4t, armv5, armv5t, armv5te, xscale, ep9312, iwmmxt, iwmmxt2, a=
uto.

Is there any method of getting the build system to combine the two lists of=
 architectures into one binary that supports them all?

Thanks,
Glenn

--_000_402820becd8447d1a6740c206eeab042nalasexr02cnaqualcommco_
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
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We&#8217;re trying to setup our target for onboard d=
ebugging. We have multiple architectures being built with multilib. An armv=
7 variant which is 32 bit and an armv8 variant which is 64 bit. We would li=
ke the gdb installed in the image to support
 both architectures. Right now, even when adding both gdb and lib32-gdb to =
the image we see it only supports aarch64.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Multilib configuration<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># This sets any packages preprended with lib32- to b=
e built with<o:p></o:p></p>
<p class=3D"MsoNormal"># the armv7a tuning (32 bit) instead of 64 bit aarch=
.<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal">require conf/multilib.conf<o:p></o:p></p>
<p class=3D"MsoNormal">MULTILIBS =3D &quot;multilib:lib32&quot;<o:p></o:p><=
/p>
<p class=3D"MsoNormal">DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;armv7=
a-neon&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When adding lib32-gdb and gdb to image:<o:p></o:p></=
p>
<p class=3D"MsoNormal">(gdb) set architecture<o:p></o:p></p>
<p class=3D"MsoNormal">Requires an argument. Valid arguments are aarch64, a=
arch64:ilp32, auto.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When adding only lib32-gdb to image:<o:p></o:p></p>
<p class=3D"MsoNormal">(gdb) set architecture<o:p></o:p></p>
<p class=3D"MsoNormal">Requires an argument. Valid arguments are arm, armv2=
, armv2a, armv3, armv3m, armv4, armv4t, armv5, armv5t, armv5te, xscale, ep9=
312, iwmmxt, iwmmxt2, auto.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there any method of getting the build system to c=
ombine the two lists of architectures into one binary that supports them al=
l?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Glenn<o:p></o:p></p>
</div>
</body>
</html>

--_000_402820becd8447d1a6740c206eeab042nalasexr02cnaqualcommco_--
