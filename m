Return-Path: <tom.gibson@csoftware.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21854E00C50; Fri,  4 May 2018 04:33:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RDNS_DYNAMIC autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from APOLLO-EX16.csoftware.local (176-35-35-244.xdsl.murphx.net
	[176.35.35.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F178E00C25
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 04:33:38 -0700 (PDT)
Received: from APOLLO-EX16.csoftware.local (10.1.1.6) by
	APOLLO-EX16.csoftware.local (10.1.1.6) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.1415.2; Fri, 4 May 2018 12:33:55 +0100
Received: from APOLLO-EX16.csoftware.local ([fe80::f4fe:415e:7ed9:9ee0]) by
	APOLLO-EX16.csoftware.local ([fe80::f4fe:415e:7ed9:9ee0%13]) with mapi
	id 15.01.1415.004; Fri, 4 May 2018 12:33:55 +0100
From: Tom Gibson <tom.gibson@csoftware.co.uk>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Enabling SD Card Detection for USB SD Card Reader
Thread-Index: AdPjmu85XG/+EpnvQNGZkV78sc44Wg==
Date: Fri, 4 May 2018 11:33:55 +0000
Message-ID: <957f73cec1664ee293ecca5f6e227e33@csoftware.co.uk>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.1.70]
x-esetresult: clean, is OK
x-esetid: 37303A29CD5E6C6D677367
MIME-Version: 1.0
Subject: Enabling SD Card Detection for USB SD Card Reader
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
X-List-Received-Date: Fri, 04 May 2018 11:33:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_957f73cec1664ee293ecca5f6e227e33csoftwarecouk_"

--_000_957f73cec1664ee293ecca5f6e227e33csoftwarecouk_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

We would like to enable our Yocto distribution to auto-detect when an SD ca=
rd is inserted in a USB SD card reader, in much the same way as a card is d=
etected on desktop linux such as Ubuntu. We have got our USB card reader wo=
rking with the generic-storage driver, but at the moment we have to do some=
thing like 'fdisk -l' to refresh the attached storage after a card is inser=
ted or removed in order for it to it to be listed in /dev. The card reader =
shows up as /dev/sda regardless of whether there is a card present or not, =
but the partition on the card only shows up as /dev/sda1 after forcing the =
refresh.

Any pointers towards which service we need to install to enable this functi=
onality appreciated!

Regards,

Tom Gibson
C Software Limited


--_000_957f73cec1664ee293ecca5f6e227e33csoftwarecouk_
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
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
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We would like to enable our Yocto distribution to au=
to-detect when an SD card is inserted in a USB SD card reader, in much the =
same way as a card is detected on desktop linux such as Ubuntu. We have got=
 our USB card reader working with
 the generic-storage driver, but at the moment we have to do something like=
 &#8216;fdisk -l&#8217; to refresh the attached storage after a card is ins=
erted or removed in order for it to it to be listed in /dev. The card reade=
r shows up as /dev/sda regardless of whether
 there is a card present or not, but the partition on the card only shows u=
p as /dev/sda1 after forcing the refresh.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any pointers towards which service we need to instal=
l to enable this functionality appreciated!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB">Regards,<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB">Tom Gibso=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB">C Softwar=
e Limited</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_957f73cec1664ee293ecca5f6e227e33csoftwarecouk_--
