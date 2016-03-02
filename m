Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 451EAE00D76; Wed,  2 Mar 2016 07:48:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72722E00D6F
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 07:48:02 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id p65so85981619wmp.1
	for <yocto@yoctoproject.org>; Wed, 02 Mar 2016 07:48:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cVzr0tLuRNusNR/5cobnk1GyailsvjB8oy3xbTSmwBo=;
	b=VWkiMrvRlHnthFP86txFpQ7VAMgRn1SfKMWiJjxiDpBVoF0sLWshcQCt4CMMOzMtQy
	ZBaZNV58dvR6t1KZAw1HlLyViFF+BH3jKAw9JJBuR3dvI2E6l6ANr5apnEHlx0yd/Lpg
	/mSE8RgsHbvWzfVnH6T/AWZhTRmBK/mZHXQFv54KRYb1f6az9e9kSfb6r75QWKlzztgk
	RqVminV3QnaOEYij+V46p/NUmSv8DGeyK0gmnMJeXmk+nE1mxZi1dRjhcSvtHNEIxDKa
	VpdzC91iFozkH5yaBOtr2+DQL2l9h25dw13EkrFiEqhyRh1E5k1TPOqAZQ34y6Limi/v
	NGsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cVzr0tLuRNusNR/5cobnk1GyailsvjB8oy3xbTSmwBo=;
	b=hCieRw+//PT8rPKw5ZxXaA2L5pDzUjWYbzl97+bX9jmcvLcW3xtSK9+AYxTnpiu5CV
	nl4k8BPHorDTH/WxUhM5iT59QQZ8Bo1w4OFfha4YWP2jU/39Iw/7v1aaYIpeMN+iaX8G
	4ICTSeEGv5Y47LTkDxh0LZz4PgpdlMKphgG3wEY2zrero6w1L19H176F9T3e7z7sXrFk
	2QUbPd4mRO0MNBMzcisHPv2/nBI837T9NJuH9SzUE9EAOXNiEKeConYDNpM3sTDDzL94
	WOFRerUdbP7wbIqV+c4mrbugm/7SqiYqm0t3P60SKyOdyABG0zaUtZzrMbnVBXcWZaII
	gQew==
X-Gm-Message-State: AD7BkJK2cGI/JCU9n/oLn1FW76Nedbqf+1OhUClTbnB+9Q+PvTdmvQk4LmtMzxp+z2BaDvcixjEENWSAMW9T+g==
X-Received: by 10.194.22.68 with SMTP id b4mr26134468wjf.158.1456933681830;
	Wed, 02 Mar 2016 07:48:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.126.135 with HTTP; Wed, 2 Mar 2016 07:47:21 -0800 (PST)
X-Originating-IP: [84.56.32.62]
In-Reply-To: <CAMKF1sri1-St4xbaZbLVXa89m4+L2mQ9ztuA6+fuAJv=yqWA3g@mail.gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
	<CAMKF1sri1-St4xbaZbLVXa89m4+L2mQ9ztuA6+fuAJv=yqWA3g@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 2 Mar 2016 16:47:21 +0100
Message-ID: <CAK18fxEJEiOOhCWVBS6QH71fe0SUzC348fSJ-rRdUTS76-_znA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 00/23] Kernel/userland upgrade wayland support and clang fixes
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
X-List-Received-Date: Wed, 02 Mar 2016 15:48:06 -0000
Content-Type: multipart/alternative; boundary=047d7b5d392a914af0052d12ce98

--047d7b5d392a914af0052d12ce98
Content-Type: text/plain; charset=UTF-8

Hi Khen,

I started to merge the ones that were obvious. The rest need rebasing,
conflict fixing and so on. And then I test them locally. So it will take a
while. But I'll merge as I test. So you can easily see the progress.

--
Andrei Gherzan

On Wed, Mar 2, 2016 at 3:21 PM, Khem Raj <raj.khem@gmail.com> wrote:

> Andrei
>
> I see you merged few of patches from here
> What is status of rest of series ?
>
> This series has been tested to work with Webkit and weston images
> on Pi2
>
>
>
> On Sat, Feb 27, 2016 at 7:26 AM, Khem Raj <raj.khem@gmail.com> wrote:
> > This patchset has been growing for a while, Adds recipes for kenrel 4.4
> and switches
> > to use kernel 4.4
> > Fixes userland to compile with clang
> > Upgrade userland to latest
> > Add option to support GPU_MEM_1024
> > Upgrade firmware to latest
> >
> > Khem Raj (23):
> >   userland: Upgrade to latest git master
> >   userland: Fix build with clang compiler
> >   userland: Add wayland support
> >   weston: Enable rpi compositor backend
> >   rpi-gpio: Upgrade to 0.6.1 and fix build with clang
> >   eglinfo-x11,eglinfo-fb: Add EGLINFO_DEVICE via bbappends
> >   python-rtimu: Fix build with musl
> >   wiringPi: Fix build with musl
> >   Delete rpc flushing of thread in glEGLImageTargetTexture2DOES
> >   rpio: Include sys/types.h for caddr_t
> >   userland: Define PROJECT_APIVER and rprovide libgles2 libgl
> >   userland: Add wayland to deps if in DISTRO_FEATURES
> >   userland: Fix build race with wayland support
> >   gstreamer1.0-omx: Add raspberry pi optimization patches and config
> >     options
> >   weston: Specify egl and compositor options for rpi
> >   gstreamer1.0-omx: Backports and fixes for smooth video playback
> >   linux-raspberrypi: Upgrade 4.1 kernel to 4.1.17
> >   firmware: Upgrade to latest stable 20160209
> >   rpi-config: Upgrade to tip of tree to get GPU_MEM_1024
> >   linux-raspberrypi: Add recipe for 4.4 release
> >   userland: Upgrade to latest
> >   linux-raspberrypi: Upgrade 4.4.1 -> 4.4.2
> >   userland: Drop extern inline patches
> >
> >  README                                             |    2 +
> >  conf/machine/include/rpi-default-versions.inc      |    2 +-
> >  recipes-bsp/bootfiles/bcm2835-bootfiles.bb         |    2 +-
> >  recipes-bsp/bootfiles/rpi-config_git.bb            |    5 +-
> >  recipes-bsp/common/firmware.inc                    |    4 +-
> >  ...0001-include-asm-ioctl.h-for-ioctl-define.patch |   33 +
> >  recipes-devtools/python/python-rtimu_git.bb        |    4 +-
> >  .../rpi-gpio/0001-Remove-nested-functions.patch    |  294 +++
> >  .../{rpi-gpio_0.5.11.bb => rpi-gpio_0.6.1.bb}      |    6 +-
> >  ...-types.h-explicitly-for-getting-caddr_t-d.patch |   30 +
> >  recipes-devtools/python/rpio_0.10.0.bb             |    6 +-
> >  ...de-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch |   58 +
> >  recipes-devtools/wiringPi/wiringpi_git.bb          |    8 +-
> >  recipes-graphics/eglinfo/eglinfo-fb_%.bbappend     |    1 +
> >  recipes-graphics/eglinfo/eglinfo-x11_%.bbappend    |    1 +
> >  .../userland/0001-fix-gcc-5.x-inlines.patch        |   26 -
> >  .../userland/userland/0002-fix-musl-build.patch    |   22 -
> >  .../0002-set-VMCS_INSTALL_PREFIX-to-usr.patch      |    7 +-
> >  ...make-generate-and-install-pkgconfig-files.patch |   24 +-
> >  .../0003-fix-alloc-size-uninitialized.patch        |   13 -
> >  ...-applications-to-set-next-resource-handle.patch |  208 +++
> >  ...ayland-Add-support-for-the-Wayland-winsys.patch | 1880
> ++++++++++++++++++++
> >  .../0007-wayland-Add-Wayland-example.patch         |  866 +++++++++
> >  ...-wayland-egl-Add-bcm_host-to-dependencies.patch |   28 +
> >  ...emove-faulty-assert-to-make-weston-happy-.patch |   29 +
> >  ...0-zero-out-wl-buffers-in-egl_surface_free.patch |   33 +
> >  ...011-initialize-front-back-wayland-buffers.patch |   34 +
> >  .../userland/userland/0012-Remove-RPC_FLUSH.patch  |   27 +
> >  .../userland/0013-fix-cmake-dependency-race.patch  |   78 +
> >  .../0014-Fix-enum-conversion-warnings.patch        |   99 ++
> >  recipes-graphics/userland/userland_git.bb          |   33 +-
> >  recipes-graphics/wayland/weston_%.bbappend         |    4 +
> >  recipes-graphics/weston/weston_%.bbappend          |    7 +
> >  recipes-kernel/linux/linux-raspberrypi_4.1.bb      |    4 +-
> >  ...raspberrypi_4.1.bb => linux-raspberrypi_4.4.bb} |    6 +-
> >  .../gstreamer1.0-omx/0001-config-files-path.patch  |  137 ++
> >  ...o-acquire-buffer-when-src-pad-isn-t-activ.patch |   47 +
> >  .../0003-fix-decoder-flushing.patch                |   15 +
> >  .../0003-no-timeout-on-get-state.patch             |   16 +
> >  ...erly-handle-drain-requests-while-flushing.patch |   69 +
> >  ...-gst_omx_video_dec_set_format-if-there-s-.patch |   30 +
> >  .../gstreamer/gstreamer1.0-omx_%.bbappend          |   22 +
> >  42 files changed, 4114 insertions(+), 106 deletions(-)
> >  create mode 100644
> recipes-devtools/python/python-rtimu/0001-include-asm-ioctl.h-for-ioctl-define.patch
> >  create mode 100644
> recipes-devtools/python/rpi-gpio/0001-Remove-nested-functions.patch
> >  rename recipes-devtools/python/{rpi-gpio_0.5.11.bb => rpi-gpio_0.6.1.bb}
> (70%)
> >  create mode 100644
> recipes-devtools/python/rpio/0001-include-sys-types.h-explicitly-for-getting-caddr_t-d.patch
> >  create mode 100644
> recipes-devtools/wiringPi/wiringpi/0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch
> >  create mode 100644 recipes-graphics/eglinfo/eglinfo-fb_%.bbappend
> >  create mode 100644 recipes-graphics/eglinfo/eglinfo-x11_%.bbappend
> >  delete mode 100644
> recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch
> >  delete mode 100644
> recipes-graphics/userland/userland/0002-fix-musl-build.patch
> >  delete mode 100644
> recipes-graphics/userland/userland/0003-fix-alloc-size-uninitialized.patch
> >  create mode 100644
> recipes-graphics/userland/userland/0005-Allow-applications-to-set-next-resource-handle.patch
> >  create mode 100644
> recipes-graphics/userland/userland/0006-wayland-Add-support-for-the-Wayland-winsys.patch
> >  create mode 100644
> recipes-graphics/userland/userland/0007-wayland-Add-Wayland-example.patch
> >  create mode 100644
> recipes-graphics/userland/userland/0008-wayland-egl-Add-bcm_host-to-dependencies.patch
> >  create mode 100644
> recipes-graphics/userland/userland/0009-interface-remove-faulty-assert-to-make-weston-happy-.patch
> >  create mode 100644
> recipes-graphics/userland/userland/0010-zero-out-wl-buffers-in-egl_surface_free.patch
> >  create mode 100644
> recipes-graphics/userland/userland/0011-initialize-front-back-wayland-buffers.patch
> >  create mode 100644
> recipes-graphics/userland/userland/0012-Remove-RPC_FLUSH.patch
> >  create mode 100644
> recipes-graphics/userland/userland/0013-fix-cmake-dependency-race.patch
> >  create mode 100644
> recipes-graphics/userland/userland/0014-Fix-enum-conversion-warnings.patch
> >  create mode 100644 recipes-graphics/wayland/weston_%.bbappend
> >  create mode 100644 recipes-graphics/weston/weston_%.bbappend
> >  copy recipes-kernel/linux/{linux-raspberrypi_4.1.bb =>
> linux-raspberrypi_4.4.bb} (50%)
> >  create mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx/0001-config-files-path.patch
> >  create mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx/0002-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
> >  create mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx/0003-fix-decoder-flushing.patch
> >  create mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx/0003-no-timeout-on-get-state.patch
> >  create mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx/0004-Properly-handle-drain-requests-while-flushing.patch
> >  create mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
> >  create mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
> >
> > --
> > 1.9.1
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b5d392a914af0052d12ce98
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Khen,<div><br></div><div>I started to merge the ones th=
at were obvious. The rest need rebasing, conflict fixing and so on. And the=
n I test them locally. So it will take a while. But I&#39;ll merge as I tes=
t. So you can easily see the progress.</div><div class=3D"gmail_extra"><br =
clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div><di=
v dir=3D"ltr"><div>--</div>Andrei Gherzan</div></div></div></div></div>
<br><div class=3D"gmail_quote">On Wed, Mar 2, 2016 at 3:21 PM, Khem Raj <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">=
raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
Andrei<br>
<br>
I see you merged few of patches from here<br>
What is status of rest of series ?<br>
<br>
This series has been tested to work with Webkit and weston images<br>
on Pi2<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<br>
On Sat, Feb 27, 2016 at 7:26 AM, Khem Raj &lt;<a href=3D"mailto:raj.khem@gm=
ail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt; This patchset has been growing for a while, Adds recipes for kenrel 4.=
4 and switches<br>
&gt; to use kernel 4.4<br>
&gt; Fixes userland to compile with clang<br>
&gt; Upgrade userland to latest<br>
&gt; Add option to support GPU_MEM_1024<br>
&gt; Upgrade firmware to latest<br>
&gt;<br>
&gt; Khem Raj (23):<br>
&gt;=C2=A0 =C2=A0userland: Upgrade to latest git master<br>
&gt;=C2=A0 =C2=A0userland: Fix build with clang compiler<br>
&gt;=C2=A0 =C2=A0userland: Add wayland support<br>
&gt;=C2=A0 =C2=A0weston: Enable rpi compositor backend<br>
&gt;=C2=A0 =C2=A0rpi-gpio: Upgrade to 0.6.1 and fix build with clang<br>
&gt;=C2=A0 =C2=A0eglinfo-x11,eglinfo-fb: Add EGLINFO_DEVICE via bbappends<b=
r>
&gt;=C2=A0 =C2=A0python-rtimu: Fix build with musl<br>
&gt;=C2=A0 =C2=A0wiringPi: Fix build with musl<br>
&gt;=C2=A0 =C2=A0Delete rpc flushing of thread in glEGLImageTargetTexture2D=
OES<br>
&gt;=C2=A0 =C2=A0rpio: Include sys/types.h for caddr_t<br>
&gt;=C2=A0 =C2=A0userland: Define PROJECT_APIVER and rprovide libgles2 libg=
l<br>
&gt;=C2=A0 =C2=A0userland: Add wayland to deps if in DISTRO_FEATURES<br>
&gt;=C2=A0 =C2=A0userland: Fix build race with wayland support<br>
&gt;=C2=A0 =C2=A0gstreamer1.0-omx: Add raspberry pi optimization patches an=
d config<br>
&gt;=C2=A0 =C2=A0 =C2=A0options<br>
&gt;=C2=A0 =C2=A0weston: Specify egl and compositor options for rpi<br>
&gt;=C2=A0 =C2=A0gstreamer1.0-omx: Backports and fixes for smooth video pla=
yback<br>
&gt;=C2=A0 =C2=A0linux-raspberrypi: Upgrade 4.1 kernel to 4.1.17<br>
&gt;=C2=A0 =C2=A0firmware: Upgrade to latest stable 20160209<br>
&gt;=C2=A0 =C2=A0rpi-config: Upgrade to tip of tree to get GPU_MEM_1024<br>
&gt;=C2=A0 =C2=A0linux-raspberrypi: Add recipe for 4.4 release<br>
&gt;=C2=A0 =C2=A0userland: Upgrade to latest<br>
&gt;=C2=A0 =C2=A0linux-raspberrypi: Upgrade 4.4.1 -&gt; 4.4.2<br>
&gt;=C2=A0 =C2=A0userland: Drop extern inline patches<br>
&gt;<br>
&gt;=C2=A0 README=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 2 +<br>
&gt;=C2=A0 conf/machine/include/rpi-default-versions.inc=C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A0 2 +-<br>
&gt;=C2=A0 recipes-bsp/bootfiles/<a href=3D"http://bcm2835-bootfiles.bb" re=
l=3D"noreferrer" target=3D"_blank">bcm2835-bootfiles.bb</a>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 2 +-<br>
&gt;=C2=A0 recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" rel=
=3D"noreferrer" target=3D"_blank">rpi-config_git.bb</a>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 5 +-<br>
&gt;=C2=A0 recipes-bsp/common/firmware.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 4 +-<br>
&gt;=C2=A0 ...0001-include-asm-ioctl.h-for-ioctl-define.patch |=C2=A0 =C2=
=A033 +<br>
&gt;=C2=A0 recipes-devtools/python/<a href=3D"http://python-rtimu_git.bb" r=
el=3D"noreferrer" target=3D"_blank">python-rtimu_git.bb</a>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A0 4 +-<br>
&gt;=C2=A0 .../rpi-gpio/0001-Remove-nested-functions.patch=C2=A0 =C2=A0 |=
=C2=A0 294 +++<br>
&gt;=C2=A0 .../{<a href=3D"http://rpi-gpio_0.5.11.bb" rel=3D"noreferrer" ta=
rget=3D"_blank">rpi-gpio_0.5.11.bb</a> =3D&gt; <a href=3D"http://rpi-gpio_0=
.6.1.bb" rel=3D"noreferrer" target=3D"_blank">rpi-gpio_0.6.1.bb</a>}=C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A0 6 +-<br>
&gt;=C2=A0 ...-types.h-explicitly-for-getting-caddr_t-d.patch |=C2=A0 =C2=
=A030 +<br>
&gt;=C2=A0 recipes-devtools/python/<a href=3D"http://rpio_0.10.0.bb" rel=3D=
"noreferrer" target=3D"_blank">rpio_0.10.0.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 6 +-<br>
&gt;=C2=A0 ...de-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch |=C2=A0 =C2=
=A058 +<br>
&gt;=C2=A0 recipes-devtools/wiringPi/<a href=3D"http://wiringpi_git.bb" rel=
=3D"noreferrer" target=3D"_blank">wiringpi_git.bb</a>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A0 8 +-<br>
&gt;=C2=A0 recipes-graphics/eglinfo/eglinfo-fb_%.bbappend=C2=A0 =C2=A0 =C2=
=A0|=C2=A0 =C2=A0 1 +<br>
&gt;=C2=A0 recipes-graphics/eglinfo/eglinfo-x11_%.bbappend=C2=A0 =C2=A0 |=
=C2=A0 =C2=A0 1 +<br>
&gt;=C2=A0 .../userland/0001-fix-gcc-5.x-inlines.patch=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 =C2=A026 -<br>
&gt;=C2=A0 .../userland/userland/0002-fix-musl-build.patch=C2=A0 =C2=A0 |=
=C2=A0 =C2=A022 -<br>
&gt;=C2=A0 .../0002-set-VMCS_INSTALL_PREFIX-to-usr.patch=C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A0 7 +-<br>
&gt;=C2=A0 ...make-generate-and-install-pkgconfig-files.patch |=C2=A0 =C2=
=A024 +-<br>
&gt;=C2=A0 .../0003-fix-alloc-size-uninitialized.patch=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 =C2=A013 -<br>
&gt;=C2=A0 ...-applications-to-set-next-resource-handle.patch |=C2=A0 208 +=
++<br>
&gt;=C2=A0 ...ayland-Add-support-for-the-Wayland-winsys.patch | 1880 ++++++=
++++++++++++++<br>
&gt;=C2=A0 .../0007-wayland-Add-Wayland-example.patch=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 866 +++++++++<br>
&gt;=C2=A0 ...-wayland-egl-Add-bcm_host-to-dependencies.patch |=C2=A0 =C2=
=A028 +<br>
&gt;=C2=A0 ...emove-faulty-assert-to-make-weston-happy-.patch |=C2=A0 =C2=
=A029 +<br>
&gt;=C2=A0 ...0-zero-out-wl-buffers-in-egl_surface_free.patch |=C2=A0 =C2=
=A033 +<br>
&gt;=C2=A0 ...011-initialize-front-back-wayland-buffers.patch |=C2=A0 =C2=
=A034 +<br>
&gt;=C2=A0 .../userland/userland/0012-Remove-RPC_FLUSH.patch=C2=A0 |=C2=A0 =
=C2=A027 +<br>
&gt;=C2=A0 .../userland/0013-fix-cmake-dependency-race.patch=C2=A0 |=C2=A0 =
=C2=A078 +<br>
&gt;=C2=A0 .../0014-Fix-enum-conversion-warnings.patch=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 =C2=A099 ++<br>
&gt;=C2=A0 recipes-graphics/userland/<a href=3D"http://userland_git.bb" rel=
=3D"noreferrer" target=3D"_blank">userland_git.bb</a>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A033 +-<br>
&gt;=C2=A0 recipes-graphics/wayland/weston_%.bbappend=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 =C2=A0 4 +<br>
&gt;=C2=A0 recipes-graphics/weston/weston_%.bbappend=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A0 7 +<br>
&gt;=C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.1.bb"=
 rel=3D"noreferrer" target=3D"_blank">linux-raspberrypi_4.1.bb</a>=C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A0 4 +-<br>
&gt;=C2=A0 ...<a href=3D"http://raspberrypi_4.1.bb" rel=3D"noreferrer" targ=
et=3D"_blank">raspberrypi_4.1.bb</a> =3D&gt; <a href=3D"http://linux-raspbe=
rrypi_4.4.bb" rel=3D"noreferrer" target=3D"_blank">linux-raspberrypi_4.4.bb=
</a>} |=C2=A0 =C2=A0 6 +-<br>
&gt;=C2=A0 .../gstreamer1.0-omx/0001-config-files-path.patch=C2=A0 |=C2=A0 =
137 ++<br>
&gt;=C2=A0 ...o-acquire-buffer-when-src-pad-isn-t-activ.patch |=C2=A0 =C2=
=A047 +<br>
&gt;=C2=A0 .../0003-fix-decoder-flushing.patch=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A015 +<br>
&gt;=C2=A0 .../0003-no-timeout-on-get-state.patch=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A016 +<br>
&gt;=C2=A0 ...erly-handle-drain-requests-while-flushing.patch |=C2=A0 =C2=
=A069 +<br>
&gt;=C2=A0 ...-gst_omx_video_dec_set_format-if-there-s-.patch |=C2=A0 =C2=
=A030 +<br>
&gt;=C2=A0 .../gstreamer/gstreamer1.0-omx_%.bbappend=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A022 +<br>
&gt;=C2=A0 42 files changed, 4114 insertions(+), 106 deletions(-)<br>
&gt;=C2=A0 create mode 100644 recipes-devtools/python/python-rtimu/0001-inc=
lude-asm-ioctl.h-for-ioctl-define.patch<br>
&gt;=C2=A0 create mode 100644 recipes-devtools/python/rpi-gpio/0001-Remove-=
nested-functions.patch<br>
&gt;=C2=A0 rename recipes-devtools/python/{<a href=3D"http://rpi-gpio_0.5.1=
1.bb" rel=3D"noreferrer" target=3D"_blank">rpi-gpio_0.5.11.bb</a> =3D&gt; <=
a href=3D"http://rpi-gpio_0.6.1.bb" rel=3D"noreferrer" target=3D"_blank">rp=
i-gpio_0.6.1.bb</a>} (70%)<br>
&gt;=C2=A0 create mode 100644 recipes-devtools/python/rpio/0001-include-sys=
-types.h-explicitly-for-getting-caddr_t-d.patch<br>
&gt;=C2=A0 create mode 100644 recipes-devtools/wiringPi/wiringpi/0001-inclu=
de-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch<br>
&gt;=C2=A0 create mode 100644 recipes-graphics/eglinfo/eglinfo-fb_%.bbappen=
d<br>
&gt;=C2=A0 create mode 100644 recipes-graphics/eglinfo/eglinfo-x11_%.bbappe=
nd<br>
&gt;=C2=A0 delete mode 100644 recipes-graphics/userland/userland/0001-fix-g=
cc-5.x-inlines.patch<br>
&gt;=C2=A0 delete mode 100644 recipes-graphics/userland/userland/0002-fix-m=
usl-build.patch<br>
&gt;=C2=A0 delete mode 100644 recipes-graphics/userland/userland/0003-fix-a=
lloc-size-uninitialized.patch<br>
&gt;=C2=A0 create mode 100644 recipes-graphics/userland/userland/0005-Allow=
-applications-to-set-next-resource-handle.patch<br>
&gt;=C2=A0 create mode 100644 recipes-graphics/userland/userland/0006-wayla=
nd-Add-support-for-the-Wayland-winsys.patch<br>
&gt;=C2=A0 create mode 100644 recipes-graphics/userland/userland/0007-wayla=
nd-Add-Wayland-example.patch<br>
&gt;=C2=A0 create mode 100644 recipes-graphics/userland/userland/0008-wayla=
nd-egl-Add-bcm_host-to-dependencies.patch<br>
&gt;=C2=A0 create mode 100644 recipes-graphics/userland/userland/0009-inter=
face-remove-faulty-assert-to-make-weston-happy-.patch<br>
&gt;=C2=A0 create mode 100644 recipes-graphics/userland/userland/0010-zero-=
out-wl-buffers-in-egl_surface_free.patch<br>
&gt;=C2=A0 create mode 100644 recipes-graphics/userland/userland/0011-initi=
alize-front-back-wayland-buffers.patch<br>
&gt;=C2=A0 create mode 100644 recipes-graphics/userland/userland/0012-Remov=
e-RPC_FLUSH.patch<br>
&gt;=C2=A0 create mode 100644 recipes-graphics/userland/userland/0013-fix-c=
make-dependency-race.patch<br>
&gt;=C2=A0 create mode 100644 recipes-graphics/userland/userland/0014-Fix-e=
num-conversion-warnings.patch<br>
&gt;=C2=A0 create mode 100644 recipes-graphics/wayland/weston_%.bbappend<br=
>
&gt;=C2=A0 create mode 100644 recipes-graphics/weston/weston_%.bbappend<br>
&gt;=C2=A0 copy recipes-kernel/linux/{<a href=3D"http://linux-raspberrypi_4=
.1.bb" rel=3D"noreferrer" target=3D"_blank">linux-raspberrypi_4.1.bb</a> =
=3D&gt; <a href=3D"http://linux-raspberrypi_4.4.bb" rel=3D"noreferrer" targ=
et=3D"_blank">linux-raspberrypi_4.4.bb</a>} (50%)<br>
&gt;=C2=A0 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx=
/0001-config-files-path.patch<br>
&gt;=C2=A0 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx=
/0002-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch<br>
&gt;=C2=A0 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx=
/0003-fix-decoder-flushing.patch<br>
&gt;=C2=A0 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx=
/0003-no-timeout-on-get-state.patch<br>
&gt;=C2=A0 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx=
/0004-Properly-handle-drain-requests-while-flushing.patch<br>
&gt;=C2=A0 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx=
/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch<br>
&gt;=C2=A0 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx=
_%.bbappend<br>
&gt;<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div></div>

--047d7b5d392a914af0052d12ce98--
