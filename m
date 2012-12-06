Return-Path: <Tim.Verstraete@medecbenelux.be>
Received: from mail.medecbenelux.be (mail.medecbenelux.be [81.83.14.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB028E01430
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 02:24:59 -0800 (PST)
Received: from SBS-MEDEC.medecbenelux.local ([fe80::1b66:a66e:3778:1407]) by
	SBS-MEDEC.medecbenelux.local ([fe80::1b66:a66e:3778:1407%10]) with mapi
	id 14.01.0421.002; Thu, 6 Dec 2012 11:24:57 +0100
From: Tim Verstraete <Tim.Verstraete@medecbenelux.be>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: uboot i.MX6
Thread-Index: Ac3Tm4Wec0Im9QQGTqajTv7DxzR57w==
Date: Thu, 6 Dec 2012 10:24:56 +0000
Message-ID: <4439C3C0562087488F139C696CD862A71328DE01@SBS-MEDEC.medecbenelux.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2002:5153:ef2:0:e1f3:c168:1f63:f93d]
MIME-Version: 1.0
Subject: uboot i.MX6
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
X-List-Received-Date: Thu, 06 Dec 2012 10:25:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4439C3C0562087488F139C696CD862A71328DE01SBSMEDECmedecbe_"

--_000_4439C3C0562087488F139C696CD862A71328DE01SBSMEDECmedecbe_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi everybody,

I have build the i.MX6 with danny release of yocto and latest freescale met=
a using the core-image-minimal image for imx6qsabresd target machine =3D=3D=
> result is build has done everything BUT I when I upload my uboot to my sd=
 card I get nothing. When I change uboot to the image from the freescale we=
bsite everything runs ...

So this means the kernel and root file system are just fine, only uboot is =
not ok. My uboot is about half the size of the freescale uboot.

Do I need to do anything special for uboot to run on my device?

Thanks in advance,

Kind regards,

Tim


--_000_4439C3C0562087488F139C696CD862A71328DE01SBSMEDECmedecbe_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"NL" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi everybody,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have build the i.MX6 with dan=
ny release of yocto and latest freescale meta using the core-image-minimal =
image for imx6qsabresd target machine
</span><span lang=3D"EN-US" style=3D"font-family:Wingdings">=E8</span><span=
 lang=3D"EN-US"> result is build has done everything BUT I when I upload my=
 uboot to my sd card I get nothing. When I change uboot to the image from t=
he freescale website everything runs &#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So this means the kernel and ro=
ot file system are just fine, only uboot is not ok. My uboot is about half =
the size of the freescale uboot.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Do I need to do anything specia=
l for uboot to run on my device?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks in advance,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kind regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Tim<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_4439C3C0562087488F139C696CD862A71328DE01SBSMEDECmedecbe_--
