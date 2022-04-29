Return-Path: <ashutosh.naik@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7840C433F5
	for <webhook@archiver.kernel.org>; Fri, 29 Apr 2022 13:48:18 +0000 (UTC)
Subject: Yocto cyrillic characters  support  #yocto
To: yocto@lists.yoctoproject.org
From: "Ashutosh Naik" <ashutosh.naik@gmail.com>
X-Originating-Location: Pune, Maharashtra, IN (152.57.195.18)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 29 Apr 2022 06:48:08 -0700
Message-ID: <r3Gt.1651240088695680202.RPCQ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="brc2SGHUz2T2mJ8gGaVh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 13:48:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56961

--brc2SGHUz2T2mJ8gGaVh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am having trouble creating files with cyrillic characters on a yocto gene=
rated image.

For eg. If I try to create a file like :
# touch=C2=A0 1=D0=A7=D0=B5=D1=80=D0=BD=D0=B0=D1=8F

I do get:

# ls
1??????

I have verified that my locale has utf8 support:

# locale
LANG=3Den_GB.utf8
LC_CTYPE=3D"en_GB.utf8"
LC_NUMERIC=3D"en_GB.utf8"
LC_TIME=3D"en_GB.utf8"
LC_COLLATE=3D"en_GB.utf8"
LC_MONETARY=3D"en_GB.utf8"
LC_MESSAGES=3D"en_GB.utf8"
LC_PAPER=3D"en_GB.utf8"
LC_NAME=3D"en_GB.utf8"
LC_ADDRESS=3D"en_GB.utf8"
LC_TELEPHONE=3D"en_GB.utf8"
LC_MEASUREMENT=3D"en_GB.utf8"
LC_IDENTIFICATION=3D"en_GB.utf8"
LC_ALL=3Den_GB.utf8

What could I be missing and how can I create files with cyrillic characters=
?

Regards
Ash

--brc2SGHUz2T2mJ8gGaVh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I am having trouble creating files with cyrillic characters on a yocto=
 generated image.</div>
<div>&nbsp;</div>
<div>For eg. If I try to create a file like :</div>
<div># touch&nbsp; 1=D0=A7=D0=B5=D1=80=D0=BD=D0=B0=D1=8F</div>
<div>&nbsp;</div>
<div>I do get:</div>
<div>&nbsp;</div>
<div># ls</div>
<div>1??????</div>
<div>&nbsp;</div>
<div>I have verified that my locale has utf8 support:</div>
<div>&nbsp;</div>
<div># locale</div>
<div>LANG=3Den_GB.utf8</div>
<div>LC_CTYPE=3D"en_GB.utf8"</div>
<div>LC_NUMERIC=3D"en_GB.utf8"</div>
<div>LC_TIME=3D"en_GB.utf8"</div>
<div>LC_COLLATE=3D"en_GB.utf8"</div>
<div>LC_MONETARY=3D"en_GB.utf8"</div>
<div>LC_MESSAGES=3D"en_GB.utf8"</div>
<div>LC_PAPER=3D"en_GB.utf8"</div>
<div>LC_NAME=3D"en_GB.utf8"</div>
<div>LC_ADDRESS=3D"en_GB.utf8"</div>
<div>LC_TELEPHONE=3D"en_GB.utf8"</div>
<div>LC_MEASUREMENT=3D"en_GB.utf8"</div>
<div>LC_IDENTIFICATION=3D"en_GB.utf8"</div>
<div>LC_ALL=3Den_GB.utf8</div>
<div>&nbsp;</div>
<div>What could I be missing and how can I create files with cyrillic chara=
cters?</div>
<div>&nbsp;</div>
<div>Regards</div>
<div>Ash</div>

--brc2SGHUz2T2mJ8gGaVh--

