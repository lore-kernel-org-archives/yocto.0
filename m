Return-Path: <vmartin@avaya.com>
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14201E00B6E
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 08:57:17 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AgUFAKwzWVPGmAcV/2dsb2JhbABZgkIjIU9XxDWBHBZ0gicBAQMSG14BDAkVViYBBBsaiB8BmSOEWa1QF44ng1yBFQSfeItTgzGCKw
X-IronPort-AV: E=Sophos;i="4.97,919,1389762000"; d="scan'208,217";a="59465356"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	24 Apr 2014 11:57:16 -0400
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	24 Apr 2014 11:41:42 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Thu, 24 Apr 2014 11:57:15 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Exporting kernel header from patch
Thread-Index: Ac9f1VoEjF/wfPWZSACSxkzGYHPoeA==
Date: Thu, 24 Apr 2014 15:57:15 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779820B77A65@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: Exporting kernel header from patch
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
X-List-Received-Date: Thu, 24 Apr 2014 15:57:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE65219103779820B77A65AZUS1EXMB03glob_"

--_000_30C2D590D16A5C46ADFE65219103779820B77A65AZUS1EXMB03glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have a custom layer to add patches to my vendor's BSP layer
(based on Linux 3.4, if it matters) and a .bbappend to list the
patches.

One of the patches adds a header, and this header needs to
be exported to the sysroot.

I added the following to my .bbappend, based on a discussion
I found:

do_install_append() {
    install -d ${D}${includedir}/linux
    install -m 644 ${S}/include/linux/uc1698u.h ${D}${includedir}/linux/uc1=
698u.h
}

It "works" (i.e., the header is installed in the sysroot) but there must
be more to it than that because I also get a warning about the header
being "installed but not shipped in any package".

What's the correct way to do this?

MV

--_000_30C2D590D16A5C46ADFE65219103779820B77A65AZUS1EXMB03glob_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I have a custom layer to add patches to my vendor&#8=
217;s BSP layer<o:p></o:p></p>
<p class=3D"MsoNormal">(based on Linux 3.4, if it matters) and a .bbappend =
to list the<o:p></o:p></p>
<p class=3D"MsoNormal">patches.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">One of the patches adds a header, and this header ne=
eds to<o:p></o:p></p>
<p class=3D"MsoNormal">be exported to the sysroot.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I added the following to my .bbappend, based on a di=
scussion<o:p></o:p></p>
<p class=3D"MsoNormal">I found:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_install_append() {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; install -d ${D}${includedir}/linu=
x<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; install -m 644 ${S}/include/linux=
/uc1698u.h ${D}${includedir}/linux/uc1698u.h<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It &#8220;works&#8221; (i.e., the header is installe=
d in the sysroot) but there must<o:p></o:p></p>
<p class=3D"MsoNormal">be more to it than that because I also get a warning=
 about the header<o:p></o:p></p>
<p class=3D"MsoNormal">being &#8220;installed but not shipped in any packag=
e&#8221;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What&#8217;s the correct way to do this?<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">MV<o:p></o:p></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE65219103779820B77A65AZUS1EXMB03glob_--
