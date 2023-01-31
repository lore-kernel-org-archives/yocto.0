Return-Path: <nikitagupta2509@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18EB3C38142
	for <webhook@archiver.kernel.org>; Tue, 31 Jan 2023 09:16:03 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
 by mx.groups.io with SMTP id smtpd.web11.8300.1675156556290729829
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Jan 2023 01:15:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MA7RFvqi;
 spf=pass (domain: gmail.com, ip: 209.85.167.175, mailfrom: nikitagupta2509@gmail.com)
Received: by mail-oi1-f175.google.com with SMTP id s17so1343369ois.10
        for <yocto@lists.yoctoproject.org>; Tue, 31 Jan 2023 01:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2h+xMupwml7j1yRMnz4rE0j7/D/0DYST0mi533a0b3g=;
        b=MA7RFvqiK/5qMGs+e1/KXo9ORSXerdumuX4oLJJnd+zwEKRAf6pI2Rky5HhL+IadVU
         kz9/KeQibIbpG5JLPnSdhX1OYDZr4SyYVMf3qsvsJMdARVdBWrlwPJLnhQeT2/PHRVuY
         iqA3B365n9xSx29mbnqWJ0lHdBOa0lGRJqPONd3EhW4I5LVtPr/V+l051go/8q2rjbo1
         u9EkbbavBCJJtVWFky3sxJ7oov+aVS9kyZ6hv0igoEJH27NSTmsbAsKbfp/e1n+Whc2n
         003e674krFWOHcuEVdo8QZGNfRxsMVG0AvEQ1SLeoQ7sykHCjFW+knrdUMOL3xUeNIkl
         tVbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2h+xMupwml7j1yRMnz4rE0j7/D/0DYST0mi533a0b3g=;
        b=ZW1OjjwhvP8k5FibmHPg82FWkY0w+BoEiANM5CqnZ8yUR0s8j8/Ah+cgdEMoMg1sSZ
         I1ucaCGMSMG74deqZNG+7vPtm65XGx52m632Eo0YL+rU5ly7xFtRSBHOjdSlm7nWvcZt
         7LUzs5WJlpvNOe85ytIoFAy6DqK7iFK4u7zDcOjPFF5V/JBp3S1YMYL9sClswwU9U/QP
         +bL7Z+rUEJ0dlQwgL5BZ6Z6TQYKLgIipiBxzY7RDCNBVSMrnh8A7Grwh9MhZjzCjm51e
         FBkGxmypotMuGbYp8AtCP2kHONJdtDVPXJZWX9mEhkRQUZnHP7v/F5sKJ2X5qYoaKu/1
         Cc3A==
X-Gm-Message-State: AO0yUKVUST/x/nUTO9LUn/9NFs9kauJxbhHNLBOEhxzw+tILyOGCvtE9
	UVsVGxqL9PBjrCws7Ls0v9qm1bz4+g7zHGZj5p8=
X-Google-Smtp-Source: AK7set8dl1KZoJG31n7ZqPLXqYXN8NKS+35iwWnURa5ExeNQQA0RUze63zmXKafhI4VGREncbnWNU2hZ92epwfm8ZRs=
X-Received: by 2002:aca:d17:0:b0:378:43ef:467b with SMTP id
 23-20020aca0d17000000b0037843ef467bmr606059oin.200.1675156555262; Tue, 31 Jan
 2023 01:15:55 -0800 (PST)
MIME-Version: 1.0
References: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>
 <CANNYZj976z0Xdk0Bt1uJkwbXBqkR0yXVz14ZaJ6s_muXXUtXWQ@mail.gmail.com>
 <CAGQ3h157uE84DWRVnXJJ6Oxbx=CORhX6Gp6PDs9re=V9E6EU6g@mail.gmail.com>
 <CANNYZj_MXwVHE7oA7peLKGQfi8GnM90N9d=1Kn8o0ZWGa83MVg@mail.gmail.com>
 <CAGQ3h14CC3LeP++cfs1k2u-4aeYNqyCJjusNUOWbz4d49k=TwQ@mail.gmail.com>
 <CAGQ3h1598A-7_uX9RsN_zrw2eyRSuPCdFhLT9zODBmxrYxVzDg@mail.gmail.com>
 <ba145544-a63e-9002-198d-5dd902bfcd1d@lineo.co.jp> <CAGQ3h16F1N_sM3sQs6c+bJFdCmpqWUkSPfDeMGP1mQhqJHQ+_w@mail.gmail.com>
 <9a1053bd-d55b-9705-989d-36ad9f733ef5@lineo.co.jp> <CAMKF1srN5gMQXw1nruWSaPEc8qXEcpvTK3mxMnzGGK-kQSF7PQ@mail.gmail.com>
In-Reply-To: <CAMKF1srN5gMQXw1nruWSaPEc8qXEcpvTK3mxMnzGGK-kQSF7PQ@mail.gmail.com>
From: Nikita Gupta <nikitagupta2509@gmail.com>
Date: Tue, 31 Jan 2023 14:45:43 +0530
Message-ID: <CAGQ3h15wE6r5ABF_gn_fF7pPrdNXioKSTbQm_2_ShQ8tyx+9GA@mail.gmail.com>
Subject: Re: [yocto] Error while adding " libimxvpuapi2" and "gstreamer" pkgs
 in my local.conf for imx8mplus
To: Khem Raj <raj.khem@gmail.com>, Takayasu Ito <ito@lineo.co.jp>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006b6e7905f38bc721"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Jan 2023 09:16:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59118

--0000000000006b6e7905f38bc721
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello All,
I created one libimxvpuapi2_%.bbappend file in "libimxvpuapi" directory and
following platform configuration in that and it works.
IMX_PLATFORM:mx8mp-nxp-bsp =3D "imx8m"
Thanks team for this kind help.

On Tue, 31 Jan 2023 at 14:11, Khem Raj <raj.khem@gmail.com> wrote:

> On Mon, Jan 30, 2023 at 6:34 PM Takayasu Ito <ito@lineo.co.jp> wrote:
> >
> > Hi  Nikita
> >
> > The problem is that in the imx-vpu-hantro recipe, the encoder library,
> > libhantro_h1.so, is not installed for mx8mp, but is installed for mx8mm=
.
> >
> > In the libimxvpuapi2 recipe, imx8mp specifies imx8mm in IMX_PLATFORM.
> > Therefore, the _encoder variable used in the waf wsctipt file is set to
> > true, so a check is made for the presence of hantro_h1, resulting in an
> > error.
> > At this time, libimxvpuapi2 support for imx8m is imx8m and imx8mm, so b=
y
> > changing the setting to one for imx8m, which does not use a hardware
> > encoder, the build for imx8mp will pass.
> >
> > Create the libimxvpuapi2_%.bbappen file and add
> > IMX_PLATFOEM:mx8mp-nxp-bsp =3D "imx8m"
> >
>
> I think this is perhaps in right direction but I would suggest
>
> IMX_PLATFORM:mx8mp-nxp-bsp =3D "imx8mm"
>
> >
> >
> > Translated with www.DeepL.com/Translator (free version)
> > On 2023/01/30 20:19, Nikita Gupta wrote:
> > > Hello Takayasu
> > > Thanks for your suggestion,  but after implementing i am facing same
> > > thing (see attached image).
> > >
> > > Regards
> > > Nikita Gupta
> > >
> > > On Fri, 27 Jan 2023 at 17:55, Takayasu Ito <ito@lineo.co.jp
> > > <mailto:ito@lineo.co.jp>> wrote:
> > >
> > >     Hi Nikita
> > >
> > >       > *IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins-=
base
> > >     gstreamer1.0-plugins-good gstreamer1.0-plugins-bad
> > >
> > >     If you do not put a space after the double quotation marks, the
> > >     package names before and after will be attached to each other
> > >     during the merge.
> > >
> > >     See
> > >
> https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake-use=
r-manual-metadata.html#appending-and-prepending-override-style-syntax
> <
> https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake-use=
r-manual-metadata.html#appending-and-prepending-override-style-syntax
> >
> > >
> > >     On 2023/01/27 20:48, Nikita Gupta wrote:
> > >      > Hello List,
> > >      >
> > >      > As i earlier mentioned that i want to do some customisation in
> > >     local.conf by adding few pkgs (below).
> > >      > *IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins-b=
ase
> > >     gstreamer1.0-plugins-good gstreamer1.0-plugins-bad
> > >      > gstreamer1.0-plugins-ugly  gstreamer1.0-libav imx-vpuwrap
> > >     imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins-imx imx-gst1.0-plugi=
n"
> > >      > LICENSE_FLAGS_ACCEPTED =3D " commercial"
> > >      > IMAGE_INSTALL:append =3D "kernel-devsrc"
> > >      > IMAGE_INSTALL:append =3D "gstreamer1.0-rtsp-server
> > >     gst-variable-rtsp-server"
> > >      > IMAGE_INSTALL:append =3D " gtk+3"
> > >      > CORE_IMAGE_EXTRA_INSTALL +=3D " opencv libopencv-core-dev
> > >     libopencv-highgui-dev libopencv-imgproc-dev libopencv-objdetect-d=
ev
> > >      > libopencv-ml-dev"
> > >      > #LICENSE_FLAGS_WHITELIST =3D " commercial"
> > >      > IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "*
> > >      >   and iafter bitbake m getting below errors.
> > >      >
> > >      > nikita@nikita-HP-Laptop-15-bs0xx:~/Yocto/imx-yocto-bsp$
> *bitbake
> > >     imx-image-full*
> > >      > Loading cache: 100%
> > >
>  |#######################################################################=
###################################|
> > >      > Time: 0:00:01
> > >      > Loaded 4736 entries from dependency cache.
> > >      > Parsing recipes: 100%
> > >
>  |#######################################################################=
#################################|
> > >      > Time: 0:00:02
> > >      > Parsing of 3190 .bb files complete (3188 cached, 2 parsed). 47=
38
> > >     targets, 262 skipped, 3 masked, 0 errors.
> > >      > NOTE: Resolving any missing task queue dependencies
> > >      > ERROR: Nothing RPROVIDES
> > >     'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server' (but
> > >      >
> > >
>  /home/nikita/Yocto/imx-yocto-bsp/sources/meta-imx/meta-sdk/dynamic-layer=
s/qt6-layer/recipes-fsl/images/
> imx-image-full.bb <http://imx-image-full.bb>
> > >      > <http://imx-image-full.bb <http://imx-image-full.bb>> RDEPENDS
> on
> > >     or otherwise requires it)
> > >      > NOTE: Runtime target
> > >     'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server' is
> > >     unbuildable, removing...
> > >      > Missing or unbuildable dependency chain was:
> > >     ['imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server']
> > >      > ERROR: Required build target 'imx-image-full' has no buildable
> > >     providers.
> > >      > Missing or unbuildable dependency chain was: ['imx-image-full'=
,
> > >     'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server']
> > >      >
> > >      > Summary: There were 2 ERROR messages, returning a non-zero exi=
t
> code.
> > >      >
> > >      > These packages are needed i can not remove So please help me
> what
> > >     can i do in this.
> > >      >
> > >      > Thanks in Advance.
> > >      >
> > >      > On Fri, 27 Jan 2023 at 17:00, Nikita Gupta
> > >     <nikitagupta2509@gmail.com <mailto:nikitagupta2509@gmail.com>
> > >     <mailto:nikitagupta2509@gmail.com
> > >     <mailto:nikitagupta2509@gmail.com>>> wrote:
> > >      >
> > >      >     Hello Alex
> > >      >
> > >      >     When i run bitbake libimxvpuapi2 and it shows below error
> > >     (images attached).
> > >      >     Can you please tell me that is "libimxvpuapi2" compatible
> > >     with imx8mplus board?
> > >      >
> > >      >     Thanks in Advance
> > >      >
> > >      >     On Fri, 27 Jan 2023 at 14:35, Alexander Kanavin
> > >     <alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>
> > >     <mailto:alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>>>
> wrote:
> > >      >
> > >      >         The screenshot indicates the problem originates in
> > >     libimxvpuapi2
> > >      >         recipe. So you should get more information by running
> > >     'bitbake
> > >      >         libimxvpuapi2'.
> > >      >
> > >      >         Alex
> > >      >
> > >      >         On Fri, 27 Jan 2023 at 07:46, Nikita Gupta
> > >     <nikitagupta2509@gmail.com <mailto:nikitagupta2509@gmail.com>
> > >     <mailto:nikitagupta2509@gmail.com
> > >     <mailto:nikitagupta2509@gmail.com>>> wrote:
> > >      >          >
> > >      >          > Hello Alexander
> > >      >          >
> > >      >          > I am not getting your query . Can u please explain
> > >     your question?
> > >      >          >
> > >      >          > Regards
> > >      >          > Nikita Gupta
> > >      >          >
> > >      >          > On Wed, Jan 25, 2023, 18:35 Alexander Kanavin
> > >     <alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>
> > >     <mailto:alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>>>
> wrote:
> > >      >          >>
> > >      >          >> What happens if you bitbake libimx=E2=80=A6 thingy=
 directly?
> > >      >          >>
> > >      >          >> Alex
> > >      >          >>
> > >      >          >> On Wed 25. Jan 2023 at 13.47, Nikita Gupta
> > >     <nikitagupta2509@gmail.com <mailto:nikitagupta2509@gmail.com>
> > >     <mailto:nikitagupta2509@gmail.com
> > >     <mailto:nikitagupta2509@gmail.com>>> wrote:
> > >      >          >>>
> > >      >          >>> Hello list,
> > >      >          >>>
> > >      >          >>> I was just making image for imx8mplus by adding f=
ew
> > >     pkgs in my local.conf but encountered few errors so i am here
> > >      >         for your help.
> > >      >          >>> I added below pkgs in my local.conf file
> > >      >          >>>
> > >      >          >>> IMAGE_INSTALL:append =3D "gstreamer1.0
> > >     gstreamer1.0-plugins-base gstreamer1.0-plugins-good
> > >     gstreamer1.0-plugins-bad
> > >      >         gstreamer1.0-plugins-ugly  gstreamer1.0-libav
> imx-vpuwrap
> > >     imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins-imx
> > >      >         imx-gst1.0-plugin"
> > >      >          >>> LICENSE_FLAGS_WHITELIST =3D "commercial"
> > >      >          >>> IMAGE_INSTALL:append =3D "kernel-devsrc"
> > >      >          >>> IMAGE_INSTALL_append +=3D "gstreamer1.0-rtsp-serv=
er
> > >     gst-variable-rtsp-server"
> > >      >          >>> IMAGE_INSTALL:append =3D " gtk+3"
> > >      >          >>> CORE_IMAGE_EXTRA_INSTALL +=3D " opencv
> > >     libopencv-core-dev libopencv-highgui-dev libopencv-imgproc-dev
> > >      >         libopencv-objdetect-dev libopencv-ml-dev"
> > >      >          >>> IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "
> > >      >          >>>
> > >      >          >>> So my local.conf file now looks like this
> > >      >          >>> So i am getting below error after baking my recip=
e
> (
> > >     Attached image).
> > >      >          >>>
> > >      >          >>> Please tell what should I need to do to resolve
> this.
> > >      >          >>>
> > >      >          >>> Thanks in advance
> > >      >          >>>
> > >      >          >>>
> > >      >          >>>
> > >      >
> > >      >
> > >      >
> > >      >
> > >      >
> > >
> > >     --
> > >     Takayasu Ito
> > >     Solution Department, Lineo Solutions, Inc.
> > >     https://www.lineo.co.jp/english/ <https://www.lineo.co.jp/english=
/
> >
> > >     Email: ito@lineo.co.jp <mailto:ito@lineo.co.jp>
> > >     Yocto Project Ambassador
> > >
> >
> > --
> > Takayasu Ito
> > Yocto Project Ambassador
> > Solution Department Lineo Solutions, Inc.
> > https://www.lineo.co.jp/english/
> > Email: ito@lineo.co.jp
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#59112):
> https://lists.yoctoproject.org/g/yocto/message/59112
> > Unfollow This Topic:
> https://lists.yoctoproject.org/unft/96519310/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--0000000000006b6e7905f38bc721
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,=C2=A0<div>I created one libimxvpuapi2_%.bbappen=
d file in &quot;libimxvpuapi&quot; directory and following platform=C2=A0co=
nfiguration in that and it works.=C2=A0<br><div>IMX_PLATFORM:mx8mp-nxp-bsp =
=3D &quot;imx8m&quot;<br></div></div><div>Thanks team for this kind help.</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Tue, 31 Jan 2023 at 14:11, Khem Raj &lt;<a href=3D"mailto:raj.khem@g=
mail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">On Mon, Jan 30, 2023 at 6:34 PM Takayasu Ito &l=
t;<a href=3D"mailto:ito@lineo.co.jp" target=3D"_blank">ito@lineo.co.jp</a>&=
gt; wrote:<br>
&gt;<br>
&gt; Hi=C2=A0 Nikita<br>
&gt;<br>
&gt; The problem is that in the imx-vpu-hantro recipe, the encoder library,=
<br>
&gt; libhantro_h1.so, is not installed for mx8mp, but is installed for mx8m=
m.<br>
&gt;<br>
&gt; In the libimxvpuapi2 recipe, imx8mp specifies imx8mm in IMX_PLATFORM.<=
br>
&gt; Therefore, the _encoder variable used in the waf wsctipt file is set t=
o<br>
&gt; true, so a check is made for the presence of hantro_h1, resulting in a=
n<br>
&gt; error.<br>
&gt; At this time, libimxvpuapi2 support for imx8m is imx8m and imx8mm, so =
by<br>
&gt; changing the setting to one for imx8m, which does not use a hardware<b=
r>
&gt; encoder, the build for imx8mp will pass.<br>
&gt;<br>
&gt; Create the libimxvpuapi2_%.bbappen file and add<br>
&gt; IMX_PLATFOEM:mx8mp-nxp-bsp =3D &quot;imx8m&quot;<br>
&gt;<br>
<br>
I think this is perhaps in right direction but I would suggest<br>
<br>
IMX_PLATFORM:mx8mp-nxp-bsp =3D &quot;imx8mm&quot;<br>
<br>
&gt;<br>
&gt;<br>
&gt; Translated with <a href=3D"http://www.DeepL.com/Translator" rel=3D"nor=
eferrer" target=3D"_blank">www.DeepL.com/Translator</a> (free version)<br>
&gt; On 2023/01/30 20:19, Nikita Gupta wrote:<br>
&gt; &gt; Hello Takayasu<br>
&gt; &gt; Thanks for your suggestion,=C2=A0 but after implementing i am fac=
ing same<br>
&gt; &gt; thing (see attached image).<br>
&gt; &gt;<br>
&gt; &gt; Regards<br>
&gt; &gt; Nikita Gupta<br>
&gt; &gt;<br>
&gt; &gt; On Fri, 27 Jan 2023 at 17:55, Takayasu Ito &lt;<a href=3D"mailto:=
ito@lineo.co.jp" target=3D"_blank">ito@lineo.co.jp</a><br>
&gt; &gt; &lt;mailto:<a href=3D"mailto:ito@lineo.co.jp" target=3D"_blank">i=
to@lineo.co.jp</a>&gt;&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0Hi Nikita<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; *IMAGE_INSTALL:append =3D &quot;gs=
treamer1.0 gstreamer1.0-plugins-base<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0gstreamer1.0-plugins-good gstreamer1.0-plugins=
-bad<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0If you do not put a space after the double quo=
tation marks, the<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0package names before and after will be attache=
d to each other<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0during the merge.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0See<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://docs.yoctoproject.org/bitba=
ke/2.2/bitbake-user-manual/bitbake-user-manual-metadata.html#appending-and-=
prepending-override-style-syntax" rel=3D"noreferrer" target=3D"_blank">http=
s://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake-user-manu=
al-metadata.html#appending-and-prepending-override-style-syntax</a> &lt;<a =
href=3D"https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitba=
ke-user-manual-metadata.html#appending-and-prepending-override-style-syntax=
" rel=3D"noreferrer" target=3D"_blank">https://docs.yoctoproject.org/bitbak=
e/2.2/bitbake-user-manual/bitbake-user-manual-metadata.html#appending-and-p=
repending-override-style-syntax</a>&gt;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0On 2023/01/27 20:48, Nikita Gupta wrote:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Hello List,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; As i earlier mentioned that i want to do=
 some customisation in<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0local.conf by adding few pkgs (below).<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; *IMAGE_INSTALL:append =3D &quot;gstreame=
r1.0 gstreamer1.0-plugins-base<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0gstreamer1.0-plugins-good gstreamer1.0-plugins=
-bad<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; gstreamer1.0-plugins-ugly=C2=A0 gstreame=
r1.0-libav imx-vpuwrap<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins-i=
mx imx-gst1.0-plugin&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; LICENSE_FLAGS_ACCEPTED =3D &quot; commer=
cial&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; IMAGE_INSTALL:append =3D &quot;kernel-de=
vsrc&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; IMAGE_INSTALL:append =3D &quot;gstreamer=
1.0-rtsp-server<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0gst-variable-rtsp-server&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; IMAGE_INSTALL:append =3D &quot; gtk+3&qu=
ot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; CORE_IMAGE_EXTRA_INSTALL +=3D &quot; ope=
ncv libopencv-core-dev<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0libopencv-highgui-dev libopencv-imgproc-dev li=
bopencv-objdetect-dev<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; libopencv-ml-dev&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; #LICENSE_FLAGS_WHITELIST =3D &quot; comm=
ercial&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; IMAGE_ROOTFS_EXTRA_SPACE =3D &quot;10485=
76 &quot;*<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0and iafter bitbake m getting=
 below errors.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; nikita@nikita-HP-Laptop-15-bs0xx:~/Yocto=
/imx-yocto-bsp$ *bitbake<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0imx-image-full*<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Loading cache: 100%<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0|#############################################=
#############################################################|<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Time: 0:00:01<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Loaded 4736 entries from dependency cach=
e.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Parsing recipes: 100%<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0|#############################################=
###########################################################|<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Time: 0:00:02<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Parsing of 3190 .bb files complete (3188=
 cached, 2 parsed). 4738<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0targets, 262 skipped, 3 masked, 0 errors.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; NOTE: Resolving any missing task queue d=
ependencies<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ERROR: Nothing RPROVIDES<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&#39;imx-gst1.0-pluginkernel-devsrcgstreamer1.=
0-rtsp-server&#39; (but<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0/home/nikita/Yocto/imx-yocto-bsp/sources/meta-=
imx/meta-sdk/dynamic-layers/qt6-layer/recipes-fsl/images/<a href=3D"http://=
imx-image-full.bb" rel=3D"noreferrer" target=3D"_blank">imx-image-full.bb</=
a> &lt;<a href=3D"http://imx-image-full.bb" rel=3D"noreferrer" target=3D"_b=
lank">http://imx-image-full.bb</a>&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &lt;<a href=3D"http://imx-image-full.bb"=
 rel=3D"noreferrer" target=3D"_blank">http://imx-image-full.bb</a> &lt;<a h=
ref=3D"http://imx-image-full.bb" rel=3D"noreferrer" target=3D"_blank">http:=
//imx-image-full.bb</a>&gt;&gt; RDEPENDS on<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0or otherwise requires it)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; NOTE: Runtime target<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&#39;imx-gst1.0-pluginkernel-devsrcgstreamer1.=
0-rtsp-server&#39; is<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0unbuildable, removing...<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Missing or unbuildable dependency chain =
was:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0[&#39;imx-gst1.0-pluginkernel-devsrcgstreamer1=
.0-rtsp-server&#39;]<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ERROR: Required build target &#39;imx-im=
age-full&#39; has no buildable<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0providers.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Missing or unbuildable dependency chain =
was: [&#39;imx-image-full&#39;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&#39;imx-gst1.0-pluginkernel-devsrcgstreamer1.=
0-rtsp-server&#39;]<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Summary: There were 2 ERROR messages, re=
turning a non-zero exit code.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; These packages are needed i can not remo=
ve So please help me what<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0can i do in this.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Thanks in Advance.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Fri, 27 Jan 2023 at 17:00, Nikita Gup=
ta<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:nikitagupta2509@gmail.co=
m" target=3D"_blank">nikitagupta2509@gmail.com</a> &lt;mailto:<a href=3D"ma=
ilto:nikitagupta2509@gmail.com" target=3D"_blank">nikitagupta2509@gmail.com=
</a>&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:nikitagupta2509@g=
mail.com" target=3D"_blank">nikitagupta2509@gmail.com</a><br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:nikitagupta2509@g=
mail.com" target=3D"_blank">nikitagupta2509@gmail.com</a>&gt;&gt;&gt; wrote=
:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Hello Alex<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0When i run bitbake li=
bimxvpuapi2 and it shows below error<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0(images attached).<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Can you please tell m=
e that is &quot;libimxvpuapi2&quot; compatible<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0with imx8mplus board?<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Thanks in Advance<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0On Fri, 27 Jan 2023 a=
t 14:35, Alexander Kanavin<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:alex.kanavin@gmail.com" =
target=3D"_blank">alex.kanavin@gmail.com</a> &lt;mailto:<a href=3D"mailto:a=
lex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:alex.kanavin@gmai=
l.com" target=3D"_blank">alex.kanavin@gmail.com</a> &lt;mailto:<a href=3D"m=
ailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&=
gt;&gt;&gt; wrote:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0The scr=
eenshot indicates the problem originates in<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0libimxvpuapi2<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recipe.=
 So you should get more information by running<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&#39;bitbake<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libimxv=
puapi2&#39;.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Alex<br=
>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Fri,=
 27 Jan 2023 at 07:46, Nikita Gupta<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:nikitagupta2509@gmail.co=
m" target=3D"_blank">nikitagupta2509@gmail.com</a> &lt;mailto:<a href=3D"ma=
ilto:nikitagupta2509@gmail.com" target=3D"_blank">nikitagupta2509@gmail.com=
</a>&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:nikitagupta2509@g=
mail.com" target=3D"_blank">nikitagupta2509@gmail.com</a><br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:nikitagupta2509@g=
mail.com" target=3D"_blank">nikitagupta2509@gmail.com</a>&gt;&gt;&gt; wrote=
:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<b=
r>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; H=
ello Alexander<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<b=
r>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; I=
 am not getting your query . Can u please explain<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0your question?<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<b=
r>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; R=
egards<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; N=
ikita Gupta<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<b=
r>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; O=
n Wed, Jan 25, 2023, 18:35 Alexander Kanavin<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:alex.kanavin@gmail.com" =
target=3D"_blank">alex.kanavin@gmail.com</a> &lt;mailto:<a href=3D"mailto:a=
lex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:alex.kanavin@gmai=
l.com" target=3D"_blank">alex.kanavin@gmail.com</a> &lt;mailto:<a href=3D"m=
ailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&=
gt;&gt;&gt; wrote:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t; What happens if you bitbake libimx=E2=80=A6 thingy directly?<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t; Alex<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t; On Wed 25. Jan 2023 at 13.47, Nikita Gupta<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:nikitagupta2509@gmail.co=
m" target=3D"_blank">nikitagupta2509@gmail.com</a> &lt;mailto:<a href=3D"ma=
ilto:nikitagupta2509@gmail.com" target=3D"_blank">nikitagupta2509@gmail.com=
</a>&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:nikitagupta2509@g=
mail.com" target=3D"_blank">nikitagupta2509@gmail.com</a><br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:nikitagupta2509@g=
mail.com" target=3D"_blank">nikitagupta2509@gmail.com</a>&gt;&gt;&gt; wrote=
:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt; Hello list,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt; I was just making image for imx8mplus by adding few<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0pkgs in my local.conf but encountered few erro=
rs so i am here<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for you=
r help.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt; I added below pkgs in my local.conf file<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt; IMAGE_INSTALL:append =3D &quot;gstreamer1.0<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0gstreamer1.0-plugins-base gstreamer1.0-plugins=
-good<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0gstreamer1.0-plugins-bad<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gstream=
er1.0-plugins-ugly=C2=A0 gstreamer1.0-libav imx-vpuwrap<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins-i=
mx<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0imx-gst=
1.0-plugin&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt; LICENSE_FLAGS_WHITELIST =3D &quot;commercial&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt; IMAGE_INSTALL:append =3D &quot;kernel-devsrc&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt; IMAGE_INSTALL_append +=3D &quot;gstreamer1.0-rtsp-server<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0gst-variable-rtsp-server&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt; IMAGE_INSTALL:append =3D &quot; gtk+3&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt; CORE_IMAGE_EXTRA_INSTALL +=3D &quot; opencv<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0libopencv-core-dev libopencv-highgui-dev libop=
encv-imgproc-dev<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libopen=
cv-objdetect-dev libopencv-ml-dev&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt; IMAGE_ROOTFS_EXTRA_SPACE =3D &quot;1048576 &quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt; So my local.conf file now looks like this<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt; So i am getting below error after baking my recipe (<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0Attached image).<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt; Please tell what should I need to do to resolve this.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt; Thanks in advance<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&g=
t;&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0Takayasu Ito<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0Solution Department, Lineo Solutions, Inc.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://www.lineo.co.jp/english/" r=
el=3D"noreferrer" target=3D"_blank">https://www.lineo.co.jp/english/</a> &l=
t;<a href=3D"https://www.lineo.co.jp/english/" rel=3D"noreferrer" target=3D=
"_blank">https://www.lineo.co.jp/english/</a>&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0Email: <a href=3D"mailto:ito@lineo.co.jp" targ=
et=3D"_blank">ito@lineo.co.jp</a> &lt;mailto:<a href=3D"mailto:ito@lineo.co=
.jp" target=3D"_blank">ito@lineo.co.jp</a>&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0Yocto Project Ambassador<br>
&gt; &gt;<br>
&gt;<br>
&gt; --<br>
&gt; Takayasu Ito<br>
&gt; Yocto Project Ambassador<br>
&gt; Solution Department Lineo Solutions, Inc.<br>
&gt; <a href=3D"https://www.lineo.co.jp/english/" rel=3D"noreferrer" target=
=3D"_blank">https://www.lineo.co.jp/english/</a><br>
&gt; Email: <a href=3D"mailto:ito@lineo.co.jp" target=3D"_blank">ito@lineo.=
co.jp</a><br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#59112): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/59112" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/59112</a><br>
&gt; Unfollow This Topic: <a href=3D"https://lists.yoctoproject.org/unft/96=
519310/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/unft/96519310/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--0000000000006b6e7905f38bc721--

