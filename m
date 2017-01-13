Return-Path: <Vinothkumar.Eswaran@de.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5345E003E4; Fri, 13 Jan 2017 02:38:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [139.15.243.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from imta21.fe.bosch.de (imta21.fe.bosch.de [139.15.243.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75719E0033D
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2017 02:38:32 -0800 (PST)
Received: from smtp6-v.fe.bosch.de (imta24.fe.bosch.de [139.15.243.27])
	by imta21.fe.bosch.de (Postfix) with ESMTP id 1BE17C09F8
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2017 11:38:31 +0100 (CET)
Received: from vsmta11.fe.internet.bosch.com (unknown [10.4.98.51])
	by imta24.fe.bosch.de (Postfix) with ESMTP id 96207D80219
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2017 11:38:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=de.bosch.com;
	s=2015-01-21; t=1484303907;
	bh=5WbBUBujBf53EaW1tEDNrrdtbcY0YNlTlcXUVu/I0BA=; l=10;
	h=From:From:Reply-To:Sender;
	b=BVHxouLGElNNbgmdCEtDlw8sQ1Ck2DvlAukPBLOSR8SaXbW3JcAKF13VaPfHLZzxj
	BFZxlfAaxIPc4f5oX5RZz2UOYJOozgf9urHr9jZ5aQjbtcPqPj3mMXDC0JT1v/AGq5
	iAD5t2HtO4kG/bcOT1a9HVYgxAhn3iuE58ESum7g=
Received: from SI-MBX1013.de.bosch.com (vsgw22.fe.internet.bosch.com
	[10.4.98.11])
	by vsmta11.fe.internet.bosch.com (Postfix) with ESMTP id 3FB15238098C
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2017 11:38:27 +0100 (CET)
Received: from FE-MBX1014.de.bosch.com (10.3.230.72) by
	SI-MBX1013.de.bosch.com (10.3.230.50) with Microsoft SMTP Server (TLS)
	id 15.0.1236.3; Fri, 13 Jan 2017 11:38:26 +0100
Received: from FE-MBX1014.de.bosch.com ([fe80::f960:d6c4:9c04:b471]) by
	FE-MBX1014.de.bosch.com ([fe80::f960:d6c4:9c04:b471%16]) with mapi id
	15.00.1236.000; Fri, 13 Jan 2017 11:38:26 +0100
From: "Eswaran Vinothkumar (BEG-PT/PJ-IOT1)" <Vinothkumar.Eswaran@de.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to decide which Yocto branch to use -krogoth or Jethro or
	any other
Thread-Index: AdJtiStBjNVIyxQPSyW9XLqPdIw65w==
Date: Fri, 13 Jan 2017 10:38:26 +0000
Message-ID: <479b9a6cb016421f850b9ae8e1cdbb88@FE-MBX1014.de.bosch.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.60.64.211]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1679-8.0.0.1202-22818.006
X-TMASE-MatchedRID: le1dUZb+QbPaptcWRK0FR5a/iwJMDYarJizcFpTcRGebKbiOQazMl3OI
	kCCcW30agNpvDzTNH6qmKBrvzeFofIx8jP90278eYr99ImIZafjDHSNFHFxB8/gnJH5vm2+gj89
	UNKHJMW1ep8t5paFR/d3MVuP+/y3dTEZzxMifA6DWmh5xCo4mMJ4IbsXmum7GdDwP5ItpCOwcSR
	F9JP5Ozi4jb1n1eNA354mbosKUuYfCKxdd3mKUa4oLoibgjVEX+Gz435tISEHwBIKUA18CB1vr9
	JucnAavzkH/0tV77RAZttB2H+RMvwkbnmLrKdcc+KUzuemidPxfohHCqSnabhUZTfM00s4+2s92
	sh0zjZvZfQx3B5aMuJJTzjwz+Gzox7hajJv6RUWdVNZaI2n6/503C0fPk8xKCsPisOq3oZvkakA
	MW1g/fuLzNWBegCW2Tvt7hjXGr/fJzqAJgIs7jjsAVzN+Ov/sscQTctAVJKGuuRPo2dvGiWr/MB
	n6h0CuyaVcUA8pGfBqbJplk/n+Ww==
Subject: How to decide which Yocto branch to use -krogoth or Jethro or any other
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
X-List-Received-Date: Fri, 13 Jan 2017 10:38:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_479b9a6cb016421f850b9ae8e1cdbb88FEMBX1014deboschcom_"

--_000_479b9a6cb016421f850b9ae8e1cdbb88FEMBX1014deboschcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am newbie to the Yocto world. I am trying to learn how to create an Embed=
ded Linux distribution using the Yocto and so far have succeeded in buildin=
g a base image for my customized board and the system is working fine. I am=
 currently using the Yocto branch - krogoth. I checked the Yocto website fo=
r the stable releases:

https://wiki.yoctoproject.org/wiki/Releases

Krogoth and Jethro branches are marked as the stable versions. Since the Kr=
ogoth version is relatively new, I decided to use that. Now I am planning t=
o create an Yocto based build system for my embedded Product.

What's the influence in choosing one branch over the other. Any long term b=
enefits or what should I keep in mind when I choose which branch to use? An=
y inputs on these would be helpful. cheers:)
Mit freundlichen Gr=FC=DFen / Best regards
Vinothkumar Eswaran



--_000_479b9a6cb016421f850b9ae8e1cdbb88FEMBX1014deboschcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p><span style=3D"font-family:&quot;Verdana&quot;,sans-serif">Hello,<o:p></=
o:p></span></p>
<p><span style=3D"font-family:&quot;Verdana&quot;,sans-serif">I am newbie t=
o the Yocto world. I am trying to learn how to create an Embedded Linux dis=
tribution using the Yocto and so far have succeeded in building a base imag=
e for my customized board and the system is
 working fine. I am currently using the Yocto branch - krogoth. I checked t=
he Yocto website for the stable releases:<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Verdana&quot;,sans-serif"><a href=3D"ht=
tps://wiki.yoctoproject.org/wiki/Releases">https://wiki.yoctoproject.org/wi=
ki/Releases</a><o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Verdana&quot;,sans-serif">Krogoth and J=
ethro branches are marked as the stable versions. Since the Krogoth version=
 is relatively new, I decided to use that. Now I am planning to create an Y=
octo based build system for my embedded Product.<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Verdana&quot;,sans-serif">What's the in=
fluence in choosing one branch over the other. Any long term benefits or wh=
at should I keep in mind when I choose which branch to use? Any inputs on t=
hese would be helpful. cheers:)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:12.0pt;font-fam=
ily:&quot;Verdana&quot;,sans-serif;color:black">Mit freundlichen Gr=FC=DFen=
 / Best regards
<br>
Vinothkumar Eswaran<br>
<br>
<br>
</span><span lang=3D"DE" style=3D"font-size:12.0pt;font-family:&quot;Verdan=
a&quot;,sans-serif"><o:p></o:p></span></p>
</div>
</body>
</html>

--_000_479b9a6cb016421f850b9ae8e1cdbb88FEMBX1014deboschcom_--
