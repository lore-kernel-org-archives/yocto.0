Return-Path: <sudhangathan@gmail.com>
Received: from mail-qe0-f52.google.com (mail-qe0-f52.google.com
	[209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 736E5E00798
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2013 13:48:45 -0800 (PST)
Received: by mail-qe0-f52.google.com with SMTP id ne12so4460145qeb.11
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2013 13:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=iZFuWgFaXRin2HiQBAFS9iWkDphh5wxfO9kqdAABHxk=;
	b=HlKNNKFZ4C/2FMgryGOEjuiaZt1bYeX0GPLg1JQTboWmx5TKQ9Tq4Q2kuXY2W4Ke9v
	4CVGD66WOf9eNs6SL0NtxA0PJlfQEbLPU5Oc+OKpkVUlyu8jn2tR/KOsq4uUe0fGSXIk
	y5FtPI8fgjLPYZFx+IeEwKKL/ywY5RFMJwMLVvhzJS/Z6NJuydjoSXItMht8gTV7L1FW
	KU+yv6EaVGfSkl1G+rZoZUVwZkTvE7vr6sdWv0YTPwfENgpKmy7SlCxkX3kqUjKghuX1
	ajuOM+Pb1hjFwO7lkcVp8yQ2y0XDmp5/LtBBG5OcsUdanUeHFW6KZqRQY4eZEDOVxkxO
	pS9g==
X-Received: by 10.229.56.200 with SMTP id z8mr36396073qcg.1.1387230524879;
	Mon, 16 Dec 2013 13:48:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.224.22.134 with HTTP; Mon, 16 Dec 2013 13:48:24 -0800 (PST)
In-Reply-To: <52AF26DB.4070509@windriver.com>
References: <CAGX3a99HP8-gseen9mzKB_g2hSGCeLGt0oFe4t6MDOazqSaGdQ@mail.gmail.com>
	<52A8109A.50705@windriver.com>
	<CAGX3a9-Nn+FYRbz4o_MrtV7-uBDxshaTTX6Kvyi4bp10mkhyYQ@mail.gmail.com>
	<52A8D4A7.5000807@windriver.com>
	<CAGX3a986aPD-GBjFMfRpZZjrssUXE2=t=gACKg24ERMVVTTydQ@mail.gmail.com>
	<52AF26DB.4070509@windriver.com>
From: Sudhangathan B S <sudhangathan@gmail.com>
Date: Tue, 17 Dec 2013 03:18:24 +0530
Message-ID: <CAGX3a9-_MCaHrAyk4GbOvALFjfC7BUVSnp4E2QD3qjoJ5ksSLA@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"Gumstix users." <gumstix-users@lists.sourceforge.net>
Subject: Re: Compiling kernel from external source in Yocto
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
X-List-Received-Date: Mon, 16 Dec 2013 21:48:48 -0000
Content-Type: multipart/alternative; boundary=001a113308a4a838b804edadc63f

--001a113308a4a838b804edadc63f
Content-Type: text/plain; charset=ISO-8859-1

First of all Thanks Bruce...!!!! for trying..!
That helped me to understand a lot..
I'm using sakoman's repo..
Ok.. Now I can work around it.!! :)

Cheers,

---------------------------------
Sudhangathan BS
Ph:(+91) 9731-905-205
---------------------------------


On Mon, Dec 16, 2013 at 9:44 PM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 12/11/2013, 7:46 PM, Sudhangathan B S wrote:
>
>> Bruce, for more information on what i'm doing..
>> I had to forcibly migrate to this latest version from the danny versions
>> that I was using.. I had exactly same problems with danny too..!
>> Last week I followed instruction again at
>> https://github.com/gumstix/Gumstix-YoctoProject-Repo
>> In both the cases my recipe is the same and is placed in a layer that I
>> created for this purpose.
>>
>
> FYI: apparently my ASAP is now measure in many days, but I did complete
> my own externalsrc builds, and they work out of the box.
>
> Looking at the recipe you quoted below, you are running into the config
> handling of the layer/recipes you are basing your work from:
>
> i.e. you pasted this:
>
> -----------
>
>
>         require linux.inc
>         #THIS TEMPLATE COPIED FROM linux-sakoman_3.5.bb
>         <http://linux-sakoman_3.5.bb>
>         <http://linux-sakoman_3.5.bb>
>
>         DESCRIPTION = "Linux kernel for OMAP processors"
>         LIC_FILES_CHKSUM =
>         "file://COPYING;md5=__d7810fab7487fb0aad327b76f1be7c__d7"
>
>         KERNEL_IMAGETYPE = "uImage"
>         COMPATIBLE_MACHINE = "overo"
>         FILESEXTRAPATHS_prepend := "${THISDIR}/linux-omap-__khilmanpm:"
>
>         PV = "3.5"
>         inherit externalsrc
>         S =
>
> "/home/desen555/suan_work/__kernel_work/khilman35-src-__
> mods/linux-omap-khilmanpm"
>
>         B = "${WORKDIR}/git"
>         SRC_URI = "file://defconfig \
>                      file://omap2plus_defconfig \
>                      file://usb_off.patch \
>                      "
> -------------
>
> Since linux.inc isn't in oe-core or yocto, I can't build that directly, but
> I do have no problems with a simple korg recipe that inherits kernel
> or linux-yocto kernel support.
>
> So that leaves me to say that your defconfig and config pain is coming
> from whatever linux.inc is doing and you need to take that up with the
> authors of that recipe.
>
> Cheers,
>
> Bruce
>
>
>  path:
>> /home/desen555/yocto/poky/meta-dese_iisc/recipes-kernel/linux/
>> linux-omap-khilmanpm_3.5.bb
>> <http://linux-omap-khilmanpm_3.5.bb>
>>
>> this is my current meta data info:
>>
>> Parsing of 1449 .bb files complete (1448 cached, 1 parsed). 1816
>> targets, 41 skipped, 0 masked, 0 errors.
>>
>> Build Configuration:
>> BB_VERSION        = "1.18.0"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "Ubuntu-12.04"
>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>> MACHINE           = "overo"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.4.2"
>> TUNE_FEATURES     = "armv7a vfp neon"
>> TARGET_FPU        = "vfp-neon"
>> meta
>> meta-yocto        = "(nobranch):4e399f08d596197859214fdb3b06403b87bf8789"
>> meta-gnome
>> meta-oe
>> meta-xfce
>> meta-systemd
>> meta-networking
>> meta-multimedia   = "(nobranch):44754206632dd5b0725aeb43e99e4ff9e0245dca"
>> meta-gumstix      = "(nobranch):f10408773c2e81cc520c5a022c8bbe232a7b26aa"
>> meta-gumstix-extras = "(nobranch):42adc07d0586cc2056dcd9d1997c55
>> 4d5a4a577e"
>> meta-dese_iisc    = "(nobranch):4e399f08d596197859214fdb3b06403b87bf8789"
>>
>> NOTE: Resolving any missing task queue dependencies
>> NOTE: Preparing runqueue
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks *...*
>>
>>
>> Thanks very much Bruce,
>> ---------------------------------
>> Sudhangathan BS
>> Ph:(+91) 9731-905-205
>> ---------------------------------
>>
>>
>> On Thu, Dec 12, 2013 at 2:39 AM, Bruce Ashfield
>> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>>
>> wrote:
>>
>>     On 13-12-11 06:30 AM, Sudhangathan B S wrote:
>>
>>         Thanks Bruce, I now understood a little more..!
>>
>>         So if I put the defconfig file in the place it is looking for
>>         (kindly
>>         note, it is looking for defconfig within yocto folders, it is is
>> not
>>         looking for defconfig in my external src directory), it then
>>         throws this
>>         error:
>>
>>         NOTE: Executing RunQueue Tasks
>>         ERROR: Function failed: do_configure (see
>>         /home/desen555/yocto/build/__tmp/work/overo-poky-linux-__
>> gnueabi/linux-omap-khilmanpm/__3.5-r0/temp/log.do_configure.__683
>>
>>         for further information)
>>         ERROR: Logfile of failure stored in:
>>         /home/desen555/yocto/build/__tmp/work/overo-poky-linux-__
>> gnueabi/linux-omap-khilmanpm/__3.5-r0/temp/log.do_configure.__683
>>
>>         Log data follows:
>>         | DEBUG: Executing python function sysroot_cleansstate
>>         | DEBUG: Python function sysroot_cleansstate finished
>>         | DEBUG: Executing shell function do_configure
>>         | NOTE: make oldconfig
>>         | make: *** No rule to make target `oldconfig'.  Stop.
>>         | ERROR: oe_runmake failed
>>         | ERROR: Function failed: do_configure (see
>>         /home/desen555/yocto/build/__tmp/work/overo-poky-linux-__
>> gnueabi/linux-omap-khilmanpm/__3.5-r0/temp/log.do_configure.__683
>>
>>         for further information)
>>         ERROR: Task 2
>>         (/home/desen555/yocto/poky/__meta-dese_iisc/recipes-kernel/
>> __linux/linux-omap-khilmanpm_3.__5.bb
>>         <http://linux-omap-khilmanpm_3.5.bb>
>>         <http://linux-omap-khilmanpm___3.5.bb
>>         <http://linux-omap-khilmanpm_3.5.bb>>, do_configure) failed with
>>         exit
>>         code '1'
>>         NOTE: Tasks Summary: Attempted 545 tasks of which 544 didn't
>>         need to be
>>         rerun and 1 failed.
>>         No currently running tasks (264 of 559)
>>
>>         Summary: 1 task failed:
>>
>>         /home/desen555/yocto/poky/__meta-dese_iisc/recipes-kernel/
>> __linux/linux-omap-khilmanpm_3.__5.bb
>>         <http://linux-omap-khilmanpm_3.5.bb>
>>         <http://linux-omap-khilmanpm___3.5.bb
>>         <http://linux-omap-khilmanpm_3.5.bb>>, do_configure
>>         Summary: There was 1 ERROR message shown, returning a non-zero
>>         exit code.
>>         desen555@Xeon-S5000XVN:~/__yocto/build$
>>
>>
>>         Now I hope you have more information...!!
>>         My external src directory has got the .config file.
>>
>>
>>     I need to launch a test build to see if there's been some breakage
>>     recently.
>>
>>     I didn't quite get to that today .. but will have a go at it ASAP.
>>
>>     Bruce
>>
>>
>>         ------------------------------__---
>>
>>         Sudhangathan BS
>>         Ph:(+91) 9731-905-205 <tel:%28%2B91%29%209731-905-205>
>>         <tel:%28%2B91%29%209731-905-__205>
>>
>>         ------------------------------__---
>>
>>
>>
>>         On Wed, Dec 11, 2013 at 12:43 PM, Bruce Ashfield
>>         <bruce.ashfield@windriver.com
>>         <mailto:bruce.ashfield@windriver.com>
>>         <mailto:bruce.ashfield@__windriver.com
>>
>>         <mailto:bruce.ashfield@windriver.com>>> wrote:
>>
>>              On 12/11/2013, 2:00 AM, Sudhangathan B S wrote:
>>
>>                  Hi, I'm having this issue, I'm not able to compile a
>> kernel
>>                  source which
>>                  I have in my system, locally.
>>
>>                  This is my recipe, after following instructions at
>>         http://www.yoctoproject.org/____docs/1.4/dev-manual/dev-____
>> manual.html#building-software-____from-an-external-source
>>         <http://www.yoctoproject.org/__docs/1.4/dev-manual/dev-__
>> manual.html#building-software-__from-an-external-source>
>>
>>
>>
>>         <http://www.yoctoproject.org/__docs/1.4/dev-manual/dev-__
>> manual.html#building-software-__from-an-external-source
>>         <http://www.yoctoproject.org/docs/1.4/dev-manual/dev-
>> manual.html#building-software-from-an-external-source>>
>>
>>                  require linux.inc
>>                  #THIS TEMPLATE COPIED FROM linux-sakoman_3.5.bb
>>         <http://linux-sakoman_3.5.bb>
>>                  <http://linux-sakoman_3.5.bb>
>>                  <http://linux-sakoman_3.5.bb>
>>
>>                  DESCRIPTION = "Linux kernel for OMAP processors"
>>                  LIC_FILES_CHKSUM =
>>
>>         "file://COPYING;md5=____d7810fab7487fb0aad327b76f1be7c____d7"
>>
>>
>>                  KERNEL_IMAGETYPE = "uImage"
>>                  COMPATIBLE_MACHINE = "overo"
>>                  FILESEXTRAPATHS_prepend :=
>>         "${THISDIR}/linux-omap-____khilmanpm:"
>>
>>
>>                  PV = "3.5"
>>                  inherit externalsrc
>>                  S =
>>
>>         "/home/desen555/suan_work/____kernel_work/khilman35-src-____
>> mods/linux-omap-khilmanpm"
>>
>>
>>                  B = "${WORKDIR}/git"
>>                  SRC_URI = "file://defconfig \
>>                               file://omap2plus_defconfig \
>>                               file://usb_off.patch \
>>                               "
>>
>>                  As you can see the kernel source directory is in S
>>         variable.
>>
>>                  When the command "bitbake virtual/kernel" is run, i get
>>         this output
>>
>>                  ERROR: Function failed: do_configure (see
>>
>>         /home/desen555/yocto/build/____tmp/work/overo-poky-linux-___
>> _gnueabi/linux-omap-khilmanpm/____3.5-r0/temp/log.do_configure.____28505
>>
>>
>>                  for further information)
>>                  ERROR: Logfile of failure stored in:
>>
>>         /home/desen555/yocto/build/____tmp/work/overo-poky-linux-___
>> _gnueabi/linux-omap-khilmanpm/____3.5-r0/temp/log.do_configure.____28505
>>
>>
>>                  Log data follows:
>>                  | DEBUG: Executing python function sysroot_cleansstate
>>                  | DEBUG: Python function sysroot_cleansstate finished
>>                  | DEBUG: Executing shell function do_configure
>>                  | sed: can't read
>>
>>         /home/desen555/yocto/build/____tmp/work/overo-poky-linux-___
>> _gnueabi/linux-omap-khilmanpm/____3.5-r0/*defconfig:
>>
>>
>>                  No such file or directory*
>>
>>                  | ERROR: Function failed: do_configure (see
>>
>>         /home/desen555/yocto/build/____tmp/work/overo-poky-linux-___
>> _gnueabi/linux-omap-khilmanpm/____3.5-r0/temp/log.do_configure.____28505
>>
>>
>>                  for further information)
>>                  ERROR: Task 2
>>
>>         (/home/desen555/yocto/poky/____meta-dese_iisc/recipes-
>> kernel/____linux/linux-omap-khilmanpm___3.__5.bb
>>         <http://5.bb>
>>                  <http://linux-omap-khilmanpm___3.5.bb
>>         <http://linux-omap-khilmanpm_3.5.bb>>
>>                  <http://linux-omap-khilmanpm_____3.5.bb
>>         <http://linux-omap-khilmanpm___3.5.bb>
>>
>>
>>                  <http://linux-omap-khilmanpm___3.5.bb
>>         <http://linux-omap-khilmanpm_3.5.bb>>>, do_configure) failed with
>>                  exit
>>
>>                  code '1'
>>                  NOTE: Tasks Summary: Attempted 545 tasks of which 543
>>         didn't
>>                  need to be
>>                  rerun and 1 failed.
>>                  Waiting for 0 running tasks to finish:
>>
>>                  Summary: 1 task failed:
>>
>>
>>         /home/desen555/yocto/poky/____meta-dese_iisc/recipes-kernel/
>> ____linux/linux-omap-khilmanpm___3.__5.bb
>>         <http://5.bb>
>>                  <http://linux-omap-khilmanpm___3.5.bb
>>         <http://linux-omap-khilmanpm_3.5.bb>>
>>                  <http://linux-omap-khilmanpm_____3.5.bb
>>         <http://linux-omap-khilmanpm___3.5.bb>
>>
>>
>>                  <http://linux-omap-khilmanpm___3.5.bb
>>         <http://linux-omap-khilmanpm_3.5.bb>>>, do_configure
>>
>>                  Summary: There was 1 ERROR message shown, returning a
>>         non-zero
>>                  exit code.
>>
>>                  If at all I put my defconfig file in the place it is
>>         looking
>>                  for, then
>>                  it throws other errors, so I guess that is not the
>>         right way..
>>
>>
>>              What other errors ? You are on the right track. When using
>>         externalsrc,
>>              you need to ensure the kernel is configured before the
>>         build starts,
>>              since the actual build skips steps to not modify your
>>         source tree.
>>
>>              If you ensure that a full .config is in your kernel's build
>>              directory, and that defconfig is in place, what errors do
>>         you get then ?
>>
>>              Also note: you can have tasks skipped by adding them to
>>              SRCTREECOVEREDTASKS
>>              in your recipe.
>>
>>              Bruce
>>
>>
>>                  Anybody compiled kernel as an external source in
>> yocto..??
>>                  ------------------------------____---
>>
>>                  *Sudhangathan BS*
>>                  Ph:(+91) 9731-905-205 <tel:%28%2B91%29%209731-905-205>
>>         <tel:%28%2B91%29%209731-905-__205>
>>                  ------------------------------____---
>>
>>
>>                  ___________________________________________________
>>
>>                  yocto mailing list
>>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>         <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>__>
>>         https://lists.yoctoproject.____org/listinfo/yocto
>>                  <https://lists.yoctoproject.__org/listinfo/yocto
>>         <https://lists.yoctoproject.org/listinfo/yocto>>
>>
>>
>>
>>
>>
>>
>

--001a113308a4a838b804edadc63f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">First of all Thanks Bruce...!!!! for trying..!=A0<div>That=
 helped me to understand a lot..=A0</div><div>I&#39;m using sakoman&#39;s r=
epo..</div><div>Ok.. Now I can work around it.!! :)</div><div><br></div><di=
v>Cheers,</div>

<div class=3D"gmail_extra"><br clear=3D"all"><div>-------------------------=
--------<br>Sudhangathan BS<br>Ph:(+91) 9731-905-205<br>-------------------=
--------------</div>
<br><br><div class=3D"gmail_quote">On Mon, Dec 16, 2013 at 9:44 PM, Bruce A=
shfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.co=
m" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">

<div class=3D"im">On 12/11/2013, 7:46 PM, Sudhangathan B S wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Bruce, for more information on what i&#39;m doing..<br>
I had to forcibly migrate to this latest version from the danny versions<br=
>
that I was using.. I had exactly same problems with danny too..!<br>
Last week I followed instruction again at<br>
<a href=3D"https://github.com/gumstix/Gumstix-YoctoProject-Repo" target=3D"=
_blank">https://github.com/gumstix/<u></u>Gumstix-YoctoProject-Repo</a><br>
In both the cases my recipe is the same and is placed in a layer that I<br>
created for this purpose.<br>
</blockquote>
<br></div>
FYI: apparently my ASAP is now measure in many days, but I did complete<br>
my own externalsrc builds, and they work out of the box.<br>
<br>
Looking at the recipe you quoted below, you are running into the config<br>
handling of the layer/recipes you are basing your work from:<br>
<br>
i.e. you pasted this:<br>
<br>
-----------<div class=3D"im"><br>
<br>
=A0 =A0 =A0 =A0 require linux.inc<br>
=A0 =A0 =A0 =A0 #THIS TEMPLATE COPIED FROM <a href=3D"http://linux-sakoman_=
3.5.bb" target=3D"_blank">linux-sakoman_3.5.bb</a><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-sakoman_3.5.bb" target=3D"_blan=
k">http://linux-sakoman_3.5.bb</a>&gt;<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-sakoman_3.5.bb" target=3D"_blan=
k">http://linux-sakoman_3.5.bb</a>&gt;<br>
<br>
=A0 =A0 =A0 =A0 DESCRIPTION =3D &quot;Linux kernel for OMAP processors&quot=
;<br>
=A0 =A0 =A0 =A0 LIC_FILES_CHKSUM =3D<br>
=A0 =A0 =A0 =A0 &quot;file://COPYING;md5=3D__<u></u>d7810fab7487fb0aad327b7=
6f1be7c<u></u>__d7&quot;<br>
<br>
=A0 =A0 =A0 =A0 KERNEL_IMAGETYPE =3D &quot;uImage&quot;<br>
=A0 =A0 =A0 =A0 COMPATIBLE_MACHINE =3D &quot;overo&quot;<br>
=A0 =A0 =A0 =A0 FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/linux-omap-__=
<u></u>khilmanpm:&quot;<br>
<br>
=A0 =A0 =A0 =A0 PV =3D &quot;3.5&quot;<br>
=A0 =A0 =A0 =A0 inherit externalsrc<br>
=A0 =A0 =A0 =A0 S =3D<br>
<br>
&quot;/home/desen555/suan_work/__<u></u>kernel_work/khilman35-src-__<u></u>=
mods/linux-omap-khilmanpm&quot;<br>
<br>
=A0 =A0 =A0 =A0 B =3D &quot;${WORKDIR}/git&quot;<br>
=A0 =A0 =A0 =A0 SRC_URI =3D &quot;file://defconfig \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0file://omap2plus_defconfig \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0file://usb_off.patch \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;<br></div>
-------------<br>
<br>
Since linux.inc isn&#39;t in oe-core or yocto, I can&#39;t build that direc=
tly, but<br>
I do have no problems with a simple korg recipe that inherits kernel<br>
or linux-yocto kernel support.<br>
<br>
So that leaves me to say that your defconfig and config pain is coming<br>
from whatever linux.inc is doing and you need to take that up with the<br>
authors of that recipe.<br>
<br>
Cheers,<br>
<br>
Bruce<br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
path:<br>
/home/desen555/yocto/poky/<u></u>meta-dese_iisc/recipes-kernel/<u></u>linux=
/<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=3D"_blank">linux-oma=
p-khilmanpm_3.<u></u>5.bb</a><br>
&lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=3D"_blank">http:/=
/linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;<div><div class=3D"h5"><br>
this is my current meta data info:<br>
<br>
Parsing of 1449 .bb files complete (1448 cached, 1 parsed). 1816<br>
targets, 41 skipped, 0 masked, 0 errors.<br>
<br>
Build Configuration:<br>
BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.18.0&quot;<br>
BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING =A0 =3D &quot;Ubuntu-12.04&quot;<br>
TARGET_SYS =A0 =A0 =A0 =A0=3D &quot;arm-poky-linux-gnueabi&quot;<br>
MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;overo&quot;<br>
DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
DISTRO_VERSION =A0 =A0=3D &quot;1.4.2&quot;<br>
TUNE_FEATURES =A0 =A0 =3D &quot;armv7a vfp neon&quot;<br>
TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-neon&quot;<br>
meta<br>
meta-yocto =A0 =A0 =A0 =A0=3D &quot;(nobranch):<u></u>4e399f08d596197859214=
fdb3b0640<u></u>3b87bf8789&quot;<br>
meta-gnome<br>
meta-oe<br>
meta-xfce<br>
meta-systemd<br>
meta-networking<br>
meta-multimedia =A0 =3D &quot;(nobranch):<u></u>44754206632dd5b0725aeb43e99=
e4f<u></u>f9e0245dca&quot;<br>
meta-gumstix =A0 =A0 =A0=3D &quot;(nobranch):<u></u>f10408773c2e81cc520c5a0=
22c8bbe<u></u>232a7b26aa&quot;<br>
meta-gumstix-extras =3D &quot;(nobranch):<u></u>42adc07d0586cc2056dcd9d1997=
c55<u></u>4d5a4a577e&quot;<br>
meta-dese_iisc =A0 =A0=3D &quot;(nobranch):<u></u>4e399f08d596197859214fdb3=
b0640<u></u>3b87bf8789&quot;<br>
<br>
NOTE: Resolving any missing task queue dependencies<br>
NOTE: Preparing runqueue<br>
NOTE: Executing SetScene Tasks<br></div></div>
NOTE: Executing RunQueue Tasks *...*<div class=3D"im"><br>
<br>
Thanks very much Bruce,<br>
------------------------------<u></u>---<br>
Sudhangathan BS<br>
Ph:<a href=3D"tel:%28%2B91%29%209731-905-205" value=3D"+919731905205" targe=
t=3D"_blank">(+91) 9731-905-205</a><br>
------------------------------<u></u>---<br>
<br>
<br>
On Thu, Dec 12, 2013 at 2:39 AM, Bruce Ashfield<br></div><div class=3D"im">
&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce=
.ashfield@windriver.com</a> &lt;mailto:<a href=3D"mailto:bruce.ashfield@win=
driver.com" target=3D"_blank">bruce.ashfield@<u></u>windriver.com</a>&gt;&g=
t; wrote:<br>


<br>
=A0 =A0 On 13-12-11 06:30 AM, Sudhangathan B S wrote:<br>
<br>
=A0 =A0 =A0 =A0 Thanks Bruce, I now understood a little more..!<br>
<br>
=A0 =A0 =A0 =A0 So if I put the defconfig file in the place it is looking f=
or<br>
=A0 =A0 =A0 =A0 (kindly<br>
=A0 =A0 =A0 =A0 note, it is looking for defconfig within yocto folders, it =
is is not<br>
=A0 =A0 =A0 =A0 looking for defconfig in my external src directory), it the=
n<br>
=A0 =A0 =A0 =A0 throws this<br>
=A0 =A0 =A0 =A0 error:<br>
<br>
=A0 =A0 =A0 =A0 NOTE: Executing RunQueue Tasks<br>
=A0 =A0 =A0 =A0 ERROR: Function failed: do_configure (see<br></div>
=A0 =A0 =A0 =A0 /home/desen555/yocto/build/__<u></u>tmp/work/overo-poky-lin=
ux-__<u></u>gnueabi/linux-omap-khilmanpm/_<u></u>_3.5-r0/temp/log.do_config=
ure.<u></u>__683<div class=3D"im"><br>
=A0 =A0 =A0 =A0 for further information)<br>
=A0 =A0 =A0 =A0 ERROR: Logfile of failure stored in:<br></div>
=A0 =A0 =A0 =A0 /home/desen555/yocto/build/__<u></u>tmp/work/overo-poky-lin=
ux-__<u></u>gnueabi/linux-omap-khilmanpm/_<u></u>_3.5-r0/temp/log.do_config=
ure.<u></u>__683<div class=3D"im"><br>
=A0 =A0 =A0 =A0 Log data follows:<br>
=A0 =A0 =A0 =A0 | DEBUG: Executing python function sysroot_cleansstate<br>
=A0 =A0 =A0 =A0 | DEBUG: Python function sysroot_cleansstate finished<br>
=A0 =A0 =A0 =A0 | DEBUG: Executing shell function do_configure<br>
=A0 =A0 =A0 =A0 | NOTE: make oldconfig<br>
=A0 =A0 =A0 =A0 | make: *** No rule to make target `oldconfig&#39;. =A0Stop=
.<br>
=A0 =A0 =A0 =A0 | ERROR: oe_runmake failed<br>
=A0 =A0 =A0 =A0 | ERROR: Function failed: do_configure (see<br></div>
=A0 =A0 =A0 =A0 /home/desen555/yocto/build/__<u></u>tmp/work/overo-poky-lin=
ux-__<u></u>gnueabi/linux-omap-khilmanpm/_<u></u>_3.5-r0/temp/log.do_config=
ure.<u></u>__683<div class=3D"im"><br>
=A0 =A0 =A0 =A0 for further information)<br>
=A0 =A0 =A0 =A0 ERROR: Task 2<br>
=A0 =A0 =A0 =A0 (/home/desen555/yocto/poky/__<u></u>meta-dese_iisc/recipes-=
kernel/<u></u>__linux/linux-omap-khilmanpm_<u></u>3.__<a href=3D"http://5.b=
b" target=3D"_blank">5.bb</a><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm___3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm__<u></u>_3.5.bb</a><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;&gt;, do_confi=
gure) failed with<br>
=A0 =A0 =A0 =A0 exit<br>
=A0 =A0 =A0 =A0 code &#39;1&#39;<br></div><div class=3D"im">
=A0 =A0 =A0 =A0 NOTE: Tasks Summary: Attempted 545 tasks of which 544 didn&=
#39;t<br>
=A0 =A0 =A0 =A0 need to be<br>
=A0 =A0 =A0 =A0 rerun and 1 failed.<br>
=A0 =A0 =A0 =A0 No currently running tasks (264 of 559)<br>
<br>
=A0 =A0 =A0 =A0 Summary: 1 task failed:<br>
<br></div><div class=3D"im">
=A0 =A0 =A0 =A0 /home/desen555/yocto/poky/__<u></u>meta-dese_iisc/recipes-k=
ernel/<u></u>__linux/linux-omap-khilmanpm_<u></u>3.__<a href=3D"http://5.bb=
" target=3D"_blank">5.bb</a><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm___3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm__<u></u>_3.5.bb</a><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;&gt;, do_confi=
gure<br>
=A0 =A0 =A0 =A0 Summary: There was 1 ERROR message shown, returning a non-z=
ero<br>
=A0 =A0 =A0 =A0 exit code.<br></div>
=A0 =A0 =A0 =A0 desen555@Xeon-S5000XVN:~/__<u></u>yocto/build$<div class=3D=
"im"><br>
<br>
=A0 =A0 =A0 =A0 Now I hope you have more information...!!<br>
=A0 =A0 =A0 =A0 My external src directory has got the .config file.<br>
<br>
<br>
=A0 =A0 I need to launch a test build to see if there&#39;s been some break=
age<br>
=A0 =A0 recently.<br>
<br>
=A0 =A0 I didn&#39;t quite get to that today .. but will have a go at it AS=
AP.<br>
<br>
=A0 =A0 Bruce<br>
<br>
<br></div>
=A0 =A0 =A0 =A0 ------------------------------<u></u>__---<div class=3D"im"=
><br>
=A0 =A0 =A0 =A0 Sudhangathan BS<br>
=A0 =A0 =A0 =A0 Ph:<a href=3D"tel:%28%2B91%29%209731-905-205" value=3D"+919=
731905205" target=3D"_blank">(+91) 9731-905-205</a> &lt;tel:%28%2B91%29%209=
731-905-<u></u>205&gt;<br></div>
=A0 =A0 =A0 =A0 &lt;tel:%28%2B91%29%209731-905-__<u></u>205&gt;<br>
<br>
=A0 =A0 =A0 =A0 ------------------------------<u></u>__---<div class=3D"im"=
><br>
<br>
<br>
=A0 =A0 =A0 =A0 On Wed, Dec 11, 2013 at 12:43 PM, Bruce Ashfield<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=
=3D"_blank">bruce.ashfield@windriver.com</a><br>
=A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:bruce.ashfield@windriver.com" =
target=3D"_blank">bruce.ashfield@<u></u>windriver.com</a>&gt;<br></div>
=A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:bruce.ashfield@" target=3D"_bl=
ank">bruce.ashfield@</a>__<a href=3D"http://windriver.com" target=3D"_blank=
">windr<u></u>iver.com</a><div class=3D"im"><br>
=A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:bruce.ashfield@windriver.com" =
target=3D"_blank">bruce.ashfield@<u></u>windriver.com</a>&gt;&gt;&gt; wrote=
:<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0On 12/11/2013, 2:00 AM, Sudhangathan B S wrote:<=
br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Hi, I&#39;m having this issue, I&#39;m n=
ot able to compile a kernel<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0source which<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0I have in my system, locally.<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0This is my recipe, after following instr=
uctions at<br></div>
=A0 =A0 =A0 =A0 <a href=3D"http://www.yoctoproject.org/____docs/1.4/dev-man=
ual/dev-____manual.html#building-software-____from-an-external-source" targ=
et=3D"_blank">http://www.yoctoproject.org/__<u></u>__docs/1.4/dev-manual/de=
v-____<u></u>manual.html#building-software-<u></u>____from-an-external-sour=
ce</a><br>


=A0 =A0 =A0 =A0 &lt;<a href=3D"http://www.yoctoproject.org/__docs/1.4/dev-m=
anual/dev-__manual.html#building-software-__from-an-external-source" target=
=3D"_blank">http://www.yoctoproject.org/_<u></u>_docs/1.4/dev-manual/dev-__=
<u></u>manual.html#building-software-<u></u>__from-an-external-source</a>&g=
t;<div class=3D"im">

<br>
<br>
<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://www.yoctoproject.org/__docs/1.4/dev-m=
anual/dev-__manual.html#building-software-__from-an-external-source" target=
=3D"_blank">http://www.yoctoproject.org/_<u></u>_docs/1.4/dev-manual/dev-__=
<u></u>manual.html#building-software-<u></u>__from-an-external-source</a><b=
r>


=A0 =A0 =A0 =A0 &lt;<a href=3D"http://www.yoctoproject.org/docs/1.4/dev-man=
ual/dev-manual.html#building-software-from-an-external-source" target=3D"_b=
lank">http://www.yoctoproject.org/<u></u>docs/1.4/dev-manual/dev-<u></u>man=
ual.html#building-software-<u></u>from-an-external-source</a>&gt;&gt;<br>


<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0require linux.inc<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0#THIS TEMPLATE COPIED FROM <a href=3D"ht=
tp://linux-sakoman_3.5.bb" target=3D"_blank">linux-sakoman_3.5.bb</a><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-sakoman_3.5.bb" target=3D"_blan=
k">http://linux-sakoman_3.5.bb</a>&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;<a href=3D"http://linux-sakoman_3.5.=
bb" target=3D"_blank">http://linux-sakoman_3.5.bb</a>&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;<a href=3D"http://linux-sakoman_3.5.=
bb" target=3D"_blank">http://linux-sakoman_3.5.bb</a>&gt;<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0DESCRIPTION =3D &quot;Linux kernel for O=
MAP processors&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0LIC_FILES_CHKSUM =3D<br>
<br></div>
=A0 =A0 =A0 =A0 &quot;file://COPYING;md5=3D____<u></u>d7810fab7487fb0aad327=
b76f1be7c<u></u>____d7&quot;<div class=3D"im"><br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0KERNEL_IMAGETYPE =3D &quot;uImage&quot;<=
br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0COMPATIBLE_MACHINE =3D &quot;overo&quot;=
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0FILESEXTRAPATHS_prepend :=3D<br></div>
=A0 =A0 =A0 =A0 &quot;${THISDIR}/linux-omap-____<u></u>khilmanpm:&quot;<div=
 class=3D"im"><br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PV =3D &quot;3.5&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0inherit externalsrc<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0S =3D<br>
<br></div>
=A0 =A0 =A0 =A0 &quot;/home/desen555/suan_work/____<u></u>kernel_work/khilm=
an35-src-____<u></u>mods/linux-omap-khilmanpm&quot;<div class=3D"im"><br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0B =3D &quot;${WORKDIR}/git&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0SRC_URI =3D &quot;file://defconfig \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 file://omap2plu=
s_defconfig \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 file://usb_off.=
patch \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &quot;<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0As you can see the kernel source directo=
ry is in S<br>
=A0 =A0 =A0 =A0 variable.<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0When the command &quot;bitbake virtual/k=
ernel&quot; is run, i get<br>
=A0 =A0 =A0 =A0 this output<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ERROR: Function failed: do_configure (se=
e<br>
<br></div>
=A0 =A0 =A0 =A0 /home/desen555/yocto/build/___<u></u>_tmp/work/overo-poky-l=
inux-___<u></u>_gnueabi/linux-omap-khilmanpm/<u></u>____3.5-r0/temp/log.do_=
<u></u>configure.____28505<div class=3D"im"><br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0for further information)<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ERROR: Logfile of failure stored in:<br>
<br></div>
=A0 =A0 =A0 =A0 /home/desen555/yocto/build/___<u></u>_tmp/work/overo-poky-l=
inux-___<u></u>_gnueabi/linux-omap-khilmanpm/<u></u>____3.5-r0/temp/log.do_=
<u></u>configure.____28505<div class=3D"im"><br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Log data follows:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| DEBUG: Executing python function sysro=
ot_cleansstate<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| DEBUG: Python function sysroot_cleanss=
tate finished<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| DEBUG: Executing shell function do_con=
figure<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| sed: can&#39;t read<br>
<br></div>
=A0 =A0 =A0 =A0 /home/desen555/yocto/build/___<u></u>_tmp/work/overo-poky-l=
inux-___<u></u>_gnueabi/linux-omap-khilmanpm/<u></u>____3.5-r0/*defconfig:<=
div class=3D"im"><br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0No such file or directory*<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| ERROR: Function failed: do_configure (=
see<br>
<br></div>
=A0 =A0 =A0 =A0 /home/desen555/yocto/build/___<u></u>_tmp/work/overo-poky-l=
inux-___<u></u>_gnueabi/linux-omap-khilmanpm/<u></u>____3.5-r0/temp/log.do_=
<u></u>configure.____28505<div class=3D"im"><br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0for further information)<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ERROR: Task 2<br>
<br></div>
=A0 =A0 =A0 =A0 (/home/desen555/yocto/poky/___<u></u>_meta-dese_iisc/recipe=
s-<u></u>kernel/____linux/linux-omap-<u></u>khilmanpm___3.__<a href=3D"http=
://5.bb" target=3D"_blank">5.bb</a><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://5.bb" target=3D"_blank">http://5.bb</=
a>&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;<a href=3D"http://linux-omap-khilman=
pm___3.5.bb" target=3D"_blank">http://linux-omap-khilmanpm__<u></u>_3.5.bb<=
/a><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;<a href=3D"http://linux-omap-khilman=
pm_____3.5.bb" target=3D"_blank">http://linux-omap-khilmanpm__<u></u>___3.5=
.bb</a><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm___3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm__<u></u>_3.5.bb</a>&gt;<div class=
=3D"im"><br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;<a href=3D"http://linux-omap-khilman=
pm___3.5.bb" target=3D"_blank">http://linux-omap-khilmanpm__<u></u>_3.5.bb<=
/a><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;&gt;&gt;, do_c=
onfigure) failed with<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0exit<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0code &#39;1&#39;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0NOTE: Tasks Summary: Attempted 545 tasks=
 of which 543<br>
=A0 =A0 =A0 =A0 didn&#39;t<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0need to be<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0rerun and 1 failed.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Waiting for 0 running tasks to finish:<b=
r>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Summary: 1 task failed:<br>
<br>
<br></div>
=A0 =A0 =A0 =A0 /home/desen555/yocto/poky/____<u></u>meta-dese_iisc/recipes=
-kernel/<u></u>____linux/linux-omap-<u></u>khilmanpm___3.__<a href=3D"http:=
//5.bb" target=3D"_blank">5.bb</a><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://5.bb" target=3D"_blank">http://5.bb</=
a>&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;<a href=3D"http://linux-omap-khilman=
pm___3.5.bb" target=3D"_blank">http://linux-omap-khilmanpm__<u></u>_3.5.bb<=
/a><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;<a href=3D"http://linux-omap-khilman=
pm_____3.5.bb" target=3D"_blank">http://linux-omap-khilmanpm__<u></u>___3.5=
.bb</a><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm___3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm__<u></u>_3.5.bb</a>&gt;<div class=
=3D"im"><br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;<a href=3D"http://linux-omap-khilman=
pm___3.5.bb" target=3D"_blank">http://linux-omap-khilmanpm__<u></u>_3.5.bb<=
/a><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;&gt;&gt;, do_c=
onfigure<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Summary: There was 1 ERROR message shown=
, returning a<br>
=A0 =A0 =A0 =A0 non-zero<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0exit code.<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0If at all I put my defconfig file in the=
 place it is<br>
=A0 =A0 =A0 =A0 looking<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0for, then<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0it throws other errors, so I guess that =
is not the<br>
=A0 =A0 =A0 =A0 right way..<br>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0What other errors ? You are on the right track. =
When using<br>
=A0 =A0 =A0 =A0 externalsrc,<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0you need to ensure the kernel is configured befo=
re the<br>
=A0 =A0 =A0 =A0 build starts,<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0since the actual build skips steps to not modify=
 your<br>
=A0 =A0 =A0 =A0 source tree.<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0If you ensure that a full .config is in your ker=
nel&#39;s build<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0directory, and that defconfig is in place, what =
errors do<br>
=A0 =A0 =A0 =A0 you get then ?<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0Also note: you can have tasks skipped by adding =
them to<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0SRCTREECOVEREDTASKS<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0in your recipe.<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0Bruce<br>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Anybody compiled kernel as an external s=
ource in yocto..??<br></div>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0------------------------------<u></u>___=
_---<div class=3D"im"><br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*Sudhangathan BS*<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Ph:<a href=3D"tel:%28%2B91%29%209731-905=
-205" value=3D"+919731905205" target=3D"_blank">(+91) 9731-905-205</a> &lt;=
tel:%28%2B91%29%209731-905-<u></u>205&gt;<br></div>
=A0 =A0 =A0 =A0 &lt;tel:%28%2B91%29%209731-905-__<u></u>205&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0------------------------------<u></u>___=
_---<br>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0______________________________<u></u>___=
__________________<div class=3D"im"><br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0yocto mailing list<br>
=A0 =A0 =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;<br></div>
=A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org" target=
=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@y=
octoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;__&=
gt;<br>
=A0 =A0 =A0 =A0 <a href=3D"https://lists.yoctoproject." target=3D"_blank">h=
ttps://lists.yoctoproject.</a>___<u></u>_org/listinfo/yocto<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;<a href=3D"https://lists.yoctoprojec=
t." target=3D"_blank">https://lists.yoctoproject.</a>__<u></u>org/listinfo/=
yocto<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o" target=3D"_blank">https://lists.yoctoproject.<u></u>org/listinfo/yocto</=
a>&gt;&gt;<br>
<br>
<br>
<br>
<br>
<br>
</blockquote>
<br>
</blockquote></div><br></div></div>

--001a113308a4a838b804edadc63f--
