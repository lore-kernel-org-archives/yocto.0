Return-Path: <maxpowel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67032E00970; Thu, 30 Mar 2017 05:13:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxpowel[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.169 listed in dnsbl.sorbs.net]
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
	*      [209.85.220.169 listed in list.dnswl.org]
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 497CCE00839
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 05:13:29 -0700 (PDT)
Received: by mail-qk0-f169.google.com with SMTP id r142so37643735qke.2
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 05:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8ITRVO24672gPBNfq6qIjKanPTe/Fpxz+2baW0Zxjxg=;
	b=gxEB2Jn1FJ69So0YAJ3VqXzRB8ZVEKelnz1twtTpneNzzVdOvbBVdarRx9VlA/XAuY
	M+OJMhxikPSZPkNlXHilN0zoGzuDlr5+i57tXUGL6BFBKC9ItspCHaMoioxjfsEe8UN1
	80hnXqEywuP64UElGfKjcvXi8/yNT7eFTxRw02Mc7p6bLcWmk/nH1MgmKZH4wElNi/GT
	tnCfRkRYcw6on9YR0BOf3N2j9hVodZLqf9Rlzo4P0v0PsGWeyoE0sBeNRiDNn8R5v7HW
	zOdZrPZgfmbZizLsEINROrG5dg8bYdb2REbKN84Wx3IR17k2PWEtzCZ/E4+9Wchp1Dbm
	KWYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8ITRVO24672gPBNfq6qIjKanPTe/Fpxz+2baW0Zxjxg=;
	b=a7sooP9mCmGLsoppBMAUvcIx2ML+qn8UwoE2NXF97E/9To2J3swZZFzwIQOeMd+CF/
	FuEEzF3ofnnDSIx+S6eB08FwhxRfdFjSegJctlzfBmxmNIhHqtQ8V2woaVRljhm8Lln4
	dkha2zJOT1Yb6+FdwN4RGGCfP2pKXPOFEaRI6pxKORmcWlMmAYV7uCmRdf6Yw6oDPBtL
	k4vc2vLvoUa2GwM4Jx6vfR45DaOFarLSEJS5vR6odB5BzRqnMYFTQvklW168Ex3dQKjq
	M+fVaO7FNIPCdN9ALAbBOnHJCM6a6UXLdvZyylwMfr5drZM2m2FeqRXmzSNcJVXv0VRF
	PhZw==
X-Gm-Message-State: AFeK/H0hAlyFeSvdK7mtn8c7mw3r+4O+xaOwZDuFnTihtUUrTA+4n4GSwMJPuuJPFhp4jO8niX5/jplol4ljVQ==
X-Received: by 10.55.144.199 with SMTP id s190mr5161309qkd.199.1490876008869; 
	Thu, 30 Mar 2017 05:13:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.37.5 with HTTP; Thu, 30 Mar 2017 05:13:28 -0700 (PDT)
In-Reply-To: <1490808757.17259.40.camel@linux.intel.com>
References: <CAOsmwBQhqjnnek3enUrXRzVnRRJANcibQ43hPX9jViN+ZhZyyw@mail.gmail.com>
	<1490808757.17259.40.camel@linux.intel.com>
From: Alvaro Garcia <maxpowel@gmail.com>
Date: Thu, 30 Mar 2017 14:13:28 +0200
Message-ID: <CAOsmwBT_MD-f4+d6cB9hLjDRhFCXQ9ZpgN_JqYti2M_fTMqt2Q@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Compiling custom kernel
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
X-List-Received-Date: Thu, 30 Mar 2017 12:13:33 -0000
Content-Type: multipart/alternative; boundary=001a114ddc02e9bcab054bf19e0e

--001a114ddc02e9bcab054bf19e0e
Content-Type: text/plain; charset=UTF-8

Hi, that was exactly my problem. Finally the kernel was compiled with my
config. I'm so happy now, thank you!

2017-03-29 19:32 GMT+02:00 Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com>:

> On Wed, 2017-03-29 at 19:11 +0200, Alvaro Garcia wrote:
> > Hi, I'm trying to compile a custom kernel (just custom config).
> > I created a recipe called linux-yocto in my layer:
> > meta-test
> > -recipes-test
> > --linux-yocto
> > ---linux-yocto.bbapend
>
> you may need to include the kernel version to  your bbappend
> (linux-yocto_4.4.bappend)
>
>
> > ---files
> > ----enable_various_options.cfg
> >
> > The content of the linux-yocto.bbapend is:
> >
> > FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> > SRC_URI += "file://enable_various_options.cfg"
> >
> > And the content of enable_various_options.cfg is:
> > CONFIG_DRM_NOUVEAU=y
> >
> > The way I generated enable_various_options.cfg was
> > bitbake -c menuconfig virtual/kernel
> > Select my configuration
> > bitbake -c devshell virtual/kernel
> > diff of the original .config and the new one.
> > I just followed the instructions here
> > https://lists.yoctoproject.org/pipermail/yocto/2014-June/020174.html
> > and here
> > https://software.intel.com/sites/default/files/m/4/d/8/5/
> 8/42868-11__Developing_Kernel_Module_on_Yocto.pdf
> >
> > Then I run bitbake core-image-x11
> > I got this warning:
> > WARNING: /home/amacho/poky/meta/recipes-kernel/linux/linux-
> yocto_4.4.bb.do_kernel_configme is tainted from a forced run
> > but the kernel is not compiled with the new config (I do md5 to
> > vmlinuz and was exactly the same).
> >
> > Can you help me to find the way I can compile this kernel?
> >
> > Thank you
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--001a114ddc02e9bcab054bf19e0e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, that was exactly my problem. Finally the kernel was co=
mpiled with my config. I&#39;m so happy now, thank you!</div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">2017-03-29 19:32 GMT+02:00 Leon=
ardo Sandoval <span dir=3D"ltr">&lt;<a href=3D"mailto:leonardo.sandoval.gon=
zalez@linux.intel.com" target=3D"_blank">leonardo.sandoval.gonzalez@linux.i=
ntel.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""=
>On Wed, 2017-03-29 at 19:11 +0200, Alvaro Garcia wrote:<br>
&gt; Hi, I&#39;m trying to compile a custom kernel (just custom config).<br=
>
&gt; I created a recipe called linux-yocto in my layer:<br>
&gt; meta-test<br>
&gt; -recipes-test<br>
&gt; --linux-yocto<br>
&gt; ---linux-yocto.bbapend<br>
<br>
</span>you may need to include the kernel version to=C2=A0 your bbappend<br=
>
(linux-yocto_4.4.bappend)<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt; ---files<br>
&gt; ----enable_various_options.cfg<br>
&gt;<br>
&gt; The content of the linux-yocto.bbapend is:<br>
&gt;<br>
&gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
&gt; SRC_URI +=3D &quot;file://enable_various_<wbr>options.cfg&quot;<br>
&gt;<br>
&gt; And the content of enable_various_options.cfg is:<br>
&gt; CONFIG_DRM_NOUVEAU=3Dy<br>
&gt;<br>
&gt; The way I generated enable_various_options.cfg was<br>
&gt; bitbake -c menuconfig virtual/kernel<br>
&gt; Select my configuration<br>
&gt; bitbake -c devshell virtual/kernel<br>
&gt; diff of the original .config and the new one.<br>
&gt; I just followed the instructions here<br>
&gt; <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2014-June/02=
0174.html" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
<wbr>org/pipermail/yocto/2014-June/<wbr>020174.html</a><br>
&gt; and here<br>
&gt; <a href=3D"https://software.intel.com/sites/default/files/m/4/d/8/5/8/=
42868-11__Developing_Kernel_Module_on_Yocto.pdf" rel=3D"noreferrer" target=
=3D"_blank">https://software.intel.com/<wbr>sites/default/files/m/4/d/8/5/<=
wbr>8/42868-11__Developing_Kernel_<wbr>Module_on_Yocto.pdf</a><br>
&gt;<br>
&gt; Then I run bitbake core-image-x11<br>
&gt; I got this warning:<br>
&gt; WARNING: /home/amacho/poky/meta/<wbr>recipes-kernel/linux/linux-<wbr>y=
octo_4.4.bb.do_kernel_<wbr>configme is tainted from a forced run<br>
&gt; but the kernel is not compiled with the new config (I do md5 to<br>
&gt; vmlinuz and was exactly the same).<br>
&gt;<br>
&gt; Can you help me to find the way I can compile this kernel?<br>
&gt;<br>
&gt; Thank you<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
<br>
<br>
</font></span></blockquote></div><br></div>

--001a114ddc02e9bcab054bf19e0e--
