Return-Path: <Brian.Wenholz@med.ge.com>
Received: from exprod5og104.obsmtp.com (exprod5og104.obsmtp.com [64.18.0.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C81E4E00408
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2013 07:49:29 -0700 (PDT)
Received: from cinmlip12.e2k.ad.ge.com ([12.71.149.1]) (using TLSv1) by
	exprod5ob104.postini.com ([64.18.4.12]) with SMTP
	ID DSNKUg47+OPwvoOos9RgtUXqk+iko+YKb8WO@postini.com;
	Fri, 16 Aug 2013 07:49:32 PDT
Received: from unknown (HELO alpmlef06.e2k.ad.ge.com) ([3.159.18.15])
	by cinmlip12.e2k.ad.ge.com with ESMTP; 16 Aug 2013 10:49:25 -0400
Received: from cinmlef17.e2k.ad.ge.com ([3.159.213.93]) by
	alpmlef06.e2k.ad.ge.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 16 Aug 2013 10:49:24 -0400
Received: from CINMLCH02.e2k.ad.ge.com ([3.159.212.51]) by
	cinmlef17.e2k.ad.ge.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 16 Aug 2013 10:48:56 -0400
Received: from ALPMBHT02.e2k.ad.ge.com (3.159.19.195) by
	CINMLCH02.e2k.ad.ge.com (3.159.212.51) with Microsoft SMTP Server (TLS)
	id 14.3.146.0; Fri, 16 Aug 2013 10:48:54 -0400
Received: from ALPURAPA03.e2k.ad.ge.com (3.159.19.111) by
	ALPMBHT02.e2k.ad.ge.com (3.159.19.195) with Microsoft SMTP Server (TLS)
	id 14.3.146.0; Fri, 16 Aug 2013 10:48:54 -0400
Received: from ALPURAPA22.e2k.ad.ge.com ([169.254.4.38]) by
	ALPURAPA03.e2k.ad.ge.com ([169.254.3.44]) with mapi id 14.03.0146.000;
	Fri, 16 Aug 2013 10:48:54 -0400
From: "Wenholz, Brian (GE Healthcare)" <Brian.Wenholz@med.ge.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Full Screen Image Display Program
Thread-Index: Ac6ajzBhU6M7wj6PQTiTV8IHz4Kjbw==
Date: Fri, 16 Aug 2013 14:48:54 +0000
Message-ID: <4F1B91CF7B31604FABE8442530201B7803E4FC@ALPURAPA22.e2k.ad.ge.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [3.159.19.192]
MIME-Version: 1.0
X-OriginalArrivalTime: 16 Aug 2013 14:48:56.0728 (UTC)
	FILETIME=[BC1C1180:01CE9A8F]
Subject: Full Screen Image Display Program
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
X-List-Received-Date: Fri, 16 Aug 2013 14:49:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4F1B91CF7B31604FABE8442530201B7803E4FCALPURAPA22e2kadge_"

--_000_4F1B91CF7B31604FABE8442530201B7803E4FCALPURAPA22e2kadge_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Does anyone have, or can point me to, a good recipe for qiv that will work =
with Yocto 1.3?

I found an obsolete qiv recipe via openembedded, but to update it will be b=
asically writing a new recipe since the source locations and dependencies h=
ave changed.

I am open to other suggestions to meet my needs as well. I need a program t=
hat will:
-Display PNG images in full screen mode
-Display the image without overlays
-Display to the X server (I do not have a user space accessible frame buffe=
r device)
-Operate from the command line or a shell script

Brian Wenholz

--_000_4F1B91CF7B31604FABE8442530201B7803E4FCALPURAPA22e2kadge_
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
	font-family:"Arial","sans-serif";
	color:black;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Does anyone have, or can poin=
t me to, a good recipe for qiv that will work with Yocto 1.3?<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">I found an obsolete qiv recip=
e via openembedded, but to update it will be basically writing a new recipe=
 since the source locations and dependencies have changed.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">I am open to other suggestion=
s to meet my needs as well. I need a program that will:<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">-Display PNG images in full s=
creen mode<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">-Display the image without ov=
erlays<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">-Display to the X server (I d=
o not have a user space accessible frame buffer device)<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">-Operate from the command lin=
e or a shell script<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Brian Wenholz<o:p></o:p></spa=
n></p>
</div>
</body>
</html>

--_000_4F1B91CF7B31604FABE8442530201B7803E4FCALPURAPA22e2kadge_--
