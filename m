Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4BC4C4167B
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 21:51:44 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.79.1702677095470894243
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Dec 2023 13:51:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=E4fbtj0x;
 spf=pass (domain: gmail.com, ip: 209.85.221.50, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3332efd75c9so869507f8f.2
        for <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 13:51:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702677094; x=1703281894; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4Rmik61IJap6/AhLBJeBDnRXMcXimSLWNOv73L2pJ2M=;
        b=E4fbtj0x6414Eg3ScvxxotmaHuwohD8TTbK8iS3QwW3hAThp+yBL2S8bTaPEMK4ecq
         m/Vvd2fRyyL9+HrdBh9hwAlEYVlApfMu78YDwXLMy9kjEAtsivWgv99bbeSNYx0S5ThV
         WEHteaF+ZDSq3u5PigL/uJF5Ay6p9WyU2IoeZm86w3g8LYt05Xd4LRUGRvW8aEVK72vY
         o3UDpbMONdeWx07xMBRe07y4SSwkaDCxYXExSzINEsWpAN5OYvQ/4R8L0b+ip873dB4R
         o1szJ64Fhrijp0DvxAubJ3mrZ2lRIJxnb0EaOgoWTY6tlUgvD/D0UbD8hCWblfQZfNIg
         dVKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702677094; x=1703281894;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Rmik61IJap6/AhLBJeBDnRXMcXimSLWNOv73L2pJ2M=;
        b=SWv0hC88Q77qnoTKM1wLSU0YyKeEqUiYGOAybGe/kINZ9Jq4AC97MH8gSBVEOQWnMn
         qiLoWBKldLziBnrIiVHm11yxfS1+MBmUrgczB2UD/OUjOkQjF7LSZiHWmnKbLoh+934M
         zLADF918SHJYT/4vRF94CbR6s4dc3JBJQKhI7wVTex8Uma0xMMXhyHJN7bwYbU9ZS2yC
         TzPtYlGRK1qrMDkUp7QDtqZS3YrvfrRm7/GffC6iSY2O3ncLgPbHHmH4PzGS9ya5CbPE
         cOydQygL8eM9FUxQbeB6h+NSjvAqcW1D4lzdbAux2Pbz/Q4sMGlTtqLXwtGE4sMMJlav
         LHBQ==
X-Gm-Message-State: AOJu0Yxc+n8lr/xNxKaH3vPG4UQLqeWpdWzcEVWO9W+oIs3QaV0+2iYv
	PDm8DiV8sltJZcddrr4wSIbK7vBzWVKfknDPP4kODUrPOkU=
X-Google-Smtp-Source: AGHT+IF7kLf40v4i/kb5XZ2CTxX1o8HEoWarL3Sst5Ey9JHD0rskev4ylq9gWS+qGHsGcvr8mneG6uWTFKavYjuZNRo=
X-Received: by 2002:a5d:414d:0:b0:336:45f4:19c4 with SMTP id
 c13-20020a5d414d000000b0033645f419c4mr1003918wrq.259.1702677093351; Fri, 15
 Dec 2023 13:51:33 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1spSzo-CfFSW0ELCXOoiBeV=Zf7jmtJ=FM5Yr0n2qmgvVQ@mail.gmail.com>
 <24207.1702675978544113217@lists.yoctoproject.org>
In-Reply-To: <24207.1702675978544113217@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 15 Dec 2023 22:51:21 +0100
Message-ID: <CA+chaQdAVQquj6cG7qghb=H8x20yOpRNHnazzn90rY5c6HQbuA@mail.gmail.com>
Subject: Re: [yocto] Wireless interface (wlan) not shown on Raspberry Pi Zero W
To: yocto@lists.yoctoproject.org, renato.mendes.pes@gmail.com
Cc: Khem Raj <raj.khem@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000051083f060c93674b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 21:51:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61923

--00000000000051083f060c93674b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> Am I doing the backport correctly? Maybe config file problems?

You've backported different commit than what Khem asked you to try.

On Fri, Dec 15, 2023 at 10:33=E2=80=AFPM Renato Mendes <renato.mendes.pes@g=
mail.com>
wrote:

> So Khem, that's what I've done:
>
> *Load from git and backport:*
>
> git clone -b kirkstone git://git.yoctoproject.org/poky ./src/poky
> git clone -b kirkstone git://git.openembedded.org/meta-openembedded
> ./src/meta-openembedded
>
> git clone -b kirkstone git://git.yoctoproject.org/meta-raspberrypi
> ./src/meta-raspberrypi
> git checkout master
> git checkout kiskstone
> git cherry-pick master
> Auto-merging docs/extra-build-config.md
> Auto-merging recipes-bsp/bootfiles/rpi-cmdline.bb
> [kirkstone a900a5e] rpi-cmdline, rpi-u-boot-src: Support USB boot
>  Author: Harunobu Kurokawa <harunobu.kurokawa.dn@renesas.com>
>  Date: Fri May 5 14:49:51 2023 +0900
>  Committer: quadfloor <quadfloor@yocto.quadfloor.com>
> Your name and email address were configured automatically based
> on your username and hostname. Please check that they are accurate.
> You can suppress this message by setting them explicitly. Run the
> following command and follow the instructions in your editor to edit
> your configuration file:
>
>     git config --global --edit
>
> After doing this, you may fix the identity used for this commit with:
>
>     git commit --amend --reset-author
>
>  4 files changed, 24 insertions(+), 3 deletions(-)
>
> *Configuration:*
>
> After that, rebuilt with the short configuration:
>
> MACHINE =3D "raspberrypi0-wifi"
> SERIAL_CONSOLE =3D ""
> DISABLE_RPI_BOOT_LOGO =3D "1"
> DISABLE_OVERSCAN =3D "1"
> DISABLE_SPLASH =3D "1"
> BOOT_DELAY =3D "0"
> GPU_MEM_256 =3D "128"
> GPU_MEM_512 =3D "196"
> GPU_MEM_1024 =3D "396"
> PACKAGE_CLASSES =3D "package_ipk"
> DISTRO_FEATURES:append =3D " wifi "
> IMAGE_INSTALL:append =3D " linux-firmware-bcm43430 wpa-supplicant"
> IMAGE_FSTYPES =3D "tar.bz2 ext4 rpi-sdimg"
> SDIMG_ROOTFS_TYPE =3D "ext4"
>
>
> $ cat bblayers.conf
> # POKY_BBLAYERS_CONF_VERSION is increased each time
> build/conf/bblayers.conf
> # changes incompatibly
> POKY_BBLAYERS_CONF_VERSION =3D "2"
>
> BBPATH =3D "${TOPDIR}"
> BBFILES ?=3D ""
>
> BBLAYERS ?=3D " \
>   /home/quadfloor/release_1/src/poky/meta \
>   /home/quadfloor/release_1/src/poky/meta-poky \
>   /home/quadfloor/release_1/src/poky/meta-yocto-bsp \
>   /home/quadfloor/release_1/src/meta-openembedded/meta-oe \
>   /home/quadfloor/release_1/src/meta-openembedded/meta-python \
>   /home/quadfloor/release_1/src/meta-openembedded/meta-multimedia \
>   /home/quadfloor/release_1/src/meta-openembedded/meta-networking \
>   /home/quadfloor/release_1/src/meta-raspberrypi \
>   "
>
>
> *Result:*$ ifcofing -a -> Only lo interface, no wlan
>
> $ dmesg | grep brcmfmac shows nothing....
> $ dmesg | grep wlan shows nothing....
>
> $ lsmod
> Module              Size         Used  by
> nfsd                   454656    11
>
> So, basically the same....
>
> Am I doing the backport correctly? Maybe config file problems?
>
> Thanks for supporting...
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61922):
> https://lists.yoctoproject.org/g/yocto/message/61922
> Mute This Topic: https://lists.yoctoproject.org/mt/103150047/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> martin.jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000051083f060c93674b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; Am I doing the backport correctly? Maybe config file =
problems?<div><br></div><div>You&#39;ve backported different commit than wh=
at Khem asked you to try.</div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, Dec 15, 2023 at 10:33=E2=80=AFPM Ren=
ato Mendes &lt;<a href=3D"mailto:renato.mendes.pes@gmail.com">renato.mendes=
.pes@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">So Khem, that&#39;s what I&#39;ve done:<br><br><strong>Load f=
rom git and backport:</strong><br><span><br>git clone -b kirkstone git://<a=
 href=3D"http://git.yoctoproject.org/poky" target=3D"_blank">git.yoctoproje=
ct.org/poky</a> ./src/poky</span><br><span>git clone -b kirkstone git://<a =
href=3D"http://git.openembedded.org/meta-openembedded" target=3D"_blank">gi=
t.openembedded.org/meta-openembedded</a> ./src/meta-openembedded</span><br>=
<span><br>git clone -b kirkstone git://<a href=3D"http://git.yoctoproject.o=
rg/meta-raspberrypi" target=3D"_blank">git.yoctoproject.org/meta-raspberryp=
i</a> ./src/meta-raspberrypi<br></span>git checkout master<br>git checkout =
kiskstone<br>git cherry-pick master
<div>Auto-merging docs/extra-build-config.md</div>
<div>Auto-merging recipes-bsp/bootfiles/<a href=3D"http://rpi-cmdline.bb" t=
arget=3D"_blank">rpi-cmdline.bb</a></div>
<div>[kirkstone a900a5e] rpi-cmdline, rpi-u-boot-src: Support USB boot</div=
>
<div>=C2=A0Author: Harunobu Kurokawa &lt;<a href=3D"mailto:harunobu.kurokaw=
a.dn@renesas.com" target=3D"_blank">harunobu.kurokawa.dn@renesas.com</a>&gt=
;</div>
<div>=C2=A0Date: Fri May 5 14:49:51 2023 +0900</div>
<div>=C2=A0Committer: quadfloor &lt;<a href=3D"mailto:quadfloor@yocto.quadf=
loor.com" target=3D"_blank">quadfloor@yocto.quadfloor.com</a>&gt;</div>
<div>Your name and email address were configured automatically based</div>
<div>on your username and hostname. Please check that they are accurate.</d=
iv>
<div>You can suppress this message by setting them explicitly. Run the</div=
>
<div>following command and follow the instructions in your editor to edit</=
div>
<div>your configuration file:</div>
<div>=C2=A0</div>
<div>=C2=A0 =C2=A0 git config --global --edit</div>
<div>=C2=A0</div>
<div>After doing this, you may fix the identity used for this commit with:<=
/div>
<div>=C2=A0</div>
<div>=C2=A0 =C2=A0 git commit --amend --reset-author</div>
<div>=C2=A0</div>
<div>=C2=A04 files changed, 24 insertions(+), 3 deletions(-)<br><br><strong=
>Configuration:</strong><br><br>After that, rebuilt with the short configur=
ation:<br><br>
<div>MACHINE =3D &quot;raspberrypi0-wifi&quot;</div>
<div>SERIAL_CONSOLE =3D &quot;&quot;</div>
<div>DISABLE_RPI_BOOT_LOGO =3D &quot;1&quot;</div>
<div>DISABLE_OVERSCAN =3D &quot;1&quot;</div>
<div>DISABLE_SPLASH =3D &quot;1&quot;</div>
<div>BOOT_DELAY =3D &quot;0&quot;</div>
<div>GPU_MEM_256 =3D &quot;128&quot;</div>
<div>GPU_MEM_512 =3D &quot;196&quot;</div>
<div>GPU_MEM_1024 =3D &quot;396&quot;</div>
<div>PACKAGE_CLASSES =3D &quot;package_ipk&quot;</div>
<div>DISTRO_FEATURES:append =3D &quot; wifi &quot;</div>
<div>IMAGE_INSTALL:append =3D &quot; linux-firmware-bcm43430 wpa-supplicant=
&quot;</div>
<div>IMAGE_FSTYPES =3D &quot;tar.bz2 ext4 rpi-sdimg&quot;</div>
<div>SDIMG_ROOTFS_TYPE =3D &quot;ext4&quot;</div>
<br><br>
<div>$ cat bblayers.conf</div>
<div># POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayer=
s.conf</div>
<div># changes incompatibly</div>
<div>POKY_BBLAYERS_CONF_VERSION =3D &quot;2&quot;</div>
<div>=C2=A0</div>
<div>BBPATH =3D &quot;${TOPDIR}&quot;</div>
<div>BBFILES ?=3D &quot;&quot;</div>
<div>=C2=A0</div>
<div>BBLAYERS ?=3D &quot; \</div>
<div>=C2=A0 /home/quadfloor/release_1/src/poky/meta \</div>
<div>=C2=A0 /home/quadfloor/release_1/src/poky/meta-poky \</div>
<div>=C2=A0 /home/quadfloor/release_1/src/poky/meta-yocto-bsp \</div>
<div>=C2=A0 /home/quadfloor/release_1/src/meta-openembedded/meta-oe \</div>
<div>=C2=A0 /home/quadfloor/release_1/src/meta-openembedded/meta-python \</=
div>
<div>=C2=A0 /home/quadfloor/release_1/src/meta-openembedded/meta-multimedia=
 \</div>
<div>=C2=A0 /home/quadfloor/release_1/src/meta-openembedded/meta-networking=
 \</div>
<div>=C2=A0 /home/quadfloor/release_1/src/meta-raspberrypi \</div>
<div>=C2=A0 &quot;</div>
<br><strong>Result:<br></strong>$ ifcofing -a -&gt; Only lo interface, no w=
lan<br><br><span>$ dmesg | grep brcmfmac shows nothing....<br></span><span>=
$ dmesg | grep wlan shows nothing....</span><br><br>$ lsmod<br>Module=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Size=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Used=C2=A0 by<br>nfsd=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0454656=C2=A0 =C2=A0 11<br><br>So, basically the same..=
..=C2=A0<br><br>Am I doing the backport correctly? Maybe config file proble=
ms?<br><br>Thanks for supporting...</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61922): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61922" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61922</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103150047/361=
7156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/103150047/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin=
.jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000051083f060c93674b--

