Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1443C38142
	for <webhook@archiver.kernel.org>; Tue, 31 Jan 2023 08:41:32 +0000 (UTC)
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
 by mx.groups.io with SMTP id smtpd.web10.7701.1675154486787084036
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Jan 2023 00:41:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Urono4Uv;
 spf=pass (domain: gmail.com, ip: 209.85.160.54, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-15ff0a1f735so18460364fac.5
        for <yocto@lists.yoctoproject.org>; Tue, 31 Jan 2023 00:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iod2nWz0f+I3xnmIASep4W6EvFincG6V9SaDSSggCiI=;
        b=Urono4UvvKAysXzvSQ0tkv48vE2fzKxSWgcGWrXDGc7JWC1slQUE1NvmniqF0LcfJP
         OlfmsFpZPbrHyikUfbB5giNJ9a+LXbyhU9ZnLJpkWzKpp5s0PSd4Hiit73MEAbydKV4y
         Z9m+qnWO+6I8u74/r1AZcWNuj/WkI+JzUO7MKzIdUmwsrU4J4EIDVpqoWtCO54+It6t/
         NIFwODGxK+b0cONuwpxxJ8FBWttWCqRMTImItJdrMkuUPr4ftjVLeGRLjtnzdjv6c1Jm
         VED7r0C6vdh2Lv6DWEHnf8W38XrPNGxw3rQblY2ogiR/II4UDSlsuWpz98ofcmCd0Hc/
         YSUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iod2nWz0f+I3xnmIASep4W6EvFincG6V9SaDSSggCiI=;
        b=ZOfOqRkaBG280l2+cFmlrKZRQLOXEL1RGefK8sAIvRZZWUI+d9MJaUed/DPzLWcT+j
         Awm+jlOgoYV7x9rrhohnvHi0ujZHFEPbjPkzM2iTYDbr0kL42nL3qZ/YIYcziZF/vauA
         fzxciO6eQo/e3DCSg3uaA2nvZP4/wMHRIT7L/mTxK7p52og8igKgXfnNIFtUY9WoS4iR
         K+AIQ4M8svpgrdvg3E1VaL4EzLe2nj99UDe4MoGpfZ+pKbDqE+hNL/M06eXym628uxfw
         TaMwztSsxl4q5rpbAze+meXAX9IY3jSaq+PBYjwx6HNw/uFVXlMpN6sD7REfceobPLn4
         EF6w==
X-Gm-Message-State: AO0yUKVkGUjPhkzqCy7EHXFTYeAplPbm31FAfEzirHn+NrV7HeSTN38V
	QMvqGB33FOAg0ftAsWYZomf/SvtaPR7mzIqmfKM=
X-Google-Smtp-Source: AK7set9SvWo/SeJKj3XmLXGewcv5F/W0y8vvbyZWmvqPfHdQhVXO53OWZMlA5lnVrl9VYHMPRCFrl790xit8AoMRDF4=
X-Received: by 2002:a05:6870:96a2:b0:163:b85e:f1ca with SMTP id
 o34-20020a05687096a200b00163b85ef1camr702388oaq.262.1675154485891; Tue, 31
 Jan 2023 00:41:25 -0800 (PST)
MIME-Version: 1.0
References: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>
 <CANNYZj976z0Xdk0Bt1uJkwbXBqkR0yXVz14ZaJ6s_muXXUtXWQ@mail.gmail.com>
 <CAGQ3h157uE84DWRVnXJJ6Oxbx=CORhX6Gp6PDs9re=V9E6EU6g@mail.gmail.com>
 <CANNYZj_MXwVHE7oA7peLKGQfi8GnM90N9d=1Kn8o0ZWGa83MVg@mail.gmail.com>
 <CAGQ3h14CC3LeP++cfs1k2u-4aeYNqyCJjusNUOWbz4d49k=TwQ@mail.gmail.com>
 <CAGQ3h1598A-7_uX9RsN_zrw2eyRSuPCdFhLT9zODBmxrYxVzDg@mail.gmail.com>
 <ba145544-a63e-9002-198d-5dd902bfcd1d@lineo.co.jp> <CAGQ3h16F1N_sM3sQs6c+bJFdCmpqWUkSPfDeMGP1mQhqJHQ+_w@mail.gmail.com>
 <9a1053bd-d55b-9705-989d-36ad9f733ef5@lineo.co.jp>
In-Reply-To: <9a1053bd-d55b-9705-989d-36ad9f733ef5@lineo.co.jp>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 31 Jan 2023 00:40:59 -0800
Message-ID: <CAMKF1srN5gMQXw1nruWSaPEc8qXEcpvTK3mxMnzGGK-kQSF7PQ@mail.gmail.com>
Subject: Re: [yocto] Error while adding " libimxvpuapi2" and "gstreamer" pkgs
 in my local.conf for imx8mplus
To: Takayasu Ito <ito@lineo.co.jp>
Cc: Nikita Gupta <nikitagupta2509@gmail.com>, Alexander Kanavin <alex.kanavin@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Jan 2023 08:41:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59116

On Mon, Jan 30, 2023 at 6:34 PM Takayasu Ito <ito@lineo.co.jp> wrote:
>
> Hi  Nikita
>
> The problem is that in the imx-vpu-hantro recipe, the encoder library,
> libhantro_h1.so, is not installed for mx8mp, but is installed for mx8mm.
>
> In the libimxvpuapi2 recipe, imx8mp specifies imx8mm in IMX_PLATFORM.
> Therefore, the _encoder variable used in the waf wsctipt file is set to
> true, so a check is made for the presence of hantro_h1, resulting in an
> error.
> At this time, libimxvpuapi2 support for imx8m is imx8m and imx8mm, so by
> changing the setting to one for imx8m, which does not use a hardware
> encoder, the build for imx8mp will pass.
>
> Create the libimxvpuapi2_%.bbappen file and add
> IMX_PLATFOEM:mx8mp-nxp-bsp =3D "imx8m"
>

I think this is perhaps in right direction but I would suggest

IMX_PLATFORM:mx8mp-nxp-bsp =3D "imx8mm"

>
>
> Translated with www.DeepL.com/Translator (free version)
> On 2023/01/30 20:19, Nikita Gupta wrote:
> > Hello Takayasu
> > Thanks for your suggestion,  but after implementing i am facing same
> > thing (see attached image).
> >
> > Regards
> > Nikita Gupta
> >
> > On Fri, 27 Jan 2023 at 17:55, Takayasu Ito <ito@lineo.co.jp
> > <mailto:ito@lineo.co.jp>> wrote:
> >
> >     Hi Nikita
> >
> >       > *IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins-ba=
se
> >     gstreamer1.0-plugins-good gstreamer1.0-plugins-bad
> >
> >     If you do not put a space after the double quotation marks, the
> >     package names before and after will be attached to each other
> >     during the merge.
> >
> >     See
> >     https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitba=
ke-user-manual-metadata.html#appending-and-prepending-override-style-syntax=
 <https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake-use=
r-manual-metadata.html#appending-and-prepending-override-style-syntax>
> >
> >     On 2023/01/27 20:48, Nikita Gupta wrote:
> >      > Hello List,
> >      >
> >      > As i earlier mentioned that i want to do some customisation in
> >     local.conf by adding few pkgs (below).
> >      > *IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins-bas=
e
> >     gstreamer1.0-plugins-good gstreamer1.0-plugins-bad
> >      > gstreamer1.0-plugins-ugly  gstreamer1.0-libav imx-vpuwrap
> >     imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins-imx imx-gst1.0-plugin"
> >      > LICENSE_FLAGS_ACCEPTED =3D " commercial"
> >      > IMAGE_INSTALL:append =3D "kernel-devsrc"
> >      > IMAGE_INSTALL:append =3D "gstreamer1.0-rtsp-server
> >     gst-variable-rtsp-server"
> >      > IMAGE_INSTALL:append =3D " gtk+3"
> >      > CORE_IMAGE_EXTRA_INSTALL +=3D " opencv libopencv-core-dev
> >     libopencv-highgui-dev libopencv-imgproc-dev libopencv-objdetect-dev
> >      > libopencv-ml-dev"
> >      > #LICENSE_FLAGS_WHITELIST =3D " commercial"
> >      > IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "*
> >      >   and iafter bitbake m getting below errors.
> >      >
> >      > nikita@nikita-HP-Laptop-15-bs0xx:~/Yocto/imx-yocto-bsp$ *bitbake
> >     imx-image-full*
> >      > Loading cache: 100%
> >     |##################################################################=
########################################|
> >      > Time: 0:00:01
> >      > Loaded 4736 entries from dependency cache.
> >      > Parsing recipes: 100%
> >     |##################################################################=
######################################|
> >      > Time: 0:00:02
> >      > Parsing of 3190 .bb files complete (3188 cached, 2 parsed). 4738
> >     targets, 262 skipped, 3 masked, 0 errors.
> >      > NOTE: Resolving any missing task queue dependencies
> >      > ERROR: Nothing RPROVIDES
> >     'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server' (but
> >      >
> >     /home/nikita/Yocto/imx-yocto-bsp/sources/meta-imx/meta-sdk/dynamic-=
layers/qt6-layer/recipes-fsl/images/imx-image-full.bb <http://imx-image-ful=
l.bb>
> >      > <http://imx-image-full.bb <http://imx-image-full.bb>> RDEPENDS o=
n
> >     or otherwise requires it)
> >      > NOTE: Runtime target
> >     'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server' is
> >     unbuildable, removing...
> >      > Missing or unbuildable dependency chain was:
> >     ['imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server']
> >      > ERROR: Required build target 'imx-image-full' has no buildable
> >     providers.
> >      > Missing or unbuildable dependency chain was: ['imx-image-full',
> >     'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server']
> >      >
> >      > Summary: There were 2 ERROR messages, returning a non-zero exit =
code.
> >      >
> >      > These packages are needed i can not remove So please help me wha=
t
> >     can i do in this.
> >      >
> >      > Thanks in Advance.
> >      >
> >      > On Fri, 27 Jan 2023 at 17:00, Nikita Gupta
> >     <nikitagupta2509@gmail.com <mailto:nikitagupta2509@gmail.com>
> >     <mailto:nikitagupta2509@gmail.com
> >     <mailto:nikitagupta2509@gmail.com>>> wrote:
> >      >
> >      >     Hello Alex
> >      >
> >      >     When i run bitbake libimxvpuapi2 and it shows below error
> >     (images attached).
> >      >     Can you please tell me that is "libimxvpuapi2" compatible
> >     with imx8mplus board?
> >      >
> >      >     Thanks in Advance
> >      >
> >      >     On Fri, 27 Jan 2023 at 14:35, Alexander Kanavin
> >     <alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>
> >     <mailto:alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>>> wr=
ote:
> >      >
> >      >         The screenshot indicates the problem originates in
> >     libimxvpuapi2
> >      >         recipe. So you should get more information by running
> >     'bitbake
> >      >         libimxvpuapi2'.
> >      >
> >      >         Alex
> >      >
> >      >         On Fri, 27 Jan 2023 at 07:46, Nikita Gupta
> >     <nikitagupta2509@gmail.com <mailto:nikitagupta2509@gmail.com>
> >     <mailto:nikitagupta2509@gmail.com
> >     <mailto:nikitagupta2509@gmail.com>>> wrote:
> >      >          >
> >      >          > Hello Alexander
> >      >          >
> >      >          > I am not getting your query . Can u please explain
> >     your question?
> >      >          >
> >      >          > Regards
> >      >          > Nikita Gupta
> >      >          >
> >      >          > On Wed, Jan 25, 2023, 18:35 Alexander Kanavin
> >     <alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>
> >     <mailto:alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>>> wr=
ote:
> >      >          >>
> >      >          >> What happens if you bitbake libimx=E2=80=A6 thingy d=
irectly?
> >      >          >>
> >      >          >> Alex
> >      >          >>
> >      >          >> On Wed 25. Jan 2023 at 13.47, Nikita Gupta
> >     <nikitagupta2509@gmail.com <mailto:nikitagupta2509@gmail.com>
> >     <mailto:nikitagupta2509@gmail.com
> >     <mailto:nikitagupta2509@gmail.com>>> wrote:
> >      >          >>>
> >      >          >>> Hello list,
> >      >          >>>
> >      >          >>> I was just making image for imx8mplus by adding few
> >     pkgs in my local.conf but encountered few errors so i am here
> >      >         for your help.
> >      >          >>> I added below pkgs in my local.conf file
> >      >          >>>
> >      >          >>> IMAGE_INSTALL:append =3D "gstreamer1.0
> >     gstreamer1.0-plugins-base gstreamer1.0-plugins-good
> >     gstreamer1.0-plugins-bad
> >      >         gstreamer1.0-plugins-ugly  gstreamer1.0-libav imx-vpuwra=
p
> >     imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins-imx
> >      >         imx-gst1.0-plugin"
> >      >          >>> LICENSE_FLAGS_WHITELIST =3D "commercial"
> >      >          >>> IMAGE_INSTALL:append =3D "kernel-devsrc"
> >      >          >>> IMAGE_INSTALL_append +=3D "gstreamer1.0-rtsp-server
> >     gst-variable-rtsp-server"
> >      >          >>> IMAGE_INSTALL:append =3D " gtk+3"
> >      >          >>> CORE_IMAGE_EXTRA_INSTALL +=3D " opencv
> >     libopencv-core-dev libopencv-highgui-dev libopencv-imgproc-dev
> >      >         libopencv-objdetect-dev libopencv-ml-dev"
> >      >          >>> IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "
> >      >          >>>
> >      >          >>> So my local.conf file now looks like this
> >      >          >>> So i am getting below error after baking my recipe =
(
> >     Attached image).
> >      >          >>>
> >      >          >>> Please tell what should I need to do to resolve thi=
s.
> >      >          >>>
> >      >          >>> Thanks in advance
> >      >          >>>
> >      >          >>>
> >      >          >>>
> >      >
> >      >
> >      >
> >      >
> >      >
> >
> >     --
> >     Takayasu Ito
> >     Solution Department, Lineo Solutions, Inc.
> >     https://www.lineo.co.jp/english/ <https://www.lineo.co.jp/english/>
> >     Email: ito@lineo.co.jp <mailto:ito@lineo.co.jp>
> >     Yocto Project Ambassador
> >
>
> --
> Takayasu Ito
> Yocto Project Ambassador
> Solution Department Lineo Solutions, Inc.
> https://www.lineo.co.jp/english/
> Email: ito@lineo.co.jp
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59112): https://lists.yoctoproject.org/g/yocto/messag=
e/59112
> Unfollow This Topic: https://lists.yoctoproject.org/unft/96519310/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

