Return-Path: <sudhangathan@gmail.com>
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4478E007DA
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 16:47:08 -0800 (PST)
Received: by mail-qa0-f45.google.com with SMTP id o15so5331865qap.4
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 16:47:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=hHYQfZ2HCgZuYqxIEkANweVd3wW8wwksAVvkj7cMw+w=;
	b=AkZytOCDoz8lc6Sd7UOM5g0YAsFA/MABrwc3AGHYObRMwUt+z/yGkgRXVcSIc6H/yP
	J9tFjhMKWhlRdjH5zYKWKz2fKFvuztunKGnUxjRkNWv7wQbeacArp3psWyd6Z+zNoUJm
	Q4g5OM3fhJU0gZsOpksePe7odsRBWVoH65Pph9SCen50xzGY3Oj4JrjmEZYKXIcRR75Z
	MrwZzATE9n+YoXEnNqQkAbfu0srKvCW6kuACQNzZi6C0S0B3MA1bRE3eyR4u6N+juZfZ
	2H5/y0i6iSruN4RPO96uxClsHC2HxjMekyN7DduVdO1aGPieR4oyPxwTqAS6ioIWa4Bu
	+XpQ==
X-Received: by 10.224.147.208 with SMTP id m16mr7217848qav.21.1386809227367;
	Wed, 11 Dec 2013 16:47:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.224.21.4 with HTTP; Wed, 11 Dec 2013 16:46:47 -0800 (PST)
In-Reply-To: <52A8D4A7.5000807@windriver.com>
References: <CAGX3a99HP8-gseen9mzKB_g2hSGCeLGt0oFe4t6MDOazqSaGdQ@mail.gmail.com>
	<52A8109A.50705@windriver.com>
	<CAGX3a9-Nn+FYRbz4o_MrtV7-uBDxshaTTX6Kvyi4bp10mkhyYQ@mail.gmail.com>
	<52A8D4A7.5000807@windriver.com>
From: Sudhangathan B S <sudhangathan@gmail.com>
Date: Thu, 12 Dec 2013 06:16:47 +0530
Message-ID: <CAGX3a986aPD-GBjFMfRpZZjrssUXE2=t=gACKg24ERMVVTTydQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 12 Dec 2013 00:47:11 -0000
Content-Type: multipart/alternative; boundary=089e0153864e5e59be04ed4baf85

--089e0153864e5e59be04ed4baf85
Content-Type: text/plain; charset=ISO-8859-1

Bruce, for more information on what i'm doing..
I had to forcibly migrate to this latest version from the danny versions
that I was using.. I had exactly same problems with danny too..!
Last week I followed instruction again at
https://github.com/gumstix/Gumstix-YoctoProject-Repo
In both the cases my recipe is the same and is placed in a layer that I
created for this purpose.
path: /home/desen555/yocto/poky/meta-dese_iisc/recipes-kernel/linux/
linux-omap-khilmanpm_3.5.bb
this is my current meta data info:

Parsing of 1449 .bb files complete (1448 cached, 1 parsed). 1816 targets,
41 skipped, 0 masked, 0 errors.

Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "overo"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4.2"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "(nobranch):4e399f08d596197859214fdb3b06403b87bf8789"
meta-gnome
meta-oe
meta-xfce
meta-systemd
meta-networking
meta-multimedia   = "(nobranch):44754206632dd5b0725aeb43e99e4ff9e0245dca"
meta-gumstix      = "(nobranch):f10408773c2e81cc520c5a022c8bbe232a7b26aa"
meta-gumstix-extras = "(nobranch):42adc07d0586cc2056dcd9d1997c554d5a4a577e"
meta-dese_iisc    = "(nobranch):4e399f08d596197859214fdb3b06403b87bf8789"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks *...*

Thanks very much Bruce,
---------------------------------
Sudhangathan BS
Ph:(+91) 9731-905-205
---------------------------------


On Thu, Dec 12, 2013 at 2:39 AM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 13-12-11 06:30 AM, Sudhangathan B S wrote:
>
>> Thanks Bruce, I now understood a little more..!
>>
>> So if I put the defconfig file in the place it is looking for (kindly
>> note, it is looking for defconfig within yocto folders, it is is not
>> looking for defconfig in my external src directory), it then throws this
>> error:
>>
>> NOTE: Executing RunQueue Tasks
>> ERROR: Function failed: do_configure (see
>> /home/desen555/yocto/build/tmp/work/overo-poky-linux-
>> gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configure.683
>> for further information)
>> ERROR: Logfile of failure stored in:
>> /home/desen555/yocto/build/tmp/work/overo-poky-linux-
>> gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configure.683
>> Log data follows:
>> | DEBUG: Executing python function sysroot_cleansstate
>> | DEBUG: Python function sysroot_cleansstate finished
>> | DEBUG: Executing shell function do_configure
>> | NOTE: make oldconfig
>> | make: *** No rule to make target `oldconfig'.  Stop.
>> | ERROR: oe_runmake failed
>> | ERROR: Function failed: do_configure (see
>> /home/desen555/yocto/build/tmp/work/overo-poky-linux-
>> gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configure.683
>> for further information)
>> ERROR: Task 2
>> (/home/desen555/yocto/poky/meta-dese_iisc/recipes-kernel/linux/
>> linux-omap-khilmanpm_3.5.bb
>> <http://linux-omap-khilmanpm_3.5.bb>, do_configure) failed with exit
>> code '1'
>> NOTE: Tasks Summary: Attempted 545 tasks of which 544 didn't need to be
>> rerun and 1 failed.
>> No currently running tasks (264 of 559)
>>
>> Summary: 1 task failed:
>>
>> /home/desen555/yocto/poky/meta-dese_iisc/recipes-kernel/linux/
>> linux-omap-khilmanpm_3.5.bb
>> <http://linux-omap-khilmanpm_3.5.bb>, do_configure
>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>> desen555@Xeon-S5000XVN:~/yocto/build$
>>
>> Now I hope you have more information...!!
>> My external src directory has got the .config file.
>>
>
> I need to launch a test build to see if there's been some breakage
> recently.
>
> I didn't quite get to that today .. but will have a go at it ASAP.
>
> Bruce
>
>
>> ---------------------------------
>> Sudhangathan BS
>> Ph:(+91) 9731-905-205 <tel:%28%2B91%29%209731-905-205>
>>
>> ---------------------------------
>>
>>
>> On Wed, Dec 11, 2013 at 12:43 PM, Bruce Ashfield
>> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>>
>> wrote:
>>
>>     On 12/11/2013, 2:00 AM, Sudhangathan B S wrote:
>>
>>         Hi, I'm having this issue, I'm not able to compile a kernel
>>         source which
>>         I have in my system, locally.
>>
>>         This is my recipe, after following instructions at
>>         http://www.yoctoproject.org/__docs/1.4/dev-manual/dev-__
>> manual.html#building-software-__from-an-external-source
>>
>>         <http://www.yoctoproject.org/docs/1.4/dev-manual/dev-
>> manual.html#building-software-from-an-external-source>
>>
>>         require linux.inc
>>         #THIS TEMPLATE COPIED FROM linux-sakoman_3.5.bb
>>         <http://linux-sakoman_3.5.bb>
>>         <http://linux-sakoman_3.5.bb>
>>
>>         DESCRIPTION = "Linux kernel for OMAP processors"
>>         LIC_FILES_CHKSUM =
>>         "file://COPYING;md5=__d7810fab7487fb0aad327b76f1be7c__d7"
>>
>>         KERNEL_IMAGETYPE = "uImage"
>>         COMPATIBLE_MACHINE = "overo"
>>         FILESEXTRAPATHS_prepend := "${THISDIR}/linux-omap-__khilmanpm:"
>>
>>         PV = "3.5"
>>         inherit externalsrc
>>         S =
>>         "/home/desen555/suan_work/__kernel_work/khilman35-src-__
>> mods/linux-omap-khilmanpm"
>>
>>         B = "${WORKDIR}/git"
>>         SRC_URI = "file://defconfig \
>>                      file://omap2plus_defconfig \
>>                      file://usb_off.patch \
>>                      "
>>
>>         As you can see the kernel source directory is in S variable.
>>
>>         When the command "bitbake virtual/kernel" is run, i get this
>> output
>>
>>         ERROR: Function failed: do_configure (see
>>         /home/desen555/yocto/build/__tmp/work/overo-poky-linux-__
>> gnueabi/linux-omap-khilmanpm/__3.5-r0/temp/log.do_configure.__28505
>>
>>         for further information)
>>         ERROR: Logfile of failure stored in:
>>         /home/desen555/yocto/build/__tmp/work/overo-poky-linux-__
>> gnueabi/linux-omap-khilmanpm/__3.5-r0/temp/log.do_configure.__28505
>>
>>         Log data follows:
>>         | DEBUG: Executing python function sysroot_cleansstate
>>         | DEBUG: Python function sysroot_cleansstate finished
>>         | DEBUG: Executing shell function do_configure
>>         | sed: can't read
>>         /home/desen555/yocto/build/__tmp/work/overo-poky-linux-__
>> gnueabi/linux-omap-khilmanpm/__3.5-r0/*defconfig:
>>
>>         No such file or directory*
>>
>>         | ERROR: Function failed: do_configure (see
>>         /home/desen555/yocto/build/__tmp/work/overo-poky-linux-__
>> gnueabi/linux-omap-khilmanpm/__3.5-r0/temp/log.do_configure.__28505
>>
>>         for further information)
>>         ERROR: Task 2
>>         (/home/desen555/yocto/poky/__meta-dese_iisc/recipes-kernel/
>> __linux/linux-omap-khilmanpm_3.__5.bb
>>         <http://linux-omap-khilmanpm_3.5.bb>
>>         <http://linux-omap-khilmanpm___3.5.bb
>>
>>         <http://linux-omap-khilmanpm_3.5.bb>>, do_configure) failed with
>>         exit
>>
>>         code '1'
>>         NOTE: Tasks Summary: Attempted 545 tasks of which 543 didn't
>>         need to be
>>         rerun and 1 failed.
>>         Waiting for 0 running tasks to finish:
>>
>>         Summary: 1 task failed:
>>
>>         /home/desen555/yocto/poky/__meta-dese_iisc/recipes-kernel/
>> __linux/linux-omap-khilmanpm_3.__5.bb
>>         <http://linux-omap-khilmanpm_3.5.bb>
>>         <http://linux-omap-khilmanpm___3.5.bb
>>
>>         <http://linux-omap-khilmanpm_3.5.bb>>, do_configure
>>
>>         Summary: There was 1 ERROR message shown, returning a non-zero
>>         exit code.
>>
>>         If at all I put my defconfig file in the place it is looking
>>         for, then
>>         it throws other errors, so I guess that is not the right way..
>>
>>
>>     What other errors ? You are on the right track. When using
>> externalsrc,
>>     you need to ensure the kernel is configured before the build starts,
>>     since the actual build skips steps to not modify your source tree.
>>
>>     If you ensure that a full .config is in your kernel's build
>>     directory, and that defconfig is in place, what errors do you get
>> then ?
>>
>>     Also note: you can have tasks skipped by adding them to
>>     SRCTREECOVEREDTASKS
>>     in your recipe.
>>
>>     Bruce
>>
>>
>>         Anybody compiled kernel as an external source in yocto..??
>>         ------------------------------__---
>>         *Sudhangathan BS*
>>         Ph:(+91) 9731-905-205 <tel:%28%2B91%29%209731-905-205>
>>         ------------------------------__---
>>
>>
>>         _________________________________________________
>>         yocto mailing list
>>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>         https://lists.yoctoproject.__org/listinfo/yocto
>>         <https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>>
>>
>

--089e0153864e5e59be04ed4baf85
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font size=3D"4">Bruce, for more information on what i&#39=
;m doing..</font><div><font size=3D"4">I had to forcibly migrate to this la=
test version from the danny versions that I was using.. I had exactly same =
problems with danny too..!</font></div>

<div><font size=3D"4">Last week I followed instruction again at=A0<a href=
=3D"https://github.com/gumstix/Gumstix-YoctoProject-Repo">https://github.co=
m/gumstix/Gumstix-YoctoProject-Repo</a></font></div><div><font size=3D"4">I=
n both the cases my recipe is the same and is placed in a layer that I crea=
ted for this purpose.</font></div>

<div><font size=3D"4">path: /home/desen555/yocto/poky/meta-dese_iisc/recipe=
s-kernel/linux/<a href=3D"http://linux-omap-khilmanpm_3.5.bb">linux-omap-kh=
ilmanpm_3.5.bb</a><br></font><div><font size=3D"4">this is my current meta =
data info:</font></div>

<div><br></div><div><div>Parsing of 1449 .bb files complete (1448 cached, 1=
 parsed). 1816 targets, 41 skipped, 0 masked, 0 errors.</div><div><br></div=
><div>Build Configuration:</div><div>BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.=
18.0&quot;</div>

<div>BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;</div><div>NATIV=
ELSBSTRING =A0 =3D &quot;Ubuntu-12.04&quot;</div><div>TARGET_SYS =A0 =A0 =
=A0 =A0=3D &quot;arm-poky-linux-gnueabi&quot;</div><div>MACHINE =A0 =A0 =A0=
 =A0 =A0 =3D &quot;overo&quot;</div>

<div>DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;</div><div>DISTRO_VE=
RSION =A0 =A0=3D &quot;1.4.2&quot;</div><div>TUNE_FEATURES =A0 =A0 =3D &quo=
t;armv7a vfp neon&quot;</div><div>TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-n=
eon&quot;</div><div>meta =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>

<div>meta-yocto =A0 =A0 =A0 =A0=3D &quot;(nobranch):4e399f08d596197859214fd=
b3b06403b87bf8789&quot;</div><div>meta-gnome =A0 =A0 =A0 =A0</div><div>meta=
-oe =A0 =A0 =A0 =A0 =A0=A0</div><div>meta-xfce =A0 =A0 =A0 =A0=A0</div><div=
>meta-systemd =A0 =A0 =A0</div><div>meta-networking =A0=A0</div>

<div>meta-multimedia =A0 =3D &quot;(nobranch):44754206632dd5b0725aeb43e99e4=
ff9e0245dca&quot;</div><div>meta-gumstix =A0 =A0 =A0=3D &quot;(nobranch):f1=
0408773c2e81cc520c5a022c8bbe232a7b26aa&quot;</div><div>meta-gumstix-extras =
=3D &quot;(nobranch):42adc07d0586cc2056dcd9d1997c554d5a4a577e&quot;</div>

<div>meta-dese_iisc =A0 =A0=3D &quot;(nobranch):4e399f08d596197859214fdb3b0=
6403b87bf8789&quot;</div><div><br></div><div>NOTE: Resolving any missing ta=
sk queue dependencies</div><div>NOTE: Preparing runqueue</div><div>NOTE: Ex=
ecuting SetScene Tasks</div>

<div>NOTE: Executing RunQueue Tasks <b><font size=3D"4">...</font></b></div=
></div><div><br></div></div><div><font size=3D"4">Thanks very much Bruce,</=
font></div><div class=3D"gmail_extra"><div>--------------------------------=
-<br>

Sudhangathan BS<br>Ph:(+91) 9731-905-205<br>-------------------------------=
--</div>
<br><br><div class=3D"gmail_quote">On Thu, Dec 12, 2013 at 2:39 AM, Bruce A=
shfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.co=
m" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">

<div class=3D"im">On 13-12-11 06:30 AM, Sudhangathan B S wrote:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div class=3D"im">
Thanks Bruce, I now understood a little more..!<br>
<br>
So if I put the defconfig file in the place it is looking for (kindly<br>
note, it is looking for defconfig within yocto folders, it is is not<br>
looking for defconfig in my external src directory), it then throws this<br=
>
error:<br>
<br>
NOTE: Executing RunQueue Tasks<br>
ERROR: Function failed: do_configure (see<br>
/home/desen555/yocto/build/<u></u>tmp/work/overo-poky-linux-<u></u>gnueabi/=
linux-omap-khilmanpm/<u></u>3.5-r0/temp/log.do_configure.<u></u>683<br>
for further information)<br>
ERROR: Logfile of failure stored in:<br>
/home/desen555/yocto/build/<u></u>tmp/work/overo-poky-linux-<u></u>gnueabi/=
linux-omap-khilmanpm/<u></u>3.5-r0/temp/log.do_configure.<u></u>683<br>
Log data follows:<br>
| DEBUG: Executing python function sysroot_cleansstate<br>
| DEBUG: Python function sysroot_cleansstate finished<br>
| DEBUG: Executing shell function do_configure<br>
| NOTE: make oldconfig<br>
| make: *** No rule to make target `oldconfig&#39;. =A0Stop.<br>
| ERROR: oe_runmake failed<br>
| ERROR: Function failed: do_configure (see<br>
/home/desen555/yocto/build/<u></u>tmp/work/overo-poky-linux-<u></u>gnueabi/=
linux-omap-khilmanpm/<u></u>3.5-r0/temp/log.do_configure.<u></u>683<br>
for further information)<br>
ERROR: Task 2<br></div><div class=3D"im">
(/home/desen555/yocto/poky/<u></u>meta-dese_iisc/recipes-kernel/<u></u>linu=
x/<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=3D"_blank">linux-om=
ap-khilmanpm_3.<u></u>5.bb</a><br>
&lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=3D"_blank">http:/=
/linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;, do_configure) failed with exit=
<br>
code &#39;1&#39;<br></div><div class=3D"im">
NOTE: Tasks Summary: Attempted 545 tasks of which 544 didn&#39;t need to be=
<br>
rerun and 1 failed.<br>
No currently running tasks (264 of 559)<br>
<br>
Summary: 1 task failed:<br>
<br></div><div class=3D"im">
/home/desen555/yocto/poky/<u></u>meta-dese_iisc/recipes-kernel/<u></u>linux=
/<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=3D"_blank">linux-oma=
p-khilmanpm_3.<u></u>5.bb</a><br>
&lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=3D"_blank">http:/=
/linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;, do_configure<br>
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r></div><div class=3D"im">
desen555@Xeon-S5000XVN:~/<u></u>yocto/build$<br>
<br>
Now I hope you have more information...!!<br>
My external src directory has got the .config file.<br>
</div></blockquote>
<br>
I need to launch a test build to see if there&#39;s been some breakage<br>
recently.<br>
<br>
I didn&#39;t quite get to that today .. but will have a go at it ASAP.<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
------------------------------<u></u>---<br>
Sudhangathan BS<br>
Ph:<a href=3D"tel:%28%2B91%29%209731-905-205" value=3D"+919731905205" targe=
t=3D"_blank">(+91) 9731-905-205</a> &lt;tel:%28%2B91%29%209731-905-<u></u>2=
05&gt;<div class=3D"im"><br>
------------------------------<u></u>---<br>
<br>
<br>
On Wed, Dec 11, 2013 at 12:43 PM, Bruce Ashfield<br></div><div class=3D"im"=
>
&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce=
.ashfield@windriver.com</a> &lt;mailto:<a href=3D"mailto:bruce.ashfield@win=
driver.com" target=3D"_blank">bruce.ashfield@<u></u>windriver.com</a>&gt;&g=
t; wrote:<br>


<br>
=A0 =A0 On 12/11/2013, 2:00 AM, Sudhangathan B S wrote:<br>
<br>
=A0 =A0 =A0 =A0 Hi, I&#39;m having this issue, I&#39;m not able to compile =
a kernel<br>
=A0 =A0 =A0 =A0 source which<br>
=A0 =A0 =A0 =A0 I have in my system, locally.<br>
<br>
=A0 =A0 =A0 =A0 This is my recipe, after following instructions at<br></div=
>
=A0 =A0 =A0 =A0 <a href=3D"http://www.yoctoproject.org/__docs/1.4/dev-manua=
l/dev-__manual.html#building-software-__from-an-external-source" target=3D"=
_blank">http://www.yoctoproject.org/__<u></u>docs/1.4/dev-manual/dev-__<u><=
/u>manual.html#building-software-<u></u>__from-an-external-source</a><div c=
lass=3D"im">

<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://www.yoctoproject.org/docs/1.4/dev-man=
ual/dev-manual.html#building-software-from-an-external-source" target=3D"_b=
lank">http://www.yoctoproject.org/<u></u>docs/1.4/dev-manual/dev-<u></u>man=
ual.html#building-software-<u></u>from-an-external-source</a>&gt;<br>


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
=A0 =A0 =A0 =A0 LIC_FILES_CHKSUM =3D<br></div>
=A0 =A0 =A0 =A0 &quot;file://COPYING;md5=3D__<u></u>d7810fab7487fb0aad327b7=
6f1be7c<u></u>__d7&quot;<div class=3D"im"><br>
=A0 =A0 =A0 =A0 KERNEL_IMAGETYPE =3D &quot;uImage&quot;<br>
=A0 =A0 =A0 =A0 COMPATIBLE_MACHINE =3D &quot;overo&quot;<br></div>
=A0 =A0 =A0 =A0 FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/linux-omap-__=
<u></u>khilmanpm:&quot;<div class=3D"im"><br>
=A0 =A0 =A0 =A0 PV =3D &quot;3.5&quot;<br>
=A0 =A0 =A0 =A0 inherit externalsrc<br>
=A0 =A0 =A0 =A0 S =3D<br></div>
=A0 =A0 =A0 =A0 &quot;/home/desen555/suan_work/__<u></u>kernel_work/khilman=
35-src-__<u></u>mods/linux-omap-khilmanpm&quot;<div class=3D"im"><br>
=A0 =A0 =A0 =A0 B =3D &quot;${WORKDIR}/git&quot;<br>
=A0 =A0 =A0 =A0 SRC_URI =3D &quot;file://defconfig \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0file://omap2plus_defconfig \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0file://usb_off.patch \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;<br>
<br>
=A0 =A0 =A0 =A0 As you can see the kernel source directory is in S variable=
.<br>
<br>
=A0 =A0 =A0 =A0 When the command &quot;bitbake virtual/kernel&quot; is run,=
 i get this output<br>
<br>
=A0 =A0 =A0 =A0 ERROR: Function failed: do_configure (see<br></div>
=A0 =A0 =A0 =A0 /home/desen555/yocto/build/__<u></u>tmp/work/overo-poky-lin=
ux-__<u></u>gnueabi/linux-omap-khilmanpm/_<u></u>_3.5-r0/temp/log.do_config=
ure.<u></u>__28505<div class=3D"im"><br>
=A0 =A0 =A0 =A0 for further information)<br>
=A0 =A0 =A0 =A0 ERROR: Logfile of failure stored in:<br></div>
=A0 =A0 =A0 =A0 /home/desen555/yocto/build/__<u></u>tmp/work/overo-poky-lin=
ux-__<u></u>gnueabi/linux-omap-khilmanpm/_<u></u>_3.5-r0/temp/log.do_config=
ure.<u></u>__28505<div class=3D"im"><br>
=A0 =A0 =A0 =A0 Log data follows:<br>
=A0 =A0 =A0 =A0 | DEBUG: Executing python function sysroot_cleansstate<br>
=A0 =A0 =A0 =A0 | DEBUG: Python function sysroot_cleansstate finished<br>
=A0 =A0 =A0 =A0 | DEBUG: Executing shell function do_configure<br>
=A0 =A0 =A0 =A0 | sed: can&#39;t read<br></div>
=A0 =A0 =A0 =A0 /home/desen555/yocto/build/__<u></u>tmp/work/overo-poky-lin=
ux-__<u></u>gnueabi/linux-omap-khilmanpm/_<u></u>_3.5-r0/*defconfig:<div cl=
ass=3D"im"><br>
=A0 =A0 =A0 =A0 No such file or directory*<br>
<br>
=A0 =A0 =A0 =A0 | ERROR: Function failed: do_configure (see<br></div>
=A0 =A0 =A0 =A0 /home/desen555/yocto/build/__<u></u>tmp/work/overo-poky-lin=
ux-__<u></u>gnueabi/linux-omap-khilmanpm/_<u></u>_3.5-r0/temp/log.do_config=
ure.<u></u>__28505<div class=3D"im"><br>
=A0 =A0 =A0 =A0 for further information)<br>
=A0 =A0 =A0 =A0 ERROR: Task 2<br></div>
=A0 =A0 =A0 =A0 (/home/desen555/yocto/poky/__<u></u>meta-dese_iisc/recipes-=
kernel/<u></u>__linux/linux-omap-khilmanpm_<u></u>3.__<a href=3D"http://5.b=
b" target=3D"_blank">5.bb</a><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm___3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm__<u></u>_3.5.bb</a><div class=3D"im=
"><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;&gt;, do_confi=
gure) failed with<br>
=A0 =A0 =A0 =A0 exit<br>
<br>
=A0 =A0 =A0 =A0 code &#39;1&#39;<br>
=A0 =A0 =A0 =A0 NOTE: Tasks Summary: Attempted 545 tasks of which 543 didn&=
#39;t<br>
=A0 =A0 =A0 =A0 need to be<br>
=A0 =A0 =A0 =A0 rerun and 1 failed.<br>
=A0 =A0 =A0 =A0 Waiting for 0 running tasks to finish:<br>
<br>
=A0 =A0 =A0 =A0 Summary: 1 task failed:<br>
<br></div>
=A0 =A0 =A0 =A0 /home/desen555/yocto/poky/__<u></u>meta-dese_iisc/recipes-k=
ernel/<u></u>__linux/linux-omap-khilmanpm_<u></u>3.__<a href=3D"http://5.bb=
" target=3D"_blank">5.bb</a><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm___3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm__<u></u>_3.5.bb</a><div class=3D"im=
"><br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=
=3D"_blank">http://linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;&gt;, do_confi=
gure<br>
<br>
=A0 =A0 =A0 =A0 Summary: There was 1 ERROR message shown, returning a non-z=
ero<br>
=A0 =A0 =A0 =A0 exit code.<br>
<br>
=A0 =A0 =A0 =A0 If at all I put my defconfig file in the place it is lookin=
g<br>
=A0 =A0 =A0 =A0 for, then<br>
=A0 =A0 =A0 =A0 it throws other errors, so I guess that is not the right wa=
y..<br>
<br>
<br>
=A0 =A0 What other errors ? You are on the right track. When using external=
src,<br>
=A0 =A0 you need to ensure the kernel is configured before the build starts=
,<br>
=A0 =A0 since the actual build skips steps to not modify your source tree.<=
br>
<br>
=A0 =A0 If you ensure that a full .config is in your kernel&#39;s build<br>
=A0 =A0 directory, and that defconfig is in place, what errors do you get t=
hen ?<br>
<br>
=A0 =A0 Also note: you can have tasks skipped by adding them to<br>
=A0 =A0 SRCTREECOVEREDTASKS<br>
=A0 =A0 in your recipe.<br>
<br>
=A0 =A0 Bruce<br>
<br>
<br>
=A0 =A0 =A0 =A0 Anybody compiled kernel as an external source in yocto..??<=
br></div>
=A0 =A0 =A0 =A0 ------------------------------<u></u>__---<br>
=A0 =A0 =A0 =A0 *Sudhangathan BS*<br>
=A0 =A0 =A0 =A0 Ph:<a href=3D"tel:%28%2B91%29%209731-905-205" value=3D"+919=
731905205" target=3D"_blank">(+91) 9731-905-205</a> &lt;tel:%28%2B91%29%209=
731-905-<u></u>205&gt;<br>
=A0 =A0 =A0 =A0 ------------------------------<u></u>__---<br>
<br>
<br>
=A0 =A0 =A0 =A0 ______________________________<u></u>___________________<br=
>
=A0 =A0 =A0 =A0 yocto mailing list<br>
=A0 =A0 =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;<br>
=A0 =A0 =A0 =A0 <a href=3D"https://lists.yoctoproject." target=3D"_blank">h=
ttps://lists.yoctoproject.</a>__<u></u>org/listinfo/yocto<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o" target=3D"_blank">https://lists.yoctoproject.<u></u>org/listinfo/yocto</=
a>&gt;<br>
<br>
<br>
<br>
</blockquote>
<br>
</blockquote></div><br></div></div>

--089e0153864e5e59be04ed4baf85--
