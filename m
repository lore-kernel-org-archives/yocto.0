Return-Path: <btv1==21622b0b7a1==Matt.Schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42D98E0073D; Mon, 19 May 2014 16:59:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=HTML_MESSAGE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 749 seconds by postgrey-1.32 at yocto-www;
	Mon, 19 May 2014 16:59:44 PDT
Received: from barbvt11.planar.com (unknown [199.244.172.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E1B3E006EC
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 16:59:44 -0700 (PDT)
X-ASG-Debug-ID: 1400543234-04afd239de12114b0001-yzSStA
Received: from msxbvt03.planar.net (msxbvt03.planar.net [172.16.0.147]) by
	barbvt11.planar.com with ESMTP id Ng6b2mQeYQkctGwg for
	<yocto@yoctoproject.org>; Mon, 19 May 2014 16:47:14 -0700 (PDT)
X-Barracuda-Envelope-From: Matt.Schuckmann@planar.com
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Mon, 19 May 2014 16:47:13 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 19 May 2014 16:47:12 -0700
Thread-Topic: Can't boot poky-tiny in qemu
X-ASG-Orig-Subj: Can't boot poky-tiny in qemu
Thread-Index: Ac9zvKexK1sJ/v7iSHKuKVUKQof0UA==
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FD6CF755F@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: AB73 AEhO AWtC BxZa B6Hw Cc5k DgBd FwiG GhML HTMf HyNo
	IABK IYEG IyU8 JYb+
	Jx7l; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {FD824A2F-E7F2-4174-9980-AD8D71996FEF};
	bQBhAHQAdAAuAHMAYwBoAHUAYwBrAG0AYQBuAG4AQABwAGwAYQBuAGEAcgAuAGMAbwBtAA==;
	Mon, 19 May 2014 23:47:12 GMT;
	QwBhAG4AJwB0ACAAYgBvAG8AdAAgAHAAbwBrAHkALQB0AGkAbgB5ACAAaQBuACAAcQBlAG0AdQA=
x-cr-puzzleid: {FD824A2F-E7F2-4174-9980-AD8D71996FEF}
acceptlanguage: en-US
MIME-Version: 1.0
X-Barracuda-Connect: msxbvt03.planar.net[172.16.0.147]
X-Barracuda-Start-Time: 1400543234
X-Barracuda-URL: http://10.10.111.113:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at planar.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No,
	SCORE=-2.02 using per-user scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.5947
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: Can't boot poky-tiny in qemu
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
X-List-Received-Date: Mon, 19 May 2014 23:59:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4B07ADD556F70043925DA2E9C5D4346D2FD6CF755FMSXBEBVT12pla_"

--_000_4B07ADD556F70043925DA2E9C5D4346D2FD6CF755FMSXBEBVT12pla_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm trying to come to grips with Yocto and poky and a minimal image so I'm =
trying to build boot and modify poky-tiny and having no luck booting it in =
qemu.

I'm following instructions here https://wiki.yoctoproject.org/wiki/Poky-Tin=
y#Some_information_about_the_running_system but when I run the qemu command=
 nothing happens. I'm a total noob with qemu so I don't even know how to ap=
proach figuring out what is wrong.

Any help would be appreciated.

Thanks,
Matt S.

--_000_4B07ADD556F70043925DA2E9C5D4346D2FD6CF755FMSXBEBVT12pla_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
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
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal>I&#8217;m trying to come to grips with Yocto and poky =
and a
minimal image so I&#8217;m trying to build boot and modify poky-tiny and ha=
ving
no luck booting it in qemu. <o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>I&#8217;m following instructions here <a
href=3D"https://wiki.yoctoproject.org/wiki/Poky-Tiny#Some_information_about=
_the_running_system">https://wiki.yoctoproject.org/wiki/Poky-Tiny#Some_info=
rmation_about_the_running_system</a>
but when I run the qemu command nothing happens. I&#8217;m a total noob wit=
h
qemu so I don&#8217;t even know how to approach figuring out what is wrong.=
 <o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Any help would be appreciated. <o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Thanks, <o:p></o:p></p>

<p class=3DMsoNormal>Matt S. <o:p></o:p></p>

</div>

</body>

</html>

--_000_4B07ADD556F70043925DA2E9C5D4346D2FD6CF755FMSXBEBVT12pla_--
