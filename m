Return-Path: <abhijithkannan45@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FF8AC36010
	for <webhook@archiver.kernel.org>; Fri,  4 Apr 2025 09:15:12 +0000 (UTC)
Subject: Re: [yocto] Error while building python3.11 as an alternative for scarthgap (OpenSTLinux) #openstlinux #bitbake #yocto
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: "Abhijith" <abhijithkannan45@gmail.com>
X-Originating-Location: US (136.226.242.122)
X-Originating-Platform: Linux Firefox 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Apr 2025 02:15:04 -0700
References: <abb758f9-f4fb-476b-8dca-00ed032cc259@gmail.com>
In-Reply-To: <abb758f9-f4fb-476b-8dca-00ed032cc259@gmail.com>
Message-ID: <7593.1743758104645038790@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4gyQIKlqvTM4tdvukttD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 09:15:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65100

--4gyQIKlqvTM4tdvukttD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Gyorgy,

If we were to go with STM32MP157F-DF2 board, I didn't have to try to instal=
l python3.11 on it. I think the code would run just fine on python3.12. But=
 we aren't using STM32MP157F-DF2 for the product, we will be using RZ/V2L a=
nd that have only python3.8. Python3.8 isn't feasable.

The reason why didn't try to upgrade python3.8 to python3.10 or higher was =
based on the online forums stating trying to upgrade the default python3.8 =
would cause issue with other packages. I thought I would having to build an=
 alternative python would much be much easier than upgrading one. Anyways I=
'll try that as well.

--4gyQIKlqvTM4tdvukttD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Gyorgy,<br /><br />If we were to go with STM32MP157F-DF2 board, I d=
idn't have to try to install python3.11 on it. I think the code would run j=
ust fine on python3.12. But we aren't using STM32MP157F-DF2 for the product=
, we will be using RZ/V2L and that have only python3.8. Python3.8 isn't fea=
sable.</div>
<div>&nbsp;</div>
<div>The reason why didn't try to upgrade python3.8 to python3.10 or higher=
 was based on the online forums stating trying to upgrade the default pytho=
n3.8 would cause issue with other packages. I thought I would having to bui=
ld an alternative python would much be much easier than upgrading one. Anyw=
ays I'll try that as well.</div>

--4gyQIKlqvTM4tdvukttD--

