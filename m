Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D8AAE00524; Wed, 22 Feb 2017 06:06:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.194 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3577BE003D7
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2017 06:06:24 -0800 (PST)
Received: by mail-qk0-f194.google.com with SMTP id n127so528217qkf.2
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2017 06:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LFkkL4BIq5iIbba+WQLWQInKpKmjoOm6oG1pJizKdd8=;
	b=KbErMk8yrpmeBN1vpWqGR+B1MoxDrELrCjsxDcInCV9UHqkfV/w2M9huPWWEAmwMtC
	o1c6pnMtxqzu7i2hkA+ajzYCcSCTQ8Rg7y4JNjChRjzdoOpSGJdMTXfFdvYJXuEyMCnn
	sZQU3TTgcAtJHwTBnejXLu5MEDXkjkdUM7EymtwR1QThpxYZj2NkMz7vx+20fXQhfc/M
	qgfnES5yMLNz11j03I8XX3UL9/c0gzhGw3yjPLK57u1Rb53dtflJJtAwEPWy83LH2aOL
	SDJoQ7h626WchCSbVn7+/bbGIZLQBJ/N4taSGiFsZHpsdd31p3ZwUa7OXwdZrQPVJX29
	kucw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LFkkL4BIq5iIbba+WQLWQInKpKmjoOm6oG1pJizKdd8=;
	b=BjpA9P6j6N+qCaqsz8xBPnmtSjB3wpVcDR8RghpTThaPHeHzJPjegPVoN1Q4Ni/vln
	9lWnmm5LGwyy5iSglT1+NK6FnIIw3wYvlgDsgT4Vf6bbJecyILr2Qup2JagrwPs2xRjL
	n7b3gIgsqZlXvzJg6iPnIX+YbN2hcvOIeKxtiaTEFgJu7kH6wTHip0HRtpYxRQEFL6b5
	lgyskAeHX59E8hYY/Imo3wQBRSaUS71hoAlr8vl/F18btt2/EVZwe3m9+ceiCPtaIJIV
	EstjMi6o6dxVqd/cLJZW18U1cg/OSodZjx88bgkhCytbfASiJQynpXtaa4/R2HGNfwhl
	q+vw==
X-Gm-Message-State: AMke39m00C13W0TVhJRvWwTj/JIe+0buk07gnCiitMNwOpbXPiqp1tiM6racREQ7t7ZJECiJLLPqvPl6s/wjFA==
X-Received: by 10.55.192.65 with SMTP id o62mr28018766qki.10.1487772383889;
	Wed, 22 Feb 2017 06:06:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.68 with HTTP; Wed, 22 Feb 2017 06:06:23 -0800 (PST)
In-Reply-To: <CAHUNapSvaH+a2=J09Nx6ff5Kt1LWxf4qtQs6B10YLG+CvOdV6w@mail.gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-3-twoerner@gmail.com>
	<CAFLEztS7U_s2Np48_Kb=+TMjNReDaGAE_uSRB-Gan+yHQRyC7g@mail.gmail.com>
	<CAJrj+DMdmcBqnFgfJ4B3t+HCScH_ANCCm3wLcvDyDROMBowpYg@mail.gmail.com>
	<CAJrj+DO24Y3Wwx-yoRcY0OrwoudO6y0-qppAi=4tDMm+bJzRgQ@mail.gmail.com>
	<CAHUNapQM6ABxtp+5xy_0YjHUiy8F6VqVCK_9hcQPcxQaWeQq3A@mail.gmail.com>
	<CAHUNapSvaH+a2=J09Nx6ff5Kt1LWxf4qtQs6B10YLG+CvOdV6w@mail.gmail.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Wed, 22 Feb 2017 22:06:23 +0800
Message-ID: <CAJrj+DO3DfJmDzJAkUAVOf3ja8jvmuEH00+o+u64m=k5N537Wg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH v2 2/5] u-boot-rockchip: add
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 22 Feb 2017 14:06:28 -0000
Content-Type: multipart/alternative; boundary=001a11465a447335e405491f00e8

--001a11465a447335e405491f00e8
Content-Type: text/plain; charset=UTF-8

Hi Trevor

Here is mine

Build Configuration:
BB_VERSION        = "1.32.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "firefly-rk3288"
DISTRO            = "poky"
DISTRO_VERSION    = "2.2.1"
TUNE_FEATURES     = "arm armv7ve vfp  neon  vfpv4  callconvention-hard
 cortexa17"
TARGET_FPU        = "hard"
meta
meta-poky
meta-yocto-bsp    = "HEAD:6a1f33cc40bfac33cf030fe41e1a8efd1e5fad6f"
meta-rockchip     =
"review-uboot-gtpimg-v2:5e181d4e74c50e290b507b1a990b1517eaffcea6"

BBLAYERS ?= " \
  ${BSPDIR}/src/poky/meta \
  ${BSPDIR}/src/poky/meta-poky \
  ${BSPDIR}/src/poky/meta-yocto-bsp \
  ${BSPDIR}/src/meta-rockchip \



2017-02-22 6:18 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:

> I can't reproduce the problem you're seeing and I'm interested in
> knowing more about how you're building to see if I can reproduce it.
>
> I've done 4 builds: 2 on master, 2 on morty; one of which (for each
> master and morty) is poky and one on OE's nodistro. All of them are
> able to build this recipe (as I've contributed it) whether or not it's
> the first time, or it's in sstate, after a clean, on a fresh build...
> That's why I "fixed" this line, because with the previous line it
> always failed once and then work the second time the build was run.
>
> Maybe you could post the build configuration from your build? That way
> I could see what layers you're enabling and at what revisions? Mine
> is:
>
> meta-rockchip     =
> devs/twoerner/feb-updates-2:c252843cf2bf8326ccf2b552b59209f7a2ac3f16
> meta              = master:def3800c7e58d9d1b54ea1df27b190a0f6d1d544
>
> On Tue, Feb 21, 2017 at 11:01 AM, Trevor Woerner <twoerner@gmail.com>
> wrote:
> > I'll have to investigate this further. From a completely clean build
> > do_install_prepend always fails the first time, but simply restarting
> > the build again causes it to succeed. With do_deploy_prepend it always
> > succeeds without issue whether its the first or subsequent tries.
> >
> > On Mon, Feb 20, 2017 at 6:14 AM, Eddie Cai <eddie.cai.linux@gmail.com>
> wrote:
> >>
> >>
> >> 2017-02-19 22:33 GMT+08:00 Eddie Cai <eddie.cai.linux@gmail.com>:
> >>>
> >>>
> >>>
> >>> 2017-02-19 22:22 GMT+08:00 Jacob Chen <jacobchen110@gmail.com>:
> >>>>
> >>>> Hi,
> >>>>
> >>>> 2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
> >>>> > This recipe was taken from the Rockchip team's recipe at
> >>>> >
> >>>> > https://github.com/rockchip-linux/meta-rockchip/commit/
> 6a139d5b7510c7ba36aace82c239b894d5741cac
> >>>> >
> >>>> > It was mostly written by Jacob Chen <jacob-chen@iotwrt.com> and
> I've
> >>>> > made a
> >>>> > couple small modifications.
> >>>> >
> >>>> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> >>>> > ---
> >>>> >  recipes-bsp/u-boot/u-boot-rockchip_git.bb | 19 +++++++++++++++++++
> >>>> >  1 file changed, 19 insertions(+)
> >>>> >  create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_git.bb
> >>>> >
> >>>> > diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb
> >>>> > b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
> >>>> > new file mode 100644
> >>>> > index 0000000..3b4f109
> >>>> > --- /dev/null
> >>>> > +++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
> >>>> > @@ -0,0 +1,19 @@
> >>>> > +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> >>>> > +# Copyright (C) 2017 Trevor Woerner <twoerner@gmail.com>
> >>>> > +# Released under the MIT license (see COPYING.MIT for the terms)
> >>>> > +
> >>>> > +require recipes-bsp/u-boot/u-boot.inc
> >>>> > +
> >>>> > +DESCRIPTION = "Rockchip next-dev U-Boot"
> >>>> > +LICENSE = "GPLv2+"
> >>>> > +LIC_FILES_CHKSUM =
> >>>> > "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
> >>>> > +COMPATIBLE_MACHINE = "(firefly-rk3288)"
> >>>> > +
> >>>> > +SRC_URI = "git://github.com/rockchip-linux/u-boot.git;branch=
> release;"
> >>>> > +SRCREV = "${AUTOREV}"
> >>>> > +S = "${WORKDIR}/git"
> >>>> > +
> >>>> > +do_deploy_prepend () {
> >>>> > +       # copy to default search path
> >>>> > +       cp ${B}/spl/${SPL_BINARY} ${B}/
> >>>> > +}
> >>>>
> >>>> I can't pass build if use do_deploy_prepend instead of
> >>>> do_install_prepend.
> >>>
> >>> It works for me. Did you delete build/tmp?
> >>
> >> I failed when i did a clean build(delete build dir). I modify
> >> do_deploy_prepend to do_install_prepend. Everything is fine.   I guess
> i can
> >> build before because sstate-cache cache the previous build data.
> >>>>
> >>>>
> >>>> > --
> >>>> > 2.12.0.rc1.48.g076c053
> >>>> >
> >>>> > --
> >>>> > _______________________________________________
> >>>> > yocto mailing list
> >>>> > yocto@yoctoproject.org
> >>>> > https://lists.yoctoproject.org/listinfo/yocto
> >>>> --
> >>>> _______________________________________________
> >>>> yocto mailing list
> >>>> yocto@yoctoproject.org
> >>>> https://lists.yoctoproject.org/listinfo/yocto
> >>>
> >>>
> >>
>

--001a11465a447335e405491f00e8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Trevor<div><br></div><div>Here is mine</div><div><br></=
div><div><div>Build Configuration:</div><div>BB_VERSION =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D &quot;1.32.0&quot;</div><div>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING =C2=A0 =3D &q=
uot;universal&quot;</div><div>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &qu=
ot;arm-poky-linux-gnueabi&quot;</div><div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;firefly-rk3288&quot;</div><div>DISTRO =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</div><div>DISTRO_VERSION =
=C2=A0 =C2=A0=3D &quot;2.2.1&quot;</div><div>TUNE_FEATURES =C2=A0 =C2=A0 =
=3D &quot;arm armv7ve vfp =C2=A0neon =C2=A0vfpv4 =C2=A0callconvention-hard =
=C2=A0cortexa17&quot;</div><div>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &=
quot;hard&quot;</div><div>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0</div><div>meta-poky =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta=
-yocto-bsp =C2=A0 =C2=A0=3D &quot;HEAD:6a1f33cc40bfac33cf030fe41e1a8efd1e5f=
ad6f&quot;</div><div>meta-rockchip =C2=A0 =C2=A0 =3D &quot;review-uboot-gtp=
img-v2:5e181d4e74c50e290b507b1a990b1517eaffcea6&quot;</div></div><div><br><=
/div><div><div>BBLAYERS ?=3D &quot; \</div><div>=C2=A0 ${BSPDIR}/src/poky/m=
eta \</div><div>=C2=A0 ${BSPDIR}/src/poky/meta-poky \</div><div>=C2=A0 ${BS=
PDIR}/src/poky/meta-yocto-bsp \</div><div>=C2=A0 ${BSPDIR}/src/meta-rockchi=
p \</div></div><div><br></div><div><br></div></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">2017-02-22 6:18 GMT+08:00 Trevor Woerner =
<span dir=3D"ltr">&lt;<a href=3D"mailto:twoerner@gmail.com" target=3D"_blan=
k">twoerner@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I c=
an&#39;t reproduce the problem you&#39;re seeing and I&#39;m interested in<=
br>
knowing more about how you&#39;re building to see if I can reproduce it.<br=
>
<br>
I&#39;ve done 4 builds: 2 on master, 2 on morty; one of which (for each<br>
master and morty) is poky and one on OE&#39;s nodistro. All of them are<br>
able to build this recipe (as I&#39;ve contributed it) whether or not it&#3=
9;s<br>
the first time, or it&#39;s in sstate, after a clean, on a fresh build...<b=
r>
That&#39;s why I &quot;fixed&quot; this line, because with the previous lin=
e it<br>
always failed once and then work the second time the build was run.<br>
<br>
Maybe you could post the build configuration from your build? That way<br>
I could see what layers you&#39;re enabling and at what revisions? Mine<br>
is:<br>
<br>
meta-rockchip=C2=A0 =C2=A0 =C2=A0=3D<br>
devs/twoerner/feb-updates-2:<wbr>c252843cf2bf8326ccf2b552b59209<wbr>f7a2ac3=
f16<br>
meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D master:<wbr>def380=
0c7e58d9d1b54ea1df27b190<wbr>a0f6d1d544<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Tue, Feb 21, 2017 at 11:01 AM, Trevor Woerner &lt;<a href=3D"mailto:twoe=
rner@gmail.com">twoerner@gmail.com</a>&gt; wrote:<br>
&gt; I&#39;ll have to investigate this further. From a completely clean bui=
ld<br>
&gt; do_install_prepend always fails the first time, but simply restarting<=
br>
&gt; the build again causes it to succeed. With do_deploy_prepend it always=
<br>
&gt; succeeds without issue whether its the first or subsequent tries.<br>
&gt;<br>
&gt; On Mon, Feb 20, 2017 at 6:14 AM, Eddie Cai &lt;<a href=3D"mailto:eddie=
.cai.linux@gmail.com">eddie.cai.linux@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; 2017-02-19 22:33 GMT+08:00 Eddie Cai &lt;<a href=3D"mailto:eddie.c=
ai.linux@gmail.com">eddie.cai.linux@gmail.com</a>&gt;:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; 2017-02-19 22:22 GMT+08:00 Jacob Chen &lt;<a href=3D"mailto:ja=
cobchen110@gmail.com">jacobchen110@gmail.com</a>&gt;:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; 2017-02-19 10:43 GMT+08:00 Trevor Woerner &lt;<a href=3D"m=
ailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt;:<br>
&gt;&gt;&gt;&gt; &gt; This recipe was taken from the Rockchip team&#39;s re=
cipe at<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; <a href=3D"https://github.com/rockchip-linux/meta-roc=
kchip/commit/6a139d5b7510c7ba36aace82c239b894d5741cac" rel=3D"noreferrer" t=
arget=3D"_blank">https://github.com/rockchip-<wbr>linux/meta-rockchip/commi=
t/<wbr>6a139d5b7510c7ba36aace82c239b8<wbr>94d5741cac</a><br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; It was mostly written by Jacob Chen &lt;<a href=3D"ma=
ilto:jacob-chen@iotwrt.com">jacob-chen@iotwrt.com</a>&gt; and I&#39;ve<br>
&gt;&gt;&gt;&gt; &gt; made a<br>
&gt;&gt;&gt;&gt; &gt; couple small modifications.<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:t=
woerner@gmail.com">twoerner@gmail.com</a>&gt;<br>
&gt;&gt;&gt;&gt; &gt; ---<br>
&gt;&gt;&gt;&gt; &gt;=C2=A0 recipes-bsp/u-boot/<a href=3D"http://u-boot-roc=
kchip_git.bb" rel=3D"noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_git=
.bb</a> | 19 +++++++++++++++++++<br>
&gt;&gt;&gt;&gt; &gt;=C2=A0 1 file changed, 19 insertions(+)<br>
&gt;&gt;&gt;&gt; &gt;=C2=A0 create mode 100644 recipes-bsp/u-boot/<a href=
=3D"http://u-boot-rockchip_git.bb" rel=3D"noreferrer" target=3D"_blank">u-b=
oot-<wbr>rockchip_git.bb</a><br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; diff --git a/recipes-bsp/u-boot/<a href=3D"http://u-b=
oot-rockchip_git.bb" rel=3D"noreferrer" target=3D"_blank">u-boot-<wbr>rockc=
hip_git.bb</a><br>
&gt;&gt;&gt;&gt; &gt; b/recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchi=
p_git.bb" rel=3D"noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_git.bb<=
/a><br>
&gt;&gt;&gt;&gt; &gt; new file mode 100644<br>
&gt;&gt;&gt;&gt; &gt; index 0000000..3b4f109<br>
&gt;&gt;&gt;&gt; &gt; --- /dev/null<br>
&gt;&gt;&gt;&gt; &gt; +++ b/recipes-bsp/u-boot/<a href=3D"http://u-boot-roc=
kchip_git.bb" rel=3D"noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_git=
.bb</a><br>
&gt;&gt;&gt;&gt; &gt; @@ -0,0 +1,19 @@<br>
&gt;&gt;&gt;&gt; &gt; +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co.=
, Ltd<br>
&gt;&gt;&gt;&gt; &gt; +# Copyright (C) 2017 Trevor Woerner &lt;<a href=3D"m=
ailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt;<br>
&gt;&gt;&gt;&gt; &gt; +# Released under the MIT license (see COPYING.MIT fo=
r the terms)<br>
&gt;&gt;&gt;&gt; &gt; +<br>
&gt;&gt;&gt;&gt; &gt; +require recipes-bsp/u-boot/u-boot.inc<br>
&gt;&gt;&gt;&gt; &gt; +<br>
&gt;&gt;&gt;&gt; &gt; +DESCRIPTION =3D &quot;Rockchip next-dev U-Boot&quot;=
<br>
&gt;&gt;&gt;&gt; &gt; +LICENSE =3D &quot;GPLv2+&quot;<br>
&gt;&gt;&gt;&gt; &gt; +LIC_FILES_CHKSUM =3D<br>
&gt;&gt;&gt;&gt; &gt; &quot;file://Licenses/README;md5=3D<wbr>a2c678cfd4a4d=
97135585cad908541<wbr>c6&quot;<br>
&gt;&gt;&gt;&gt; &gt; +COMPATIBLE_MACHINE =3D &quot;(firefly-rk3288)&quot;<=
br>
&gt;&gt;&gt;&gt; &gt; +<br>
&gt;&gt;&gt;&gt; &gt; +SRC_URI =3D &quot;git://<a href=3D"http://github.com=
/rockchip-linux/u-boot.git;branch=3Drelease" rel=3D"noreferrer" target=3D"_=
blank">github.com/rockchip-<wbr>linux/u-boot.git;branch=3D<wbr>release</a>;=
&quot;<br>
&gt;&gt;&gt;&gt; &gt; +SRCREV =3D &quot;${AUTOREV}&quot;<br>
&gt;&gt;&gt;&gt; &gt; +S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;&gt;&gt;&gt; &gt; +<br>
&gt;&gt;&gt;&gt; &gt; +do_deploy_prepend () {<br>
&gt;&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0# copy to default search =
path<br>
&gt;&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0cp ${B}/spl/${SPL_BINARY}=
 ${B}/<br>
&gt;&gt;&gt;&gt; &gt; +}<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I can&#39;t pass build if use do_deploy_prepend instead of=
<br>
&gt;&gt;&gt;&gt; do_install_prepend.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; It works for me. Did you delete build/tmp?<br>
&gt;&gt;<br>
&gt;&gt; I failed when i did a clean build(delete build dir). I modify<br>
&gt;&gt; do_deploy_prepend to do_install_prepend. Everything is fine.=C2=A0=
 =C2=A0I guess i can<br>
&gt;&gt; build before because sstate-cache cache the previous build data.<b=
r>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; &gt; --<br>
&gt;&gt;&gt;&gt; &gt; 2.12.0.rc1.48.g076c053<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; --<br>
&gt;&gt;&gt;&gt; &gt; ______________________________<wbr>_________________<=
br>
&gt;&gt;&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt;&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a><br>
&gt;&gt;&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yo=
cto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>o=
rg/listinfo/yocto</a><br>
&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt; ______________________________<wbr>_________________<br>
&gt;&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a><br>
&gt;&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/li=
stinfo/yocto</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
</div></div></blockquote></div><br></div>

--001a11465a447335e405491f00e8--
