Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 813F0E00B28; Thu,  6 Jul 2017 01:30:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D6FCE00AE4
	for <yocto@yoctoproject.org>; Thu,  6 Jul 2017 01:30:32 -0700 (PDT)
Received: by mail-it0-f51.google.com with SMTP id m84so110751148ita.0
	for <yocto@yoctoproject.org>; Thu, 06 Jul 2017 01:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=d/XClgXyVbAarAtRVtTRDynLZhJRmkKS0iBvJAVhiv4=;
	b=FztXwC5YYJU6LgOiQkVlaj6CsMMIvsjQA6gtigAe1lEbp4q6b08fA25C01WKWOE/V8
	C5KNDWtSWsUtJzQuRIa/j4gGK3nIc0Dzc6QUs2m8dU/LPIY3CCjhvy/bqnfT1K6HHYia
	cEvEoRjmKi3vaFjOZLBZv0FzhsLWFtL+SutciPSO0sDB/B+7+AEEVn2FF/jrFJ5E/t9f
	XqmRYg2T8egwsjr+zMKOE9DxD2XNFcZkQPcYKc3pzWyexoD3ZVKRTecgnczfGzDrCIrq
	LUl+hNk3YsL3EOe6DsHNHxiDYPNhOteLpVWoj98dLMaoEb6pmnOxW8zfKt1S17NukBiJ
	LfwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=d/XClgXyVbAarAtRVtTRDynLZhJRmkKS0iBvJAVhiv4=;
	b=nEce3oxkDuRGhJMr/bXTR5GHfylQMlVlh4fXRAk0suLNh2KdkmHJsH2YM5EQc6L2Tp
	NaS6W7ynDZazsqeEL3bifHiqRX1eQPpBHmBO6iTKnhy8tK+KZ089oh2UTz6I9CCBEkby
	T5tmD7LT5nad4Yl3w1m5auFOLTuwsm0EryfSLVlw+HHT6pjzy9H/GyEA/+2QjRK1to/I
	rR2ANaFu5qZRUJAi/NcZVZB1cCVfyx+XRFpEQpiqGXkEvLX9vB/RoGz8I4uMU7KlZKig
	Lb//IH0Ugn8gKX9grMOLCL1KxdtFSZirs+6KyEAUejNfji0ZAk7B3w5+0ty6H6+qR+Pr
	RXvw==
X-Gm-Message-State: AKS2vOwttstseQzgdJXhlCKyhZvGI8WqoUCs4mBrek80iV1TX0j3ub1g
	uFQv7FBr7WkLxF0shUGl/f7CbCdPjw1H
X-Received: by 10.107.9.139 with SMTP id 11mr45714986ioj.38.1499329831484;
	Thu, 06 Jul 2017 01:30:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.44.87 with HTTP; Thu, 6 Jul 2017 01:30:00 -0700 (PDT)
In-Reply-To: <CABaDK3VRdK9jYdD0gzoDGwtOV2HOOr_+y5KibWUBYzKE6XhM7g@mail.gmail.com>
References: <CABaDK3VRdK9jYdD0gzoDGwtOV2HOOr_+y5KibWUBYzKE6XhM7g@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 6 Jul 2017 11:30:00 +0300
Message-ID: <CAHiDW_EKjJqXUfxHJwwcwnGiBd0GzBtJGafxJV_D0Yy=8c1H4Q@mail.gmail.com>
To: Joseph Ngigi <jngigiw@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: xorg-xserver and gtk+3 do_configure fail in poky-pyro
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
X-List-Received-Date: Thu, 06 Jul 2017 08:30:33 -0000
Content-Type: multipart/alternative; boundary="001a113fb58a01f8af0553a1ee25"

--001a113fb58a01f8af0553a1ee25
Content-Type: text/plain; charset="UTF-8"

On 5 July 2017 at 17:10, Joseph Ngigi <jngigiw@gmail.com> wrote:
> | checking for GDK_DEP... no
> | configure: error: Package requirements (pango pangocairo gdk-pixbuf-2.0
>= 2.30.0 cairo >= 1.14.0 cairo-gobject >= 1.14.0 gio-unix-2.0 >= 2.49.4
fontconfig x11 xext xi xrandr xcursor xfixes xcomposite xdamage
wayland-client >= 1.9.91 wayland-protocols >= 1.7 xkbcommon >= 0.2.0
wayland-cursor >= 1.9.91 wayland-egl   cairo-xlib cairo epoxy >= 1.0) were
not met:
> |
> | No package 'wayland-egl' found

This could be a bug in gtk+3 recipe when using something else than mesa:
The wayland packageconfig depends on "virtual/mesa" when it maybe needs
"virtual-egl" instead -- what it's really looking for wayland-egl.pc (which
is normally provided by mesa but I guess on your system it's something
else).

As an aside I have to admit the definitions of our various
virtual-whatevers are not clear to me at all... Is this something we could
reasonably document better ?


> | checking for GLAMOR... yes
> | checking for GBM... no
> | configure: error: Glamor for Xorg requires gbm >= 10.2.0

Here the glamor packageconfig seems to be missing a dependency on something
that provides libgbm (again we probably don't normally notice this because
the provider is mesa). My guess is that "virtual/libgl" _usually_ provides
libgbm, so adding that to glamor packageconfig dependencies might be a fix.


HTH,
 Jussi

--001a113fb58a01f8af0553a1ee25
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 5 July 2017 at 17:10, Joseph Ngigi &lt;<a href=3D"mailt=
o:jngigiw@gmail.com">jngigiw@gmail.com</a>&gt; wrote:<br>&gt; | checking fo=
r GDK_DEP... no<br>&gt; | configure: error: Package requirements (pango pan=
gocairo gdk-pixbuf-2.0 &gt;=3D 2.30.0 cairo &gt;=3D 1.14.0 cairo-gobject &g=
t;=3D 1.14.0 gio-unix-2.0 &gt;=3D 2.49.4 fontconfig x11 xext xi xrandr xcur=
sor xfixes xcomposite xdamage wayland-client &gt;=3D 1.9.91 wayland-protoco=
ls &gt;=3D 1.7 xkbcommon &gt;=3D 0.2.0 wayland-cursor &gt;=3D 1.9.91 waylan=
d-egl =C2=A0 cairo-xlib cairo epoxy &gt;=3D 1.0) were not met:<br>&gt; |<br=
>&gt; | No package &#39;wayland-egl&#39; found<br><br>This could be a bug i=
n gtk+3 recipe when using something else than mesa: The wayland packageconf=
ig depends on &quot;virtual/mesa&quot; when it maybe needs &quot;virtual-eg=
l&quot; instead -- what it&#39;s really looking for wayland-egl.pc (which i=
s normally provided by mesa but I guess on your system it&#39;s something e=
lse).<br><br>As an aside I have to admit the definitions of our various vir=
tual-whatevers are not clear to me at all... Is this something we could rea=
sonably document better ?<br><br><br>&gt; | checking for GLAMOR... yes<br>&=
gt; | checking for GBM... no<br>&gt; | configure: error: Glamor for Xorg re=
quires gbm &gt;=3D 10.2.0<br><br><div>Here the glamor packageconfig seems t=
o be missing a dependency on something that provides libgbm (again we proba=
bly don&#39;t normally notice this because the provider is mesa). My guess =
is that &quot;virtual/libgl&quot; _usually_ provides libgbm, so adding that=
 to glamor packageconfig dependencies might be a fix.</div><div><br></div><=
div><br></div><div>HTH,=C2=A0</div><div>=C2=A0Jussi</div></div>

--001a113fb58a01f8af0553a1ee25--
