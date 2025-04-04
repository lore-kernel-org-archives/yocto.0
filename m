Return-Path: <abhijithkannan45@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81774C36010
	for <webhook@archiver.kernel.org>; Fri,  4 Apr 2025 05:30:30 +0000 (UTC)
Subject: Re: [yocto] Error while building python3.11 as an alternative for scarthgap (OpenSTLinux) #openstlinux #bitbake #yocto
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: "Abhijith" <abhijithkannan45@gmail.com>
X-Originating-Location: US (136.226.242.122)
X-Originating-Platform: Linux Firefox 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 03 Apr 2025 22:30:23 -0700
References: <245da1d0-62a6-4528-8993-b89380e8433b@gmail.com>
In-Reply-To: <245da1d0-62a6-4528-8993-b89380e8433b@gmail.com>
Message-ID: <26801.1743744623838957302@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="IaduyqMESuLQ38zdc8AX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 05:30:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65094

--IaduyqMESuLQ38zdc8AX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Gyorgy,

I=E2=80=99m currently using OpenSTLinux (Scarthgap) on the STM32MP157F-DK2 =
development board to learn how to build an alternative Python 3 version in =
Yocto. My ultimate goal is to build a Yocto image for the RZ/V2L developmen=
t board, with Python 3.11 as an alternative to the default Python 3.8.

The STM32MP157F-DK2 and the RZ/V2L come from different vendors (STMicroelec=
tronics and Renesas, respectively), but I=E2=80=99m using the STM32MP157F-D=
K2 for now because I don=E2=80=99t have the RZ/V2L board yet. Once I get th=
e RZ/V2L, I plan to apply what I=E2=80=99ve learned from building the image=
 on the STM32MP157F-DK2 to create the final image for the RZ/V2L.

Renesas officially supports Yocto Dunfell for the RZ/V2L, which includes Py=
thon 3.8. However, for my project, I need at least Python 3.10, and ideally=
 Python 3.11. Since the STM32MP157F-DK2 is available to me right now, I=E2=
=80=99m using it as a reference point to learn the process, with the intent=
 to later apply it to the RZ/V2L once I have it.

I hope this clarifies the situation.
Abhijith

--IaduyqMESuLQ38zdc8AX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"" data-start=3D"148" data-end=3D"158">Hi Gyorgy,</p>
<p class=3D"" data-start=3D"160" data-end=3D"447">I&rsquo;m currently using=
 OpenSTLinux (Scarthgap) on the STM32MP157F-DK2 development board to learn =
how to build an alternative Python 3 version in Yocto. My ultimate goal is =
to build a Yocto image for the RZ/V2L development board, with Python 3.11 a=
s an alternative to the default Python 3.8.</p>
<p class=3D"" data-start=3D"449" data-end=3D"790">The STM32MP157F-DK2 and t=
he RZ/V2L come from different vendors (STMicroelectronics and Renesas, resp=
ectively), but I&rsquo;m using the STM32MP157F-DK2 for now because I don&rs=
quo;t have the RZ/V2L board yet. Once I get the RZ/V2L, I plan to apply wha=
t I&rsquo;ve learned from building the image on the STM32MP157F-DK2 to crea=
te the final image for the RZ/V2L.</p>
<p class=3D"" data-start=3D"792" data-end=3D"1131">Renesas officially suppo=
rts Yocto Dunfell for the RZ/V2L, which includes Python 3.8. However, for m=
y project, I need at least Python 3.10, and ideally Python 3.11. Since the =
STM32MP157F-DK2 is available to me right now, I&rsquo;m using it as a refer=
ence point to learn the process, with the intent to later apply it to the R=
Z/V2L once I have it.</p>
<p class=3D"" data-start=3D"1133" data-end=3D"1208">I hope this clarifies t=
he situation.<br />Abhijith</p>

--IaduyqMESuLQ38zdc8AX--

