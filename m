Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A523E00770
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2012 13:19:57 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so1686666lah.35
	for <yocto@yoctoproject.org>; Sun, 09 Dec 2012 13:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=jieF4B7rXWRal2gB3OkrDrptQgXuFpVPXOF8NqUMWdo=;
	b=gd/fddpleN+6mm6wH1IMtTSHYXWKqfsebaOxrLKLY61c2FmUeORWlUP6xQ25sJqJpR
	A+PuAy0oGM6CmQGEnhFGVyz8WdmRreMs4ETKJ+K3o7Tp2YBO4Xv7M8sPDpjf+L/vkhtJ
	YSGxpV4eXQ+SJ0m8KzSwPFVsfGyZQx2VM/nfNUhTc95G/fEsdIJH1JrUnlEAJfjndtUB
	7PxWfnypyAt6BuPAtjf2DqO6wHxMsfW3dCf0bGgFmUNSTaBjNQ2zSNkt6WfGPrr3sjA9
	yLZhL55dCdmZjoXQs9WiSz8DxuSr2pH9jRWG8Jkdsb3WjxTC1KhmBdlyvWZBw3Kq2/e5
	K9KA==
MIME-Version: 1.0
Received: by 10.152.108.42 with SMTP id hh10mr11743553lab.4.1355087995811;
	Sun, 09 Dec 2012 13:19:55 -0800 (PST)
Received: by 10.114.77.164 with HTTP; Sun, 9 Dec 2012 13:19:55 -0800 (PST)
In-Reply-To: <50C4EF27.2030106@gmail.com>
References: <50C4EF27.2030106@gmail.com>
Date: Sun, 9 Dec 2012 16:19:55 -0500
Message-ID: <CADkTA4NAdSTxwjMfSKVutev6ksRoDce9a9buVnZymVXpeXCJqw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: koansoftware@gmail.com
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
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
X-List-Received-Date: Sun, 09 Dec 2012 21:19:58 -0000
Content-Type: multipart/alternative; boundary=bcaec54fb9c6a1361304d0720299

--bcaec54fb9c6a1361304d0720299
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Dec 9, 2012 at 3:05 PM, Marco <koansoftware@gmail.com> wrote:

> Hello,
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

As Chris said, this way should still work, and it does work here for me.
There's
one thing that you may notice with kernel's that have split source/build
dirs
(like linux-yocto), is that once you have gone through the configure phase
and drop into the devshell you may not have KBUILT_OUTPUT set to the
build directory, and end up dropping files in the source dir .. which
causes you
mrproper and build issue.

I have a local append to devshell that sets:

      d.setVar("KBUILD_OUTPUT", "${B}")

To make sure things work.  If you need something like this as well, or have
problems with linux-yocot, I can arrange to have something like this added
by default. But since no one else has asked about it, I assumed no one else
is either using devshell, or they haven't run into it.

Cheers,

Bruce




>
> TIA
> --
> Marco Cavallini
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--bcaec54fb9c6a1361304d0720299
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Sun, D=
ec 9, 2012 at 3:05 PM, Marco <span dir=3D"ltr">&lt;<a href=3D"mailto:koanso=
ftware@gmail.com" target=3D"_blank">koansoftware@gmail.com</a>&gt;</span> w=
rote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">Hello,<br>
I was used to work with oe-classic.<br>
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
BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.16.0&quot;<br>
TARGET_ARCH =A0 =A0 =A0 =3D &quot;arm&quot;<br>
TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux-gnueabi&quot;<br>
MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;beagleboard&quot;<br>
DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
DISTRO_VERSION =A0 =A0=3D &quot;1.3&quot;<br>
TUNE_FEATURES =A0 =A0 =3D &quot;armv7a vfp neon cortexa8&quot;<br>
TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-neon&quot;<br>
meta<br>
meta-yocto<br>
meta-yocto-bsp =A0 =A0=3D &quot;danny:<u></u>09031ac2fc0f30ec577ee823fc61ff=
<u></u>0e5d852e21&quot;<br>
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
`include/config/kernel.<u></u>release&#39;. =A0Stop.<br>
<br>
<br>
I would like to find out whether you can still do this and what is the new =
way to go<br></blockquote><div><br></div><div>As Chris said, this way shoul=
d still work, and it does work here for me. There&#39;s</div><div>one thing=
 that you may notice with kernel&#39;s that have split source/build dirs</d=
iv>
<div>(like linux-yocto), is that once you have gone through the configure p=
hase<br></div><div>and drop into the devshell you may not have KBUILT_OUTPU=
T set to the=A0</div><div>build directory, and end up dropping files in the=
 source dir .. which causes you</div>
<div>mrproper and build issue.</div><div><br></div><div>I have a local appe=
nd to devshell that sets:</div><div><br></div><div>=A0 =A0 =A0 d.setVar(&qu=
ot;KBUILD_OUTPUT&quot;, &quot;${B}&quot;)</div><div><br></div><div>To make =
sure things work. =A0If you need something like this as well, or have</div>
<div>problems with linux-yocot, I can arrange to have something like this a=
dded</div><div>by default. But since no one else has asked about it, I assu=
med no one else</div><div>is either using devshell, or they haven&#39;t run=
 into it.</div>
<div><br></div><div>Cheers,</div><div><br></div><div>Bruce</div><div><br></=
div><div><br></div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,2=
04,204);border-left-style:solid;padding-left:1ex">

<br>
TIA<span class=3D""><font color=3D"#888888"><br>
-- <br>
Marco Cavallini<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r>&quot;Thou shalt not follow the NULL pointer, for chaos and madness await=
 thee at its end&quot;<br>
</div>

--bcaec54fb9c6a1361304d0720299--
