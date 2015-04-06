Return-Path: <Shalini.KP@lnttechservices.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00E21E00993; Mon,  6 Apr 2015 05:25:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [203.199.60.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 82 seconds by postgrey-1.32 at yocto-www;
	Mon, 06 Apr 2015 05:25:53 PDT
Received: from mailout2.ltindia.com (mailout2.ltindia.com [203.199.60.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B16FE00812
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2015 05:25:52 -0700 (PDT)
Received: from unknown (HELO POCITMSEXHUB04.LntUniverse.com) ([10.2.1.69])
	by mailout2.ltindia.com with ESMTP; 06 Apr 2015 17:53:53 +0530
Received: from POCITMSEXMB05.LntUniverse.com ([fe80::518c:4525:d15f:548a]) by
	POCITMSEXHUB04.LntUniverse.com ([fe80::8c5f:9589:e5d5:ce78%11]) with
	mapi id 14.03.0181.006; Mon, 6 Apr 2015 17:53:52 +0530
From: Shalini K P <Shalini.KP@LntTechservices.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Reg flashing Yocto SDcard image onto IMX6q sabre sd card
Thread-Index: AdBwZECadkxrv+ZbRbC5Xwpa3q2jLw==
Date: Mon, 6 Apr 2015 12:23:52 +0000
Message-ID: <E5FF0F26CCED3843A9B0899B389686BA4478BB@POCITMSEXMB05.LntUniverse.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.1.199]
MIME-Version: 1.0
Subject: Reg flashing Yocto SDcard image onto IMX6q sabre sd card
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
X-List-Received-Date: Mon, 06 Apr 2015 12:25:56 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E5FF0F26CCED3843A9B0899B389686BA4478BBPOCITMSEXMB05LntU_"

--_000_E5FF0F26CCED3843A9B0899B389686BA4478BBPOCITMSEXMB05LntU_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

     I have prepared an Yocto SD card image "core-image-minimal-imx6q-sabre=
sd.sdcard".  I trying to flash the image onto sdcard using the command
"sudo dd  if=3D core-image-minimal-imx6q-sabresd.sdcard of=3D/dev/sdb bs=3D=
1M"
Sync
Sync

I m getting the boot messages as below

U-Boot 2014.10+fslc+g5fd0b60 (Apr 03 2015 - 18:55:01)

CPU:   Freescale i.MX6Q rev1.2 at 792 MHz
Reset cause: POR
Board: MX6-SabreSD
I2C:   ready
DRAM:  1 GiB
MMC:   FSL_SDHC: 0, FSL_SDHC: 1, FSL_SDHC: 2
*** Warning - bad CRC, using default environment

No panel detected: default to Hannstar-XGA
Display: Hannstar-XGA (1024x768)
In:    serial
Out:   serial
Err:   serial
PMIC:  PFUZE100 ID=3D0x10
Net:   FEC [PRIME]
Hit any key to stop autoboot:  1
I m stuck up badly.  It is not going further.  Does the sdcard image contai=
n =FC-boot, kernel image and rootfs ? or should I flash u-boot separately ?=
 I even tried flashing both u-boot and sdcaed image. But getting same messa=
ges.  Request help in this regard.  I'm using Dizzy branch  and SABRESD Evk=
 board.


Thanks & Regards
Shalini K P


L&T Technology Services Ltd

www.LntTechservices.com<http://www.lnttechservices.com/>

This Email may contain confidential or privileged information for the inten=
ded recipient (s). If you are not the intended recipient, please do not use=
 or disseminate the information, notify the sender and delete it from your =
system.

--_000_E5FF0F26CCED3843A9B0899B389686BA4478BBPOCITMSEXMB05LntU_
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
<body lang=3D"EN-IN" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; I have prepared an Yocto SD=
 card image &#8220;core-image-minimal-imx6q-sabresd.sdcard&#8221;.&nbsp; I =
trying to flash the image onto sdcard using the command
<o:p></o:p></p>
<p class=3D"MsoNormal"><b>&#8220;sudo dd &nbsp;if=3D core-image-minimal-imx=
6q-sabresd.sdcard of=3D/dev/sdb bs=3D1M&#8221;<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>Sync<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>Sync<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal">I m getting the boot messages as below<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b>U-Boot 2014.10&#43=
;fslc&#43;g5fd0b60 (Apr 03 2015 - 18:55:01)<br>
<br>
CPU:&nbsp;&nbsp; Freescale i.MX6Q rev1.2 at 792 MHz<br>
Reset cause: POR<br>
Board: MX6-SabreSD<br>
I2C:&nbsp;&nbsp; ready<br>
DRAM:&nbsp; 1 GiB<br>
MMC:&nbsp;&nbsp; FSL_SDHC: 0, FSL_SDHC: 1, FSL_SDHC: 2<br>
*** Warning - bad CRC, using default environment<br>
<br>
No panel detected: default to Hannstar-XGA<br>
Display: Hannstar-XGA (1024x768)<br>
In:&nbsp;&nbsp;&nbsp; serial<br>
Out:&nbsp;&nbsp; serial<br>
Err:&nbsp;&nbsp; serial<br>
PMIC:&nbsp; PFUZE100 ID=3D0x10<br>
Net:&nbsp;&nbsp; FEC [PRIME]<br>
Hit any key to stop autoboot:&nbsp; 1 <o:p></o:p></b></p>
<p class=3D"MsoNormal">I m stuck up badly.&nbsp; It is not going further.&n=
bsp; Does the sdcard image contain =FC-boot, kernel image and rootfs ? or s=
hould I flash u-boot separately ? I even tried flashing both u-boot and sdc=
aed image. But getting same messages.&nbsp; Request
 help in this regard.&nbsp; I&#8217;m using Dizzy branch&nbsp; and SABRESD =
Evk board.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks &amp; Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Shalini K P&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p><strong>L&amp;T Technology Services Ltd</strong></p>
<p><a href=3D"http://www.lnttechservices.com/" target=3D"_blank">www.LntTec=
hservices.com</a></p>
<p>This Email may contain confidential or privileged information for the in=
tended recipient (s). If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.</p>
</body>
</html>

--_000_E5FF0F26CCED3843A9B0899B389686BA4478BBPOCITMSEXMB05LntU_--
