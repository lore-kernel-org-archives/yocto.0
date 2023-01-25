Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D870C27C76
	for <webhook@archiver.kernel.org>; Wed, 25 Jan 2023 13:05:36 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.44552.1674651935337029991
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Jan 2023 05:05:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CJc6zFmt;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id w11so25154386lfu.11
        for <yocto@lists.yoctoproject.org>; Wed, 25 Jan 2023 05:05:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tRNo1N565L1fJGBLZbGeSISMy2KIzTC/zSh5inytjxU=;
        b=CJc6zFmtp010XBhIqNfwWzqMwNIuZweDogCR1jyEFNEixg1tSxfnZbI0YK5fkU7a7h
         NOYTlAtQzutZ3oltR9c0EOZd4AoL1XxLOegyzC2S9O/ElWKBrQsCS8UmCBX+/Ao8CTdQ
         bmKfmqJVH6ovLfIR9lcullhrpuERA0L5N7iCPIvSBAEP3WoHmNUM1uQKYbwiC+tZqexy
         1PymI/5iP8QlxVPy7wuS5BbcFtB1cqSELrs51VbmPiQ64EB5R7fn7zfkipOxCKJkaIa1
         ARQqQ8ywD4fi7J1A4mLvYZH7P6kf+WMsX8MV2/NcgDVu1PaaKIr8SjF/7pVfQ49h/qUZ
         Rmkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tRNo1N565L1fJGBLZbGeSISMy2KIzTC/zSh5inytjxU=;
        b=h8joav1Sb+lw9P2LG8KForcKUpeACjv65IAeqiXAbiCT9iT6shrcdgG8VHbfnRLPHu
         iEzMfZ6IdzJjn+i9FuCRV14afq786YYT/0DZCv7BdkmXQ9cyG/5Jly64oMiB6runeXEl
         Dgf+re+NavDGS2OQJGgRWEPJpelF44dpyUkcDeefUNFOPSG0HWWzOlBcEIShpI3yLjU+
         HA/yEQVG2bmrWb0zgmMiODJhbZMK5haX27XGak1HKAtOKure5tPHKDx+K3eoqigarZYM
         SbdM9d5P1undbDN9vrRipHVZHKOy54RrhYmPESVj7ipq8mKLOvBtsKHUQUEJMtD6fxGe
         GmJw==
X-Gm-Message-State: AFqh2kr8GTnKNverQ4N1RSa+TTuvEw+b4fXtyi/fCp/KXlhqz3nf14w4
	CloX/WdfCOgh0QeV0RAwWUxU0frCwWOTqI5OdMQ=
X-Google-Smtp-Source: AMrXdXuoKPtdUYMoaoS2aaP4ufYMo3ae7xjxtcy+2E8uTh7gUPdif/reu6UZsXLnihtsNmWG/z9A4PCWxKFFS340pdE=
X-Received: by 2002:a05:6512:3ca1:b0:4cc:7ecb:32af with SMTP id
 h33-20020a0565123ca100b004cc7ecb32afmr2713221lfv.393.1674651933334; Wed, 25
 Jan 2023 05:05:33 -0800 (PST)
MIME-Version: 1.0
References: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>
In-Reply-To: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 25 Jan 2023 14:05:22 +0100
Message-ID: <CANNYZj976z0Xdk0Bt1uJkwbXBqkR0yXVz14ZaJ6s_muXXUtXWQ@mail.gmail.com>
Subject: Re: [yocto] Error while adding " libimxvpuapi2" and "gstreamer" pkgs
 in my local.conf for imx8mplus
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009bdf5405f316497c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Jan 2023 13:05:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59058

--0000000000009bdf5405f316497c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What happens if you bitbake libimx=E2=80=A6 thingy directly?

Alex

On Wed 25. Jan 2023 at 13.47, Nikita Gupta <nikitagupta2509@gmail.com>
wrote:

> Hello list,
>
> I was just making image for imx8mplus by adding few pkgs in my local.conf
> but encountered few errors so i am here for your help.
> I added below pkgs in my local.conf file
>
> IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins-base
> gstreamer1.0-plugins-good gstreamer1.0-plugins-bad
> gstreamer1.0-plugins-ugly  gstreamer1.0-libav imx-vpuwrap imx-gpu-g2d
> imx-gpu-viv gstreamer1.0-plugins-imx imx-gst1.0-plugin"
> LICENSE_FLAGS_WHITELIST =3D "commercial"
> IMAGE_INSTALL:append =3D "kernel-devsrc"
> IMAGE_INSTALL_append +=3D "gstreamer1.0-rtsp-server gst-variable-rtsp-ser=
ver"
> IMAGE_INSTALL:append =3D " gtk+3"
> CORE_IMAGE_EXTRA_INSTALL +=3D " opencv libopencv-core-dev
> libopencv-highgui-dev libopencv-imgproc-dev libopencv-objdetect-dev
> libopencv-ml-dev"
> IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "
>
> So my local.conf file now looks like this
> So i am getting below error after baking my recipe ( Attached image).
>
> Please tell what should I need to do to resolve this.
>
> Thanks in advance
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59056):
> https://lists.yoctoproject.org/g/yocto/message/59056
> Mute This Topic: https://lists.yoctoproject.org/mt/96519310/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000009bdf5405f316497c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">What happens if you bitbake libimx=E2=80=A6 thingy direct=
ly?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed 25. =
Jan 2023 at 13.47, Nikita Gupta &lt;<a href=3D"mailto:nikitagupta2509@gmail=
.com">nikitagupta2509@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">=
<div dir=3D"auto">Hello list,<div dir=3D"auto"><br></div><div dir=3D"auto">=
I was just making image for imx8mplus by adding few pkgs in my local.conf b=
ut encountered few errors so i am here for your help.=C2=A0</div><div dir=
=3D"auto">I added below pkgs in my local.conf file</div><div dir=3D"auto"><=
br></div><div dir=3D"auto"><div dir=3D"auto">IMAGE_INSTALL:append =3D &quot=
;gstreamer1.0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer=
1.0-plugins-bad gstreamer1.0-plugins-ugly=C2=A0 gstreamer1.0-libav imx-vpuw=
rap imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins-imx imx-gst1.0-plugin&quot=
;</div><div dir=3D"auto">LICENSE_FLAGS_WHITELIST =3D &quot;commercial&quot;=
</div><div dir=3D"auto">IMAGE_INSTALL:append =3D &quot;kernel-devsrc&quot;<=
/div><div dir=3D"auto">IMAGE_INSTALL_append +=3D &quot;gstreamer1.0-rtsp-se=
rver gst-variable-rtsp-server&quot;</div><div dir=3D"auto">IMAGE_INSTALL:ap=
pend =3D &quot; gtk+3&quot;</div><div dir=3D"auto">CORE_IMAGE_EXTRA_INSTALL=
 +=3D &quot; opencv libopencv-core-dev libopencv-highgui-dev libopencv-imgp=
roc-dev libopencv-objdetect-dev libopencv-ml-dev&quot;</div><div dir=3D"aut=
o">IMAGE_ROOTFS_EXTRA_SPACE =3D &quot;1048576 &quot;</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">So my local.conf file now looks like this=C2=
=A0</div><div dir=3D"auto">So i am getting below error after baking my reci=
pe ( Attached image).</div><div dir=3D"auto"><br></div><div dir=3D"auto">Pl=
ease tell what should I need to do to resolve this.</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">Thanks in advance=C2=A0</div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59056): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59056" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59056</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96519310/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/96519310/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000009bdf5405f316497c--

