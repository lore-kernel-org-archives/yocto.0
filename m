Return-Path: <abhijithkannan45@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B7D9C3600C
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 11:19:51 +0000 (UTC)
Subject: Re: [yocto] Error while building python3.11 as an alternative for scarthgap (OpenSTLinux) #openstlinux #bitbake #yocto
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Abhijith" <abhijithkannan45@gmail.com>
X-Originating-Location: US (136.226.242.122)
X-Originating-Platform: Linux Firefox 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 03 Apr 2025 04:19:44 -0700
References: <CANNYZj_LzJH1w_ieTQTbmpdhgaXKmjpWGkR=FqhvbG3zreKBkg@mail.gmail.com>
In-Reply-To: <CANNYZj_LzJH1w_ieTQTbmpdhgaXKmjpWGkR=FqhvbG3zreKBkg@mail.gmail.com>
Message-ID: <4900.1743679184541317939@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lDESfsEBlhDF4ONSmQqB"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 11:19:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65071

--lDESfsEBlhDF4ONSmQqB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Unfortunately, that option isn=E2=80=99t feasible for me at the moment. As =
mentioned in my previous message, I am using the STM32MPU for learning purp=
oses. The end goal is to have an image for the RZ/V2L with Python 3.11. How=
ever, the RZ/V2L currently only supports Python 3.8. I=E2=80=99ve reached o=
ut to Renesas regarding support for a higher version, and they informed me =
that I either have to wait until the end of the year for an official releas=
e with Python 3.12, or build it myself. Since I cannot wait until the end o=
f the year for the official release, I am working on building an image with=
 Python 3.11.

Since I don=E2=80=99t currently have access to RZ/V2L hardware, I=E2=80=99m=
 using the STM32MPU to learn and build an image with Python 3.11. I underst=
and your concern, but this task has been assigned to me by my company. Our =
client provides the models and Python code, and they=E2=80=99ve made it cle=
ar that they cannot proceed with Python 3.8. They require at least Python 3=
.10.

--lDESfsEBlhDF4ONSmQqB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"" data-start=3D"151" data-end=3D"159">Hi Alex,</p>
<p class=3D"" data-start=3D"161" data-end=3D"634">Unfortunately, that optio=
n isn&rsquo;t feasible for me at the moment. As mentioned in my previous me=
ssage, I am using the STM32MPU for learning purposes. The end goal is to ha=
ve an image for the RZ/V2L with Python 3.11. However, the RZ/V2L currently =
only supports Python 3.8. I&rsquo;ve reached out to Renesas regarding suppo=
rt for a higher version, and they informed me that I either have to wait un=
til the end of the year for an official release with Python 3.12, or build =
it myself. Since I cannot wait until the end of the year for the official r=
elease, I am working on building an image with Python 3.11.&nbsp;</p>
<p class=3D"" data-start=3D"636" data-end=3D"1009">Since I don&rsquo;t curr=
ently have access to RZ/V2L hardware, I&rsquo;m using the STM32MPU to learn=
 and build an image with Python 3.11. I understand your concern, but this t=
ask has been assigned to me by my company. Our client provides the models a=
nd Python code, and they&rsquo;ve made it clear that they cannot proceed wi=
th Python 3.8. They require at least Python 3.10.</p>

--lDESfsEBlhDF4ONSmQqB--

