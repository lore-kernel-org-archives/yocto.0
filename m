Return-Path: <kergoth@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C8EEE011AC
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2012 12:22:33 -0800 (PST)
Received: by mail-oa0-f48.google.com with SMTP id h2so2209638oag.35
	for <yocto@yoctoproject.org>; Sun, 09 Dec 2012 12:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=fvpLkeTqblpuqiST+j7a3Xfh3FSpvfP+e7bKUmXYPVE=;
	b=z0Ilje9BdS8PBFG/PkQdhNh7M+4nclodpEfU9QSjXUMN/8ldFrDp38IZ7qx8NcHtej
	ApZFCylJ8/qZMZpMY/GS7/1yOnk8AwIhipXHFi/Abv71+VZdvC4yKLAhpcbrM55I/0mx
	Fn5Uku3918oO/9ILgYRUUYwa5X1F57SVcn1ZFzajx183Z60Gh/zeYu/ePVX7MXHkPPAU
	8B379cy2A0Kxmfc7DayGg/ipc2Bdoa/WgUZ+v0Vupv+2xzcKNkXD4zd/JN/ULHmCTjOD
	6JQeDBxaZaHQtc+fwClMbCuRvwKK6jtYqelIZI2+fR7vumArPuiue3hWA2sdtS5SCis/
	aeTg==
Received: by 10.60.5.231 with SMTP id v7mr6399859oev.62.1355084552382; Sun, 09
	Dec 2012 12:22:32 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.76.35.37 with HTTP; Sun, 9 Dec 2012 12:22:11 -0800 (PST)
In-Reply-To: <50C4EF27.2030106@gmail.com>
References: <50C4EF27.2030106@gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Sun, 9 Dec 2012 13:22:11 -0700
X-Google-Sender-Auth: rkoxNbRaI4ZaTum8ixqPY7P9YYY
Message-ID: <CABcZANkrepKpLpXJqk7m66U=YRRj_iOktFS+t8Cvf95J1cd5cA@mail.gmail.com>
To: koansoftware@gmail.com
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: bitbake -c devshell option
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 09 Dec 2012 20:22:33 -0000
Content-Type: multipart/alternative; boundary=e89a8ff2535062a7c104d07135d6

--e89a8ff2535062a7c104d07135d6
Content-Type: text/plain; charset=UTF-8

On Sun, Dec 9, 2012 at 1:05 PM, Marco <koansoftware@gmail.com> wrote:

> I was used to work with oe-classic.
> When I used oe-classic, often I used the 'devshell' option to try to
> compile (make uImage) the kernel with the entire environment set up
> correctly.
> Now if I do the same procedure with Yocto 8 Danny it does not work.
> For example I'm using a default configuration below:
>
> 1st step
> ---
> MACHINE="beagleboard" bitbake -c devshell virtual/kernel
>
> Build Configuration:
> BB_VERSION        = "1.16.0"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "beagleboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3"
> TUNE_FEATURES     = "armv7a vfp neon cortexa8"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "danny:**09031ac2fc0f30ec577ee823fc61ff**0e5d852e21"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Tasks Summary: Attempted 912 tasks of which 912 didn't need to be
> rerun and all succeeded.
>
>
> 2nd step just after 1st
> ------------------------
> MACHINE="beagleboard" bitbake -c devshell virtual/kernel
>
> - Devshell starts in a new screen
> ------------------------
> $ pwd
> ~/yocto-8-danny/poky/build/**tmp/work/beagleboard-poky-**
> linux-gnueabi/linux-yocto-3.4.**11+git1+**a201268353c030d9fafe00f2041976**
> f7437d9386_1+**449f7f520350700858f21a5554b81c**c8ad23267d-r4.3/linux
>
> - lauch a kernel build (as I was used to do)
> ------------------------
> $ make
> scripts/kconfig/conf --silentoldconfig Kconfig
> ***
> *** Configuration file ".config" not found!
> ***
> *** Please run some configurator (e.g. "make oldconfig" or
> *** "make menuconfig" or "make xconfig").
> ***
> make[2]: *** [silentoldconfig] Error 1
> make[1]: *** [silentoldconfig] Error 2
> make: *** No rule to make target `include/config/auto.conf', needed by
> `include/config/kernel.**release'.  Stop.
>
>
> I would like to find out whether you can still do this and what is the new
> way to go
>


devshell runs with the source tree unpacked and patched. It has never
guaranteed that the sources would already be *configured* at that time,
either in oe-classic or current. Run a bitbake -c configure virtual/kernel
first, or just use -c menuconfig.
-- 
Christopher Larson

--e89a8ff2535062a7c104d07135d6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Sun, Dec 9=
, 2012 at 1:05 PM, Marco <span dir=3D"ltr">&lt;<a href=3D"mailto:koansoftwa=
re@gmail.com" target=3D"_blank">koansoftware@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">

<div id=3D":5j">I was used to work with oe-classic.<br>
When I used oe-classic, often I used the &#39;devshell&#39; option to try t=
o compile (make uImage) the kernel with the entire environment set up corre=
ctly.<br>
Now if I do the same procedure with Yocto 8 Danny it does not work.<br>
For example I&#39;m using a default configuration below:<br>
<br>
1st step<br>
---<br>
MACHINE=3D&quot;beagleboard&quot; bitbake -c devshell virtual/kernel<br>
<br>
Build Configuration:<br>
BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.16.0&quot;<br>
TARGET_ARCH =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm&quot;<br>
TARGET_OS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;linux-gnueabi&quot;<br>
MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;beagleboard&quot;<br>
DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;<br>
DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;1.3&quot;<br>
TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;armv7a vfp neon cortexa8&quot;<br>
TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;vfp-neon&quot;<br>
meta<br>
meta-yocto<br>
meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;danny:<u></u>09031ac2fc0f30ec577ee823=
fc61ff<u></u>0e5d852e21&quot;<br>
<br>
NOTE: Resolving any missing task queue dependencies<br>
NOTE: Preparing runqueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
NOTE: Tasks Summary: Attempted 912 tasks of which 912 didn&#39;t need to be=
 rerun and all succeeded.<br>
<br>
<br>
2nd step just after 1st<br>
------------------------<br>
MACHINE=3D&quot;beagleboard&quot; bitbake -c devshell virtual/kernel<br>
<br>
- Devshell starts in a new screen<br>
------------------------<br>
$ pwd<br>
~/yocto-8-danny/poky/build/<u></u>tmp/work/beagleboard-poky-<u></u>linux-gn=
ueabi/linux-yocto-3.4.<u></u>11+git1+<u></u>a201268353c030d9fafe00f2041976<=
u></u>f7437d9386_1+<u></u>449f7f520350700858f21a5554b81c<u></u>c8ad23267d-r=
4.3/linux<br>


<br>
- lauch a kernel build (as I was used to do)<br>
------------------------<br>
$ make<br>
scripts/kconfig/conf --silentoldconfig Kconfig<br>
***<br>
*** Configuration file &quot;.config&quot; not found!<br>
***<br>
*** Please run some configurator (e.g. &quot;make oldconfig&quot; or<br>
*** &quot;make menuconfig&quot; or &quot;make xconfig&quot;).<br>
***<br>
make[2]: *** [silentoldconfig] Error 1<br>
make[1]: *** [silentoldconfig] Error 2<br>
make: *** No rule to make target `include/config/auto.conf&#39;, needed by =
`include/config/kernel.<u></u>release&#39;. =C2=A0Stop.<br>
<br>
<br>
I would like to find out whether you can still do this and what is the new =
way to go<br></div></blockquote></div><br><br clear=3D"all"><div>devshell r=
uns with the source tree unpacked and patched. It has never guaranteed that=
 the sources would already be *configured* at that time, either in oe-class=
ic or current. Run a bitbake -c configure virtual/kernel first, or just use=
 -c menuconfig.</div>

-- <br>Christopher Larson<br>
</div>

--e89a8ff2535062a7c104d07135d6--
