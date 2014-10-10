Return-Path: <sandrieu@greenflex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 012C6E00799; Fri, 10 Oct 2014 09:11:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp-out.fingerprint.fr (smtp-out.fingerprint.fr
	[109.69.192.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9981E0076C
	for <yocto@yoctoproject.org>; Fri, 10 Oct 2014 09:11:55 -0700 (PDT)
Received: from mxr1.fingerprint.fr (unknown [192.168.2.144])
	by smtp-out.fingerprint.fr (Postfix) with SMTP id 67B54836E2
	for <yocto@yoctoproject.org>; Fri, 10 Oct 2014 18:11:50 +0200 (CEST)
Received: (qmail 16363 invoked from network); 10 Oct 2014 16:11:50 -0000
Received: from unknown (HELO SRV-MAIL.greenflex.group) (185.3.64.10)
	by mxr1.fingerprint.fr with SMTP; 10 Oct 2014 16:11:50 -0000
Received: from SRV-MAIL.greenflex.group (192.168.100.25) by
	SRV-MAIL.greenflex.group (192.168.100.25) with Microsoft SMTP Server
	(TLS) id 15.0.913.22; Fri, 10 Oct 2014 18:11:51 +0200
Received: from SRV-MAIL.greenflex.group ([fe80::64f4:d152:2fe:b001]) by
	SRV-MAIL.greenflex.group ([fe80::64f4:d152:2fe:b001%12]) with mapi id
	15.00.0913.011; Fri, 10 Oct 2014 18:11:51 +0200
From: Simon Andrieu <sandrieu@greenflex.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: cellular modem connection with USB: how to have /dev/ttyACM0
	interface?
Thread-Index: Ac/kpMNa3/kDLiLATKKIWw8PmE92/g==
Date: Fri, 10 Oct 2014 16:11:51 +0000
Message-ID: <0ce4c396ad1544acbf2e1295f9536be1@SRV-MAIL.greenflex.group>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.193.55.84]
MIME-Version: 1.0
Cc: Arnaud Dejean <arnaud.dejean@bnextenergy.com>
Subject: cellular modem connection with USB: how to have /dev/ttyACM0 interface?
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
X-List-Received-Date: Fri, 10 Oct 2014 16:11:58 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_0ce4c396ad1544acbf2e1295f9536be1SRVMAILgreenflexgroup_"

--_000_0ce4c396ad1544acbf2e1295f9536be1SRVMAILgreenflexgroup_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I work on connecting a cellular module (with H24 Telit component) using an =
USB interface to our Yocto distribution.
The /dev/ttyACM0 interface is not mounted on the Yocto distribution I use f=
ollowing USB connection. Here are the dmesg logs:
[65133.056335] usb 2-1: new high speed USB device using musb-hdrc and addre=
ss 2
[65133.214965] usb 2-1: device v22b8 p2d91 is not supported
[65133.220520] usb 2-1: New USB device found, idVendor=3D22b8, idProduct=3D=
2d91
[65133.227508] usb 2-1: New USB device strings: Mfr=3D1, Product=3D2, Seria=
lNumber=3D0
[65133.234924] usb 2-1: Product: Motorola Phone (H24)
[65133.239929] usb 2-1: Manufacturer: Motorola, Inc.
[65133.274108] usbcore: registered new interface driver cdc_acm
[65133.280029] cdc_acm: v0.26:USB Abstract Control Model driver for USB mod=
ems and ISDN adapters

Maybe the used cdc-acm driver is not the right version.
Would you know which cdc-acm driver version I should use please?
How is it possible to change/upgrade the cdc-acm module?
Would you have any advice to help me please?

Thanks for your help.

Regards,
Simon Andrieu


--_000_0ce4c396ad1544acbf2e1295f9536be1SRVMAILgreenflexgroup_
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
	font-family:"Calibri","sans-serif";
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
<body lang=3D"FR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I work on connecting a cellular=
 module (with H24 Telit component) using an USB interface to our Yocto dist=
ribution.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The /dev/ttyACM0 interface is n=
ot mounted on the Yocto distribution I use following USB connection. Here a=
re the dmesg logs:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-f=
amily:&quot;Courier New&quot;">[65133.056335] usb 2-1: new high speed USB d=
evice using musb-hdrc and address 2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-f=
amily:&quot;Courier New&quot;">[65133.214965] usb 2-1: device v22b8 p2d91 i=
s not supported<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-f=
amily:&quot;Courier New&quot;">[65133.220520] usb 2-1: New USB device found=
, idVendor=3D22b8, idProduct=3D2d91<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-f=
amily:&quot;Courier New&quot;">[65133.227508] usb 2-1: New USB device strin=
gs: Mfr=3D1, Product=3D2, SerialNumber=3D0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-f=
amily:&quot;Courier New&quot;">[65133.234924] usb 2-1: Product: Motorola Ph=
one (H24)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-f=
amily:&quot;Courier New&quot;">[65133.239929] usb 2-1: Manufacturer: Motoro=
la, Inc.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-f=
amily:&quot;Courier New&quot;">[65133.274108] usbcore: registered new inter=
face driver cdc_acm<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-f=
amily:&quot;Courier New&quot;">[65133.280029] cdc_acm: v0.26:USB Abstract C=
ontrol Model driver for USB modems and ISDN adapters<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Maybe the used cdc-acm driver i=
s not the right version.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Would you know which cdc-acm dr=
iver version I should use please?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">How is it possible to change/up=
grade the cdc-acm module?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Would you have any advice to he=
lp me please?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks for your help.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Simon Andrieu<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0ce4c396ad1544acbf2e1295f9536be1SRVMAILgreenflexgroup_--
