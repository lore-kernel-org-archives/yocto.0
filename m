Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536A6C433F5
	for <webhook@archiver.kernel.org>; Mon,  9 May 2022 10:54:44 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.30457.1652093678811847858
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 May 2022 03:54:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com
 header.s=trusted01 header.b=Jab+grVk;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1652093678; x=1809773678;
  h=from:to:subject:date:mime-version;
  bh=mbIBbNbDh/KLoxRwNbQcgPFmDTX3k7uxYLVx7/nAqoA=;
  b=Jab+grVkc0sZD1MSMUYjcLk6UjaPR9UL5Y9FlTBtz363byPEcoImuHRB
   AWo7ehwCSfJcpCAkiLrfqMskJ5gTo3+s1Vs2kZCM7x57iZF2IqE338dST
   l28baoQm+g0X+hPKb9EX1chqqGxkmj0O1IRdti1ydZLpwm3l4NFhFsQv0
   U=;
IronPort-SDR: 
 M9W9AwA2FJ43z5LtMUElkgTIsRRvpU5Q0YeMWQhFI20zpDSg3V5YdCOMS/iiCKpOtMsCQlHOXA
 w+OQNeKMsVmw==
IronPort-PHdr: =?us-ascii?q?A9a23=3AR8zUEBP9P5bRqZ51x/0l6nZ+ChdPi9zP1u491?=
 =?us-ascii?q?JMrhvp0f7i5+Ny6ZQqDv64r1w6CBt+Tq6odzbaM6ea4AS1IyK3CmUhKSIZLW?=
 =?us-ascii?q?R4BhJdetC0bK+nBN3fGKuX3ZTcxBsVIWQwt1Xi6NU9IBJS2PAWK8TW94jEIB?=
 =?us-ascii?q?xrwKxd+KPjrFY7OlcS30P2594HObwlSizexf71/IA+4oAjVucUbj5VuIbs1x?=
 =?us-ascii?q?hfVv3dEYetbyX12KV6Jgxrw+sK894N//ipNvP4s69ROWrjgcaQiSrxYAjUmM?=
 =?us-ascii?q?2Qr68DuqBLOUwiB6GYCX2sPihZHDBTL4x/8Xpfqryv1rfF91zWAPc33Vr87R?=
 =?us-ascii?q?zKv5Lp2RRDyiScHMzk58HzLisF1kalWrg6tqwB5zoXJZoyeKfhwcb7Hfd4CR?=
 =?us-ascii?q?WRPQNtfVzBPDI2/bosAE+UOMP1CoIXhpVsDtweyCRWyCO7p1zRGhmX23ao/0?=
 =?us-ascii?q?+k5Hw3I2wsgH9QVsHvKstr1L78eWv2owqnU0zrDce1Z2THg44XWbxstpf+DU?=
 =?us-ascii?q?691fcbf1EIiEBjFjkmOpoz7ITyV0P4Bs22c7+pmTuKglXAoqxpqrze03Mgjl?=
 =?us-ascii?q?JLJh4IOylDY6yp5xZ01KcekR058ZN6pCZ1dvDyVOIVqWM0tWX1ouDokxb0cv?=
 =?us-ascii?q?562ZCYExZo7yhPeafGKcpaE7g/9WeuSITp1gH1odb2iixi88UWuxfDwW8223?=
 =?us-ascii?q?VtKoSdIk8TAu24J2hHQ6cWKV+Zx8Ein1D2S1A7T8vlJLV0omabBJZMswKQ8m?=
 =?us-ascii?q?ocXvEnNBCP7mUT7gLeLekk44OSl5Ovqbq/pq5OGKoN5igfzObk0lMOlG+Q3K?=
 =?us-ascii?q?A0OUnCe+eS7ybLs41X0QK5Pjv0qiqnZt43aJdgDqq65HQBV1oEj5g65Dzem1?=
 =?us-ascii?q?tQXh3wHLElGdR+Hk4TlJ0zCLOr+DfilmVijiy1kyO7dPrzhGZXNMmbMkLL6f?=
 =?us-ascii?q?bpn90Fczw8zwche55JSFL4BPOr+VlLtuNDCABI0MRa4z/vjBdhzzI8TWGOCD?=
 =?us-ascii?q?recMKzIsF+I4uwvI/OLZI8QoDv9MOQl6ODwjXAnn18RZ6yp3ZwRaHCjAPtpP?=
 =?us-ascii?q?V6ZbGH3jdgbD2gKpQo/TPf2iFKcVD5TfGy+UL475jE+EI6mC5zMSZi3gLOdx?=
 =?us-ascii?q?Ce7AoFWZmdeB1yRCXvobZmLW+8QaCKOJc9sijwFVb+9RI890hGjrwv6y7t8L?=
 =?us-ascii?q?urI4S0Ur5Li1N9p6O3PkhEy7SZ0D8Of026TU250gnkERzgs3KBw8gRBzQLJw?=
 =?us-ascii?q?K9zn/twEd1I++gPQwAxKZnE1et4BtvuHAXbcZ3BHEehScmhKTUwVc4qhc4Ja?=
 =?us-ascii?q?Fp6A8+ljB3Iw2ytGbBDxJKRA5lhuIfb2WP8Kt05g03a2bcsiRENCotyDizsz?=
 =?us-ascii?q?vpk6wXNCoiPlkKfjKunbowW1SPW5XyfwG+V+kpfVVgjAu3+QXkDax6O/pzC7?=
 =?us-ascii?q?UTYQur2YYk=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2CBDQCi8Xhi/0LBJQpagQkJgUaBIYF?=
 =?us-ascii?q?/AoFUF4dCqmaBfAsBAQEBAQEBAQEIATMPBAEBikImNAkOAQIEAQEBEgEBBgE?=
 =?us-ascii?q?BAQEBBwQBgRuFaAEMgjUihB8eAT8BFWsfBwEEG4J2ggyuAYEzGgJlgwMeAYF?=
 =?us-ascii?q?LhREJAYEygWaEMlhKgwaEHYINQ498BJY8gUcycJJcjT6gfQcDg0mJeIEglFg?=
 =?us-ascii?q?uFYN1gU+RLwORXZZiIIIqnxmFEgIEAgQFAhaBYYIVcIM4CUgXAo47FoFojEZ?=
 =?us-ascii?q?1AgEBNwIGCwEBAwmQXYESAQE?=
X-IPAS-Result: =?us-ascii?q?A2CBDQCi8Xhi/0LBJQpagQkJgUaBIYF/AoFUF4dCqmaBf?=
 =?us-ascii?q?AsBAQEBAQEBAQEIATMPBAEBikImNAkOAQIEAQEBEgEBBgEBAQEBBwQBgRuFa?=
 =?us-ascii?q?AEMgjUihB8eAT8BFWsfBwEEG4J2ggyuAYEzGgJlgwMeAYFLhREJAYEygWaEM?=
 =?us-ascii?q?lhKgwaEHYINQ498BJY8gUcycJJcjT6gfQcDg0mJeIEglFguFYN1gU+RLwORX?=
 =?us-ascii?q?ZZiIIIqnxmFEgIEAgQFAhaBYYIVcIM4CUgXAo47FoFojEZ1AgEBNwIGCwEBA?=
 =?us-ascii?q?wmQXYESAQE?=
X-IronPort-AV: E=Sophos;i="5.91,211,1647302400";
   d="scan'208,217";a="472979954"
IronPort-SDR: 
 7hQN3PY3YVLLsujhG5ki/pP+Jhl4uRqoNx4/zX4QXV00AN+QM2C5mnc3bI/AWiT5sZxjhJ1OKe
 cBmU/INkgqiuKRdacyKo7MesC6A5a5mLOaO9QawqMGOFDxqHERQtOOIYMnPxd4hY3/GDnGb1Et
 dmHlz7eD2QipUztjEn/KDZX/EU5ocON6gQCsAlOSArLSNP5q44kalU6NFZncTPZM//Xao13SQp
 dxpBT4PQt6dS3w0K6F4gpRgJw53yg2l7NlylSU5Ibptny4MyCMptYwDvPrGQGpztVyh6UBrql+
 h10=
IronPort-Data: =?us-ascii?q?A9a23=3A1OKIIK7vp11ANfUDYDLOfwxRtPLFchMFZxGqf?=
 =?us-ascii?q?qrLsTDasY5as4F+vjZMXj2OPvqNYGCmeYslaN+2pktVvZeBmtdnSgU/rS0yQ?=
 =?us-ascii?q?iMRo6IpJ/zAdR6oYHn6wu4v7a5fAk53huDodKjYdVeB4Eb0WlTdhSMkj/vQG?=
 =?us-ascii?q?+KtULes1h1ZHmeIdg9w0HqPpMZp2uaEsfDha++8kYuaT//3YTdJ6BYoWo4g0?=
 =?us-ascii?q?J9vnTs01BjEVJL0iXRlDRxDlAe2e3D4l/vzL4npR5fzatE88uJX248vZVxkl?=
 =?us-ascii?q?1418SvBCvv9+lr6WmIubpvpbVXW1ysQVK+mjhxEpWoo1aEnMPwfYAFRhinhc?=
 =?us-ascii?q?9JZkY0L7sP2EFlwePSQwYzxUDEBe816FbZa9aHKJz66tsqIwkDdW3Hlzu5/F?=
 =?us-ascii?q?107OJZe8eFyaY1L3adCcmxQNU3Z3Ypax5r+EIGAnP8LPc7gIIQ3vnB70SqfH?=
 =?us-ascii?q?PEtXZfbWaLI6NREmjAqiahz8Vz2DyYCQTVrYBHbM0AXZwZRB5U6kOOuhT/ld?=
 =?us-ascii?q?DpErFSWrOwx7nS78eC465C1WPK9RzBAbZw9cp6km1/7?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A0sbjG6pUPd+dsEFHHMH30rgaV5rzeYIsim?=
 =?us-ascii?q?QD101hICG9vPb4qyncpoVh6faUskd2ZJhEo7rtBEDuewK4yXbqibNhR4tKMD?=
 =?us-ascii?q?OIhILsFvAA0WKA+UyGJ8SdzJ846U4IScEXY7DN5BpB7foSizPIcerIteP3iJ?=
 =?us-ascii?q?xA692x858ZJjsaFp2JpmxCe3qm+25NNXZ77OICZeOh2vY=3D?=
X-IronPort-AV: E=Sophos;i="5.91,211,1647302400";
   d="scan'208,217";a="322453522"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: enabling symbols for debug in clinfo
Thread-Topic: enabling symbols for debug in clinfo
Thread-Index: AdhjkoL47clQSZawRfWEU5kzbcuRPw==
Date: Mon, 9 May 2022 10:54:34 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_090fffc408ae4a0a8a14e23ef323882fbaesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 May 2022 10:54:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57026
Message-Id: <20220509105444.536A6C433F5@smtp.lore.kernel.org>

--_000_090fffc408ae4a0a8a14e23ef323882fbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello:

I'd like to build clinfo w/ "-g" option to do some debugging with GDB...

I am looking at: meta-openembedded/meta-oe/recipes-support/opencl/clinfo_2.=
2.18.04.06.bb

I created a "bbapend" file to modify the build recipes "Makefile.am" file p=
rior to build, to introduce '-g' for CFLAGS & CPPFLAGS, i.e. at top of Make=
file.am added:

                AM_CFLAGS - -g
                AM_CPPFLAGS =3D -g

I checked the build tree and see my modified "Makefile.am" updated as expec=
ted, the update occurs at the end of the install process, using do_install_=
append... so the build should have used my modified file... but I do not ha=
ve symbols for the clinfo package when I go to use GDB.

Is there a simple way to enable debug symbols for this package ?

Did I modify the wrong configuration file?, Should I be modifying configure=
 ?

I am new to auto-build configurations...
Could someone tell me the easiest way to add "-g" to the clinfo standard bu=
ild ?

Thanks,
Steve

--_000_090fffc408ae4a0a8a14e23ef323882fbaesystemscom_
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
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">Hello:<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">I&#8217;d like to buil=
d
</span><span style=3D"color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;m=
so-style-textfill-fill-alpha:100.0%">clinfo w/ &#8220;-g&#8221; option to d=
o some debugging with GDB&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">I am looking at: meta-=
openembedded/meta-oe/recipes-support/opencl/clinfo_2.2.18.04.06.bb<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">I created a &#8220;bba=
pend&#8221; file to modify the build recipes &#8220;Makefile.am&#8221; file=
 prior to build, to introduce &#8216;-g&#8217; for CFLAGS &amp; CPPFLAGS, i=
.e.
 at top of Makefile.am added:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AM_CFL=
AGS - -g<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AM_CPP=
FLAGS =3D -g<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">I checked the build tr=
ee and see my modified &#8220;Makefile.am&#8221; updated as expected, the u=
pdate occurs at the end of the install process,
 using do_install_append&#8230; so the build should have used my modified f=
ile&#8230; but I do not have symbols for the clinfo package when I go to us=
e GDB.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">Is there a simple way =
to enable debug symbols for this package ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">Did I modify the wrong=
 configuration file?, Should I be modifying configure ?<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">I am new to auto-build=
 configurations&#8230;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">Could someone tell me =
the easiest way to add &#8220;-g&#8221; to the clinfo standard build ?<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">Steve<o:p></o:p></span=
></p>
</div>
</body>
</html>

--_000_090fffc408ae4a0a8a14e23ef323882fbaesystemscom_--

