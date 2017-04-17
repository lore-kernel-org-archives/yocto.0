Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43F02E00546; Sun, 16 Apr 2017 18:11:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0E44E00524
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:11:42 -0700 (PDT)
Received: by mail-vk0-f51.google.com with SMTP id n73so10653770vke.1
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=TRBM+8yXoKAbaaBkjckLe7IeM7+PjMQcU0d8rEIQ1sk=;
	b=L/3FIIVigdcQ6yZzWgdqml5epy5u2tRX/t4uuQxh7mYv7T3ZKWdyjDB5uYhSyVxHkS
	plk6MDxCzyewgz6ZAw97TWIuOpTcGir0fnj4h/vMXcvyuOxx0qXPXZsi+PW86L//qGhP
	zfC0NNuXwl2CQm82p16+0Z7L9GzUB0ItqdI9R6xl7Cws3NxScXYVzwZdRI0FnxvOZ7fT
	CBgLl4bztJp/0+0EQZsvqTBVOvw6pViqNx9jtkKXN5YJkPcMUvJzQnlx9JtPrvsmtqNn
	K3Ukh4FoK5bi4tAyjcjHSfw3T6gBduAJfogzUk31IaM1qrmfC9LZ3mR1hSsRyaTCvSfI
	hqjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=TRBM+8yXoKAbaaBkjckLe7IeM7+PjMQcU0d8rEIQ1sk=;
	b=Mu6grrSk1/QL/AZtf11wBJLXfErj9gQ3Bu59Wkrhd+Or3Gp7iVINNVkOvrSiiMQCjQ
	VNl+IUDi/8rF3PF394d0gj14N0whR5uuy7XuwcbvIwRELxwAzmgYKu9PpXiqheuyTF9k
	oh/F/5XegOyrcTiqIasr/xTiFkITIL0d8ZsXDrZEyWAN6F5UGFJIySZ5CMwhe1K3zE81
	4lJC9WmNkrfNJ4fAJZKZrueeHRodTbvF5qEdCbDcHBCenkzFkqQ87H2soLDmlmfgcyHl
	klmH2BecAgogZzNc6L5+z0dSBQN0zG1/7gmHn99E6TGM83l+yNK5zSPDjrBbUTFqPalP
	+odg==
X-Gm-Message-State: AN3rC/4clFBc+f0hrjBcojBdZ8Z9k75nnMUQ6uDCzieHeRFVXh2jYRvo
	qVeioUZMq+iaLliz6FWgstT3dLYWhg==
X-Received: by 10.31.158.194 with SMTP id h185mr6185755vke.30.1492391502072;
	Sun, 16 Apr 2017 18:11:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.5 with HTTP; Sun, 16 Apr 2017 18:11:41 -0700 (PDT)
In-Reply-To: <20170417002736.GA5766@linux-uys3>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
	<CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
	<20170415231603.GA20857@linux-uys3>
	<CALbNGRQsCUupm4uo=OHiRoZ+4TOfBLD8aZ5Xz5f9e_fK9ZmxLA@mail.gmail.com>
	<20170417002736.GA5766@linux-uys3>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Mon, 17 Apr 2017 03:11:41 +0200
Message-ID: <CALbNGRTuXZO38Pr8Jzu-tpJNpjj11Ly7cH7RG+cVfA_Bs163HA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
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
X-List-Received-Date: Mon, 17 Apr 2017 01:11:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 17, 2017 at 2:27 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Mon 2017-04-17 @ 01:52:57 AM, Andreas M=C3=BCller wrote:
>> On Sun, Apr 16, 2017 at 1:16 AM, Trevor Woerner <twoerner@gmail.com> wro=
te:
>> > w00T! \O/
>> >
>> > Swapping out meta-raspberrypi for your meta-raspi-light works!!! I now=
 have
>> > accelerated glmark2-es2 ~40FPS :-D
>> 40fps for glmark-es2 (did you mean glxgears)? The total result I get
>> for Pi3 on X11 (xfce) is ~105-117 depending on cpu-governor. I don't
>> know what Desktop/window manager you use but for graphics benchmarking
>> you should disable compositor.
>
> ;-) haha ;-)
> You couldn't just let me be happy?!
OK - I am really sorry for this :))))
> Yesterday it was running at 1FPS (*one*!! and probably less)
> ;-) haha ;-)
>
> I'm using openbox, I can't imagine anything more minimal than that. But I
> think I see where the difference lies. I usually run glmark2-es2 fullscre=
en.
Yeah openbox seems light weight and does no compositing.
> When I run it in its own little window:
>
>         root@raspberrypi3:~# glmark2-es2
>         MESA-LOADER: device is not located on the PCI bus
>         MESA-LOADER: device is not located on the PCI bus
>         MESA-LOADER: device is not located on the PCI bus
>         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>             glmark2 2014.03
>         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>             OpenGL Information
>             GL_VENDOR:     Broadcom
>             GL_RENDERER:   Gallium 0.4 on VC4 V3D 2.1
>             GL_VERSION:    OpenGL ES 2.0 Mesa 17.0.2
>         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>         [build] use-vbo=3Dfalse: FPS: 126 FrameTime: 7.937 ms
>         [build] use-vbo=3Dtrue: FPS: 140 FrameTime: 7.143 ms
>         [texture] texture-filter=3Dnearest: FPS: 146 FrameTime: 6.849 ms
>         [texture] texture-filter=3Dlinear: FPS: 141 FrameTime: 7.092 ms
>         [texture] texture-filter=3Dmipmap: FPS: 135 FrameTime: 7.407 ms
>         [shading] shading=3Dgouraud: FPS: 118 FrameTime: 8.475 ms
>         [shading] shading=3Dblinn-phong-inf: FPS: 102 FrameTime: 9.804 ms
>         [shading] shading=3Dphong: FPS: 69 FrameTime: 14.493 ms
>         [shading] shading=3Dcel: FPS: 69 FrameTime: 14.493 ms
>         [bump] bump-render=3Dhigh-poly: FPS: 68 FrameTime: 14.706 ms
>         [bump] bump-render=3Dnormals: FPS: 154 FrameTime: 6.494 ms
>         [bump] bump-render=3Dheight: FPS: 148 FrameTime: 6.757 ms
>         [effect2d] kernel=3D0,1,0;1,-4,1;0,1,0;: FPS: 106 FrameTime: 9.43=
4 ms
>         [effect2d] kernel=3D1,1,1,1,1;1,1,1,1,1;1,1,1,1,1;: FPS: 71 Frame=
Time: 14.085 ms
>         [pulsar] light=3Dfalse:quads=3D5:texture=3Dfalse: FPS: 129 FrameT=
ime: 7.752 ms
>         [desktop] blur-radius=3D5:effect=3Dblur:passes=3D1:separable=3Dtr=
ue:windows=3D4: FPS: 44 FrameTime: 22.727 ms
>         [desktop] effect=3Dshadow:windows=3D4: FPS: 90 FrameTime: 11.111 =
ms
>         [buffer] columns=3D200:interleave=3Dfalse:update-dispersion=3D0.9=
:update-fraction=3D0.5:update-method=3Dmap: FPS: 63 FrameTime: 15.873 ms
>         [buffer] columns=3D200:interleave=3Dfalse:update-dispersion=3D0.9=
:update-fraction=3D0.5:update-method=3Dsubdata: FPS: 62 FrameTime: 16.129 m=
s
>         [buffer] columns=3D200:interleave=3Dtrue:update-dispersion=3D0.9:=
update-fraction=3D0.5:update-method=3Dmap: FPS: 73 FrameTime: 13.699 ms
>         [ideas] speed=3Dduration: FPS: 132 FrameTime: 7.576 ms
>         [jellyfish] <default>: FPS: 98 FrameTime: 10.204 ms
>         [terrain] <default>: FPS: 5 FrameTime: 200.000 ms
>         [shadow] <default>: FPS: 79 FrameTime: 12.658 ms
>         [refract] <default>: FPS: 20 FrameTime: 50.000 ms
>         [conditionals] fragment-steps=3D0:vertex-steps=3D0: FPS: 145 Fram=
eTime: 6.897 ms
>         [conditionals] fragment-steps=3D5:vertex-steps=3D0: FPS: 124 Fram=
eTime: 8.065 ms
>         [conditionals] fragment-steps=3D0:vertex-steps=3D5: FPS: 145 Fram=
eTime: 6.897 ms
>         [function] fragment-complexity=3Dlow:fragment-steps=3D5: FPS: 139=
 FrameTime: 7.194 ms
>         [function] fragment-complexity=3Dmedium:fragment-steps=3D5: FPS: =
39 FrameTime: 25.641 ms
>         [loop] fragment-loop=3Dfalse:fragment-steps=3D5:vertex-steps=3D5:=
 FPS: 135 FrameTime: 7.407 ms
>         [loop] fragment-steps=3D5:fragment-uniform=3Dfalse:vertex-steps=
=3D5: FPS: 136 FrameTime: 7.353 ms
>         [loop] fragment-steps=3D5:fragment-uniform=3Dtrue:vertex-steps=3D=
5: FPS: 91 FrameTime: 10.989 ms
>         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>                                           glmark2 Score: 101
>         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>         root@raspberrypi3:~# cat /proc/loadavg
>         0.15 0.15 0.09 1/130 458
>
> So, yes, I seem to be getting roughly what you're seeing.
Yes I think the difference of our results is noise
>
> I have no idea what govenor I'm using, whatever is the default.
I assume it is ondemand. That is default/fine (if you don't want to
play music keyboard/sequencer).
>
> Here's what I get for fullscreen:
>
>         root@raspberrypi3:~# glmark2-es2 --fullscreen --annotate
>         MESA-LOADER: device is not located on the PCI bus
>         MESA-LOADER: device is not located on the PCI bus
>         MESA-LOADER: device is not located on the PCI bus
>         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>             glmark2 2014.03
>         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>             OpenGL Information
>             GL_VENDOR:     Broadcom
>             GL_RENDERER:   Gallium 0.4 on VC4 V3D 2.1
>             GL_VERSION:    OpenGL ES 2.0 Mesa 17.0.2
>         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>         [build] use-vbo=3Dfalse: FPS: 41 FrameTime: 24.390 ms
>         [build] use-vbo=3Dtrue: FPS: 43 FrameTime: 23.256 ms
>         [texture] texture-filter=3Dnearest: FPS: 42 FrameTime: 23.810 ms
>         [texture] texture-filter=3Dlinear: FPS: 42 FrameTime: 23.810 ms
>         [texture] texture-filter=3Dmipmap: FPS: 42 FrameTime: 23.810 ms
>         [shading] shading=3Dgouraud: FPS: 40 FrameTime: 25.000 ms
>         [shading] shading=3Dblinn-phong-inf: FPS: 31 FrameTime: 32.258 ms
>         [shading] shading=3Dphong: FPS: 22 FrameTime: 45.455 ms
>         [shading] shading=3Dcel: FPS: 22 FrameTime: 45.455 ms
>         [bump] bump-render=3Dhigh-poly: FPS: 29 FrameTime: 34.483 ms
>         [bump] bump-render=3Dnormals: FPS: 43 FrameTime: 23.256 ms
>         [bump] bump-render=3Dheight: FPS: 42 FrameTime: 23.810 ms
>         [effect2d] kernel=3D0,1,0;1,-4,1;0,1,0;: FPS: 30 FrameTime: 33.33=
3 ms
>         [effect2d] kernel=3D1,1,1,1,1;1,1,1,1,1;1,1,1,1,1;: FPS: 20 Frame=
Time: 50.000 ms
>         [pulsar] light=3Dfalse:quads=3D5:texture=3Dfalse: FPS: 35 FrameTi=
me: 28.571 ms
>         [desktop] blur-radius=3D5:effect=3Dblur:passes=3D1:separable=3Dtr=
ue:windows=3D4: FPS: 12 FrameTime: 83.333 ms
>         [desktop] effect=3Dshadow:windows=3D4: FPS: 25 FrameTime: 40.000 =
ms
>         [buffer] columns=3D200:interleave=3Dfalse:update-dispersion=3D0.9=
:update-fraction=3D0.5:update-method=3Dmap: FPS: 22 FrameTime: 45.455 ms
>         [buffer] columns=3D200:interleave=3Dfalse:update-dispersion=3D0.9=
:update-fraction=3D0.5:update-method=3Dsubdata: FPS: 22 FrameTime: 45.455 m=
s
>         [buffer] columns=3D200:interleave=3Dtrue:update-dispersion=3D0.9:=
update-fraction=3D0.5:update-method=3Dmap: FPS: 23 FrameTime: 43.478 ms
>         [ideas] speed=3Dduration: FPS: 35 FrameTime: 28.571 ms
>         [jellyfish] <default>: FPS: 30 FrameTime: 33.333 ms
>         [terrain] <default>: FPS: 2 FrameTime: 500.000 ms
>         [shadow] <default>: FPS: 32 FrameTime: 31.250 ms
>         [refract] <default>: FPS: 13 FrameTime: 76.923 ms
>         [conditionals] fragment-steps=3D0:vertex-steps=3D0: FPS: 40 Frame=
Time: 25.000 ms
>         [conditionals] fragment-steps=3D5:vertex-steps=3D0: FPS: 35 Frame=
Time: 28.571 ms
>         [conditionals] fragment-steps=3D0:vertex-steps=3D5: FPS: 40 Frame=
Time: 25.000 ms
>         [function] fragment-complexity=3Dlow:fragment-steps=3D5: FPS: 39 =
FrameTime: 25.641 ms
>         [function] fragment-complexity=3Dmedium:fragment-steps=3D5: FPS: =
13 FrameTime: 76.923 ms
>         [loop] fragment-loop=3Dfalse:fragment-steps=3D5:vertex-steps=3D5:=
 FPS: 38 FrameTime: 26.316 ms
>         [loop] fragment-steps=3D5:fragment-uniform=3Dfalse:vertex-steps=
=3D5: FPS: 38 FrameTime: 26.316 ms
>         [loop] fragment-steps=3D5:fragment-uniform=3Dtrue:vertex-steps=3D=
5: FPS: 27 FrameTime: 37.037 ms
>         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>                                           glmark2 Score: 30
>         =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
I never tried that before but prefer to run in not-fullscreeen because
the results seem to depend on screen resolution.

Happy easter,

Andreas

