Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6ECDEE00480; Sun, 19 Feb 2017 06:33:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.194 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 497FFE003DB
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 06:33:49 -0800 (PST)
Received: by mail-qk0-f194.google.com with SMTP id n127so395589qkf.2
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 06:33:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UYVkd4GE/fyZ+GW/NXAHr4ICHzptxhaHSPHzPfYdhPE=;
	b=spK0UTorahrclaZrNBN+4UEcv0Oq4JAQD136xewqgNeQ20ENfz/kSJUIb0NCkdh8ok
	MWF0ifJVsmMuQ7kdTVAruxBpgTVRJxgLuv9obE/kxAOb5kAvBA2psF9Ap/kpYRD8AO0u
	uTcuh7GAF7vwHd7Zy6vc0emDvcIo1Mi/98mb9Wq6Wt/zWInwjkxFH8CeONRXb5fL5UtM
	7ZmFrisqHwc5PCwcR9RWhgNLgBmkb86rPDI3NLtDQJJcgfxN9BG2G64M0C1ngxBmbJzb
	4m65C3KgZtn39W0nmprmAyLPn7rOr0fjRPyz7wTqoMhfbGrmPM1hgSF47VADOMY1fWNR
	awdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UYVkd4GE/fyZ+GW/NXAHr4ICHzptxhaHSPHzPfYdhPE=;
	b=ZxmQxB1x8pBZLfgcMiDacTvGq3EtJXUuTW9qiGJ3oNo45HaSwzwQsGrb9TiHaj7Aez
	ojMyyvAVqlZFsOKl3mvUZ88HA2UIehWL7o3w0U+M4aPan/CdjB5hMH8s5Bg7UqfXaQ1A
	iUO7UAX0cNK3fhOx5CPAauF2Ssz6FJkvEd+ySFub8b0j+p8f9XmBlbJ8Kh2oLPgY6YIx
	bg90fLhZezMYDp/HJS+r2jl5yQhzswG0yGGjaXbpwBDUipZvYLo8DTvfPX6SHG7z5mJu
	DPHhcWFLufyESokG/Y5vhKfRs3lBLb34BITjkqt1foQl7eJLcNJrbVUW6EUSSNKwdxZ5
	n0JQ==
X-Gm-Message-State: AMke39nkAH8zFmq+KvTBAtopfydAt9k2hsxVLZ5qHqcA2/UvDLlOyQbCC5v0FkSval0XKt4t3wasfA82X0w8Og==
X-Received: by 10.55.150.199 with SMTP id y190mr15264508qkd.273.1487514829198; 
	Sun, 19 Feb 2017 06:33:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.68 with HTTP; Sun, 19 Feb 2017 06:33:48 -0800 (PST)
In-Reply-To: <CAFLEztS7U_s2Np48_Kb=+TMjNReDaGAE_uSRB-Gan+yHQRyC7g@mail.gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-3-twoerner@gmail.com>
	<CAFLEztS7U_s2Np48_Kb=+TMjNReDaGAE_uSRB-Gan+yHQRyC7g@mail.gmail.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Sun, 19 Feb 2017 22:33:48 +0800
Message-ID: <CAJrj+DMdmcBqnFgfJ4B3t+HCScH_ANCCm3wLcvDyDROMBowpYg@mail.gmail.com>
To: Jacob Chen <jacobchen110@gmail.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Sun, 19 Feb 2017 14:33:53 -0000
Content-Type: multipart/alternative; boundary=94eb2c08b8a6fe192b0548e3082e

--94eb2c08b8a6fe192b0548e3082e
Content-Type: text/plain; charset=UTF-8

2017-02-19 22:22 GMT+08:00 Jacob Chen <jacobchen110@gmail.com>:

> Hi,
>
> 2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
> > This recipe was taken from the Rockchip team's recipe at
> > https://github.com/rockchip-linux/meta-rockchip/commit/
> 6a139d5b7510c7ba36aace82c239b894d5741cac
> >
> > It was mostly written by Jacob Chen <jacob-chen@iotwrt.com> and I've
> made a
> > couple small modifications.
> >
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> >  recipes-bsp/u-boot/u-boot-rockchip_git.bb | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >  create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_git.bb
> >
> > diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb
> b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
> > new file mode 100644
> > index 0000000..3b4f109
> > --- /dev/null
> > +++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
> > @@ -0,0 +1,19 @@
> > +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> > +# Copyright (C) 2017 Trevor Woerner <twoerner@gmail.com>
> > +# Released under the MIT license (see COPYING.MIT for the terms)
> > +
> > +require recipes-bsp/u-boot/u-boot.inc
> > +
> > +DESCRIPTION = "Rockchip next-dev U-Boot"
> > +LICENSE = "GPLv2+"
> > +LIC_FILES_CHKSUM = "file://Licenses/README;md5=
> a2c678cfd4a4d97135585cad908541c6"
> > +COMPATIBLE_MACHINE = "(firefly-rk3288)"
> > +
> > +SRC_URI = "git://github.com/rockchip-linux/u-boot.git;branch=release;"
> > +SRCREV = "${AUTOREV}"
> > +S = "${WORKDIR}/git"
> > +
> > +do_deploy_prepend () {
> > +       # copy to default search path
> > +       cp ${B}/spl/${SPL_BINARY} ${B}/
> > +}
>
> I can't pass build if use do_deploy_prepend instead of do_install_prepend.
>
It works for me. Did you delete build/tmp?

>
> > --
> > 2.12.0.rc1.48.g076c053
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c08b8a6fe192b0548e3082e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2017-02-19 22:22 GMT+08:00 Jacob Chen <span dir=3D"ltr">&lt;<a href=3D"=
mailto:jacobchen110@gmail.com" target=3D"_blank">jacobchen110@gmail.com</a>=
&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
<span class=3D""><br>
2017-02-19 10:43 GMT+08:00 Trevor Woerner &lt;<a href=3D"mailto:twoerner@gm=
ail.com">twoerner@gmail.com</a>&gt;:<br>
</span><div><div class=3D"h5">&gt; This recipe was taken from the Rockchip =
team&#39;s recipe at<br>
&gt; <a href=3D"https://github.com/rockchip-linux/meta-rockchip/commit/6a13=
9d5b7510c7ba36aace82c239b894d5741cac" rel=3D"noreferrer" target=3D"_blank">=
https://github.com/rockchip-<wbr>linux/meta-rockchip/commit/<wbr>6a139d5b75=
10c7ba36aace82c239b8<wbr>94d5741cac</a><br>
&gt;<br>
&gt; It was mostly written by Jacob Chen &lt;<a href=3D"mailto:jacob-chen@i=
otwrt.com">jacob-chen@iotwrt.com</a>&gt; and I&#39;ve made a<br>
&gt; couple small modifications.<br>
&gt;<br>
&gt; Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com=
">twoerner@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_git.bb" rel=
=3D"noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_git.bb</a> | 19 ++++=
+++++++++++++++<br>
&gt;=C2=A0 1 file changed, 19 insertions(+)<br>
&gt;=C2=A0 create mode 100644 recipes-bsp/u-boot/<a href=3D"http://u-boot-r=
ockchip_git.bb" rel=3D"noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_g=
it.bb</a><br>
&gt;<br>
&gt; diff --git a/recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_git.=
bb" rel=3D"noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_git.bb</a> b/=
recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_git.bb" rel=3D"norefer=
rer" target=3D"_blank">u-boot-<wbr>rockchip_git.bb</a><br>
&gt; new file mode 100644<br>
&gt; index 0000000..3b4f109<br>
&gt; --- /dev/null<br>
&gt; +++ b/recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_git.bb" rel=
=3D"noreferrer" target=3D"_blank">u-boot-<wbr>rockchip_git.bb</a><br>
&gt; @@ -0,0 +1,19 @@<br>
&gt; +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd<br>
&gt; +# Copyright (C) 2017 Trevor Woerner &lt;<a href=3D"mailto:twoerner@gm=
ail.com">twoerner@gmail.com</a>&gt;<br>
&gt; +# Released under the MIT license (see COPYING.MIT for the terms)<br>
&gt; +<br>
&gt; +require recipes-bsp/u-boot/u-boot.inc<br>
&gt; +<br>
&gt; +DESCRIPTION =3D &quot;Rockchip next-dev U-Boot&quot;<br>
&gt; +LICENSE =3D &quot;GPLv2+&quot;<br>
&gt; +LIC_FILES_CHKSUM =3D &quot;file://Licenses/README;md5=3D<wbr>a2c678cf=
d4a4d97135585cad908541<wbr>c6&quot;<br>
&gt; +COMPATIBLE_MACHINE =3D &quot;(firefly-rk3288)&quot;<br>
&gt; +<br>
&gt; +SRC_URI =3D &quot;git://<a href=3D"http://github.com/rockchip-linux/u=
-boot.git;branch=3Drelease" rel=3D"noreferrer" target=3D"_blank">github.com=
/rockchip-<wbr>linux/u-boot.git;branch=3D<wbr>release</a>;&quot;<br>
&gt; +SRCREV =3D &quot;${AUTOREV}&quot;<br>
&gt; +S =3D &quot;${WORKDIR}/git&quot;<br>
&gt; +<br>
&gt; +do_deploy_prepend () {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0# copy to default search path<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0cp ${B}/spl/${SPL_BINARY} ${B}/<br>
&gt; +}<br>
<br>
</div></div>I can&#39;t pass build if use do_deploy_prepend instead of do_i=
nstall_prepend.<br></blockquote><div>It works for me. Did you delete build/=
tmp?</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; --<br>
&gt; 2.12.0.rc1.48.g076c053<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div></div>

--94eb2c08b8a6fe192b0548e3082e--
