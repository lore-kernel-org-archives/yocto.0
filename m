Return-Path: <nikitagupta2509@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD56C636CC
	for <webhook@archiver.kernel.org>; Tue, 31 Jan 2023 07:12:12 +0000 (UTC)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
 by mx.groups.io with SMTP id smtpd.web11.7102.1675149130329350231
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jan 2023 23:12:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=d9LgBcGS;
 spf=pass (domain: gmail.com, ip: 209.85.160.41, mailfrom: nikitagupta2509@gmail.com)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-16332831ed0so18243233fac.10
        for <yocto@lists.yoctoproject.org>; Mon, 30 Jan 2023 23:12:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f07JGL+/wSMWSOFtGlKk+xy7HUFWc/wR9apxrqIc/sQ=;
        b=d9LgBcGSKxY4kyMaQZDViim1Dzc268E8hkZKrp+HztwQtNXCs54JqJdFOagv6bMAkA
         5KyNdpiLo7tBK4jKZAgOA9yKdU4De02TwTgLZH/ED5Z7kAFbcyy4NQogbNpgUrdyBDmt
         dLZpPJoPCrM3sxG/z9FYukSEZzK5QrYdkKoIVCogQ9AMy0yiHRpMSORQVp8yoKJH/5GG
         HBC2N9PEIYhJo8dL2s7yT0/Ie1d7yzcj6clG3Rbldl+DbPEzt0VbHTEio2ViyQ8Rp9OA
         k5CcVbxl2hzpiB9hAEfWw5cKl47JUGKlj7aAW2BR9dmzNDntWsqmSvwWUYJgh8ZE3XU9
         3Zdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f07JGL+/wSMWSOFtGlKk+xy7HUFWc/wR9apxrqIc/sQ=;
        b=1Z6TVbewCY5rnVD11I94OFoOUKPEtTxZ3xtAOoRZ7Uv4pZMpdLVkDyhdC9bILq1dmP
         gvlF0Q5BMqsQAQYpm83TjVQon+WEvqjkoGXUGmCNos4uSNTyUkWORZ4U9XrbgDtEUPtn
         XZ03sWmE95XFvSkQgNqJKGYQCjqbzlh1XxMVm6tIX9FbghSWoKo7vcwPPOv/CCQMTNxF
         DklXh832ItMwsOUV/G6htSs9taf+dK8eVh8TafU4/O3SNKTqSVazxhZcS4Km3NArBGm0
         8jWZtPoXIrMmH2i2CxPqObrwHwX2yT5uag1RmhXRsugQWa7u8V9sfpuZZmouYx+xTf73
         7ERg==
X-Gm-Message-State: AO0yUKXEgxCVrhx6t0lEEYXVjszNj+mbZedQrgJQiP5ipufqo6amwi0E
	WjZZhdmpMufuiKGP4qVh8J5KNaeUJ0YUB3VHQuknfYlu
X-Google-Smtp-Source: AK7set9GEyIdb7+h+GR25Wps+7DTIL5pBSDMmZe8/hlrixeZWOAvcCMX6DxTHFpfBoPnPP5uOnQBgKsHuPqL0KjWLEk=
X-Received: by 2002:a05:6870:c885:b0:163:6b1f:ceb8 with SMTP id
 er5-20020a056870c88500b001636b1fceb8mr1936116oab.200.1675149129303; Mon, 30
 Jan 2023 23:12:09 -0800 (PST)
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
From: Nikita Gupta <nikitagupta2509@gmail.com>
Date: Tue, 31 Jan 2023 12:41:57 +0530
Message-ID: <CAGQ3h16hvS3e97kd8kPp6B3h9AKHVxUQaagd5+tj63bA=cVCvQ@mail.gmail.com>
Subject: Re: [yocto] Error while adding " libimxvpuapi2" and "gstreamer" pkgs
 in my local.conf for imx8mplus
To: Takayasu Ito <ito@lineo.co.jp>, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000cc4c6605f38a0cf3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Jan 2023 07:12:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59115

--000000000000cc4c6605f38a0cf3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Takayasu
I try to implement your suggestion and let you know the result.

Thanks & regards
Nikita Gupta

On Tue, 31 Jan 2023 at 08:04, Takayasu Ito <ito@lineo.co.jp> wrote:

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
> >
> https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake-use=
r-manual-metadata.html#appending-and-prepending-override-style-syntax
> <
> https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake-use=
r-manual-metadata.html#appending-and-prepending-override-style-syntax
> >
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
> >
>  |#######################################################################=
###################################|
> >      > Time: 0:00:01
> >      > Loaded 4736 entries from dependency cache.
> >      > Parsing recipes: 100%
> >
>  |#######################################################################=
#################################|
> >      > Time: 0:00:02
> >      > Parsing of 3190 .bb files complete (3188 cached, 2 parsed). 4738
> >     targets, 262 skipped, 3 masked, 0 errors.
> >      > NOTE: Resolving any missing task queue dependencies
> >      > ERROR: Nothing RPROVIDES
> >     'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server' (but
> >      >
> >
>  /home/nikita/Yocto/imx-yocto-bsp/sources/meta-imx/meta-sdk/dynamic-layer=
s/qt6-layer/recipes-fsl/images/
> imx-image-full.bb <http://imx-image-full.bb>
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
> >      > Summary: There were 2 ERROR messages, returning a non-zero exit
> code.
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
> >     <mailto:alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>>>
> wrote:
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
> >     <mailto:alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>>>
> wrote:
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
> >      > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >      > Links: You receive all messages sent to this group.
> >      > View/Reply Online (#59078):
> >     https://lists.yoctoproject.org/g/yocto/message/59078
> >     <https://lists.yoctoproject.org/g/yocto/message/59078>
> >      > Mute This Topic:
> >     https://lists.yoctoproject.org/mt/96519310/3617373
> >     <https://lists.yoctoproject.org/mt/96519310/3617373>
> >      > Group Owner: yocto+owner@lists.yoctoproject.org
> >     <mailto:yocto%2Bowner@lists.yoctoproject.org>
> >      > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> >     <https://lists.yoctoproject.org/g/yocto/unsub> [ito@lineo.co.jp
> >     <mailto:ito@lineo.co.jp>]
> >      > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
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

--000000000000cc4c6605f38a0cf3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello=C2=A0Takayasu<div>I try to implement your suggestion=
 and let you=C2=A0know the=C2=A0result.</div><div><br></div><div>Thanks &am=
p; regards</div><div>Nikita Gupta</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 31 Jan 2023 at 08:04, Takaya=
su Ito &lt;<a href=3D"mailto:ito@lineo.co.jp">ito@lineo.co.jp</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi=C2=A0 Nikit=
a<br>
<br>
The problem is that in the imx-vpu-hantro recipe, the encoder library, <br>
libhantro_h1.so, is not installed for mx8mp, but is installed for mx8mm.<br=
>
<br>
In the libimxvpuapi2 recipe, imx8mp specifies imx8mm in IMX_PLATFORM.<br>
Therefore, the _encoder variable used in the waf wsctipt file is set to <br=
>
true, so a check is made for the presence of hantro_h1, resulting in an <br=
>
error.<br>
At this time, libimxvpuapi2 support for imx8m is imx8m and imx8mm, so by <b=
r>
changing the setting to one for imx8m, which does not use a hardware <br>
encoder, the build for imx8mp will pass.<br>
<br>
Create the libimxvpuapi2_%.bbappen file and add<br>
IMX_PLATFOEM:mx8mp-nxp-bsp =3D &quot;imx8m&quot;<br>
<br>
<br>
<br>
Translated with <a href=3D"http://www.DeepL.com/Translator" rel=3D"noreferr=
er" target=3D"_blank">www.DeepL.com/Translator</a> (free version)<br>
On 2023/01/30 20:19, Nikita Gupta wrote:<br>
&gt; Hello Takayasu<br>
&gt; Thanks for your suggestion,=C2=A0 but after implementing i am facing s=
ame <br>
&gt; thing (see attached image).<br>
&gt; <br>
&gt; Regards<br>
&gt; Nikita Gupta<br>
&gt; <br>
&gt; On Fri, 27 Jan 2023 at 17:55, Takayasu Ito &lt;<a href=3D"mailto:ito@l=
ineo.co.jp" target=3D"_blank">ito@lineo.co.jp</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:ito@lineo.co.jp" target=3D"_blank">ito@li=
neo.co.jp</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi Nikita<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; *IMAGE_INSTALL:append =3D &quot;gstream=
er1.0 gstreamer1.0-plugins-base<br>
&gt;=C2=A0 =C2=A0 =C2=A0gstreamer1.0-plugins-good gstreamer1.0-plugins-bad<=
br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0If you do not put a space after the double quotatio=
n marks, the<br>
&gt;=C2=A0 =C2=A0 =C2=A0package names before and after will be attached to =
each other<br>
&gt;=C2=A0 =C2=A0 =C2=A0during the merge.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0See<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://docs.yoctoproject.org/bitbake/2.=
2/bitbake-user-manual/bitbake-user-manual-metadata.html#appending-and-prepe=
nding-override-style-syntax" rel=3D"noreferrer" target=3D"_blank">https://d=
ocs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake-user-manual-me=
tadata.html#appending-and-prepending-override-style-syntax</a> &lt;<a href=
=3D"https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake-u=
ser-manual-metadata.html#appending-and-prepending-override-style-syntax" re=
l=3D"noreferrer" target=3D"_blank">https://docs.yoctoproject.org/bitbake/2.=
2/bitbake-user-manual/bitbake-user-manual-metadata.html#appending-and-prepe=
nding-override-style-syntax</a>&gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 2023/01/27 20:48, Nikita Gupta wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Hello List,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; As i earlier mentioned that i want to do some=
 customisation in<br>
&gt;=C2=A0 =C2=A0 =C2=A0local.conf by adding few pkgs (below).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; *IMAGE_INSTALL:append =3D &quot;gstreamer1.0 =
gstreamer1.0-plugins-base<br>
&gt;=C2=A0 =C2=A0 =C2=A0gstreamer1.0-plugins-good gstreamer1.0-plugins-bad<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; gstreamer1.0-plugins-ugly =C2=A0gstreamer1.0-=
libav imx-vpuwrap<br>
&gt;=C2=A0 =C2=A0 =C2=A0imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins-imx im=
x-gst1.0-plugin&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; LICENSE_FLAGS_ACCEPTED =3D &quot; commercial&=
quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; IMAGE_INSTALL:append =3D &quot;kernel-devsrc&=
quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; IMAGE_INSTALL:append =3D &quot;gstreamer1.0-r=
tsp-server<br>
&gt;=C2=A0 =C2=A0 =C2=A0gst-variable-rtsp-server&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; IMAGE_INSTALL:append =3D &quot; gtk+3&quot;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; CORE_IMAGE_EXTRA_INSTALL +=3D &quot; opencv l=
ibopencv-core-dev<br>
&gt;=C2=A0 =C2=A0 =C2=A0libopencv-highgui-dev libopencv-imgproc-dev libopen=
cv-objdetect-dev<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; libopencv-ml-dev&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; #LICENSE_FLAGS_WHITELIST =3D &quot; commercia=
l&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; IMAGE_ROOTFS_EXTRA_SPACE =3D &quot;1048576 &q=
uot;*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0and iafter=C2=A0bitbake m getting=
 below errors.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; nikita@nikita-HP-Laptop-15-bs0xx:~/Yocto/imx-=
yocto-bsp$ *bitbake<br>
&gt;=C2=A0 =C2=A0 =C2=A0imx-image-full*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Loading cache: 100%<br>
&gt;=C2=A0 =C2=A0 =C2=A0|##################################################=
########################################################|<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Time: 0:00:01<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Loaded 4736 entries from dependency cache.<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Parsing recipes: 100%<br>
&gt;=C2=A0 =C2=A0 =C2=A0|##################################################=
######################################################|<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Time: 0:00:02<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Parsing of 3190 .bb files complete (3188 cach=
ed, 2 parsed). 4738<br>
&gt;=C2=A0 =C2=A0 =C2=A0targets, 262 skipped, 3 masked, 0 errors.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; NOTE: Resolving any missing task queue depend=
encies<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ERROR: Nothing RPROVIDES<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rts=
p-server&#39; (but<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0/home/nikita/Yocto/imx-yocto-bsp/sources/meta-imx/m=
eta-sdk/dynamic-layers/qt6-layer/recipes-fsl/images/<a href=3D"http://imx-i=
mage-full.bb" rel=3D"noreferrer" target=3D"_blank">imx-image-full.bb</a> &l=
t;<a href=3D"http://imx-image-full.bb" rel=3D"noreferrer" target=3D"_blank"=
>http://imx-image-full.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &lt;<a href=3D"http://imx-image-full.bb" rel=
=3D"noreferrer" target=3D"_blank">http://imx-image-full.bb</a> &lt;<a href=
=3D"http://imx-image-full.bb" rel=3D"noreferrer" target=3D"_blank">http://i=
mx-image-full.bb</a>&gt;&gt; RDEPENDS on<br>
&gt;=C2=A0 =C2=A0 =C2=A0or otherwise requires it)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; NOTE: Runtime target<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rts=
p-server&#39; is<br>
&gt;=C2=A0 =C2=A0 =C2=A0unbuildable, removing...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Missing or unbuildable dependency chain was:<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0[&#39;imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rt=
sp-server&#39;]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ERROR: Required build target &#39;imx-image-f=
ull&#39; has no buildable<br>
&gt;=C2=A0 =C2=A0 =C2=A0providers.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Missing or unbuildable dependency chain was: =
[&#39;imx-image-full&#39;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rts=
p-server&#39;]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Summary: There were 2 ERROR messages, returni=
ng a non-zero exit code.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; These packages are needed i can not remove So=
 please help me what<br>
&gt;=C2=A0 =C2=A0 =C2=A0can i do in this.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Thanks in Advance.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Fri, 27 Jan 2023 at 17:00, Nikita Gupta<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:nikitagupta2509@gmail.com" ta=
rget=3D"_blank">nikitagupta2509@gmail.com</a> &lt;mailto:<a href=3D"mailto:=
nikitagupta2509@gmail.com" target=3D"_blank">nikitagupta2509@gmail.com</a>&=
gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:nikitagupta2509@gmail.=
com" target=3D"_blank">nikitagupta2509@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:nikitagupta2509@gmail.=
com" target=3D"_blank">nikitagupta2509@gmail.com</a>&gt;&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Hello Alex<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0When i run bitbake libimxv=
puapi2 and it shows below error<br>
&gt;=C2=A0 =C2=A0 =C2=A0(images attached).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Can you please tell me tha=
t is &quot;libimxvpuapi2&quot; compatible<br>
&gt;=C2=A0 =C2=A0 =C2=A0with imx8mplus board?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Thanks in Advance<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0On Fri, 27 Jan 2023 at 14:=
35, Alexander Kanavin<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:alex.kanavin@gmail.com" targe=
t=3D"_blank">alex.kanavin@gmail.com</a> &lt;mailto:<a href=3D"mailto:alex.k=
anavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:alex.kanavin@gmail.com=
" target=3D"_blank">alex.kanavin@gmail.com</a> &lt;mailto:<a href=3D"mailto=
:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;&g=
t;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0The screensh=
ot indicates the problem originates in<br>
&gt;=C2=A0 =C2=A0 =C2=A0libimxvpuapi2<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recipe. So y=
ou should get more information by running<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;bitbake<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libimxvpuapi=
2&#39;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Alex<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Fri, 27 J=
an 2023 at 07:46, Nikita Gupta<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:nikitagupta2509@gmail.com" ta=
rget=3D"_blank">nikitagupta2509@gmail.com</a> &lt;mailto:<a href=3D"mailto:=
nikitagupta2509@gmail.com" target=3D"_blank">nikitagupta2509@gmail.com</a>&=
gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:nikitagupta2509@gmail.=
com" target=3D"_blank">nikitagupta2509@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:nikitagupta2509@gmail.=
com" target=3D"_blank">nikitagupta2509@gmail.com</a>&gt;&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; Hello =
Alexander<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; I am n=
ot getting your query . Can u please explain<br>
&gt;=C2=A0 =C2=A0 =C2=A0your question?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; Regard=
s<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; Nikita=
 Gupta<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; On Wed=
, Jan 25, 2023, 18:35 Alexander Kanavin<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:alex.kanavin@gmail.com" targe=
t=3D"_blank">alex.kanavin@gmail.com</a> &lt;mailto:<a href=3D"mailto:alex.k=
anavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:alex.kanavin@gmail.com=
" target=3D"_blank">alex.kanavin@gmail.com</a> &lt;mailto:<a href=3D"mailto=
:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;&g=
t;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt; Wh=
at happens if you bitbake libimx=E2=80=A6 thingy directly?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt; Al=
ex<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt; On=
 Wed 25. Jan 2023 at 13.47, Nikita Gupta<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:nikitagupta2509@gmail.com" ta=
rget=3D"_blank">nikitagupta2509@gmail.com</a> &lt;mailto:<a href=3D"mailto:=
nikitagupta2509@gmail.com" target=3D"_blank">nikitagupta2509@gmail.com</a>&=
gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:nikitagupta2509@gmail.=
com" target=3D"_blank">nikitagupta2509@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:nikitagupta2509@gmail.=
com" target=3D"_blank">nikitagupta2509@gmail.com</a>&gt;&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
; Hello list,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
; I was just making image for imx8mplus by adding few<br>
&gt;=C2=A0 =C2=A0 =C2=A0pkgs in my local.conf but encountered few errors so=
 i am here<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for your hel=
p.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
; I added below pkgs in my local.conf file<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
; IMAGE_INSTALL:append =3D &quot;gstreamer1.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0gstreamer1.0-plugins-base gstreamer1.0-plugins-good=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0gstreamer1.0-plugins-bad<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gstreamer1.0=
-plugins-ugly=C2=A0 gstreamer1.0-libav imx-vpuwrap<br>
&gt;=C2=A0 =C2=A0 =C2=A0imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins-imx<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0imx-gst1.0-p=
lugin&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
; LICENSE_FLAGS_WHITELIST =3D &quot;commercial&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
; IMAGE_INSTALL:append =3D &quot;kernel-devsrc&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
; IMAGE_INSTALL_append +=3D &quot;gstreamer1.0-rtsp-server<br>
&gt;=C2=A0 =C2=A0 =C2=A0gst-variable-rtsp-server&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
; IMAGE_INSTALL:append =3D &quot; gtk+3&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
; CORE_IMAGE_EXTRA_INSTALL +=3D &quot; opencv<br>
&gt;=C2=A0 =C2=A0 =C2=A0libopencv-core-dev libopencv-highgui-dev libopencv-=
imgproc-dev<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libopencv-ob=
jdetect-dev libopencv-ml-dev&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
; IMAGE_ROOTFS_EXTRA_SPACE =3D &quot;1048576 &quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
; So my local.conf file now looks like this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
; So i am getting below error after baking my recipe (<br>
&gt;=C2=A0 =C2=A0 =C2=A0Attached image).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
; Please tell what should I need to do to resolve this.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
; Thanks in advance<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Links: You receive all messages sent to this =
group.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; View/Reply Online (#59078):<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://lists.yoctoproject.org/g/yocto/m=
essage/59078" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/g/yocto/message/59078</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59078" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59078</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Mute This Topic:<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://lists.yoctoproject.org/mt/965193=
10/3617373" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject=
.org/mt/96519310/3617373</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://lists.yoctoproject.org/mt/96=
519310/3617373" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/96519310/3617373</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@=
lists.yoctoproject.org" target=3D"_blank">yocto+owner@lists.yoctoproject.or=
g</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:yocto%252Bowner@lists.=
yoctoproject.org" target=3D"_blank">yocto%2Bowner@lists.yoctoproject.org</a=
>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Unsubscribe: <a href=3D"https://lists.yoctopr=
oject.org/g/yocto/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists=
.yoctoproject.org/g/yocto/unsub</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://lists.yoctoproject.org/g/yoc=
to/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/unsub</a>&gt; [<a href=3D"mailto:ito@lineo.co.jp" target=3D"_bla=
nk">ito@lineo.co.jp</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:ito@lineo.co.jp" targe=
t=3D"_blank">ito@lineo.co.jp</a>&gt;]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-- <br>
&gt;=C2=A0 =C2=A0 =C2=A0Takayasu Ito<br>
&gt;=C2=A0 =C2=A0 =C2=A0Solution Department, Lineo Solutions, Inc.<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://www.lineo.co.jp/english/" rel=3D=
"noreferrer" target=3D"_blank">https://www.lineo.co.jp/english/</a> &lt;<a =
href=3D"https://www.lineo.co.jp/english/" rel=3D"noreferrer" target=3D"_bla=
nk">https://www.lineo.co.jp/english/</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Email: <a href=3D"mailto:ito@lineo.co.jp" target=3D=
"_blank">ito@lineo.co.jp</a> &lt;mailto:<a href=3D"mailto:ito@lineo.co.jp" =
target=3D"_blank">ito@lineo.co.jp</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Yocto Project Ambassador<br>
&gt; <br>
<br>
-- <br>
Takayasu Ito<br>
Yocto Project Ambassador<br>
Solution Department Lineo Solutions, Inc.<br>
<a href=3D"https://www.lineo.co.jp/english/" rel=3D"noreferrer" target=3D"_=
blank">https://www.lineo.co.jp/english/</a><br>
Email: <a href=3D"mailto:ito@lineo.co.jp" target=3D"_blank">ito@lineo.co.jp=
</a><br>
<br>
</blockquote></div>

--000000000000cc4c6605f38a0cf3--

