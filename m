Return-Path: <michel.racine@hp.com>
Received: from g1t0028.austin.hp.com (g1t0028.austin.hp.com [15.216.28.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C013E0142F
	for <yocto@yoctoproject.org>; Mon,  4 Jun 2012 13:07:06 -0700 (PDT)
Received: from G1W3635G.americas.hpqcorp.net (g1w3635g.austin.hp.com
	[16.193.48.86]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g1t0028.austin.hp.com (Postfix) with ESMTPS id 5AD801C2CB
	for <yocto@yoctoproject.org>; Mon,  4 Jun 2012 20:07:05 +0000 (UTC)
Received: from G1W3637G.americas.hpqcorp.net (16.193.48.88) by
	G1W3635G.americas.hpqcorp.net (16.193.48.86) with Microsoft SMTP Server
	(TLS) id 14.2.283.4; Mon, 4 Jun 2012 20:05:55 +0000
Received: from G2W2535.americas.hpqcorp.net ([169.254.4.45]) by
	G1W3637G.americas.hpqcorp.net ([16.193.48.88]) with mapi id
	14.02.0283.003; Mon, 4 Jun 2012 20:05:55 +0000
From: "Racine, Michel" <michel.racine@hp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Adding java to distro
Thread-Index: Ac1CjXGP3BTVUSimQeuSHSGIDgrvcg==
Date: Mon, 4 Jun 2012 20:05:53 +0000
Message-ID: <3142CB09BE468C408BD5916115E8D45F017ADD@G2W2535.americas.hpqcorp.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.11]
MIME-Version: 1.0
Subject: Adding java to distro
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
X-List-Received-Date: Mon, 04 Jun 2012 20:07:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3142CB09BE468C408BD5916115E8D45F017ADDG2W2535americashp_"

--_000_3142CB09BE468C408BD5916115E8D45F017ADDG2W2535americashp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello there,

I've been trying to add a java layer to my cedartrail core-image-minimal. I=
 have dowloaded the meta-java from the OpenEmbedded layer index, then git t=
he oe-core and meta-embedded layers. But I'm still having issues when I att=
empt 'bitbake openjdk-6-jre'. I am using edison-6.0.1 and the meta-intel ce=
dartrail 6.0.1.

Is there a set of instructions on how to add java to the resulting image us=
ing poky?

Thanks,
Michel.


--_000_3142CB09BE468C408BD5916115E8D45F017ADDG2W2535americashp_
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
<p class=3D"MsoNormal">Hello there,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I've been trying to add a java layer to my cedartrai=
l core-image-minimal. I have dowloaded the meta-java from the OpenEmbedded =
layer index, then git the oe-core and meta-embedded layers. But I'm still h=
aving issues when I attempt 'bitbake
 openjdk-6-jre'. I am using edison-6.0.1 and the meta-intel cedartrail 6.0.=
1.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a set of instructions on how to add java to=
 the resulting image using poky?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Michel.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_3142CB09BE468C408BD5916115E8D45F017ADDG2W2535americashp_--
