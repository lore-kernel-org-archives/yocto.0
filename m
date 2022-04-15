Return-Path: <tomasz.zyjewski@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25DBDC65C0E
	for <webhook@archiver.kernel.org>; Mon, 18 Apr 2022 14:26:03 +0000 (UTC)
Subject: Re: Yocto Kernel building
To: yocto@lists.yoctoproject.org
From: "tomzy" <tomasz.zyjewski@3mdeb.com>
X-Originating-Location: Warsaw, Mazovia, PL (84.10.27.202)
X-Originating-Platform: Linux Firefox 99
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 15 Apr 2022 00:38:24 -0700
References: 
 <BM1PR01MB32035E9889C574FB564BA0E694EC9@BM1PR01MB3203.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: 
 <BM1PR01MB32035E9889C574FB564BA0E694EC9@BM1PR01MB3203.INDPRD01.PROD.OUTLOOK.COM>
Message-ID: <31883.1650008304566003798@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XVaVhwWvEAENOdMyELzi"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Apr 2022 14:26:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56775

--XVaVhwWvEAENOdMyELzi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> I have added the include file and compiled it. But same errors observed
> with few more errors.
> These errors are observed in the stage of *bitbake linux-qoriq-rt -c
> configure*.
>=20

From the log I can tell that there is some problem with paths, like bitbake=
 could not find needed files.

>=20
>=20
>=20
> Also, found following notes while doing fetch, unpack and patch,
>=20
>> NOTE: preferred version 4.19 of linux-qoriq-rt not available (for item
>> linux-qoriq-rt)
>> NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${SRCPV}
>> NOTE: Resolving any missing task queue dependencies
>> NOTE: preferred version 4.19 of linux-qoriq-rt not available (for item
>> kernel-image-image)
>> NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${SRCPV}
>> NOTE: preferred version 4.19 of linux-qoriq-rt not available (for item
>> kernel-base)
>> NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${SRCPV}
>> NOTE: preferred version 4.19 of linux-qoriq-rt not available (for item
>> kernel-image-vmlinux)
>> NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${SRCPV}
>> NOTE: preferred version 4.19 of linux-qoriq-rt not available (for item
>> kernel-image-uimage)
>> NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${SRCPV}
>> NOTE: preferred version 4.19 of linux-qoriq-rt not available (for item
>> virtual/kernel)
>> NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${SRCPV}
>=20
>=20
>=20
>=20

Yes, maybe it would be better to try linux-qoriq_4.19.bb and then set PREFE=
RRED_VERSION. Unfortunately,
I've been a bit busy lately, but if that's still a problem, I can try to re=
produce it over the weekend on some basic
configuration with meta-freescale.

>=20
>=20
>=20
>=20
> Attached log file for your reference.
>=20
> Thank you
>=20

Regarding,

Tomasz =C5=BByjewski
Embedded Systems Engineer
GPG: 5C495EA3EBEECA59
https://3mdeb.com | @3mdeb_com

--XVaVhwWvEAENOdMyELzi
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;">I have added the include =
file and compiled it. But same errors observed with few more errors.</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;">These errors are observed=
 in the stage of <strong><em>bitbake linux-qoriq-rt -c configure</em></stro=
ng>.</div>
</blockquote>
From the log I can tell that there is some problem with paths, like bitbake=
 could not find needed files.<br />
<blockquote>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;">&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;">&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;">Also, found following not=
es while doing fetch, unpack and patch,</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;">
<blockquote><em>NOTE: preferred version 4.19 of linux-qoriq-rt not availabl=
e (for item linux-qoriq-rt)</em>
<div><em>NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${=
SRCPV}</em></div>
<div><em>NOTE: Resolving any missing task queue dependencies</em></div>
<div><em>NOTE: preferred version 4.19 of linux-qoriq-rt not available (for =
item kernel-image-image)</em></div>
<div><em>NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${=
SRCPV}</em></div>
<div><em>NOTE: preferred version 4.19 of linux-qoriq-rt not available (for =
item kernel-base)</em></div>
<div><em>NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${=
SRCPV}</em></div>
<div><em>NOTE: preferred version 4.19 of linux-qoriq-rt not available (for =
item kernel-image-vmlinux)</em></div>
<div><em>NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${=
SRCPV}</em></div>
<div><em>NOTE: preferred version 4.19 of linux-qoriq-rt not available (for =
item kernel-image-uimage)</em></div>
<div><em>NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${=
SRCPV}</em></div>
<div><em>NOTE: preferred version 4.19 of linux-qoriq-rt not available (for =
item virtual/kernel)</em></div>
<span><em>NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git$=
{SRCPV}</em></span></blockquote>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;">&nbsp;</div>
</blockquote>
<p>Yes, maybe it would be better to try linux-qoriq_4.19.bb and then set PR=
EFERRED_VERSION. <span class=3D"VIiyi" lang=3D"en"><span class=3D"JLqJ4b Ch=
Mk0b" data-language-for-alternatives=3D"en" data-language-to-translate-into=
=3D"pl" data-phrase-index=3D"0" data-number-of-phrases=3D"1"><span class=3D=
"Q4iAWc">Unfortunately,<br /></span></span></span><span class=3D"VIiyi" lan=
g=3D"en"><span class=3D"JLqJ4b ChMk0b" data-language-for-alternatives=3D"en=
" data-language-to-translate-into=3D"pl" data-phrase-index=3D"0" data-numbe=
r-of-phrases=3D"1"><span class=3D"Q4iAWc">I've been a bit busy lately, but =
if that's still a problem, I can try to reproduce it over the weekend on so=
me basic<br />configuration with meta-freescale.</span></span></span></p>
<blockquote>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;"><br /><br /></div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;">Attached log file for you=
r reference.</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;">&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;">Thank you</div>
</blockquote>
<p>Regarding,</p>
<p>Tomasz =C5=BByjewski<br />Embedded Systems Engineer<br />GPG: 5C495EA3EB=
EECA59<br />https://3mdeb.com | @3mdeb_com</p>

--XVaVhwWvEAENOdMyELzi--

