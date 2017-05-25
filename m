Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A78EE00724; Thu, 25 May 2017 01:49:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A74B5E009A0;
	Thu, 25 May 2017 01:49:00 -0700 (PDT)
Received: by mail-ua0-f173.google.com with SMTP id j17so111291535uag.3;
	Thu, 25 May 2017 01:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Zrbq3O8ITzsg8lXbxVyTXxeohExMc2PLd+m9yNfKAWw=;
	b=VVmqR/AqMKbx95COn0p1yMTuQGyL9FxYV8GIcOIVzrpgrR72Z8oKZAeq8Kl/pbdZ7P
	SixSfiCUp/uJAnEbdT5A7aoAJscqLVZ7NR95vhsOsMbuesegjlHZrHyseyKLSMQGpNnH
	7+BxtaX3WzPvJoQCBW23oNyt0SwAGm1EMaK7EkUNR1rjr3xgXNihE7qZ/uOHUUnCSl+I
	iAb+VnLYSRtJWwa26OjWz87jy+qmtp3mO+PKdEvOQhzO0OFz5wUElqZr4xtmjlvAgePZ
	rogAHR4d5EC+q35do7/xWjYYev/ZChsNyeVgr1DKZHEeeiDL8pEgwNxaEMF8Q1iE41tu
	m/Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Zrbq3O8ITzsg8lXbxVyTXxeohExMc2PLd+m9yNfKAWw=;
	b=ZchhZL4HhcMvX7rMWrEZZrbTD8HjzznJyMMlUIHsg/ZtJzHJreCs9S0IN4qKSslUOC
	C6J7jmn+D7i5b4q8KkPxYnDLWDe59gDz6yUg5Mc1PTvm+aOD54RYTSOPP1AlrkfiEPsw
	5+PxKij7gKIokZhWXw+/ZYIRAOj7jbzDWYwtfxSPh40BpwvJ/UTxd3A3wxsIi3M12t1V
	K77yB7ZXftJDcarmatebMl4Ga9gcaWP8IiweIpHJO6C7oD75hFW4lqLs4tzItOCW1pmw
	oufxj51jXkZg8Oi0KOPRVVLSVk4GLj/CZhKbPSEs/yPolbxG+skeHh+5IAjAJP5kuAMr
	cd4Q==
X-Gm-Message-State: AODbwcCiYhZjuNCmdIFMdItqo/R17DgyAM1IRUddQGS7gOHh/5aorM1J
	Rr5ji9wECqohvzvJh2DdUBbWs8yZiyglyuU=
X-Received: by 10.159.37.105 with SMTP id 96mr21139124uaz.92.1495702139262;
	Thu, 25 May 2017 01:48:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.199 with HTTP; Thu, 25 May 2017 01:48:58 -0700 (PDT)
In-Reply-To: <CAHUNapRGHVwA5agFkp26Vv46qQbyDXYdhvR=wxdU-bAYifS0Eg@mail.gmail.com>
References: <CAHUNapSYmEfVLLdLE4_Nr8XEJt830R5cvHMrcnsohYF5sXSaVw@mail.gmail.com>
	<CAHUNapRGHVwA5agFkp26Vv46qQbyDXYdhvR=wxdU-bAYifS0Eg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 25 May 2017 04:48:58 -0400
Message-ID: <CAHUNapR=ucND-LTtiGgPGMCpXc_WRJwWOSFPeJ6LMwC40_zhHQ@mail.gmail.com>
To: meta-freescale <meta-freescale@yoctoproject.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: etnaviv image
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
X-List-Received-Date: Thu, 25 May 2017 08:49:03 -0000
Content-Type: text/plain; charset="UTF-8"

w00t!!

It took a lot of hacking, but I was able to build and run an image for
the wandboard dual that uses etnaviv :-D

Patches to follow.

I now have 4 dev boards using open-source graphics:
1) rpi3-32 with vc4
2) dragonboard-410c with freedreno
3) minnow (turbot) with Intel's stuff
4) wandboard with etnaviv

glmark2-es2:

root@wandboard:~# glmark2-es2; cat /proc/loadavg
=======================================================
    glmark2 2014.03
=======================================================
    OpenGL Information
    GL_VENDOR:     etnaviv
    GL_RENDERER:   Gallium 0.4 on Vivante GC880 rev 5106
    GL_VERSION:    OpenGL ES 2.0 Mesa 17.0.4
=======================================================
[build] use-vbo=false: FPS: 69 FrameTime: 14.493 ms
[build] use-vbo=true: FPS: 80 FrameTime: 12.500 ms
[texture] texture-filter=nearest: FPS: 68 FrameTime: 14.706 ms
[texture] texture-filter=linear: FPS: 68 FrameTime: 14.706 ms
[texture] texture-filter=mipmap: FPS: 66 FrameTime: 15.152 ms
[shading] shading=gouraud: FPS: 70 FrameTime: 14.286 ms
[shading] shading=blinn-phong-inf: FPS: 61 FrameTime: 16.393 ms
[shading] shading=phong: FPS: 47 FrameTime: 21.277 ms
[shading] shading=cel: FPS: 39 FrameTime: 25.641 ms
[bump] bump-render=high-poly: FPS: 52 FrameTime: 19.231 ms
[bump] bump-render=normals: FPS: 67 FrameTime: 14.925 ms
[bump] bump-render=height: FPS: 60 FrameTime: 16.667 ms
libpng warning: iCCP: known incorrect sRGB profile
[effect2d] kernel=0,1,0;1,-4,1;0,1,0;: FPS: 32 FrameTime: 31.250 ms
libpng warning: iCCP: known incorrect sRGB profile
[effect2d] kernel=1,1,1,1,1;1,1,1,1,1;1,1,1,1,1;: FPS: 14 FrameTime: 71.429 ms
[pulsar] light=false:quads=5:texture=false: FPS: 61 FrameTime: 16.393 ms
libpng warning: iCCP: known incorrect sRGB profile
Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
[desktop] blur-radius=5:effect=blur:passes=1:separable=true:windows=4:
FPS: 67 FrameTime: 14.925 ms
Error: RenderObject::init: glCheckFramebufferStatus failed (0x8cdd)
libpng warning: iCCP: known incorrect sRGB profile
Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
[desktop] effect=shadow:windows=4: FPS: 68 FrameTime: 14.706 ms
[buffer] columns=200:interleave=false:update-dispersion=0.9:update-fraction=0.5:update-method=map:
FPS: 29 FrameTime: 34.483 ms
[buffer] columns=200:interleave=false:update-dispersion=0.9:update-fraction=0.5:update-method=subdata:
FPS: 29 FrameTime: 34.483 ms
[buffer] columns=200:interleave=true:update-dispersion=0.9:update-fraction=0.5:update-method=map:
FPS: 31 FrameTime: 32.258 ms
[ideas] speed=duration:[ 2797.051681] etnaviv-gpu 130000.gpu:
hangcheck detected gpu lockup!
[ 2797.059575] etnaviv-gpu 130000.gpu:      completed fence: 50513
[ 2797.065622] etnaviv-gpu 130000.gpu:      active fence: 50514
[ 2797.072346] etnaviv-gpu 130000.gpu: hangcheck recover!
[ 2800.011603] etnaviv-gpu 130000.gpu: hangcheck detected gpu lockup!
[ 2800.017890] etnaviv-gpu 130000.gpu:      completed fence: 50514
[ 2800.023895] etnaviv-gpu 130000.gpu:      active fence: 50515
[ 2800.029752] etnaviv-gpu 130000.gpu: hangcheck recover!
[ 2803.051591] etnaviv-gpu 130000.gpu: hangcheck detected gpu lockup!
[ 2803.057899] etnaviv-gpu 130000.gpu:      completed fence: 50516
[ 2803.063874] etnaviv-gpu 130000.gpu:      active fence: 50518
[ 2803.069702] etnaviv-gpu 130000.gpu: hangcheck recover!
[ 2805.531626] etnaviv-gpu 130000.gpu: hangcheck detected gpu lockup!
[ 2805.537973] etnaviv-gpu 130000.gpu:      completed fence: 50518
[ 2805.544052] etnaviv-gpu 130000.gpu:      active fence: 50520
[ 2805.551826] etnaviv-gpu 130000.gpu: hangcheck recover!
 FPS: 0 FrameTime: inf ms
[jellyfish] <default>: FPS: 28 FrameTime: 35.714 ms
[terrain] <default>: FPS: 2 FrameTime: 500.000 ms
[shadow] <default>: FPS: 30 FrameTime: 33.333 ms
Error: DistanceRenderTarget::setup: glCheckFramebufferStatus failed (0x8cdd)
Error: Failed to set up the render target for the depth pass
[refract] <default>: Set up failed
[conditionals] fragment-steps=0:vertex-steps=0: FPS: 61 FrameTime: 16.393 ms
[conditionals] fragment-steps=5:vertex-steps=0: FPS: 31 FrameTime: 32.258 ms
[conditionals] fragment-steps=0:vertex-steps=5: FPS: 62 FrameTime: 16.129 ms
[function] fragment-complexity=low:fragment-steps=5: FPS: 46
FrameTime: 21.739 ms
[function] fragment-complexity=medium:fragment-steps=5: FPS: 29
FrameTime: 34.483 ms
[loop] fragment-loop=false:fragment-steps=5:vertex-steps=5: FPS: 45
FrameTime: 22.222 ms
[loop] fragment-steps=5:fragment-uniform=false:vertex-steps=5: FPS: 45
FrameTime: 22.222 ms
[loop] fragment-steps=5:fragment-uniform=true:vertex-steps=5: FPS: 29
FrameTime: 34.483 ms
=======================================================
                                  glmark2 Score: 46
=======================================================
0.46 0.24 0.09 1/98 621


not the greatest results, a couple crashes, but better than swrast!

