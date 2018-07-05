Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A945E00E6A; Wed,  4 Jul 2018 23:23:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD6B5E00A4C
	for <yocto@yoctoproject.org>; Wed,  4 Jul 2018 23:23:19 -0700 (PDT)
Received: by mail-lf0-f52.google.com with SMTP id y127-v6so5962288lfc.8
	for <yocto@yoctoproject.org>; Wed, 04 Jul 2018 23:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bmrULt9wFijtFwmOPkZmwZIqDladXqLUx1a5DNYCzaU=;
	b=QBDYRJGEEe80wogOw7k5U9wnRwk3B/GYEoFT9mjXJh4kPRbjKIFxw9XSq9Ktj+eneM
	xDBshJFlIZPj3LS3yM1tXkJG1gQZ8EeBmpIOCs8XltKDaYIvxDJdXzOLHBwinGeVhXwV
	Cil8uHyeRiqyjduAoaW7erlna5wpukcHOMCGnMtAef+cSwH/L/ktL+7fYgafrPCw7ZWw
	0bdaA5HX3gzMaQKIm+0K5wNGnHU50XnK2I3b73ukFAOI6fbDvph2uY0S9CxgEdyHpymr
	zvYo6qCksvDqSSauPqi2OvK9yi5mXBPyBw46pck8UkP/z3Dd1wlzm2FNb/UdvAAX7kJP
	NRKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bmrULt9wFijtFwmOPkZmwZIqDladXqLUx1a5DNYCzaU=;
	b=Cri0wXRPZ+o+8vcJavIywkJam67mKtrUiDqCNzdol56mm4+pb1CY41NC6fJxSN6uz0
	6FTRuZQLMaXPoFILdbMAdJbb9FjFs3n4eIWHeHKzsapGf8FloddRvJ4h/JANNVK66oV5
	kIRCm5Dxt7NUBjmdsEH9/gOJH1w0guX0SNlo3UQQ28t4gr7d9IKwtV9JfqN84SNNdpF6
	Nj/jLlX//wOwgEkhrbISU3/bZBS20QPZHglQeDbKXBBLy/545rqXpwJC/LnjTeSitE36
	BaArxyVeo7d1ErtPMD+VM3mPgVbCCeKL4CYIphpYrfWpD+ulC7AvvyDD2HSmX6Dpi0Fl
	+RSg==
X-Gm-Message-State: APt69E2A+W9BjpMncBsOSVtYLW513qhafLvxEAZ8Rq2wf11qxDOXcHCh
	pK3rmd2PRbZLXCe6eGaO/BwNORJOFIuodPGBA2c=
X-Google-Smtp-Source: AAOMgpe+U0OqAQUZaWb9cJDZa8nXuPySf0xIHc/4am4+So7YI+VZhW8a+BdpU6SojzbfCi+nG2wYI5y+qKez/aF3Ljo=
X-Received: by 2002:a19:c218:: with SMTP id
	l24-v6mr3497362lfc.55.1530771798456; 
	Wed, 04 Jul 2018 23:23:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:7014:0:0:0:0:0 with HTTP;
	Wed, 4 Jul 2018 23:23:17 -0700 (PDT)
In-Reply-To: <phj56a$5q5$1@blaine.gmane.org>
References: <CALh9vaX7aAYi59jJABfr5JXtoHXE6XVupfAwaHvRnVAAA5nDdA@mail.gmail.com>
	<phj56a$5q5$1@blaine.gmane.org>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 5 Jul 2018 08:23:17 +0200
Message-ID: <CAGAf8LyD4sNZXEDgPkFFqueUc-dou_8N_xureTdjtQcoT8jDHg@mail.gmail.com>
To: tdhammer99@gmail.com, Andre McCurdy <armccurdy@gmail.com>, ftoth@telfort.nl,
	prakashpks15@gmail.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: struggling with initramfs
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
X-List-Received-Date: Thu, 05 Jul 2018 06:23:21 -0000
Content-Type: multipart/alternative; boundary="000000000000477d8b05703a95ad"

--000000000000477d8b05703a95ad
Content-Type: text/plain; charset="UTF-8"

Hello to all,

I have my own YOCTO recipe how I do the initramfs.

Usually, some of these are missing in kernel .config file:

CONFIG_BLK_DEV_INITRD=y
CONFIG_RD_GZIP=y
CONFIG_RD_BZIP2=y
CONFIG_RD_LZMA=y
CONFIG_RD_XZ=y
CONFIG_RD_LZO=y
CONFIG_RD_LZ4=y

Please, check (they should be on) the CONFIG_DECOMPRESS_* options and if
not, please, turn them on.

To do this, please, for YOCTO use the following (to reconfigure kernel
.config):
bitbake -c menuconfig virtual/kernel

Also, in the local.conf I have the following set:

DISTRO_FEATURES_append = " ram"
IMAGE_FSTYPES_append = " cpio.xz"

Then I do: bitbake -k core-image-minimal, and from:
.../build/tmp/tmp/deploy/images/<platform_name>

Take my <initramfs_name>.cpio.xz as initramfs. Also, I take accordingly
zImage and .dtb files as well.

I prepend to initramfs.cpio.xz u-boot header:
mkimage -n 'Ramdisk Image'  -A arm -O linux -T ramdisk -C gzip -d
initramfs.cpio.xz initramfs.cpio.xz.uboot

And then write tiny U-Boot ash script to tftp (from host) all three files
to the target platform.

Works like a charm!

Zoran
_______


On Wed, Jul 4, 2018 at 8:57 PM, Ferry Toth <ftoth@telfort.nl> wrote:

> Tim Hammer wrote:
>
> > Can anyone point me to a step-by-step tutorial or simple how-to on
> > creating and using an initramfs with my kernel for ARM aarch64?
> >
> >
> > I have tried creating my own:
> >  - boot-image.bb file with IMAGE_FSTYPES = "cpio.gz".
> >  - local.conf has INITRAMFS_IMAGE_BUNDLE = "1"
> >  - linux.bbappend has INITRAMFS_IMAGE = "boot-image"
> >
> > This all seems to be "correct" to the extent that bitbake linux tries to
> > do the right thing.
> >
> > However, I get a failure in do_bundle_initramfs- "mv: cannot stat
> > 'arch/arm64/boot/Image': No such file or directory".
> >
> > To the best of my (limited) debugging abilities with Yocto, it seems like
> > the kernel image backup has already been run when it gets to this point
> > and the Image file in that directory has already been moved to Image.bak.
> > If I comment out the mv statement in kernel.bbclass causing the failure,
> > the process continues, but the initramfs does not seem to get populated
> or
> > perhaps installed into my kernel image as I get kernel panics that I have
> > been unable to get past.
> >
> >
> > I decided to take a different approach and try using the
> > core-image-minimal-initramfs recipe as INITRAMFS_IMAGE. By commenting out
> > the COMPATIBLE_HOST entry I am able to build a kernel for ARM aarch64. I
> > can even seem to boot into this initramfs- it counts down waiting for
> > removable media; seems to find my primary rootfs on sda3, but there is no
> > rootfs.img file there so says it is dropping to a shell (although I never
> > get a prompt...).
>
> We have taken this approach here
> https://github.com/edison-fw/meta-intel-edison/tree/master/
> meta-intel-edison-distro/recipes-core
>
> There are 2 images, the rootfs and the initramfs. And we overload the
> init-live.sh
> to load certain kernel modules and acpi-tables then switchroot to the
> rootfs.
>
> > Thinking I could start with that recipe and work to get rid of the live
> > stuff and just get to a busybox prompt before trying to run my unique
> init
> > commands, I copied  core-image-minimal-initramfs.bb to my-
> > core-image-minimal-initramfs.bb in my layer and changed INITRAMFS_IMAGE
> to
> > "my- core-image-minimal-initramfs".
> > However, I obviously missed something in the configuration as I get an
> > error in go_bundle_initramfs again:
> >      kernel-source/scripts/gen_initramfs_list.sh:
> >                  Cannot open
> > '/.../linux-qoriq/4.14-r0/build/usr/my-core-image-
> minimal-initramfs-{machine}.cpio'
> >
> > Any help would be greatly appreciated.
> > Thank you!
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000477d8b05703a95ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello to all,<br><br>I have my own YOCTO recipe how I do t=
he initramfs.<br><br>Usually, some of these are missing in kernel .config f=
ile:<br><br>CONFIG_BLK_DEV_INITRD=3Dy<br>CONFIG_RD_GZIP=3Dy<br>CONFIG_RD_BZ=
IP2=3Dy<br>CONFIG_RD_LZMA=3Dy<br>CONFIG_RD_XZ=3Dy<br>CONFIG_RD_LZO=3Dy<br>C=
ONFIG_RD_LZ4=3Dy<br><br>Please, check (they should be on) the CONFIG_DECOMP=
RESS_* options and if not, please, turn them on.<br><br>To do this, please,=
 for YOCTO use the following (to reconfigure kernel .config):<br>bitbake -c=
 menuconfig virtual/kernel<br><br>Also, in the local.conf I have the follow=
ing set:<br><br>DISTRO_FEATURES_append =3D &quot; ram&quot;<br>IMAGE_FSTYPE=
S_append =3D &quot; cpio.xz&quot;<br><br>Then I do: bitbake -k core-image-m=
inimal, and from:<br>.../build/tmp/tmp/deploy/images/&lt;platform_name&gt; =
<br><br>Take my &lt;initramfs_name&gt;.cpio.xz as initramfs. Also, I take a=
ccordingly zImage and .dtb files as well.<br><br>I prepend to initramfs.cpi=
o.xz u-boot header:<br>mkimage -n &#39;Ramdisk Image&#39;=C2=A0 -A arm -O l=
inux -T ramdisk -C gzip -d initramfs.cpio.xz initramfs.cpio.xz.uboot<br><br=
>And then write tiny U-Boot ash script to tftp (from host) all three files =
to the target platform.<br><br>Works like a charm!<br><br>Zoran<br>_______<=
br><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On W=
ed, Jul 4, 2018 at 8:57 PM, Ferry Toth <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ftoth@telfort.nl" target=3D"_blank">ftoth@telfort.nl</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h=
5">Tim Hammer wrote:<br>
<br>
&gt; Can anyone point me to a step-by-step tutorial or simple how-to on<br>
&gt; creating and using an initramfs with my kernel for ARM aarch64?<br>
&gt; <br>
&gt; <br>
&gt; I have tried creating my own:<br>
&gt;=C2=A0 - <a href=3D"http://boot-image.bb" rel=3D"noreferrer" target=3D"=
_blank">boot-image.bb</a> file with IMAGE_FSTYPES =3D &quot;cpio.gz&quot;.<=
br>
&gt;=C2=A0 - local.conf has INITRAMFS_IMAGE_BUNDLE =3D &quot;1&quot;<br>
&gt;=C2=A0 - linux.bbappend has INITRAMFS_IMAGE =3D &quot;boot-image&quot;<=
br>
&gt; <br>
&gt; This all seems to be &quot;correct&quot; to the extent that bitbake li=
nux tries to<br>
&gt; do the right thing.<br>
&gt; <br>
&gt; However, I get a failure in do_bundle_initramfs- &quot;mv: cannot stat=
<br>
&gt; &#39;arch/arm64/boot/Image&#39;: No such file or directory&quot;.<br>
&gt; <br>
&gt; To the best of my (limited) debugging abilities with Yocto, it seems l=
ike<br>
&gt; the kernel image backup has already been run when it gets to this poin=
t<br>
&gt; and the Image file in that directory has already been moved to Image.b=
ak.<br>
&gt; If I comment out the mv statement in kernel.bbclass causing the failur=
e,<br>
&gt; the process continues, but the initramfs does not seem to get populate=
d or<br>
&gt; perhaps installed into my kernel image as I get kernel panics that I h=
ave<br>
&gt; been unable to get past.<br>
&gt; <br>
&gt; <br>
&gt; I decided to take a different approach and try using the<br>
&gt; core-image-minimal-initramfs recipe as INITRAMFS_IMAGE. By commenting =
out<br>
&gt; the COMPATIBLE_HOST entry I am able to build a kernel for ARM aarch64.=
 I<br>
&gt; can even seem to boot into this initramfs- it counts down waiting for<=
br>
&gt; removable media; seems to find my primary rootfs on sda3, but there is=
 no<br>
&gt; rootfs.img file there so says it is dropping to a shell (although I ne=
ver<br>
&gt; get a prompt...).<br>
<br>
</div></div>We have taken this approach here <br>
<a href=3D"https://github.com/edison-fw/meta-intel-edison/tree/master/meta-=
intel-edison-distro/recipes-core" rel=3D"noreferrer" target=3D"_blank">http=
s://github.com/edison-fw/<wbr>meta-intel-edison/tree/master/<wbr>meta-intel=
-edison-distro/<wbr>recipes-core</a><br>
<br>
There are 2 images, the rootfs and the initramfs. And we overload the init-=
live.sh <br>
to load certain kernel modules and acpi-tables then switchroot to the rootf=
s.<br>
<span class=3D"im HOEnZb"><br>
&gt; Thinking I could start with that recipe and work to get rid of the liv=
e<br>
&gt; stuff and just get to a busybox prompt before trying to run my unique =
init<br>
&gt; commands, I copied=C2=A0 <a href=3D"http://core-image-minimal-initramf=
s.bb" rel=3D"noreferrer" target=3D"_blank">core-image-minimal-initramfs.<wb=
r>bb</a> to my-<br>
&gt; <a href=3D"http://core-image-minimal-initramfs.bb" rel=3D"noreferrer" =
target=3D"_blank">core-image-minimal-initramfs.<wbr>bb</a> in my layer and =
changed INITRAMFS_IMAGE to<br>
&gt; &quot;my- core-image-minimal-initramfs&quot;.<br>
&gt; However, I obviously missed something in the configuration as I get an=
<br>
&gt; error in go_bundle_initramfs again:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 kernel-source/scripts/gen_<wbr>initramfs_list.sh:<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Cannot o=
pen<br>
&gt; &#39;/.../linux-qoriq/4.14-r0/<wbr>build/usr/my-core-image-<wbr>minima=
l-initramfs-{machine}.<wbr>cpio&#39;<br>
&gt; <br>
&gt; Any help would be greatly appreciated.<br>
&gt; Thank you!<br>
<br>
<br>
-- <br>
</span><div class=3D"HOEnZb"><div class=3D"h5">____________________________=
__<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--000000000000477d8b05703a95ad--
