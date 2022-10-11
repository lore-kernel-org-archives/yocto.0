Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A33EC433F5
	for <webhook@archiver.kernel.org>; Tue, 11 Oct 2022 19:55:03 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.11940.1665518095978454721
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Oct 2022 12:54:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=PFa24c0H;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1665518096; x=1823198096;
  h=from:to:subject:date:mime-version;
  bh=5ZZR7UiDDguDvXSIhGAjG/yu0YMQCOa/d2veoXueQMo=;
  b=PFa24c0HgbklLjiUS499mEl5Up3DNQUkIiBLCNxjlh8cRXR8DSLuFCFR
   F7RhAj/eP4XIBVoG4xJFXpmJVI3UAH3KiarsZqBwmpRmc8CAj4mK+a/3g
   +LCuvIXb3ozR+JvTfYb7ClcO+QE/d8R/TPta6W2JVmQkcJdrNxlcRepnR
   U=;
X-IPAS-Result: =?us-ascii?q?A2AmAAAuyUVj/0LBJQpaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?YEyBwEBCwGBIYICAoFvjFaICZ4HgXwLAQEBAQEBAQEBCAFCBAEBiXwmNAkOA?=
 =?us-ascii?q?QIEAQEBAQMCAwEBAQEBAQMBAQYBAQEBAQEGBAGBG4UvOgyCNSKEH14BFWsmA?=
 =?us-ascii?q?QQbgnaCFoEKrHWBNBoCZYRwiXEJAYEzAYFlhSNuWIMkEoY4Q4QIi3YEmmMHN?=
 =?us-ascii?q?wNEHUADCw5pAxUDFAMFIQcDGQ8jDQ0EHQwDAwUlAwICGwcCAgMCBhMFAgJNN?=
 =?us-ascii?q?AgECAQrJA8FAgcvBQQvAh4EBQYRCAIWAgYEBAQEFQIQCAIIJhcHEzMZAQVZD?=
 =?us-ascii?q?gkhHCgNBQYTAyBvBUIPKC9pKx0bB4EMKigVAwQEAwIGEwMiAg0pMRQEKRIPL?=
 =?us-ascii?q?QcpcQkCAyJqAwMEKCwDCSECARwHKCQ8B1g6BQMCECI8BgMJAwIiWIEkJgUDD?=
 =?us-ascii?q?RcmCAU3GgQIPAIFBiQvEwIKEgMSDy1JD0o+OxcGKZ1vgnQvkjCNcaFIBwODX?=
 =?us-ascii?q?qAsLhaXEgORd4dCj08gohGFFQIEAgQFAhaBYYIVcIM4UBcCjjwVji6BMAIGC?=
 =?us-ascii?q?wEBAwmJaoESAQE?=
IronPort-PHdr: A9a23:WHK3nBHh7PjBz15LaT8aY51Gf71MhN3EVzX9CrIZgr5DOp6u447ld
 BSGo6k31xmSAtuQsqkaw8Pt8InYEVQa5piAtH1QOLdtbDQizfssogo7HcSeAlf6JvO5JwYzH
 cBFSUM3tyrjaRsdF8nxfUDdrWOv5jAOBBr/KRB1JuPoEYLOksi7ze+/94PdbglSijewY7J/I
 BqroQjft8QdnJdvJLs2xhbVuHVDZv5YxXlvJVKdnhb84tm/8Zt++ClOuPwv6tBNX7zic6s3U
 bJXAjImM3so5MLwrhnMURGP5noHXWoIlBdDHhXI4wv7Xpf1tSv6q/Z91SyHNsD4Ubw4RTKv5
 LptRRT1iikIKiQ5/XnXhMJukaxbvByvqR9+w4HIb46YL+Bxcr/ffd4AWWZNQthdWipcCY28d
 YsPCO8BMP5Wo4f6oFsOqwC+CheyC+P00jNDm2L43bEk3OQ/Dw7G2hErEswTu3jQotr7KaIeX
 e6ox6TP1jXDc+1Z2Snj54jOaBwhpPaMXbRrccXP10YvDBjIgU6KpoP7JDOU1v8Ns3SF4OplT
 uKjkXIoqwZ0ojW2wMonl4bGiJ4PxF/e6SV53Jg6Jce+SENjb9CpHodduiCYOoZ3XM8uXn9lt
 SU6x7ACtpO2czUGxponyhDQdvCKd4qF7xLsWeuQPDt1mnZodbG8ihuv7ESuxevxXdS33lZSt
 idJj8XAumoD2hHR8MSLV/9w80m71TuO1g3f8vxILVwumafUJJMt2LE9moAdvEnHGCL9hV/4g
 7WMdko+/+il8+HnYrL7qZCCL4J0kQT+Mrg2msy4HOQ4LhACX2iF9uS4073u5Uv5QLVMjvIsl
 6nZq5PXKMQHqqKlHgNZyIAj5AylAzi9ytsXg2IHLVJeeBKbkYfpPkrOLOrkAve4hlSgiDZrx
 /bYMb39GpjBM2TPnK3vcLt/8UJQ1Q4+wN5F659VC7wNOPfzVVXwtNzcAB85KQu0w+P/BdVmy
 oMRR3yPDbGfMK/ItF+I4eQvI/KSa4ALozbwMOMq6OTwgn8imV4dZrWp0oUSaHCjBPhpP0KZY
 X/0jtcHCmgFphA+Q/DyiF2eTT5TYG6/U78k6jEhFI2mFZvDRpyqgLGZ3Ca7GYFZZnxBCl2XF
 Xfodp6EW+sXaC6IIs5hlSALVaSmS485zxGusw36xKR7IerI4CEYsojj1Ncmr9HUwFsj8jdoC
 OyZ0nqRVCdlmWgUQCcs26JyqlA7zU2Mm+AskvtTCdt74/JSThx8JJnX0+tiEdfwVwndONCTR
 wD1bM+hBGR7a9U32NIDeAI1IMmvkB3FlwHiQ4Iu1vbDUIco/7zR2T70IMBmxnvd/KMogkI3W
 ddCMHbgjal6oVuAT7XVmlmUwv75PZ8X2zTAoT/r8A==
IronPort-Data: A9a23:OGPwL6kCSWhLIVS71mTnQYPo5gwVJERdPkR7XQ2eYbSJt1+Wr1Gzt
 xJLCjqCPPrcZGP1c9wnYdvj9UoCuMWAzIA3QARr+yhhEltH+JHPbTi7wuccHM8wwunrFh8PA
 xA2M4GYRCwMZiaA4E/ra9ANlFEkvU2ybuOU5NXsZ2YgGGeIdA970Ug5wrZg29Yz6TSEK1rlV
 e3a8pW31GCNhmYc3lI8s8pvfzs24ZweEBtB1rAPTagjUG32zhH5P7pDTU2FFEYUd6EPdgKMq
 0cv+5nilo/R109F5tpICd8XeGVSKlLZFVDmZna7x8FOjzAazhHe3JrXO9IcbE1qlSmvx+t82
 dV2rZWqZDYjML/DzbF1vxlwS0mSPIVA+LnOJGPv7JTLlgvAej3myvh1HVoqMIgDvO1wBAmi9
 9RBcHZWMVba1rnwnuzTpupE36zPKOHwII4Bt3cmyDbfFvsrWrjJSqjR9MRE0TIrwMtJGJ4yY
 uJDN2A+N0WbOXWjPH8sUo8ivf2W2kD1MAVG7wnPgrNw+EPcmVkZPL/FdYC9lsaxbdRSlVqfj
 mbH5HjiRAAdP8CY0SCC8H+nmqnIhyyTZW4JPOTgsKU1xgTCnSpNVnX6SGeGnBVwsWbmM/o3F
 qDe0nFGQXQanKBzcuTAYg==
IronPort-HdrOrdr: A9a23:VSy59KpFF6nblNVavwieIHcaV5oyeYIsimQD101hICG9E/b5qy
 nApp8mPHPP4gr5O0tApTnjAsa9qBrnnPZICO8qUItKNzOJhILHFu1fBPDZsl7dJxE=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.95,177,1661817600";
   d="scan'208,217";a="26293932"
X-IronPort-AV: E=Sophos;i="5.95,177,1661817600";
   d="scan'208,217";a="349666008"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: # honister #systemd attempting to run script on boot...
Thread-Topic: # honister #systemd attempting to run script on boot...
Thread-Index: Adjdq1Pzqv3zTEE0RDOnsHhi9wT6Qg==
Date: Tue, 11 Oct 2022 19:54:53 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.39]
Content-Type: multipart/alternative;
	boundary="_000_eb01ecb1fcea49818de1b740f8493f45baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Oct 2022 19:55:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58324
Message-Id: <20221011195503.3A33EC433F5@smtp.lore.kernel.org>

--_000_eb01ecb1fcea49818de1b740f8493f45baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am trying to make use of system to run a test script at boot...
I can exercise my test_script/test_script.service manually using systemctl =
commands and it appears to work as expects.

I created a recipe based on this, it builds clean (no errors/warnings), but=
 it doesn't appear to set things up correctly.
I have only recently begun working with honister, and new to systemd...

Could someone have look at my recipe & service file and see if they can spo=
t anything ?

My recipe:

#
# This file is the my_test_script recipe.
#

SUMMARY =3D "Simple my_test_script application"
SECTION =3D "apps"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bc=
f8506ecda2f7b4f302"

inherit systemd

SRC_URI =3D "file://test_script.sh \
           file://test_script.service"

S =3D "${WORKDIR}"

SYSTEMD_PACKAGES =3D "${PN}"
SYSTEMD_SERVICE_${PN} =3D "test_script.service"
SYSTEMD_AUTO_ENABLE:${PN} =3D "enable"

do_install() {
             install -d ${D}${bindir}
             install -m 0755 ${S}/test_script.sh ${D}${bindir}

             install -d ${D}${systemd_system_unitdir}
             install -m 0644 ${S}/test_script.service ${D}${systemd_system_=
unitdir}
}

FILES_${PN} =3D "${bindir}"
FILES_${PN} +=3D "${systemd_system_unitdir}"

REQUIRED_DISTRO_FEATURES=3D"systemd"
---
My test script service file:

[Unit]
Description=3DConfigure test

[Service]
Type=3Doneshot
ExecStart=3D/usr/bin/test_script.sh start
StandardOutput=3Djournal+console

[Install]
WantedBy=3Dmulti-user.target
---
My test script:

#!/bin/bash
# description: Description comes here....

echo "*******************************"
echo "START: Hello PetaLinux World :)"
date +"%m/%d/%Y %H:%M:%S $HOSTNAME"
echo "*******************************"

Thanks,
Steve

--_000_eb01ecb1fcea49818de1b740f8493f45baesystemscom_
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
<p class=3D"MsoNormal">I am trying to make use of system to run a test scri=
pt at boot&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal">I can exercise my test_script/test_script.service ma=
nually using systemctl commands and it appears to work as expects.<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I created a recipe based on this, it builds clean (n=
o errors/warnings), but it doesn&#8217;t appear to set things up correctly.=
<o:p></o:p></p>
<p class=3D"MsoNormal">I have only recently begun working with honister, an=
d new to systemd&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Could someone have look at my recipe &amp; service f=
ile and see if they can spot anything ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My recipe:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># This file is the my_test_script recipe.<o:p></o:p>=
</p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SUMMARY =3D &quot;Simple my_test_script application&=
quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SECTION =3D &quot;apps&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">LICENSE =3D &quot;MIT&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_D=
IR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">inherit systemd<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRC_URI =3D &quot;file://test_script.sh \<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; file://test_script.service&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">S =3D &quot;${WORKDIR}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SYSTEMD_PACKAGES =3D &quot;${PN}&quot;<o:p></o:p></p=
>
<p class=3D"MsoNormal">SYSTEMD_SERVICE_${PN} =3D &quot;test_script.service&=
quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SYSTEMD_AUTO_ENABLE:${PN} =3D &quot;enable&quot;<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_install() {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; install -d ${D}${bindir}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; install -m 0755 ${S}/test_script.sh ${D}${bindir}<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; install -d ${D}${systemd_system_unitdir}<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; install -m 0644 ${S}/test_script.service ${D}${systemd=
_system_unitdir}<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">FILES_${PN} =3D &quot;${bindir}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">FILES_${PN} &#43;=3D &quot;${systemd_system_unitdir}=
&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">REQUIRED_DISTRO_FEATURES=3D&quot;systemd&quot;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">---<o:p></o:p></p>
<p class=3D"MsoNormal">My test script service file:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[Unit]<o:p></o:p></p>
<p class=3D"MsoNormal">Description=3DConfigure test <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[Service]<o:p></o:p></p>
<p class=3D"MsoNormal">Type=3Doneshot<o:p></o:p></p>
<p class=3D"MsoNormal">ExecStart=3D/usr/bin/test_script.sh start<o:p></o:p>=
</p>
<p class=3D"MsoNormal">StandardOutput=3Djournal&#43;console<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[Install]<o:p></o:p></p>
<p class=3D"MsoNormal">WantedBy=3Dmulti-user.target<o:p></o:p></p>
<p class=3D"MsoNormal">---<o:p></o:p></p>
<p class=3D"MsoNormal">My test script:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#!/bin/bash<o:p></o:p></p>
<p class=3D"MsoNormal"># description: Description comes here....<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">echo &quot;*******************************&quot;<o:p=
></o:p></p>
<p class=3D"MsoNormal">echo &quot;START: Hello PetaLinux World :)&quot;<o:p=
></o:p></p>
<p class=3D"MsoNormal">date &#43;&quot;%m/%d/%Y %H:%M:%S $HOSTNAME&quot;<o:=
p></o:p></p>
<p class=3D"MsoNormal">echo &quot;*******************************&quot;<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_eb01ecb1fcea49818de1b740f8493f45baesystemscom_--

