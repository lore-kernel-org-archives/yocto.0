Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.67503.1600105806076707215
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Sep 2020 10:50:06 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sakuraus.com, ip: 198.145.29.25, mailfrom: gwilson@sakuraus.com)
Received: from outbound-ip28a.ess.barracuda.com (outbound-ip28a.ess.barracuda.com [209.222.82.210])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 35C2B38C1167
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2020 10:50:05 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by mx2.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NO); Mon, 14 Sep 2020 17:50:03 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
 (10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Mon, 14
 Sep 2020 10:49:59 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
 ([::1]) with mapi id 15.01.0669.032; Mon, 14 Sep 2020 10:49:59 -0700
From: "Greg Wilson-Lindberg" <gwilson@sakuraus.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Patching file contained in downloaded recipe
Thread-Topic: Patching file contained in downloaded recipe
Thread-Index: AdaKvu9SsfsGiLwuTWqezHSnEiALBA==
Date: Mon, 14 Sep 2020 17:49:59 +0000
Message-ID: <8b4672f4a9ae48278785886362fc5bfe@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.142]
MIME-Version: 1.0
X-BESS-ID: 1600105798-893002-12926-2106-2
X-BESS-VER: 2019.1_20200914.1702
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.226894 [from 
	cloudscan18-48.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8b4672f4a9ae48278785886362fc5bfesakurauscom_"

--_000_8b4672f4a9ae48278785886362fc5bfesakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have a recipe that has a .service file in one of its files directories th=
at I need to patch.

I haven't been able to figure out how to specify the directory of the file =
that needs to be patched. I can't seem to get the patch to apply to the fil=
es directory, do I need to specify the /lib/systemd/system directory into t=
he PATCHDIR option or is there another way that would work better?

Regards
Greg

--_000_8b4672f4a9ae48278785886362fc5bfesakurauscom_
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
<p class=3D"MsoNormal">I have a recipe that has a .service file in one of i=
ts files directories that I need to patch.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I haven&#8217;t been able to figure out how to speci=
fy the directory of the file that needs to be patched. I can&#8217;t seem t=
o get the patch to apply to the files directory, do I need to specify the /=
lib/systemd/system directory into the PATCHDIR
 option or is there another way that would work better?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Greg<o:p></o:p></p>
</div>
</body>
</html>

--_000_8b4672f4a9ae48278785886362fc5bfesakurauscom_--
