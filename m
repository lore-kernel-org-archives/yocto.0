Return-Path: <stephen.arnold42@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 060E0E00C74; Fri, 26 May 2017 16:24:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stephen.arnold42[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFF52E00C70;
	Fri, 26 May 2017 16:23:55 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id b204so29865028oii.1;
	Fri, 26 May 2017 16:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kFvSv48wZwTyiBn7DZfdudQ5MLm5VGLLukdqFX+Weks=;
	b=RjwPmYF+UCIdHpxrTl2PY1mTC6PLKmCcGX0Q8/lpXwqhnHwyk82QGASbe29+bJuDN2
	Xq+QFaMvqgIGYHdK5J+rIJegdZ3C1KxF4MJ12toXUPXfzI4NzX7k16+rZ17igoviVeua
	eRfOCx99vFBQ3u/htUBXIqmeSa3anIcVGpYfud/0++Bn4VLsUhXjaY/I3azdDJMJrWxk
	oDw2ZDLsck31ZbN16gd2QWhe8KI0OXgC+VMCUXcVizahPcrlkMzxRLwKojgkcZ73QOMG
	hyFwfEqHzyB4dDohv2hHX7l/LsXq8fttJGTHc7iwDRV+bZbTQdAnUZwXbLwaJ17ZlES7
	oX1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kFvSv48wZwTyiBn7DZfdudQ5MLm5VGLLukdqFX+Weks=;
	b=L9OIgbX15s7bNFMJi9oqaysoMixyMDZ4CEZR8r1izYge2eeE2++yBNkxm7a7Iu2ruI
	7dbgUMl9rSMfkSK9pTNawMpRns/4kpvHyAlyT2ti+SKhia8M0h/qp4QbOjPlHffCr8UM
	F2VsmUa9PPC6t2uzEOsAibilzYGYbI6qrxFTssfyulrKHhtLgwmuVtvaOpoO9VNcb2AK
	aVk/LyJW458zxzMfXXPZ2ZxKOriJ7d3KBzL8nvV9gLjlqUusEkaDNdz3ptOCrwSJYVuy
	5OKq4EvpgHjaAuvya/FVt5X9cLyq65ul7d1W2iDd2ihQgcvSX7oh/Wzl1LPVvXFky2r7
	1BAA==
X-Gm-Message-State: AODbwcBDKGId7NzQLyyUDDXupaD/6W9JroIpd1djVgtjhxUoOhqiyNjJ
	EH7suJbR4ukYt3o/wLyF6x3ZuPP51bzB
X-Received: by 10.157.68.150 with SMTP id v22mr2015320ote.250.1495841035050;
	Fri, 26 May 2017 16:23:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.61.82 with HTTP; Fri, 26 May 2017 16:23:54 -0700 (PDT)
In-Reply-To: <CALbNGRTyPU74ipKJwuZpVP+btn7vcca-QJQxUNun8JLSQ0yMgA@mail.gmail.com>
References: <CAHUNapSYmEfVLLdLE4_Nr8XEJt830R5cvHMrcnsohYF5sXSaVw@mail.gmail.com>
	<CAHUNapRGHVwA5agFkp26Vv46qQbyDXYdhvR=wxdU-bAYifS0Eg@mail.gmail.com>
	<CAHUNapR=ucND-LTtiGgPGMCpXc_WRJwWOSFPeJ6LMwC40_zhHQ@mail.gmail.com>
	<CALbNGRTyPU74ipKJwuZpVP+btn7vcca-QJQxUNun8JLSQ0yMgA@mail.gmail.com>
From: Stephen Arnold <stephen.arnold42@gmail.com>
Date: Fri, 26 May 2017 16:23:54 -0700
Message-ID: <CAOLEWZU7Jj+gSoh-gdTSDd9fvYC5Kb2VpTKkeDv7h5PccLsTgQ@mail.gmail.com>
To: meta-freescale <meta-freescale@yoctoproject.org>
X-Mailman-Approved-At: Sat, 27 May 2017 09:46:50 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] etnaviv image
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
X-List-Received-Date: Fri, 26 May 2017 23:24:00 -0000
Content-Type: multipart/alternative; boundary="f4030435397c88e63b055075a133"

--f4030435397c88e63b055075a133
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

@Trevor what's your config/setup?  Did you wind up using the
"use-mainline-bsp" thing?

I pretty much had to hack up some of the meta-fsl/meta-boundary stuff and
put everything else in local.conf.  It would be a little easier/cleaner if
the former had some ?=3D in a few places...

Anyway, I masked the browser stuff so I haven't tested that far yet, but
all you really need for 3D under X is new kernel/libdrm/mesa for ~110 fps
with glxgears.  I added recipes for the x11-armada stuff, which seems to
work for 2D but coughs an error in the xorg log.  I probably tested more
with oe-core than poky but both should work.

Anyway, my stuff is also on github, with a manifest repo for boundary
devices/fsl that should point to the hacks in VCT forks:

https://github.com/VCTLabs/vct-boundary-bsp-platform

https://github.com/sarnold/meta-small-arm-extra

Sample boundary conf files are in the second one ^^

Steve

On Thu, May 25, 2017 at 6:17 AM, Andreas M=C3=BCller <
schnitzeltony@googlemail.com> wrote:

> On Thu, May 25, 2017 at 10:48 AM, Trevor Woerner <twoerner@gmail.com>
> wrote:
> > w00t!!
> >
> > It took a lot of hacking, but I was able to build and run an image for
> > the wandboard dual that uses etnaviv :-D
> >
> > Patches to follow.
> >
> > I now have 4 dev boards using open-source graphics:
> > 1) rpi3-32 with vc4
> > 2) dragonboard-410c with freedreno
> > 3) minnow (turbot) with Intel's stuff
> > 4) wandboard with etnaviv
> >
> > glmark2-es2:
> >
> > root@wandboard:~# glmark2-es2; cat /proc/loadavg
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> >     glmark2 2014.03
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> >     OpenGL Information
> >     GL_VENDOR:     etnaviv
> >     GL_RENDERER:   Gallium 0.4 on Vivante GC880 rev 5106
> >     GL_VERSION:    OpenGL ES 2.0 Mesa 17.0.4
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> > [build] use-vbo=3Dfalse: FPS: 69 FrameTime: 14.493 ms
> > [build] use-vbo=3Dtrue: FPS: 80 FrameTime: 12.500 ms
> > [texture] texture-filter=3Dnearest: FPS: 68 FrameTime: 14.706 ms
> > [texture] texture-filter=3Dlinear: FPS: 68 FrameTime: 14.706 ms
> > [texture] texture-filter=3Dmipmap: FPS: 66 FrameTime: 15.152 ms
> > [shading] shading=3Dgouraud: FPS: 70 FrameTime: 14.286 ms
> > [shading] shading=3Dblinn-phong-inf: FPS: 61 FrameTime: 16.393 ms
> > [shading] shading=3Dphong: FPS: 47 FrameTime: 21.277 ms
> > [shading] shading=3Dcel: FPS: 39 FrameTime: 25.641 ms
> > [bump] bump-render=3Dhigh-poly: FPS: 52 FrameTime: 19.231 ms
> > [bump] bump-render=3Dnormals: FPS: 67 FrameTime: 14.925 ms
> > [bump] bump-render=3Dheight: FPS: 60 FrameTime: 16.667 ms
> > libpng warning: iCCP: known incorrect sRGB profile
> > [effect2d] kernel=3D0,1,0;1,-4,1;0,1,0;: FPS: 32 FrameTime: 31.250 ms
> > libpng warning: iCCP: known incorrect sRGB profile
> > [effect2d] kernel=3D1,1,1,1,1;1,1,1,1,1;1,1,1,1,1;: FPS: 14 FrameTime:
> 71.429 ms
> > [pulsar] light=3Dfalse:quads=3D5:texture=3Dfalse: FPS: 61 FrameTime: 16=
.393 ms
> > libpng warning: iCCP: known incorrect sRGB profile
> > Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> > Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> > Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> > Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> > Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> > Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> > [desktop] blur-radius=3D5:effect=3Dblur:passes=3D1:separable=3Dtrue:win=
dows=3D4:
> > FPS: 67 FrameTime: 14.925 ms
> > Error: RenderObject::init: glCheckFramebufferStatus failed (0x8cdd)
> > libpng warning: iCCP: known incorrect sRGB profile
> > Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> > Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> > Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> > Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> > Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> > Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> > Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> > Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> > [desktop] effect=3Dshadow:windows=3D4: FPS: 68 FrameTime: 14.706 ms
> > [buffer] columns=3D200:interleave=3Dfalse:update-dispersion=3D0.9:updat=
e-
> fraction=3D0.5:update-method=3Dmap:
> > FPS: 29 FrameTime: 34.483 ms
> > [buffer] columns=3D200:interleave=3Dfalse:update-dispersion=3D0.9:updat=
e-
> fraction=3D0.5:update-method=3Dsubdata:
> > FPS: 29 FrameTime: 34.483 ms
> > [buffer] columns=3D200:interleave=3Dtrue:update-dispersion=3D0.9:update=
-
> fraction=3D0.5:update-method=3Dmap:
> > FPS: 31 FrameTime: 32.258 ms
> > [ideas] speed=3Dduration:[ 2797.051681] etnaviv-gpu 130000.gpu:
> > hangcheck detected gpu lockup!
> > [ 2797.059575] etnaviv-gpu 130000.gpu:      completed fence: 50513
> > [ 2797.065622] etnaviv-gpu 130000.gpu:      active fence: 50514
> > [ 2797.072346] etnaviv-gpu 130000.gpu: hangcheck recover!
> > [ 2800.011603] etnaviv-gpu 130000.gpu: hangcheck detected gpu lockup!
> > [ 2800.017890] etnaviv-gpu 130000.gpu:      completed fence: 50514
> > [ 2800.023895] etnaviv-gpu 130000.gpu:      active fence: 50515
> > [ 2800.029752] etnaviv-gpu 130000.gpu: hangcheck recover!
> > [ 2803.051591] etnaviv-gpu 130000.gpu: hangcheck detected gpu lockup!
> > [ 2803.057899] etnaviv-gpu 130000.gpu:      completed fence: 50516
> > [ 2803.063874] etnaviv-gpu 130000.gpu:      active fence: 50518
> > [ 2803.069702] etnaviv-gpu 130000.gpu: hangcheck recover!
> > [ 2805.531626] etnaviv-gpu 130000.gpu: hangcheck detected gpu lockup!
> > [ 2805.537973] etnaviv-gpu 130000.gpu:      completed fence: 50518
> > [ 2805.544052] etnaviv-gpu 130000.gpu:      active fence: 50520
> > [ 2805.551826] etnaviv-gpu 130000.gpu: hangcheck recover!
> >  FPS: 0 FrameTime: inf ms
> > [jellyfish] <default>: FPS: 28 FrameTime: 35.714 ms
> > [terrain] <default>: FPS: 2 FrameTime: 500.000 ms
> > [shadow] <default>: FPS: 30 FrameTime: 33.333 ms
> > Error: DistanceRenderTarget::setup: glCheckFramebufferStatus failed
> (0x8cdd)
> > Error: Failed to set up the render target for the depth pass
> > [refract] <default>: Set up failed
> > [conditionals] fragment-steps=3D0:vertex-steps=3D0: FPS: 61 FrameTime:
> 16.393 ms
> > [conditionals] fragment-steps=3D5:vertex-steps=3D0: FPS: 31 FrameTime:
> 32.258 ms
> > [conditionals] fragment-steps=3D0:vertex-steps=3D5: FPS: 62 FrameTime:
> 16.129 ms
> > [function] fragment-complexity=3Dlow:fragment-steps=3D5: FPS: 46
> > FrameTime: 21.739 ms
> > [function] fragment-complexity=3Dmedium:fragment-steps=3D5: FPS: 29
> > FrameTime: 34.483 ms
> > [loop] fragment-loop=3Dfalse:fragment-steps=3D5:vertex-steps=3D5: FPS: =
45
> > FrameTime: 22.222 ms
> > [loop] fragment-steps=3D5:fragment-uniform=3Dfalse:vertex-steps=3D5: FP=
S: 45
> > FrameTime: 22.222 ms
> > [loop] fragment-steps=3D5:fragment-uniform=3Dtrue:vertex-steps=3D5: FPS=
: 29
> > FrameTime: 34.483 ms
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> >                                   glmark2 Score: 46
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> > 0.46 0.24 0.09 1/98 621
> >
> >
> > not the greatest results, a couple crashes, but better than swrast!
> Very interesting. If I remember correct, there were further
> enhancements for mesa 17.1.x on etnaviv - so keep going. There was a
> patch for 17.1.0 on oe-core but that one was rejected (the x.x.0
> versions are marked as development release)
>
> Just an information don't want to stop your enthusiasm: With closed
> source BLOB and X11 the values for glmark-es2 were 250-260 last time I
> tested in imx6 (variscite board).
>
> Best regards
>
> Andreas
> --
> _______________________________________________
> meta-freescale mailing list
> meta-freescale@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-freescale
>

--f4030435397c88e63b055075a133
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>@Trevor what&#39;s your config/se=
tup?=C2=A0 Did you wind up using the &quot;use-mainline-bsp&quot; thing?<br=
><br></div>I pretty much had to hack up some of the meta-fsl/meta-boundary =
stuff and put everything else in local.conf.=C2=A0 It would be a little eas=
ier/cleaner if the former had some ?=3D in a few places...<br><br></div>Any=
way, I masked the browser stuff so I haven&#39;t tested that far yet, but a=
ll you really need for 3D under X is new kernel/libdrm/mesa for ~110 fps wi=
th glxgears.=C2=A0 I added recipes for the x11-armada stuff, which seems to=
 work for 2D but coughs an error in the xorg log.=C2=A0 I probably tested m=
ore with oe-core than poky but both should work.<br><br></div>Anyway, my st=
uff is also on github, with a manifest repo for boundary devices/fsl that s=
hould point to the hacks in VCT forks:<br><br><a href=3D"https://github.com=
/VCTLabs/vct-boundary-bsp-platform">https://github.com/VCTLabs/vct-boundary=
-bsp-platform</a><br><br><a href=3D"https://github.com/sarnold/meta-small-a=
rm-extra">https://github.com/sarnold/meta-small-arm-extra</a><br><br></div>=
Sample boundary conf files are in the second one ^^<br><br></div>Steve<br><=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, May =
25, 2017 at 6:17 AM, Andreas M=C3=BCller <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:schnitzeltony@googlemail.com" target=3D"_blank">schnitzeltony@googlem=
ail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=
=3D"HOEnZb"><div class=3D"h5">On Thu, May 25, 2017 at 10:48 AM, Trevor Woer=
ner &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; wr=
ote:<br>
&gt; w00t!!<br>
&gt;<br>
&gt; It took a lot of hacking, but I was able to build and run an image for=
<br>
&gt; the wandboard dual that uses etnaviv :-D<br>
&gt;<br>
&gt; Patches to follow.<br>
&gt;<br>
&gt; I now have 4 dev boards using open-source graphics:<br>
&gt; 1) rpi3-32 with vc4<br>
&gt; 2) dragonboard-410c with freedreno<br>
&gt; 3) minnow (turbot) with Intel&#39;s stuff<br>
&gt; 4) wandboard with etnaviv<br>
&gt;<br>
&gt; glmark2-es2:<br>
&gt;<br>
&gt; root@wandboard:~# glmark2-es2; cat /proc/loadavg<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0glmark2 2014.03<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0OpenGL Information<br>
&gt;=C2=A0 =C2=A0 =C2=A0GL_VENDOR:=C2=A0 =C2=A0 =C2=A0etnaviv<br>
&gt;=C2=A0 =C2=A0 =C2=A0GL_RENDERER:=C2=A0 =C2=A0Gallium 0.4 on Vivante GC8=
80 rev 5106<br>
&gt;=C2=A0 =C2=A0 =C2=A0GL_VERSION:=C2=A0 =C2=A0 OpenGL ES 2.0 Mesa 17.0.4<=
br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; [build] use-vbo=3Dfalse: FPS: 69 FrameTime: 14.493 ms<br>
&gt; [build] use-vbo=3Dtrue: FPS: 80 FrameTime: 12.500 ms<br>
&gt; [texture] texture-filter=3Dnearest: FPS: 68 FrameTime: 14.706 ms<br>
&gt; [texture] texture-filter=3Dlinear: FPS: 68 FrameTime: 14.706 ms<br>
&gt; [texture] texture-filter=3Dmipmap: FPS: 66 FrameTime: 15.152 ms<br>
&gt; [shading] shading=3Dgouraud: FPS: 70 FrameTime: 14.286 ms<br>
&gt; [shading] shading=3Dblinn-phong-inf: FPS: 61 FrameTime: 16.393 ms<br>
&gt; [shading] shading=3Dphong: FPS: 47 FrameTime: 21.277 ms<br>
&gt; [shading] shading=3Dcel: FPS: 39 FrameTime: 25.641 ms<br>
&gt; [bump] bump-render=3Dhigh-poly: FPS: 52 FrameTime: 19.231 ms<br>
&gt; [bump] bump-render=3Dnormals: FPS: 67 FrameTime: 14.925 ms<br>
&gt; [bump] bump-render=3Dheight: FPS: 60 FrameTime: 16.667 ms<br>
&gt; libpng warning: iCCP: known incorrect sRGB profile<br>
&gt; [effect2d] kernel=3D0,1,0;1,-4,1;0,1,0;: FPS: 32 FrameTime: 31.250 ms<=
br>
&gt; libpng warning: iCCP: known incorrect sRGB profile<br>
&gt; [effect2d] kernel=3D1,1,1,1,1;1,1,1,1,1;1,<wbr>1,1,1,1;: FPS: 14 Frame=
Time: 71.429 ms<br>
&gt; [pulsar] light=3Dfalse:quads=3D5:texture=3D<wbr>false: FPS: 61 FrameTi=
me: 16.393 ms<br>
&gt; libpng warning: iCCP: known incorrect sRGB profile<br>
&gt; Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)<br=
>
&gt; Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)<br=
>
&gt; Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)<br=
>
&gt; Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)<br=
>
&gt; Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)<br=
>
&gt; Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)<br=
>
&gt; [desktop] blur-radius=3D5:effect=3Dblur:<wbr>passes=3D1:separable=3Dtr=
ue:<wbr>windows=3D4:<br>
&gt; FPS: 67 FrameTime: 14.925 ms<br>
&gt; Error: RenderObject::init: glCheckFramebufferStatus failed (0x8cdd)<br=
>
&gt; libpng warning: iCCP: known incorrect sRGB profile<br>
&gt; Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)<br=
>
&gt; Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)<br=
>
&gt; Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)<br=
>
&gt; Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)<br=
>
&gt; Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)<br=
>
&gt; Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)<br=
>
&gt; Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)<br=
>
&gt; Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)<br=
>
&gt; [desktop] effect=3Dshadow:windows=3D4: FPS: 68 FrameTime: 14.706 ms<br=
>
&gt; [buffer] columns=3D200:interleave=3Dfalse:<wbr>update-dispersion=3D0.9=
:update-<wbr>fraction=3D0.5:update-method=3D<wbr>map:<br>
&gt; FPS: 29 FrameTime: 34.483 ms<br>
&gt; [buffer] columns=3D200:interleave=3Dfalse:<wbr>update-dispersion=3D0.9=
:update-<wbr>fraction=3D0.5:update-method=3D<wbr>subdata:<br>
&gt; FPS: 29 FrameTime: 34.483 ms<br>
&gt; [buffer] columns=3D200:interleave=3Dtrue:<wbr>update-dispersion=3D0.9:=
update-<wbr>fraction=3D0.5:update-method=3D<wbr>map:<br>
&gt; FPS: 31 FrameTime: 32.258 ms<br>
&gt; [ideas] speed=3Dduration:[ 2797.051681] etnaviv-gpu 130000.gpu:<br>
&gt; hangcheck detected gpu lockup!<br>
&gt; [ 2797.059575] etnaviv-gpu 130000.gpu:=C2=A0 =C2=A0 =C2=A0 completed f=
ence: 50513<br>
&gt; [ 2797.065622] etnaviv-gpu 130000.gpu:=C2=A0 =C2=A0 =C2=A0 active fenc=
e: 50514<br>
&gt; [ 2797.072346] etnaviv-gpu 130000.gpu: hangcheck recover!<br>
&gt; [ 2800.011603] etnaviv-gpu 130000.gpu: hangcheck detected gpu lockup!<=
br>
&gt; [ 2800.017890] etnaviv-gpu 130000.gpu:=C2=A0 =C2=A0 =C2=A0 completed f=
ence: 50514<br>
&gt; [ 2800.023895] etnaviv-gpu 130000.gpu:=C2=A0 =C2=A0 =C2=A0 active fenc=
e: 50515<br>
&gt; [ 2800.029752] etnaviv-gpu 130000.gpu: hangcheck recover!<br>
&gt; [ 2803.051591] etnaviv-gpu 130000.gpu: hangcheck detected gpu lockup!<=
br>
&gt; [ 2803.057899] etnaviv-gpu 130000.gpu:=C2=A0 =C2=A0 =C2=A0 completed f=
ence: 50516<br>
&gt; [ 2803.063874] etnaviv-gpu 130000.gpu:=C2=A0 =C2=A0 =C2=A0 active fenc=
e: 50518<br>
&gt; [ 2803.069702] etnaviv-gpu 130000.gpu: hangcheck recover!<br>
&gt; [ 2805.531626] etnaviv-gpu 130000.gpu: hangcheck detected gpu lockup!<=
br>
&gt; [ 2805.537973] etnaviv-gpu 130000.gpu:=C2=A0 =C2=A0 =C2=A0 completed f=
ence: 50518<br>
&gt; [ 2805.544052] etnaviv-gpu 130000.gpu:=C2=A0 =C2=A0 =C2=A0 active fenc=
e: 50520<br>
&gt; [ 2805.551826] etnaviv-gpu 130000.gpu: hangcheck recover!<br>
&gt;=C2=A0 FPS: 0 FrameTime: inf ms<br>
&gt; [jellyfish] &lt;default&gt;: FPS: 28 FrameTime: 35.714 ms<br>
&gt; [terrain] &lt;default&gt;: FPS: 2 FrameTime: 500.000 ms<br>
&gt; [shadow] &lt;default&gt;: FPS: 30 FrameTime: 33.333 ms<br>
&gt; Error: DistanceRenderTarget::setup: glCheckFramebufferStatus failed (0=
x8cdd)<br>
&gt; Error: Failed to set up the render target for the depth pass<br>
&gt; [refract] &lt;default&gt;: Set up failed<br>
&gt; [conditionals] fragment-steps=3D0:vertex-steps=3D<wbr>0: FPS: 61 Frame=
Time: 16.393 ms<br>
&gt; [conditionals] fragment-steps=3D5:vertex-steps=3D<wbr>0: FPS: 31 Frame=
Time: 32.258 ms<br>
&gt; [conditionals] fragment-steps=3D0:vertex-steps=3D<wbr>5: FPS: 62 Frame=
Time: 16.129 ms<br>
&gt; [function] fragment-complexity=3Dlow:<wbr>fragment-steps=3D5: FPS: 46<=
br>
&gt; FrameTime: 21.739 ms<br>
&gt; [function] fragment-complexity=3Dmedium:<wbr>fragment-steps=3D5: FPS: =
29<br>
&gt; FrameTime: 34.483 ms<br>
&gt; [loop] fragment-loop=3Dfalse:fragment-<wbr>steps=3D5:vertex-steps=3D5:=
 FPS: 45<br>
&gt; FrameTime: 22.222 ms<br>
&gt; [loop] fragment-steps=3D5:fragment-<wbr>uniform=3Dfalse:vertex-steps=
=3D5: FPS: 45<br>
&gt; FrameTime: 22.222 ms<br>
&gt; [loop] fragment-steps=3D5:fragment-<wbr>uniform=3Dtrue:vertex-steps=3D=
5: FPS: 29<br>
&gt; FrameTime: 34.483 ms<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0glmark2 Score: 46<br=
>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; 0.46 0.24 0.09 1/98 621<br>
&gt;<br>
&gt;<br>
&gt; not the greatest results, a couple crashes, but better than swrast!<br=
>
</div></div>Very interesting. If I remember correct, there were further<br>
enhancements for mesa 17.1.x on etnaviv - so keep going. There was a<br>
patch for 17.1.0 on oe-core but that one was rejected (the x.x.0<br>
versions are marked as development release)<br>
<br>
Just an information don&#39;t want to stop your enthusiasm: With closed<br>
source BLOB and X11 the values for glmark-es2 were 250-260 last time I<br>
tested in imx6 (variscite board).<br>
<br>
Best regards<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Andreas<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5">--<br>
______________________________<wbr>_________________<br>
meta-freescale mailing list<br>
<a href=3D"mailto:meta-freescale@yoctoproject.org">meta-freescale@yoctoproj=
ect.<wbr>org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/meta-freescale" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/m=
eta-freescale</a><br>
</div></div></blockquote></div><br></div>

--f4030435397c88e63b055075a133--
