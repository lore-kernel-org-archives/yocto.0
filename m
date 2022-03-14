Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69F0AC433EF
	for <webhook@archiver.kernel.org>; Mon, 14 Mar 2022 19:57:39 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.1337.1647287857902614752
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Mar 2022 12:57:38 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com
 header.s=trusted01 header.b=LA4/d+xx;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1647287857; x=1804967857;
  h=from:to:subject:date:mime-version;
  bh=WrvkA/EH4eplGCRZOpccILEcVOVQK6Cvon1SmunQ0Kg=;
  b=LA4/d+xxFq+ws/MgN9MiStzgn+Pq1AKTnkuInw+Zobn5EfUDO+lVu1iD
   0NuB7Q9mvE2iTLen0E84VeMCbTACUWX9l9tJGevo54QiCkpGOBbuW15cN
   Tq6+ysMpq2ZM0YWhlsaNsKisyVn0D6md2orCvKwaTRCEuIKQUqCzyqtCx
   A=;
IronPort-SDR: 
 sAXD04f6HKQ+A3MjTUB6v3K3EtTe54pbzJT083C8vb1nWO8NiauWdcwSPlMl7SeOc4CHhOUqHm
 6FXiBMyOvMjA==
IronPort-PHdr: =?us-ascii?q?A9a23=3APrafHhwzIw+8MaXXCzJKylBlVkEcU1XcAAcZ5?=
 =?us-ascii?q?9Idhq5Udez7ptK+ZhaZvK89xwaTA83y0LFts6LuqafuWGgNs96qkUspV9hyb?=
 =?us-ascii?q?SIDktgchAc6AcSIWgXRJf/uaDEmTowZDAc2t360PlJIF8ngelbcvmO97SIIG?=
 =?us-ascii?q?hX4KAF5Ovn5FpTdgsipyey+4YDfbxtLiTayfL9+MhS7phjNu8cLhodvNrw/w?=
 =?us-ascii?q?QbTrHtSfORWy2JoJVaNkBv5+8y94p1t/TlOtvw478JPXrn0cKo+TbxDETQpK?=
 =?us-ascii?q?Hs169HxtRnCVgSA+H0RWXgLnxVSAgjF6Bb6Xortsib/q+Fw1jWWMdHwQLspX?=
 =?us-ascii?q?zmp8qVlRwLyiCofNzA37nzZitB+gqxYoRKuuxNwzpXOb42JNvpzZL/Rcc8ES?=
 =?us-ascii?q?WdHQ81fVzZBAoS5b4YXAeYPOuFYr4/mp1QQsxS+HhGgD/7yxD9UmHD2w7M10?=
 =?us-ascii?q?+I8GgzYwQcsG9wBvmnRoNn7KawfVvu1zLXWwjXdcfxW3y3x6I3PchAnuvGDQ?=
 =?us-ascii?q?6x/cdHKxEY0DQzKkE6QqIz+PzOJyOsNtnOb4/B8WuKojm4qsgd8qSWgyckwk?=
 =?us-ascii?q?IfGnJ4Vykza+iVjxoY4PdO2RUBnbNOlEpZdtj+WO5ZoT84hQ2xlvCk3x7Ibt?=
 =?us-ascii?q?ZC1fCUEx4kryhrdZvGHfIWF4w/vWfiVLDp7h39oZa+ziRm0/EO9yeP8TtG53?=
 =?us-ascii?q?EtWoiZfkNTBuGoB2h/c58SdV/dx5lqt1SqV2w3c5exIO085mbDGJ5MhxLM7i?=
 =?us-ascii?q?4Advl7ZHiDsnUX7lKqWdkI59ee28+nnebDmpoOEN49zlwH+LrwimsyhDuQ8N?=
 =?us-ascii?q?QgDR3Sb+Oum273l+E35W7FHguEqnqXFrZzWP9kbprWjDwBOyIks9Q2/Dje90?=
 =?us-ascii?q?NQEg3YHKUlFdAibgIjuPlHCOPH4DfGhjFSwiDpn2uzKMqfjD5jDNHTOk7jsc?=
 =?us-ascii?q?axg50JEzQo819Ff55ZaCrEbJ/LzX1f8tMfEDhAnLQy73eDnBM941oMZX2KPG?=
 =?us-ascii?q?bGWP73JsVKT/e0gOfeDZJQVuTbmN/gq+fvujWQjlVABeqmp2IMbaHajEft+O?=
 =?us-ascii?q?UWWfWLsgssdEWcNpgcyUfTmiEeeXj5Le3ayQ6U86yk7CYKhEYjDWoetjaeF3?=
 =?us-ascii?q?Ce6BZ1WentGBkqMEHfva4qER/AMaDqIIs9mkDwLS6SuS5M72RGprg/6xOkvE?=
 =?us-ascii?q?u2BsDwfvo7k/Nx0/PHI0wA1/iBzF96a0WyGUydzhGxCD2sn26tjpmR5y0yfy?=
 =?us-ascii?q?u5phPdEEsRJ4PFEWRt8MoTTmb9UEdf3D0jkedGSRVu9Bp2dHTwvQ9R56JdOX?=
 =?us-ascii?q?n08UZ32lQzOwSesRboSkaeGCYcc+KvRxGnqO8t40DDN06x33ApueddGKWDz3?=
 =?us-ascii?q?v03zAPUHYOcyy2k?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2A1BAD/nC9i/wFUSQpagQkJgVGBIYI?=
 =?us-ascii?q?FgVUXlGidT4F8CwEBAQEBAQEBAQgBMRAEAQGJMSY2Bw4BAgQBAQESAQEGAQE?=
 =?us-ascii?q?BAQEGBAGBG4VoAQyCNSKEH14BFQVmFwgHAQQbgn2CDq8vgTMaAmWEa4UQgTy?=
 =?us-ascii?q?BZoVOgwGEE4INQ49BBJYqggEBgi46Op88oGgHA4NJiwqSPoIRMBWWYwORUYp?=
 =?us-ascii?q?TjAQgpjICBAIEBQIWgWgJggVwgzkJSBcCjjwVgiuMA3U4AgYLAQEDCZFTgRI?=
 =?us-ascii?q?BAQ?=
X-IPAS-Result: =?us-ascii?q?A2A1BAD/nC9i/wFUSQpagQkJgVGBIYIFgVUXlGidT4F8C?=
 =?us-ascii?q?wEBAQEBAQEBAQgBMRAEAQGJMSY2Bw4BAgQBAQESAQEGAQEBAQEGBAGBG4VoA?=
 =?us-ascii?q?QyCNSKEH14BFQVmFwgHAQQbgn2CDq8vgTMaAmWEa4UQgTyBZoVOgwGEE4INQ?=
 =?us-ascii?q?49BBJYqggEBgi46Op88oGgHA4NJiwqSPoIRMBWWYwORUYpTjAQgpjICBAIEB?=
 =?us-ascii?q?QIWgWgJggVwgzkJSBcCjjwVgiuMA3U4AgYLAQEDCZFTgRIBAQ?=
X-IronPort-AV: E=Sophos;i="5.90,181,1643673600";
   d="scan'208,217";a="460487108"
IronPort-SDR: 
 wnZF6gV9+RgPiGzR+pLXl/DLZhx88+YQSszlADr7KQjmqgn3trQmDAQlo95d0/H3RM6E/hbsO9
 oDCyM+TTiun5T9FrmXbwuHa7kS0ihePjsW78v5Pv97azzKb1qO5JRwnVzlboPiHPuN61u7IAoC
 +LUjNvA/+D6eCdprv6rQD/qXJxhOizvnZzPaAGBpG+TOf3OUXW3eguqDkL9zNWKHBHA+YOX/0f
 sit4T14/eq9Vn9+i2n3zAT4dN94YaF7GWOm/hvxX+xTIcbD2CGMi3TB1+ots1xTQR0Jdhg/LYq
 dMY=
IronPort-Data: =?us-ascii?q?A9a23=3AKjewTa5TxQ+fcvMU8wPr4QxRtPLFchMFZxGqf?=
 =?us-ascii?q?qrLsTDasY5as4F+vmtKCmmHafqINzHxKt8ka4mwpksE6J/TydY3S1FtqSoxQ?=
 =?us-ascii?q?iMRo6IpJ/zAdR6oYHn6wu4v7a5fAk53huDodKjYdVeB4Eb1WlTdhSMkj/vQH?=
 =?us-ascii?q?eOgULSs1h1ZHmeIdg9w0HqPpMZp2uaEsfDha++8kYuaT//3YTdJ6BYoWo4g0?=
 =?us-ascii?q?J9vnTs01BjEVJL0iXRlDRxDlAe2e3D4l/vzL4npR5fzatE88uJX248vZVxkl?=
 =?us-ascii?q?1418SvBCvv9+lr6WmIubpvpbVXW1yMQVK+mjhxEpWoo1aEnMPwfYAFRhinhc?=
 =?us-ascii?q?9JZkY0L7sP2EFlwePSQwozxUDEBe816FbZa9aHKJz66tsqIwkDdW3Hlzu5/F?=
 =?us-ascii?q?107OJZe8eFyaY1L3aVCeWtUN0Hf24pax5r+EIGAnP8LPc7gIIQ3vnB70SqfH?=
 =?us-ascii?q?PEtXZfbWaLI6NREmjAqiahz8Vz2DyYCQTVrYBHbM0AXZw5RB5U6kOOuhT/ld?=
 =?us-ascii?q?DpErFSWrOwx7nS78eC465C1WPK9RzBAbZw9cp6km1/7?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AxtRVGKzCe4uuFj2DvTHvKrPxkOskLtp133?=
 =?us-ascii?q?Aq2lEZdPUMSL3iqynPpoVY6ff14AxwZJhSo6HGBEDgewKbyXcR2+Is1NiZLW?=
 =?us-ascii?q?3bUOXDFvAE0WKP+VPd8mjFh5ZgPMRbAuFD4b/LfD5HZK/BiWHTf7kdKZu8gd?=
 =?us-ascii?q?mVbIzlvhRQpHRRGsRdBnBCe2Sm+yNNJTWvqPECeaa0145inX6NaH4XZsO0Cj?=
 =?us-ascii?q?0uRO7YveDGk5rgfFovGwMnwBPmt0Li1JfKVzyjmjsOWTJGxrkvtULflRbi26?=
 =?us-ascii?q?mlu/anjjfBym7o6YhMkteJ8KoIOCXMsLlZFtzfsHfmWG1TYczNgNnzmpDv1L?=
 =?us-ascii?q?8eqqiBn/7nBbUy15qeRBD3nfKn4Xib7N9n0Q6e9bce6kGT5fAQkFkBeo98bM?=
 =?us-ascii?q?RiA1Pkwltls9dm3K1R2WWF85JREBPbhSz4o8PFThdwiyOP0A4feMMo/g5iuL?=
 =?us-ascii?q?ElGcpsRE0kjTJoOYZFGDi/5JEsEeFoAs2Z7PFKcUmCZ3ScumV02tSjUnk6Ax?=
 =?us-ascii?q?/DGyE5y7qo+ikTmGo8w1oTxcQZkHtF/JUhS4Nc7+CBNqhzjrlBQsIfcKo4Du?=
 =?us-ascii?q?YcRsm8DHDLXHv3QRWvCEWiELtCN2PGqpbx7rlw7Oa2eIYQxJ93g5jFWEMwjx?=
 =?us-ascii?q?9AR6svM7z/4HRmyGGzfIzmZ0WQ9ih33ekGhoHB?=
X-IronPort-AV: E=Sophos;i="5.90,181,1643673600";
   d="scan'208,217";a="129311944"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: configuration fragments
Thread-Topic: configuration fragments
Thread-Index: Adg323G35nDYBUppTrC2/G5Du45+9g==
Date: Mon, 14 Mar 2022 19:57:33 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_a7bb26360fad41a5a8c6ed1794c8aeecbaesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Mar 2022 19:57:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56429
Message-Id: <20220314195739.69F0AC433EF@smtp.lore.kernel.org>

--_000_a7bb26360fad41a5a8c6ed1794c8aeecbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Under my aarm64 platform ../recipes-core/images I have a file "aiox-swdebug=
fs.inc"

Which basically contains:

EXTRAPATHS_prepend :=3D "$(THISDIR}/files:"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bc=
f8506ecda2f7b4f302"
SRC_URI +=3D file://aiox-swdebugfs.cfg

I include this in my aiox-swdebugfs.bb like so: "require aiox-swdebugfs.inc=
"

It does not appear to apply my configuration fragments...
(CONFIG_SCHED_TRACER, CONFIG_TRACER, etc. for additional perf support)

I have the exact same implementation working under my intel platform.

Can someone tell me what I might be doing wrong, or how I can get my config=
uration fragments to be applied properly ?
Any ideas why it might work properly under one architecture and not on the =
other ?

Thanks,
Steve

--_000_a7bb26360fad41a5a8c6ed1794c8aeecbaesystemscom_
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Under my aarm64 platform ../recipes-core/images I ha=
ve a file &#8220;aiox-swdebugfs.inc&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Which basically contains:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">EXTRAPATHS_prepend :=3D &quot;$(THISDIR}/files:&quot=
;<o:p></o:p></p>
<p class=3D"MsoNormal">LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_D=
IR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI &#43;=3D <a href=3D"file://aiox-swdebugfs.cf=
g">file://aiox-swdebugfs.cfg</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I include this in my aiox-swdebugfs.bb like so: &#82=
20;require aiox-swdebugfs.inc&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It does not appear to apply my configuration fragmen=
ts&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal">(CONFIG_SCHED_TRACER, CONFIG_TRACER, etc. for additi=
onal perf support)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have the exact same implementation working under m=
y intel platform.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can someone tell me what I might be doing wrong, or =
how I can get my configuration fragments to be applied properly ?<o:p></o:p=
></p>
<p class=3D"MsoNormal">Any ideas why it might work properly under one archi=
tecture and not on the other ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_a7bb26360fad41a5a8c6ed1794c8aeecbaesystemscom_--

