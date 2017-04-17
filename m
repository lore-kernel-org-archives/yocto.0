Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA2CAE00524; Sun, 16 Apr 2017 17:27:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0F38E00349
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 17:27:39 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id k87so117203638ioi.0
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 17:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=94BpObbIYOfufiiS6TLk03Mb2SVYQQK/zThdv2hIiEE=;
	b=QoeQXHShWIwEC8AKCk6fFtvURemR8Suu7jyGiTlRmPqBGwFXF3yU1Qvc/H22i4wJOR
	dEE4fpike7WrvySs8edYN9J+3sG5f0q2i9/nFQohAGfDyekg8ptWYpD1j+/QzaGExnb5
	vZybnswbpVjg+cspi/5iW/zYC8NQJGPuNfrSgBcg4wH4JLinI18rOrdMxhzxUi5s1Ah8
	aI7wpGFcqIgA+d5sa/yJ4x8ODZNEyApc3wRi/k4qezo9o1X4V3acr3MD07KQp7Q0fO1c
	b0y9cgj99poSL0NQ8fCzhWyrHsNo7UtkD/ud6SaFwcYXZF95FDDlf86csGM7DDMjdufb
	q/CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=94BpObbIYOfufiiS6TLk03Mb2SVYQQK/zThdv2hIiEE=;
	b=N55WuA+lzt9Z98lCdl3eaVKhdB1P8/7A3wLtucmHEoIMQNhvAEhvUkUIiSEjoWnjm7
	ErF3g3eKqiVL4cEy6e0r1sdVs4gEa+DkzzjJuOljPZibNNzj/hseY3fokd8yvRQpbNtJ
	YUZjw8ot41hplsdF51S15v0ThOSOXABAeUVKCvTwkro5cIpKZu4Y/0JXYQCb7qT1n2jL
	d4X4SdH6mrDScLVS1Mk4U+PNRQzOTijDTRZGZIIRdSb2ouYfAHE+JLsfutd35M1B3B8w
	OR909HD+sko4+kkF3IW7fmjUvkXdpRNSrh3SpR4apbfAeUTL4/nTXGA7tlWCWxpmNa8L
	7sdg==
X-Gm-Message-State: AN3rC/5Edfy1MtfndJwRfw+T0+ufI/2rVyYAXzATSEJbHDBLbVCea1F3
	FXYGImmcWW5eJnimfAw=
X-Received: by 10.36.86.2 with SMTP id o2mr7647913itb.10.1492388859189;
	Sun, 16 Apr 2017 17:27:39 -0700 (PDT)
Received: from linux-uys3 (76-10-137-103.dsl.teksavvy.com. [76.10.137.103])
	by smtp.gmail.com with ESMTPSA id 15sm773611iok.43.2017.04.16.17.27.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 17:27:38 -0700 (PDT)
Date: Sun, 16 Apr 2017 20:27:36 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Andreas =?utf-8?Q?M=C3=BCller?= <schnitzeltony@googlemail.com>
Message-ID: <20170417002736.GA5766@linux-uys3>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
	<CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
	<20170415231603.GA20857@linux-uys3>
	<CALbNGRQsCUupm4uo=OHiRoZ+4TOfBLD8aZ5Xz5f9e_fK9ZmxLA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRQsCUupm4uo=OHiRoZ+4TOfBLD8aZ5Xz5f9e_fK9ZmxLA@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Mon, 17 Apr 2017 00:27:43 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon 2017-04-17 @ 01:52:57 AM, Andreas Müller wrote:
> On Sun, Apr 16, 2017 at 1:16 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> > w00T! \O/
> >
> > Swapping out meta-raspberrypi for your meta-raspi-light works!!! I now have
> > accelerated glmark2-es2 ~40FPS :-D
> 40fps for glmark-es2 (did you mean glxgears)? The total result I get
> for Pi3 on X11 (xfce) is ~105-117 depending on cpu-governor. I don't
> know what Desktop/window manager you use but for graphics benchmarking
> you should disable compositor.

;-) haha ;-)
You couldn't just let me be happy?!
Yesterday it was running at 1FPS (*one*!! and probably less)
;-) haha ;-)

I'm using openbox, I can't imagine anything more minimal than that. But I
think I see where the difference lies. I usually run glmark2-es2 fullscreen.
When I run it in its own little window:

	root@raspberrypi3:~# glmark2-es2
	MESA-LOADER: device is not located on the PCI bus
	MESA-LOADER: device is not located on the PCI bus
	MESA-LOADER: device is not located on the PCI bus
	=======================================================
	    glmark2 2014.03
	=======================================================
	    OpenGL Information
	    GL_VENDOR:     Broadcom
	    GL_RENDERER:   Gallium 0.4 on VC4 V3D 2.1
	    GL_VERSION:    OpenGL ES 2.0 Mesa 17.0.2
	=======================================================
	[build] use-vbo=false: FPS: 126 FrameTime: 7.937 ms
	[build] use-vbo=true: FPS: 140 FrameTime: 7.143 ms
	[texture] texture-filter=nearest: FPS: 146 FrameTime: 6.849 ms
	[texture] texture-filter=linear: FPS: 141 FrameTime: 7.092 ms
	[texture] texture-filter=mipmap: FPS: 135 FrameTime: 7.407 ms
	[shading] shading=gouraud: FPS: 118 FrameTime: 8.475 ms
	[shading] shading=blinn-phong-inf: FPS: 102 FrameTime: 9.804 ms
	[shading] shading=phong: FPS: 69 FrameTime: 14.493 ms
	[shading] shading=cel: FPS: 69 FrameTime: 14.493 ms
	[bump] bump-render=high-poly: FPS: 68 FrameTime: 14.706 ms
	[bump] bump-render=normals: FPS: 154 FrameTime: 6.494 ms
	[bump] bump-render=height: FPS: 148 FrameTime: 6.757 ms
	[effect2d] kernel=0,1,0;1,-4,1;0,1,0;: FPS: 106 FrameTime: 9.434 ms
	[effect2d] kernel=1,1,1,1,1;1,1,1,1,1;1,1,1,1,1;: FPS: 71 FrameTime: 14.085 ms
	[pulsar] light=false:quads=5:texture=false: FPS: 129 FrameTime: 7.752 ms
	[desktop] blur-radius=5:effect=blur:passes=1:separable=true:windows=4: FPS: 44 FrameTime: 22.727 ms
	[desktop] effect=shadow:windows=4: FPS: 90 FrameTime: 11.111 ms
	[buffer] columns=200:interleave=false:update-dispersion=0.9:update-fraction=0.5:update-method=map: FPS: 63 FrameTime: 15.873 ms
	[buffer] columns=200:interleave=false:update-dispersion=0.9:update-fraction=0.5:update-method=subdata: FPS: 62 FrameTime: 16.129 ms
	[buffer] columns=200:interleave=true:update-dispersion=0.9:update-fraction=0.5:update-method=map: FPS: 73 FrameTime: 13.699 ms
	[ideas] speed=duration: FPS: 132 FrameTime: 7.576 ms
	[jellyfish] <default>: FPS: 98 FrameTime: 10.204 ms
	[terrain] <default>: FPS: 5 FrameTime: 200.000 ms
	[shadow] <default>: FPS: 79 FrameTime: 12.658 ms
	[refract] <default>: FPS: 20 FrameTime: 50.000 ms
	[conditionals] fragment-steps=0:vertex-steps=0: FPS: 145 FrameTime: 6.897 ms
	[conditionals] fragment-steps=5:vertex-steps=0: FPS: 124 FrameTime: 8.065 ms
	[conditionals] fragment-steps=0:vertex-steps=5: FPS: 145 FrameTime: 6.897 ms
	[function] fragment-complexity=low:fragment-steps=5: FPS: 139 FrameTime: 7.194 ms
	[function] fragment-complexity=medium:fragment-steps=5: FPS: 39 FrameTime: 25.641 ms
	[loop] fragment-loop=false:fragment-steps=5:vertex-steps=5: FPS: 135 FrameTime: 7.407 ms
	[loop] fragment-steps=5:fragment-uniform=false:vertex-steps=5: FPS: 136 FrameTime: 7.353 ms
	[loop] fragment-steps=5:fragment-uniform=true:vertex-steps=5: FPS: 91 FrameTime: 10.989 ms
	=======================================================
					  glmark2 Score: 101 
	=======================================================
	root@raspberrypi3:~# cat /proc/loadavg 
	0.15 0.15 0.09 1/130 458

So, yes, I seem to be getting roughly what you're seeing.

I have no idea what govenor I'm using, whatever is the default.

Here's what I get for fullscreen:

	root@raspberrypi3:~# glmark2-es2 --fullscreen --annotate
	MESA-LOADER: device is not located on the PCI bus
	MESA-LOADER: device is not located on the PCI bus
	MESA-LOADER: device is not located on the PCI bus
	=======================================================
	    glmark2 2014.03
	=======================================================
	    OpenGL Information
	    GL_VENDOR:     Broadcom
	    GL_RENDERER:   Gallium 0.4 on VC4 V3D 2.1
	    GL_VERSION:    OpenGL ES 2.0 Mesa 17.0.2
	=======================================================
	[build] use-vbo=false: FPS: 41 FrameTime: 24.390 ms
	[build] use-vbo=true: FPS: 43 FrameTime: 23.256 ms
	[texture] texture-filter=nearest: FPS: 42 FrameTime: 23.810 ms
	[texture] texture-filter=linear: FPS: 42 FrameTime: 23.810 ms
	[texture] texture-filter=mipmap: FPS: 42 FrameTime: 23.810 ms
	[shading] shading=gouraud: FPS: 40 FrameTime: 25.000 ms
	[shading] shading=blinn-phong-inf: FPS: 31 FrameTime: 32.258 ms
	[shading] shading=phong: FPS: 22 FrameTime: 45.455 ms
	[shading] shading=cel: FPS: 22 FrameTime: 45.455 ms
	[bump] bump-render=high-poly: FPS: 29 FrameTime: 34.483 ms
	[bump] bump-render=normals: FPS: 43 FrameTime: 23.256 ms
	[bump] bump-render=height: FPS: 42 FrameTime: 23.810 ms
	[effect2d] kernel=0,1,0;1,-4,1;0,1,0;: FPS: 30 FrameTime: 33.333 ms
	[effect2d] kernel=1,1,1,1,1;1,1,1,1,1;1,1,1,1,1;: FPS: 20 FrameTime: 50.000 ms
	[pulsar] light=false:quads=5:texture=false: FPS: 35 FrameTime: 28.571 ms
	[desktop] blur-radius=5:effect=blur:passes=1:separable=true:windows=4: FPS: 12 FrameTime: 83.333 ms
	[desktop] effect=shadow:windows=4: FPS: 25 FrameTime: 40.000 ms
	[buffer] columns=200:interleave=false:update-dispersion=0.9:update-fraction=0.5:update-method=map: FPS: 22 FrameTime: 45.455 ms
	[buffer] columns=200:interleave=false:update-dispersion=0.9:update-fraction=0.5:update-method=subdata: FPS: 22 FrameTime: 45.455 ms
	[buffer] columns=200:interleave=true:update-dispersion=0.9:update-fraction=0.5:update-method=map: FPS: 23 FrameTime: 43.478 ms
	[ideas] speed=duration: FPS: 35 FrameTime: 28.571 ms
	[jellyfish] <default>: FPS: 30 FrameTime: 33.333 ms
	[terrain] <default>: FPS: 2 FrameTime: 500.000 ms
	[shadow] <default>: FPS: 32 FrameTime: 31.250 ms
	[refract] <default>: FPS: 13 FrameTime: 76.923 ms
	[conditionals] fragment-steps=0:vertex-steps=0: FPS: 40 FrameTime: 25.000 ms
	[conditionals] fragment-steps=5:vertex-steps=0: FPS: 35 FrameTime: 28.571 ms
	[conditionals] fragment-steps=0:vertex-steps=5: FPS: 40 FrameTime: 25.000 ms
	[function] fragment-complexity=low:fragment-steps=5: FPS: 39 FrameTime: 25.641 ms
	[function] fragment-complexity=medium:fragment-steps=5: FPS: 13 FrameTime: 76.923 ms
	[loop] fragment-loop=false:fragment-steps=5:vertex-steps=5: FPS: 38 FrameTime: 26.316 ms
	[loop] fragment-steps=5:fragment-uniform=false:vertex-steps=5: FPS: 38 FrameTime: 26.316 ms
	[loop] fragment-steps=5:fragment-uniform=true:vertex-steps=5: FPS: 27 FrameTime: 37.037 ms
	=======================================================
					  glmark2 Score: 30 
	=======================================================
	root@raspberrypi3:~# cat /proc/loadavg 
	0.05 0.11 0.08 1/129 468

