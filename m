Return-Path: <bremenpl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E178C47073
	for <webhook@archiver.kernel.org>; Thu,  4 Jan 2024 09:14:21 +0000 (UTC)
Subject: Overwriting a bbclass
To: yocto@lists.yoctoproject.org
From: "Lukasz Przenioslo" <bremenpl@gmail.com>
X-Originating-Location: Szczecin, West Pomerania, PL (83.20.46.245)
X-Originating-Platform: Windows Firefox 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 04 Jan 2024 01:14:13 -0800
Message-ID: <Fs9Q.1704359653504757873.doJ3@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="J7mGErkPSsq61S3hJ6QE"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Jan 2024 09:14:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62088

--J7mGErkPSsq61S3hJ6QE
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hello,
I would like modify how the `extlinux/extlinux.conf` file is create during =
build. I have figured out that the file responsible for the generation of t=
his file is `poky/meta/classes/uboot-extlinux-config.bbclass`. I need to ch=
ange the `UBOOT_EXTLINUX_FDT` value there and add an additional variable an=
d parsing of it to the python code part (`FDTOVERLAYS`). For the former, I =
can change the value in some other custom conf file, as the `UBOOT_EXTLINUX=
_FDT` variable is already parsed in the given bbclass. Since `FDTOVERLAYS` =
is not handled at all in `poky/meta/classes/uboot-extlinux-config.bbclass`,=
 I cannot do it the same way. I would need a `UBOOT_EXTLINUX_FDT` code ther=
e, but for the `FDTOVERLAYS`.

What is the best way to accomplish this? I thought initially that I could:
1. Somehow disable the default `poky/meta/classes/uboot-extlinux-config.bbc=
lass`,
2. Overwrite it with a copy of this file that resides outside poky (inform =
the build system about this somehow),
3. Manually implement modifications in my bbclass file copy.

If this is the way to go, then I just do now how to do this in practice.
I would appreciate all help!

--J7mGErkPSsq61S3hJ6QE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello,
I would like modify how the <code>extlinux/extlinux.conf</code> file is cre=
ate during build. I have figured out that the file responsible for the gene=
ration of this file is <code>poky/meta/classes/uboot-extlinux-config.bbclas=
s</code>. I need to change the <code>UBOOT_EXTLINUX_FDT</code> value there =
and add an additional variable and parsing of it to the python code part (<=
code>FDTOVERLAYS</code>). For the former, I can change the value in some ot=
her custom conf file, as the <code>UBOOT_EXTLINUX_FDT</code> variable is al=
ready parsed in the given bbclass. Since <code>FDTOVERLAYS</code> is not ha=
ndled at all in <code>poky/meta/classes/uboot-extlinux-config.bbclass</code=
>, I cannot do it the same way. I would need a <code>UBOOT_EXTLINUX_FDT</co=
de> code there, but for the <code>FDTOVERLAYS</code>.</p>

<p>What is the best way to accomplish this? I thought initially that I coul=
d:
1. Somehow disable the default <code>poky/meta/classes/uboot-extlinux-confi=
g.bbclass</code>,
2. Overwrite it with a copy of this file that resides outside poky (inform =
the build system about this somehow),
3. Manually implement modifications in my bbclass file copy.</p>

<p>If this is the way to go, then I just do now how to do this in practice.
I would appreciate all help!</p>

--J7mGErkPSsq61S3hJ6QE--

