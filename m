Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47343C433EF
	for <webhook@archiver.kernel.org>; Wed,  3 Nov 2021 17:57:21 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.13.1635962239813161019
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Nov 2021 10:57:20 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com
 header.s=trusted01 header.b=S5h/SM1+;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1635962239; x=1793642239;
  h=from:to:subject:date:mime-version;
  bh=XzuKTUR67Prvt3aVlxgHb2Y/FHa4ES9HfXnnj9IqGUo=;
  b=S5h/SM1+JDuMwAa7UKDLECLbouDFTKlTyhvKJ8gilb6UnA7tV+Kfruf5
   Ue4D77xyKnecNrPMYI+tVkuyjFzJM8MbwjAOnKHDTqqk42FFjx4pqxBxI
   oEvjlpCgO7tI+j2CkaV551sGtKBQbH/DvitImFzhjyyesSLSTxpa8Wp/7
   w=;
IronPort-SDR: 
 DiwZRuH3/EBCDhmSyH2ijsag1EW478oNZMkcMtHapn8POTJKQ3h39EOH2KhXxn9zcVNgZ7wzt0
 iKubF2fje1iQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3AmWIG0hOZGGWgcfr/uyol6nZjChdPi9zP1u491?=
 =?us-ascii?q?JMrhvp0f7i5+Ny6ZQqDv6wr1AaCBN+Bo7Ic0qyK6fimATRBqb+681k6OKRWU?=
 =?us-ascii?q?BEEjchE1ycBO+WiTXPBEfjxciYhF95DXlI2t1uyMExSBdqsLwaK+i764jEdA?=
 =?us-ascii?q?AjwOhRoLerpBIHSk9631+ev8JHPfglEnjWwba1vIBmssQndq8YajZZ8Jqov1?=
 =?us-ascii?q?xDFpmdEd/lMyW5nO16fgwzw6tus8JJm7i9dp+8v+8lcXKvgYq82V6ZYDDMoM?=
 =?us-ascii?q?2A04M3kqxzORhaR63UfT2sbjANGDxDK4x/mUJjxtDD6tvdm1ymBIcL2V7E0V?=
 =?us-ascii?q?i+84KptVRTllT0INz898GHQl8xwkKdWqw+vqhBj34LZZpyeOfxjda3fYNwaX?=
 =?us-ascii?q?3JMUMZPWSJcHoOyYYgBD+sdMulXtITyvUcCrRmkCAWwGO/j1DlFjWL2060g1?=
 =?us-ascii?q?OQhFBnL0AInEdIJtnTUt8v6O7kJUeyt0aLG0CnDYO1I2Tjj7ojDbw4squyIU?=
 =?us-ascii?q?b1+bMTdzEcjHB7Cg1WLtYzqIS2V2foLs2SB6upgUuSvi3U5pA5vuTii3dwjh?=
 =?us-ascii?q?ZPXiYIOylHE7jl5z5gwJd2jUkJ0fdmkEJ5JuiycKoB5Td8sTXtytyYm1r0Jp?=
 =?us-ascii?q?4S7fC4SxZopyRPSd/2KfoqJ7x79SeqcPzR1iXJhdb+wiBu+7Eaux+3zWMWp1?=
 =?us-ascii?q?FtHrCpIn9bNu3wQyRHe7suKR/hg80u81jiC0R3Y5OJcIU0siKbXN4Qtz7Aym?=
 =?us-ascii?q?5YJr0jPAC/7lF/3gaKXbkko5/Sk5/7ob7jpvJOROJV4hhz+P6koh8exG/43M?=
 =?us-ascii?q?hIUUGie4em80brj8lDnT7hSlf02l7XZsIjdJcQGuq61Gw9V3Zgn6xa4Fzqpz?=
 =?us-ascii?q?M4XnWIbI1JAYxKKi4zkNlLSLPzmF/u/hU6jnC1wyP/cILLhGZXMLmPfkLj/e?=
 =?us-ascii?q?LZ98FRQxxY0zdBa/55UC7cBL+zvWkLpqdDUEgU1PgK2zur9FtlxyIMTVXiOD?=
 =?us-ascii?q?6KYKK/StEWH5uMrI+mCfo8VvzP9JuA+5/7yk3A5h0ESfa+z0ZsSb3C4GO9mL?=
 =?us-ascii?q?FuHbnr3mdoOCn0FsRQlTO3qk12CTSBcZ3OpX64m+j47D4emAZ/ZRo+xmLyBw?=
 =?us-ascii?q?Du7HppOa2FGDVCDDWvod4KfVvcIaSKSOdNhkiceWbmhTI8uyQ2utAjiy7p9K?=
 =?us-ascii?q?erU+DMXuo7/1NRv4O3Tjx4ypnRICJHXwmaGU2ZcmmITWyRwzad0vUtl0FCB3?=
 =?us-ascii?q?KNkxftCGpYbs+JOWRs9HZrd1PBhTcH1UR7GZs2OSlutXpOhGz5nHfwrxNpbK?=
 =?us-ascii?q?WN6Hc6vgwuHlxG2DqEYkfSgTNwJyeOWlyzqO8tjxnCA0a4nlFQrWeNFPGC9l?=
 =?us-ascii?q?7Vj+g3IQYXOlhPKxO6Raa0A0XuVpy+4xm2UsRQAODM=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3ARI0Rz6O7xSLTkt/vrR2PlcFynXyQoLVcMsEvi?=
 =?us-ascii?q?/4bfWQNrUor0TwFz2RLXG+Ob/reNDH2LtB0aoq390lXuMDdzdAxSnM5pCpnJ?=
 =?us-ascii?q?55oRWopJjg7wn8dtEp+F+WbJK5cx5hYOoaowPwcFCeG/070auO59hGQ6InRL?=
 =?us-ascii?q?lbCIL+cUsxObVI8IMsRoUoLd98R2uaEs/Dga+++kY+aT/nkBbOQ82Uc3lT4S?=
 =?us-ascii?q?k60gEgHUPza4Fv0t7GlDBxBlAe2e3I9VPrzKUwtRkYUTLW4HsbiLwrC5Lqw5?=
 =?us-ascii?q?Wjc5EZ8Wov/1LDyNEcDT6XDJhSDj2EQUK+n6vRAjnVqlP1kcqBGNAEJ1V1ln?=
 =?us-ascii?q?PgooDlJnYesRBkkOOvJn+IGXhRDOyt3MLZX46PKJGP5usuWp6HDWye2mK42V?=
 =?us-ascii?q?RtrZ+X0/c4yWwmi78cwOTcGcherg+Ot3Kn9W+5nmsM7Ns7pMYgD/HZ6wlnk4?=
 =?us-ascii?q?VwOKXzYa/ySo4QHmm1q24YQQ57jiwMiQWIHRHz9j9dnYz/70K4Dodo=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3An7JFT6p/r05vHUFBQ0MFV9gaV5oseYIsim?=
 =?us-ascii?q?QD101hICG9E/bo8fxG+c5wuCMc5wxxZJhNo7C90dC7L080lqQFhrX5X43SOT?=
 =?us-ascii?q?UO0VHAROpfBO3Zsl7d8kXFmtK1vp0QF5SWZueAb2STUq7BjzVRdL4bsaC6zJ?=
 =?us-ascii?q?w=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2B/BADLzIJh/0LhJQpaHgE8DAILFQm?=
 =?us-ascii?q?BUIEhggCBTbF0gXwLAQEBAQEBAQEBCAFBBAEBgg2FSyY1CA4BAgQBAQESAQE?=
 =?us-ascii?q?GAQEBAQEGBAGBI4VpDII1IoQfXgEVax8HAQQbE4JXgX6vS4EzGgJlhGmFDwk?=
 =?us-ascii?q?BgTCBZoU1gnqGD0OPPwSQBTEdbg9pkkg5jCOgBQcDgzSeZy8Vlg0DkRiWDh+?=
 =?us-ascii?q?hEYRRAgQCBAUCFoFjAYIRcFCCalAXAo47Fo4ugSwCBgsBAQMJkBuBEAEB?=
X-IPAS-Result: =?us-ascii?q?A2B/BADLzIJh/0LhJQpaHgE8DAILFQmBUIEhggCBTbF0g?=
 =?us-ascii?q?XwLAQEBAQEBAQEBCAFBBAEBgg2FSyY1CA4BAgQBAQESAQEGAQEBAQEGBAGBI?=
 =?us-ascii?q?4VpDII1IoQfXgEVax8HAQQbE4JXgX6vS4EzGgJlhGmFDwkBgTCBZoU1gnqGD?=
 =?us-ascii?q?0OPPwSQBTEdbg9pkkg5jCOgBQcDgzSeZy8Vlg0DkRiWDh+hEYRRAgQCBAUCF?=
 =?us-ascii?q?oFjAYIRcFCCalAXAo47Fo4ugSwCBgsBAQMJkBuBEAEB?=
X-IronPort-AV: E=Sophos;i="5.87,206,1631577600";
   d="scan'208,217";a="423301252"
IronPort-SDR: 
 QQyi/w3D6SrDJE233vWuE09/izzQ4CGBmRAsRgesIt4lVAzbsJo60+tGdSutha3uIPA8n8oJyU
 KFw15APrVqjA==
X-IronPort-AV: E=Sophos;i="5.87,206,1631577600";
   d="scan'208,217";a="16508211"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: how to handle third party licenses
Thread-Topic: how to handle third party licenses
Thread-Index: AdfQ2zQkTSfUzOHqTW+aTeJKfy5iBg==
Date: Wed, 3 Nov 2021 17:57:15 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_d638c396a3ee4650b09035cd17734b24baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Nov 2021 17:57:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55231
Message-Id: <20211103175721.47343C433EF@smtp.lore.kernel.org>

--_000_d638c396a3ee4650b09035cd17734b24baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Looking for the proper Yocto way to handle third party software ported to Y=
octo and built into kernel...

I'm not having issues when I recognize the license as a generic license. Bu=
t the license provided to us by the vendor is not part of the generic licen=
ses list that you (Yocto) recognize.

I was wondering if you could explain how to add a custom license to a recip=
e in yocto.

The vendor has provided us with a generic license.txt file and I was able t=
o add that to the our recipe. I do get a warning though which says:

WARNING: aiox-defaultfs-1.0-r0 do_rootfs: The license listed DataDeviceCorp=
oration was not in the licenses collected for recipe acexpci

Though the warning occurs, I can see the license.txt being saved inside the=
 rootfs on our board and is saved under tmp/deploy/licenses/acexpci. I've b=
een trying to get rid of this warning when the image builds, but I can't se=
em to find anything in the manual or online. One solution says : Add LICENS=
E_PATH +=3D "${LAYERDIR}/custom-licenses" under conf/layer.conf, which does=
 not resolve this warning.

I am currently building with Yocto zeus...

Thanks,
Steve


--_000_d638c396a3ee4650b09035cd17734b24baesystemscom_
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Looking for the proper Yocto way to handle third par=
ty software ported to Yocto and built into kernel&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I&#8217;m not having i=
ssues when I recognize the license as a generic license. But the license pr=
ovided to us by the vendor is not part of the generic licenses list that yo=
u (Yocto) recognize.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I was wondering if you=
 could explain how to add a custom license to a recipe in yocto.<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal">The vendor has provided us with a generic license.tx=
t file and I was able to add that to the our recipe. I do get a warning tho=
ugh which says:
<o:p></o:p></p>
<p class=3D"MsoNormal"><i><o:p>&nbsp;</o:p></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:red">WARNING: aiox-defaultfs=
-1.0-r0 do_rootfs: The license listed DataDeviceCorporation was not in the =
licenses collected for recipe acexpci<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Though the warning occurs, I can see the license.txt=
 being saved inside the rootfs on our board and is saved under tmp/deploy/l=
icenses/acexpci. I&#8217;ve been trying to get rid of this warning when the=
 image builds, but I can&#8217;t seem to find
 anything in the manual or online. One solution says : Add <b>LICENSE_PATH =
&#43;=3D &quot;${LAYERDIR}/custom-licenses&quot;</b> under conf/layer.conf,=
 which does not resolve this warning.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am currently building with Yocto zeus&#8230;<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_d638c396a3ee4650b09035cd17734b24baesystemscom_--

