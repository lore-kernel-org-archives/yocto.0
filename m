Return-Path: <changhyeok.bae@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BDE0E0094C; Mon, 17 Apr 2017 21:16:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (changhyeok.bae[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14A6DE00839
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 21:16:40 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id k87so152629555ioi.0
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 21:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dGnJvgS4sIVw3+qXwfmNMhxhqpL1PWdD+ZrK+KxnWjI=;
	b=Cd+Uk6eu9QOIzW4OqJ8kxMvoToqJ86sFKBDkXcGtfD3BirB/uiwCjS1ZovZBKnI1g1
	LCq7ECopmN3AL1uZnbTC1f8ivowRqJv145Gb1ovLUcPcxa6gNBcB9b+nxmPCYmPqwbtd
	QF57yZxMabomO4jXOnf7MNKRx3viyctd7r3yLJ+GiCtOwE7Jq/mP8vJmryR2620gYuCe
	p7jlAMpJs4pbgfli3MXqy2qH7yIO9Hfnb1wgZWw0Tc9A8kXVlN0lKx+lN1cEi2c1Kkut
	g7VtbLUHmUCbn2JJXQWKbXz8iA/JIXX+0VdAkYN5t40q+1ZNcAquMuBt2OTJq2MZ9obT
	4rvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dGnJvgS4sIVw3+qXwfmNMhxhqpL1PWdD+ZrK+KxnWjI=;
	b=LF+oldLevtDJJimXWcE4MeQe71WmFlY/myOxff3+8oPG0RDW3kew3QiIr4A90dJbWu
	cGdcscrIBwsczMzwLGaG0HXKZJM5UgpYppqyEr20jpu3HOqqXnxdJoqTTgU+Zw2nFUFJ
	TemQT6Q1oXc3CBRlZNJr4HsHGdkNXB1m8b3tduQSpC8bD9eqgW4zh3yuy5X0tYA37D2n
	jMSRu29P/lp7/14udbEdYpCOuPq8gsAQ5RCnkiN8A7XbyS8uUikadgOaQLLAoZ+wNIGw
	942YKI+G+8Q4ZD8uM3dj5pSlyfG4kwBB3KO2VGciN8/1UxNLa0nzjnwxhjSmmBKSKga+
	118w==
X-Gm-Message-State: AN3rC/40uvhyYQcd9fc7rWM03XoEP12NeeH0hdd9xWovqEvkwZnjqNrd
	VwlvXbPx3Oy0XtOAgnesE0Lp43NjiA==
X-Received: by 10.36.44.14 with SMTP id i14mr12630624iti.103.1492489000171;
	Mon, 17 Apr 2017 21:16:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.34.193 with HTTP; Mon, 17 Apr 2017 21:16:39 -0700 (PDT)
In-Reply-To: <CALbNGRTuXZO38Pr8Jzu-tpJNpjj11Ly7cH7RG+cVfA_Bs163HA@mail.gmail.com>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
	<CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
	<20170415231603.GA20857@linux-uys3>
	<CALbNGRQsCUupm4uo=OHiRoZ+4TOfBLD8aZ5Xz5f9e_fK9ZmxLA@mail.gmail.com>
	<20170417002736.GA5766@linux-uys3>
	<CALbNGRTuXZO38Pr8Jzu-tpJNpjj11Ly7cH7RG+cVfA_Bs163HA@mail.gmail.com>
From: Changhyeok Bae <changhyeok.bae@gmail.com>
Date: Tue, 18 Apr 2017 13:16:39 +0900
Message-ID: <CACrLJgBN-f1unTLLc8qZ-QfQAjSpVPLa5SgdKOLTZH6XjMd3nw@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
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
X-List-Received-Date: Tue, 18 Apr 2017 04:16:44 -0000
Content-Type: multipart/alternative; boundary=001a113f86eeafe266054d692c0e

--001a113f86eeafe266054d692c0e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

FYI

If you are using morty branch, mesa version should be upgraded to v12.0.3
for vc4 bug fix. There is some vc4 patches between v12.0.1 and v12.0.3 of
mesa.

Thanks
Changhyeok

2017-04-17 10:11 GMT+09:00 Andreas M=C3=BCller <schnitzeltony@googlemail.co=
m>:

> On Mon, Apr 17, 2017 at 2:27 AM, Trevor Woerner <twoerner@gmail.com>
> wrote:
> > On Mon 2017-04-17 @ 01:52:57 AM, Andreas M=C3=BCller wrote:
> >> On Sun, Apr 16, 2017 at 1:16 AM, Trevor Woerner <twoerner@gmail.com>
> wrote:
> >> > w00T! \O/
> >> >
> >> > Swapping out meta-raspberrypi for your meta-raspi-light works!!! I
> now have
> >> > accelerated glmark2-es2 ~40FPS :-D
> >> 40fps for glmark-es2 (did you mean glxgears)? The total result I get
> >> for Pi3 on X11 (xfce) is ~105-117 depending on cpu-governor. I don't
> >> know what Desktop/window manager you use but for graphics benchmarking
> >> you should disable compositor.
> >
> > ;-) haha ;-)
> > You couldn't just let me be happy?!
> OK - I am really sorry for this :))))
> > Yesterday it was running at 1FPS (*one*!! and probably less)
> > ;-) haha ;-)
> >
> > I'm using openbox, I can't imagine anything more minimal than that. But=
 I
> > think I see where the difference lies. I usually run glmark2-es2
> fullscreen.
> Yeah openbox seems light weight and does no compositing.
> > When I run it in its own little window:
> >
> >         root@raspberrypi3:~# glmark2-es2
> >         MESA-LOADER: device is not located on the PCI bus
> >         MESA-LOADER: device is not located on the PCI bus
> >         MESA-LOADER: device is not located on the PCI bus
> >         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >             glmark2 2014.03
> >         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >             OpenGL Information
> >             GL_VENDOR:     Broadcom
> >             GL_RENDERER:   Gallium 0.4 on VC4 V3D 2.1
> >             GL_VERSION:    OpenGL ES 2.0 Mesa 17.0.2
> >         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >         [build] use-vbo=3Dfalse: FPS: 126 FrameTime: 7.937 ms
> >         [build] use-vbo=3Dtrue: FPS: 140 FrameTime: 7.143 ms
> >         [texture] texture-filter=3Dnearest: FPS: 146 FrameTime: 6.849 m=
s
> >         [texture] texture-filter=3Dlinear: FPS: 141 FrameTime: 7.092 ms
> >         [texture] texture-filter=3Dmipmap: FPS: 135 FrameTime: 7.407 ms
> >         [shading] shading=3Dgouraud: FPS: 118 FrameTime: 8.475 ms
> >         [shading] shading=3Dblinn-phong-inf: FPS: 102 FrameTime: 9.804 =
ms
> >         [shading] shading=3Dphong: FPS: 69 FrameTime: 14.493 ms
> >         [shading] shading=3Dcel: FPS: 69 FrameTime: 14.493 ms
> >         [bump] bump-render=3Dhigh-poly: FPS: 68 FrameTime: 14.706 ms
> >         [bump] bump-render=3Dnormals: FPS: 154 FrameTime: 6.494 ms
> >         [bump] bump-render=3Dheight: FPS: 148 FrameTime: 6.757 ms
> >         [effect2d] kernel=3D0,1,0;1,-4,1;0,1,0;: FPS: 106 FrameTime: 9.=
434
> ms
> >         [effect2d] kernel=3D1,1,1,1,1;1,1,1,1,1;1,1,1,1,1;: FPS: 71
> FrameTime: 14.085 ms
> >         [pulsar] light=3Dfalse:quads=3D5:texture=3Dfalse: FPS: 129 Fram=
eTime:
> 7.752 ms
> >         [desktop] blur-radius=3D5:effect=3Dblur:passes=3D1:separable=3D=
true:windows=3D4:
> FPS: 44 FrameTime: 22.727 ms
> >         [desktop] effect=3Dshadow:windows=3D4: FPS: 90 FrameTime: 11.11=
1 ms
> >         [buffer] columns=3D200:interleave=3Dfalse:
> update-dispersion=3D0.9:update-fraction=3D0.5:update-method=3Dmap: FPS: 6=
3
> FrameTime: 15.873 ms
> >         [buffer] columns=3D200:interleave=3Dfalse:
> update-dispersion=3D0.9:update-fraction=3D0.5:update-method=3Dsubdata: FP=
S: 62
> FrameTime: 16.129 ms
> >         [buffer] columns=3D200:interleave=3Dtrue:
> update-dispersion=3D0.9:update-fraction=3D0.5:update-method=3Dmap: FPS: 7=
3
> FrameTime: 13.699 ms
> >         [ideas] speed=3Dduration: FPS: 132 FrameTime: 7.576 ms
> >         [jellyfish] <default>: FPS: 98 FrameTime: 10.204 ms
> >         [terrain] <default>: FPS: 5 FrameTime: 200.000 ms
> >         [shadow] <default>: FPS: 79 FrameTime: 12.658 ms
> >         [refract] <default>: FPS: 20 FrameTime: 50.000 ms
> >         [conditionals] fragment-steps=3D0:vertex-steps=3D0: FPS: 145
> FrameTime: 6.897 ms
> >         [conditionals] fragment-steps=3D5:vertex-steps=3D0: FPS: 124
> FrameTime: 8.065 ms
> >         [conditionals] fragment-steps=3D0:vertex-steps=3D5: FPS: 145
> FrameTime: 6.897 ms
> >         [function] fragment-complexity=3Dlow:fragment-steps=3D5: FPS: 1=
39
> FrameTime: 7.194 ms
> >         [function] fragment-complexity=3Dmedium:fragment-steps=3D5: FPS=
: 39
> FrameTime: 25.641 ms
> >         [loop] fragment-loop=3Dfalse:fragment-steps=3D5:vertex-steps=3D=
5:
> FPS: 135 FrameTime: 7.407 ms
> >         [loop] fragment-steps=3D5:fragment-uniform=3Dfalse:vertex-steps=
=3D5:
> FPS: 136 FrameTime: 7.353 ms
> >         [loop] fragment-steps=3D5:fragment-uniform=3Dtrue:vertex-steps=
=3D5:
> FPS: 91 FrameTime: 10.989 ms
> >         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >                                           glmark2 Score: 101
> >         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >         root@raspberrypi3:~# cat /proc/loadavg
> >         0.15 0.15 0.09 1/130 458
> >
> > So, yes, I seem to be getting roughly what you're seeing.
> Yes I think the difference of our results is noise
> >
> > I have no idea what govenor I'm using, whatever is the default.
> I assume it is ondemand. That is default/fine (if you don't want to
> play music keyboard/sequencer).
> >
> > Here's what I get for fullscreen:
> >
> >         root@raspberrypi3:~# glmark2-es2 --fullscreen --annotate
> >         MESA-LOADER: device is not located on the PCI bus
> >         MESA-LOADER: device is not located on the PCI bus
> >         MESA-LOADER: device is not located on the PCI bus
> >         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >             glmark2 2014.03
> >         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >             OpenGL Information
> >             GL_VENDOR:     Broadcom
> >             GL_RENDERER:   Gallium 0.4 on VC4 V3D 2.1
> >             GL_VERSION:    OpenGL ES 2.0 Mesa 17.0.2
> >         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >         [build] use-vbo=3Dfalse: FPS: 41 FrameTime: 24.390 ms
> >         [build] use-vbo=3Dtrue: FPS: 43 FrameTime: 23.256 ms
> >         [texture] texture-filter=3Dnearest: FPS: 42 FrameTime: 23.810 m=
s
> >         [texture] texture-filter=3Dlinear: FPS: 42 FrameTime: 23.810 ms
> >         [texture] texture-filter=3Dmipmap: FPS: 42 FrameTime: 23.810 ms
> >         [shading] shading=3Dgouraud: FPS: 40 FrameTime: 25.000 ms
> >         [shading] shading=3Dblinn-phong-inf: FPS: 31 FrameTime: 32.258 =
ms
> >         [shading] shading=3Dphong: FPS: 22 FrameTime: 45.455 ms
> >         [shading] shading=3Dcel: FPS: 22 FrameTime: 45.455 ms
> >         [bump] bump-render=3Dhigh-poly: FPS: 29 FrameTime: 34.483 ms
> >         [bump] bump-render=3Dnormals: FPS: 43 FrameTime: 23.256 ms
> >         [bump] bump-render=3Dheight: FPS: 42 FrameTime: 23.810 ms
> >         [effect2d] kernel=3D0,1,0;1,-4,1;0,1,0;: FPS: 30 FrameTime: 33.=
333
> ms
> >         [effect2d] kernel=3D1,1,1,1,1;1,1,1,1,1;1,1,1,1,1;: FPS: 20
> FrameTime: 50.000 ms
> >         [pulsar] light=3Dfalse:quads=3D5:texture=3Dfalse: FPS: 35 Frame=
Time:
> 28.571 ms
> >         [desktop] blur-radius=3D5:effect=3Dblur:passes=3D1:separable=3D=
true:windows=3D4:
> FPS: 12 FrameTime: 83.333 ms
> >         [desktop] effect=3Dshadow:windows=3D4: FPS: 25 FrameTime: 40.00=
0 ms
> >         [buffer] columns=3D200:interleave=3Dfalse:
> update-dispersion=3D0.9:update-fraction=3D0.5:update-method=3Dmap: FPS: 2=
2
> FrameTime: 45.455 ms
> >         [buffer] columns=3D200:interleave=3Dfalse:
> update-dispersion=3D0.9:update-fraction=3D0.5:update-method=3Dsubdata: FP=
S: 22
> FrameTime: 45.455 ms
> >         [buffer] columns=3D200:interleave=3Dtrue:
> update-dispersion=3D0.9:update-fraction=3D0.5:update-method=3Dmap: FPS: 2=
3
> FrameTime: 43.478 ms
> >         [ideas] speed=3Dduration: FPS: 35 FrameTime: 28.571 ms
> >         [jellyfish] <default>: FPS: 30 FrameTime: 33.333 ms
> >         [terrain] <default>: FPS: 2 FrameTime: 500.000 ms
> >         [shadow] <default>: FPS: 32 FrameTime: 31.250 ms
> >         [refract] <default>: FPS: 13 FrameTime: 76.923 ms
> >         [conditionals] fragment-steps=3D0:vertex-steps=3D0: FPS: 40
> FrameTime: 25.000 ms
> >         [conditionals] fragment-steps=3D5:vertex-steps=3D0: FPS: 35
> FrameTime: 28.571 ms
> >         [conditionals] fragment-steps=3D0:vertex-steps=3D5: FPS: 40
> FrameTime: 25.000 ms
> >         [function] fragment-complexity=3Dlow:fragment-steps=3D5: FPS: 3=
9
> FrameTime: 25.641 ms
> >         [function] fragment-complexity=3Dmedium:fragment-steps=3D5: FPS=
: 13
> FrameTime: 76.923 ms
> >         [loop] fragment-loop=3Dfalse:fragment-steps=3D5:vertex-steps=3D=
5:
> FPS: 38 FrameTime: 26.316 ms
> >         [loop] fragment-steps=3D5:fragment-uniform=3Dfalse:vertex-steps=
=3D5:
> FPS: 38 FrameTime: 26.316 ms
> >         [loop] fragment-steps=3D5:fragment-uniform=3Dtrue:vertex-steps=
=3D5:
> FPS: 27 FrameTime: 37.037 ms
> >         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >                                           glmark2 Score: 30
> >         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> I never tried that before but prefer to run in not-fullscreeen because
> the results seem to depend on screen resolution.
>
> Happy easter,
>
> Andreas
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113f86eeafe266054d692c0e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>FYI</div><div><br></div>If you are using morty branch=
, mesa version should be upgraded to v12.0.3 for vc4 bug fix. There is some=
 vc4 patches between v12.0.1 and v12.0.3 of mesa.<div><br></div><div>Thanks=
</div><div>Changhyeok</div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">2017-04-17 10:11 GMT+09:00 Andreas M=C3=BCller <span dir=
=3D"ltr">&lt;<a href=3D"mailto:schnitzeltony@googlemail.com" target=3D"_bla=
nk">schnitzeltony@googlemail.com</a>&gt;</span>:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><span class=3D"">On Mon, Apr 17, 2017 at 2:27 AM, Trevor Woerner &l=
t;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; wrote:<b=
r>
&gt; On Mon 2017-04-17 @ 01:52:57 AM, Andreas M=C3=BCller wrote:<br>
&gt;&gt; On Sun, Apr 16, 2017 at 1:16 AM, Trevor Woerner &lt;<a href=3D"mai=
lto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; w00T! \O/<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Swapping out meta-raspberrypi for your meta-raspi-light works=
!!! I now have<br>
&gt;&gt; &gt; accelerated glmark2-es2 ~40FPS :-D<br>
&gt;&gt; 40fps for glmark-es2 (did you mean glxgears)? The total result I g=
et<br>
&gt;&gt; for Pi3 on X11 (xfce) is ~105-117 depending on cpu-governor. I don=
&#39;t<br>
&gt;&gt; know what Desktop/window manager you use but for graphics benchmar=
king<br>
&gt;&gt; you should disable compositor.<br>
&gt;<br>
&gt; ;-) haha ;-)<br>
&gt; You couldn&#39;t just let me be happy?!<br>
</span>OK - I am really sorry for this :))))<br>
<span class=3D"">&gt; Yesterday it was running at 1FPS (*one*!! and probabl=
y less)<br>
&gt; ;-) haha ;-)<br>
&gt;<br>
&gt; I&#39;m using openbox, I can&#39;t imagine anything more minimal than =
that. But I<br>
&gt; think I see where the difference lies. I usually run glmark2-es2 fulls=
creen.<br>
</span>Yeah openbox seems light weight and does no compositing.<br>
<div><div class=3D"h5">&gt; When I run it in its own little window:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0root@raspberrypi3:~# glmark2-es2<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MESA-LOADER: device is not located on=
 the PCI bus<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MESA-LOADER: device is not located on=
 the PCI bus<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MESA-LOADER: device is not located on=
 the PCI bus<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0glmark2 2014.03<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0OpenGL Information<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GL_VENDOR:=C2=A0 =C2=A0=
 =C2=A0Broadcom<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GL_RENDERER:=C2=A0 =C2=
=A0Gallium 0.4 on VC4 V3D 2.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GL_VERSION:=C2=A0 =C2=
=A0 OpenGL ES 2.0 Mesa 17.0.2<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[build] use-vbo=3Dfalse: FPS: 126 Fra=
meTime: 7.937 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[build] use-vbo=3Dtrue: FPS: 140 Fram=
eTime: 7.143 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[texture] texture-filter=3Dnearest: F=
PS: 146 FrameTime: 6.849 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[texture] texture-filter=3Dlinear: FP=
S: 141 FrameTime: 7.092 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[texture] texture-filter=3Dmipmap: FP=
S: 135 FrameTime: 7.407 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[shading] shading=3Dgouraud: FPS: 118=
 FrameTime: 8.475 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[shading] shading=3Dblinn-phong-inf: =
FPS: 102 FrameTime: 9.804 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[shading] shading=3Dphong: FPS: 69 Fr=
ameTime: 14.493 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[shading] shading=3Dcel: FPS: 69 Fram=
eTime: 14.493 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[bump] bump-render=3Dhigh-poly: FPS: =
68 FrameTime: 14.706 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[bump] bump-render=3Dnormals: FPS: 15=
4 FrameTime: 6.494 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[bump] bump-render=3Dheight: FPS: 148=
 FrameTime: 6.757 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[effect2d] kernel=3D0,1,0;1,-4,1;0,1,=
0;: FPS: 106 FrameTime: 9.434 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[effect2d] kernel=3D1,1,1,1,1;1,1,1,1=
,1;1,<wbr>1,1,1,1;: FPS: 71 FrameTime: 14.085 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[pulsar] light=3Dfalse:quads=3D5:text=
ure=3D<wbr>false: FPS: 129 FrameTime: 7.752 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[desktop] blur-radius=3D5:effect=3Dbl=
ur:<wbr>passes=3D1:separable=3Dtrue:<wbr>windows=3D4: FPS: 44 FrameTime: 22=
.727 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[desktop] effect=3Dshadow:windows=3D4=
: FPS: 90 FrameTime: 11.111 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[buffer] columns=3D200:interleave=3Df=
alse:<wbr>update-dispersion=3D0.9:update-<wbr>fraction=3D0.5:update-method=
=3D<wbr>map: FPS: 63 FrameTime: 15.873 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[buffer] columns=3D200:interleave=3Df=
alse:<wbr>update-dispersion=3D0.9:update-<wbr>fraction=3D0.5:update-method=
=3D<wbr>subdata: FPS: 62 FrameTime: 16.129 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[buffer] columns=3D200:interleave=3Dt=
rue:<wbr>update-dispersion=3D0.9:update-<wbr>fraction=3D0.5:update-method=
=3D<wbr>map: FPS: 73 FrameTime: 13.699 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ideas] speed=3Dduration: FPS: 132 Fr=
ameTime: 7.576 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[jellyfish] &lt;default&gt;: FPS: 98 =
FrameTime: 10.204 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[terrain] &lt;default&gt;: FPS: 5 Fra=
meTime: 200.000 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[shadow] &lt;default&gt;: FPS: 79 Fra=
meTime: 12.658 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[refract] &lt;default&gt;: FPS: 20 Fr=
ameTime: 50.000 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[conditionals] fragment-steps=3D0:ver=
tex-steps=3D<wbr>0: FPS: 145 FrameTime: 6.897 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[conditionals] fragment-steps=3D5:ver=
tex-steps=3D<wbr>0: FPS: 124 FrameTime: 8.065 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[conditionals] fragment-steps=3D0:ver=
tex-steps=3D<wbr>5: FPS: 145 FrameTime: 6.897 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[function] fragment-complexity=3Dlow:=
<wbr>fragment-steps=3D5: FPS: 139 FrameTime: 7.194 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[function] fragment-complexity=3Dmedi=
um:<wbr>fragment-steps=3D5: FPS: 39 FrameTime: 25.641 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[loop] fragment-loop=3Dfalse:fragment=
-<wbr>steps=3D5:vertex-steps=3D5: FPS: 135 FrameTime: 7.407 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[loop] fragment-steps=3D5:fragment-<w=
br>uniform=3Dfalse:vertex-steps=3D5: FPS: 136 FrameTime: 7.353 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[loop] fragment-steps=3D5:fragment-<w=
br>uniform=3Dtrue:vertex-steps=3D5: FPS: 91 FrameTime: 10.989 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0glmark2 Score: 101<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0root@raspberrypi3:~# cat /proc/loadav=
g<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.15 0.15 0.09 1/130 458<br>
&gt;<br>
&gt; So, yes, I seem to be getting roughly what you&#39;re seeing.<br>
</div></div>Yes I think the difference of our results is noise<br>
<span class=3D"">&gt;<br>
&gt; I have no idea what govenor I&#39;m using, whatever is the default.<br=
>
</span>I assume it is ondemand. That is default/fine (if you don&#39;t want=
 to<br>
play music keyboard/sequencer).<br>
<div><div class=3D"h5">&gt;<br>
&gt; Here&#39;s what I get for fullscreen:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0root@raspberrypi3:~# glmark2-es2 --fu=
llscreen --annotate<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MESA-LOADER: device is not located on=
 the PCI bus<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MESA-LOADER: device is not located on=
 the PCI bus<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MESA-LOADER: device is not located on=
 the PCI bus<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0glmark2 2014.03<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0OpenGL Information<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GL_VENDOR:=C2=A0 =C2=A0=
 =C2=A0Broadcom<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GL_RENDERER:=C2=A0 =C2=
=A0Gallium 0.4 on VC4 V3D 2.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GL_VERSION:=C2=A0 =C2=
=A0 OpenGL ES 2.0 Mesa 17.0.2<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[build] use-vbo=3Dfalse: FPS: 41 Fram=
eTime: 24.390 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[build] use-vbo=3Dtrue: FPS: 43 Frame=
Time: 23.256 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[texture] texture-filter=3Dnearest: F=
PS: 42 FrameTime: 23.810 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[texture] texture-filter=3Dlinear: FP=
S: 42 FrameTime: 23.810 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[texture] texture-filter=3Dmipmap: FP=
S: 42 FrameTime: 23.810 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[shading] shading=3Dgouraud: FPS: 40 =
FrameTime: 25.000 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[shading] shading=3Dblinn-phong-inf: =
FPS: 31 FrameTime: 32.258 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[shading] shading=3Dphong: FPS: 22 Fr=
ameTime: 45.455 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[shading] shading=3Dcel: FPS: 22 Fram=
eTime: 45.455 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[bump] bump-render=3Dhigh-poly: FPS: =
29 FrameTime: 34.483 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[bump] bump-render=3Dnormals: FPS: 43=
 FrameTime: 23.256 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[bump] bump-render=3Dheight: FPS: 42 =
FrameTime: 23.810 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[effect2d] kernel=3D0,1,0;1,-4,1;0,1,=
0;: FPS: 30 FrameTime: 33.333 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[effect2d] kernel=3D1,1,1,1,1;1,1,1,1=
,1;1,<wbr>1,1,1,1;: FPS: 20 FrameTime: 50.000 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[pulsar] light=3Dfalse:quads=3D5:text=
ure=3D<wbr>false: FPS: 35 FrameTime: 28.571 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[desktop] blur-radius=3D5:effect=3Dbl=
ur:<wbr>passes=3D1:separable=3Dtrue:<wbr>windows=3D4: FPS: 12 FrameTime: 83=
.333 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[desktop] effect=3Dshadow:windows=3D4=
: FPS: 25 FrameTime: 40.000 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[buffer] columns=3D200:interleave=3Df=
alse:<wbr>update-dispersion=3D0.9:update-<wbr>fraction=3D0.5:update-method=
=3D<wbr>map: FPS: 22 FrameTime: 45.455 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[buffer] columns=3D200:interleave=3Df=
alse:<wbr>update-dispersion=3D0.9:update-<wbr>fraction=3D0.5:update-method=
=3D<wbr>subdata: FPS: 22 FrameTime: 45.455 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[buffer] columns=3D200:interleave=3Dt=
rue:<wbr>update-dispersion=3D0.9:update-<wbr>fraction=3D0.5:update-method=
=3D<wbr>map: FPS: 23 FrameTime: 43.478 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ideas] speed=3Dduration: FPS: 35 Fra=
meTime: 28.571 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[jellyfish] &lt;default&gt;: FPS: 30 =
FrameTime: 33.333 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[terrain] &lt;default&gt;: FPS: 2 Fra=
meTime: 500.000 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[shadow] &lt;default&gt;: FPS: 32 Fra=
meTime: 31.250 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[refract] &lt;default&gt;: FPS: 13 Fr=
ameTime: 76.923 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[conditionals] fragment-steps=3D0:ver=
tex-steps=3D<wbr>0: FPS: 40 FrameTime: 25.000 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[conditionals] fragment-steps=3D5:ver=
tex-steps=3D<wbr>0: FPS: 35 FrameTime: 28.571 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[conditionals] fragment-steps=3D0:ver=
tex-steps=3D<wbr>5: FPS: 40 FrameTime: 25.000 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[function] fragment-complexity=3Dlow:=
<wbr>fragment-steps=3D5: FPS: 39 FrameTime: 25.641 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[function] fragment-complexity=3Dmedi=
um:<wbr>fragment-steps=3D5: FPS: 13 FrameTime: 76.923 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[loop] fragment-loop=3Dfalse:fragment=
-<wbr>steps=3D5:vertex-steps=3D5: FPS: 38 FrameTime: 26.316 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[loop] fragment-steps=3D5:fragment-<w=
br>uniform=3Dfalse:vertex-steps=3D5: FPS: 38 FrameTime: 26.316 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[loop] fragment-steps=3D5:fragment-<w=
br>uniform=3Dtrue:vertex-steps=3D5: FPS: 27 FrameTime: 37.037 ms<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0glmark2 Score: 30<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div></div>I never tried that before but prefer to run in not-fullscreeen =
because<br>
the results seem to depend on screen resolution.<br>
<br>
Happy easter,<br>
<br>
Andreas<br>
<div class=3D"HOEnZb"><div class=3D"h5">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--001a113f86eeafe266054d692c0e--
