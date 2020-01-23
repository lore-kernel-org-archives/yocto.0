Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.1070.1579805072972820427
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 10:44:33 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: sakuraus.com, ip: 140.211.169.56, mailfrom: gwilson@sakuraus.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84D44E01602; Thu, 23 Jan 2020 10:44:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [209.222.82.220 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 905 seconds by postgrey-1.32 at yocto-www; Thu, 23 Jan 2020 10:44:31 PST
Received: from outbound-ip23b.ess.barracuda.com (outbound-ip23b.ess.barracuda.com [209.222.82.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F7CCE015FA
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2020 10:44:31 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by mx14.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256 bits=256 verify=NO); Thu, 23 Jan 2020 18:44:30 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
 (10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Thu, 23
 Jan 2020 10:29:22 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
 ([::1]) with mapi id 15.01.0669.032; Thu, 23 Jan 2020 10:29:22 -0800
From: "Greg Wilson-Lindberg" <gwilson@sakuraus.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: generate initramfs for raspberry pi
Thread-Topic: generate initramfs for raspberry pi
Thread-Index: AdXSGhPvXo6b8fM0Tbq1um18IL8inQ==
Date: Thu, 23 Jan 2020 18:29:22 +0000
Message-ID: <61f1edc4d6184022a55eb1feeff1263a@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.142]
MIME-Version: 1.0
X-BESS-ID: 1579805070-893027-22255-45716-1
X-BESS-VER: 2019.1_20200122.0617
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.221859 [from 
	cloudscan22-188.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_61f1edc4d6184022a55eb1feeff1263asakurauscom_"

--_000_61f1edc4d6184022a55eb1feeff1263asakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello List,
I have not been able to figure out how to generate an initramfs image for a=
 raspberry pi build of yocto. I've searched it web and have not found anyth=
ing that mentions generating the actual image, lots of hits on how to confi=
gure using the initramfs, but not on generating it. Is there a standard rec=
ipe for a raspberry pi initramfs and how would I enable its generation, or =
maybe I'm just being clueless.

I'm running on a boot2qt build of yocto based on Qt v5.14.0 that uses warri=
or and I'm targeting an RPi 4 using u-boot.

Any help would be greatly appreciated.

Best regards,
Greg Wilson-Lindberg

--_000_61f1edc4d6184022a55eb1feeff1263asakurauscom_
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
<p class=3D"MsoNormal">Hello List,<o:p></o:p></p>
<p class=3D"MsoNormal">I have not been able to figure out how to generate a=
n initramfs image for a raspberry pi build of yocto. I&#8217;ve searched it=
 web and have not found anything that mentions generating the actual image,=
 lots of hits on how to configure using
 the initramfs, but not on generating it. Is there a standard recipe for a =
raspberry pi initramfs and how would I enable its generation, or maybe I&#8=
217;m just being clueless.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m running on a boot2qt build of yocto based =
on Qt v5.14.0 that uses warrior and I&#8217;m targeting an RPi 4 using u-bo=
ot.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help would be greatly appreciated.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Greg Wilson-Lindberg<o:p></o:p></p>
</div>
</body>
</html>

--_000_61f1edc4d6184022a55eb1feeff1263asakurauscom_--
