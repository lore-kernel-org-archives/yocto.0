Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7DBAE00D53; Thu,  7 Jun 2018 07:39:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ABE0E00998
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2018 07:39:12 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id m194-v6so13155333itg.2
	for <yocto@yoctoproject.org>; Thu, 07 Jun 2018 07:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=whf7eKDEmskAtq3nAF4EjDRDLj3FeOazqwVbdNMyhZU=;
	b=DFcBvmhRU0u6rF5u0NKh8fh/6YWfaAS9zN+bHe8s66UKsKXvtyt6JT2fB072ftXGv0
	/Oxhb60VPk4hu2TgS0AxbHrgTCzhRPFkFTarQ5Mba7mnNxsE8qeWfds+GSwCmU0Abdnn
	+WZ/r0lrkSx6vgxu+a7f3LvQ5kUwWAfT/Gq6A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=whf7eKDEmskAtq3nAF4EjDRDLj3FeOazqwVbdNMyhZU=;
	b=fkTb7+DcHZl4hsmD1o6j0ZnKHliO/9jh8H0N+/pTAujwEah3Wb1vnUlmdmYZ7xlntB
	awlEc9Ojqz6eCvECUBdcPSdCAaSNeJ1h4Mcyl4p4oPXc64sJ4GdRQ321VSk7Kz57jJba
	vyHXEYRSKPqeFxzI2xF4dRf+Qdfd77DuffMFDg6alue4n6GuE5StLhu74WyYccuOKISr
	w2yCH8bE5dsN5peAqmHfK1/SfpOZHEwcZRxi+oXN49HYelPIRE/a/+g5+1mFNrr81Wos
	AZ0X7GRfck3w+q3zNzvur7C2oAl5ybgHxhB+k+EE+oTa6nodYU0cT3lD0qEirdlo9oxl
	kQxg==
X-Gm-Message-State: APt69E1fdpkB0KfHyE+e/zekC6QWixogenoFss2dSPjU3gk/GxRWvM3A
	m/Qfgi+VyjifUfdVNTV1WZkMz4L2sESTDtnmjBFOPLws
X-Google-Smtp-Source: ADUXVKKxaSY/a8RruZByhAHKpVsU03iNM2Y+rU1Irb0OoMp5wwDOtNc41mryI6oAlLCVmBEUip8+rYg5vVdWiasmvnU=
X-Received: by 2002:a24:470b:: with SMTP id
	t11-v6mr2258685itb.26.1528382352413; 
	Thu, 07 Jun 2018 07:39:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b86:0:0:0:0:0 with HTTP;
	Thu, 7 Jun 2018 07:39:11 -0700 (PDT)
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Thu, 7 Jun 2018 16:39:11 +0200
Message-ID: <CAALXFYwr=UUkS7dVb3QzHzsoQ3pU56j58CZunkKJkRYYcpMv3g@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Issue when integrating different bsp-layers on a single bblayers.conf
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
X-List-Received-Date: Thu, 07 Jun 2018 14:39:14 -0000
Content-Type: multipart/alternative; boundary="00000000000032d8b8056e0e3f3b"

--00000000000032d8b8056e0e3f3b
Content-Type: text/plain; charset="UTF-8"

Hello forum.

I am trying to integrate several BSP-layers for different platforms on a
single Yocto repository to build a Linux Yocto-based distro for all those
platforms easily.

The idea is maintaining a single bblayers.conf with all the layers
available, set PLATFORM and DISTRO on local.conf, call bitbake <image> and
get the final image for that platform.

When setting the "build" directory with a bblayers.conf customized for a
single platform, each platform builds the image recipe properly.

However, when I have integrated all bsp-layers in a single bblayers.conf,
the compilation of some platforms has been broken.

The specific problem is this: one bsp layer (meta-rockchip +
meta-rockchip-extra) defines a recipes-graphics/mesa/mesa_%.bbappend with
this content inside:

    PROVIDES_remove = "virtual/libgles1 virtual/libgles2 virtual/egl
virtual/libwayland-egl"

That alters gstreamer recipe on the poky layer, getting this error when
building for a meta-intel platform:

    ERROR: Nothing PROVIDES 'virtual/egl' (but
/data/yocto/yocto/sources/poky/meta/recipes-multimedia/gstreamer/
gstreamer1.0-vaapi_1.12.2.bb,
/data/yocto/yocto/sources/poky/meta/recipes-multimedia/gstreamer/
gstreamer1.0-plugins-bad_1.12.2.bb DEPENDS on or otherwise requires it)

My questions:

    - Is a good practice to define a custom bblayers.conf depending on the
choosen PLATFORM?
    - Is there some any other way to disable a BSP-layer completely when
building for a different one?
    - Can you suggest a fix to solve this issue?

Thanks a lot in advance! :)

Kind regards.
  -- Ivan

--00000000000032d8b8056e0e3f3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello forum.</div><div><br></div><div><div><div>I am =
trying to integrate several BSP-layers for different platforms on a single =
Yocto repository to build a Linux Yocto-based distro for all those platform=
s easily.</div><div><br></div><div>The idea is maintaining a single bblayer=
s.conf with all the layers available, set PLATFORM and DISTRO on local.conf=
, call bitbake &lt;image&gt; and get the final image for that platform.</di=
v><div><br></div><div>When setting the &quot;build&quot; directory with a b=
blayers.conf customized for a single platform, each platform builds the ima=
ge recipe properly.</div><div><br></div><div>However, when I have integrate=
d all bsp-layers in a single bblayers.conf, the compilation of some platfor=
ms has been broken.<br></div><div><br></div><div>The specific problem is th=
is: one bsp layer (meta-rockchip + meta-rockchip-extra) defines a=C2=A0reci=
pes-graphics/mesa/mesa_%.bbappend with this content inside:<br></div><div><=
span style=3D"font-size:small;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial;float:none;display:inline"=
><br></span></div><div><span style=3D"font-size:small;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline"><span style=3D"text-decoration-style:initial;text-=
decoration-color:initial;float:none;display:inline">=C2=A0 =C2=A0 PROVIDES_=
remove =3D &quot;virtual/libgles1 virtual/libgles2 virtual/egl virtual/libw=
ayland-egl&quot;</span><br></span></div><div><span style=3D"font-size:small=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;float:none;display:inline"><span style=3D"text-decorati=
on-style:initial;text-decoration-color:initial;float:none;display:inline"><=
br></span></span></div><div><span style=3D"font-size:small;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al;float:none;display:inline"><span style=3D"text-decoration-style:initial;=
text-decoration-color:initial;float:none;display:inline">That alters gstrea=
mer recipe on the poky layer, getting this error when building for a meta-i=
ntel platform:</span></span></div><div><br></div><div>=C2=A0 =C2=A0 ERROR: =
Nothing PROVIDES &#39;virtual/egl&#39; (but /data/yocto/yocto/sources/poky/=
meta/recipes-multimedia/gstreamer/<a href=3D"http://gstreamer1.0-vaapi_1.12=
.2.bb">gstreamer1.0-vaapi_1.12.2.bb</a>, /data/yocto/yocto/sources/poky/met=
a/recipes-multimedia/gstreamer/<a href=3D"http://gstreamer1.0-plugins-bad_1=
.12.2.bb">gstreamer1.0-plugins-bad_1.12.2.bb</a> DEPENDS on or otherwise re=
quires it)</div><div><br></div><div>My questions:</div><div><br></div><div>=
=C2=A0 =C2=A0 - Is a good practice to define a custom bblayers.conf dependi=
ng on the choosen PLATFORM?</div><div>=C2=A0 =C2=A0 - Is there some any oth=
er way to disable a BSP-layer completely when building for a different one?=
</div></div><div>=C2=A0 =C2=A0 - Can you suggest a fix to solve this issue?=
</div><div><br></div><div>Thanks a lot in advance! :)</div><div><br></div><=
div>Kind regards.</div></div><div>=C2=A0 -- Ivan</div><div><br></div><div><=
br></div>
</div>

--00000000000032d8b8056e0e3f3b--
