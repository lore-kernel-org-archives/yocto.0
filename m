Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DE74E017A6
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 08:31:27 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id e14so8003iej.39
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 08:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=jJeriTGe0LpJ6UWXdT10BJgGnThmVmVjBpotQ7mENHY=;
	b=HvRofs9hKIsRsyPfZQa+md+Rh8iH6iPYSCMxOVlQ0N4iSTLv3PgKcvLsXVHWzRXlfd
	az+AFI1EjnswR6q0qE/k2QuzwuG7iCb3Fx40rVgsVwNl55mwfMMqTI8X7WnMk97VFXMk
	AdhtTVCWt8SHMTcCO4dDzQ/rhhv5pyc674LXWVr4oP4GVMu0Op6XBwyYvcMovcjwOGYB
	pHkiMEag7M/jvSO05lw9k4f8WhclTXirjz967GZoKmX90X5SJebvcIz342u2OPm7wbsD
	jeF7AIIuYs/eP0P4Nry05iUwdaRexOodPBZSWAyNLPMxGAu9X9f8KttdOwVozvsmW86z
	lwvA==
X-Received: by 10.50.61.179 with SMTP id q19mr12966960igr.33.1383060686175;
	Tue, 29 Oct 2013 08:31:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Tue, 29 Oct 2013 08:31:06 -0700 (PDT)
In-Reply-To: <CAMCfZKFPhz4odA9iMZ5aWzWtT1XR8JX_EHxJQLXyVuy+S7KLqg@mail.gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>
	<CAMCfZKFh8iJH4655mzFveFYfz8ebLXkGftSa-MR5mEcMEFV8Vw@mail.gmail.com>
	<CADkTA4MgxmiOofDLynbOLR=hV-KQ1ic+Eagjm0yetYOtB6FJzw@mail.gmail.com>
	<CAMCfZKF3aHG4wFMRx2XcdroJJ6ga5v6KHF5DbBTWV7jXOGNX-g@mail.gmail.com>
	<525FDD08.90400@windriver.com>
	<CAMCfZKHz82sPsHXjqxbFDJjFNi7ck+BS=_OtyGmb2FYDAxoe1A@mail.gmail.com>
	<525FE3C9.3070003@windriver.com>
	<CAMCfZKGUYAcO5FtOKC9iP_XZjRxJ_Xq12ERN=BL_JHA7FJW51w@mail.gmail.com>
	<5260BDA6.4020807@windriver.com>
	<CAMCfZKFf3iJCyjMgGQ=y6ng6Kh3_MeEMymgZTE=bTnLpBGN9Mg@mail.gmail.com>
	<5261974C.7010202@windriver.com> <5266A665.8030303@alphalem.com>
	<52686723.4080305@windriver.com>
	<CAMCfZKG1A_c-oy6KLZuctX4Nmca7f1ryBKRaR-sqFVVqNwuSrA@mail.gmail.com>
	<CADkTA4OWiOmDYDskpe6=uCX+XEE8R0C2aUxjCph+tAjdX=Ae2Q@mail.gmail.com>
	<526B18BC.5050302@alphalem.com>
	<CAMCfZKHuH4egX=Sid-fSaEscGBr_mX-3PC492syD1hD3+fY+rQ@mail.gmail.com>
	<526ECFF3.4060207@windriver.com>
	<CAMCfZKFnYB3DKSejuZ3JT-uwo=rNekOT3bUcFvuAHdnJnqFONg@mail.gmail.com>
	<CAAQYJAuCDgpYKA9VPA35pYEq31HRhxN3gM1S6LRrNqcJbTFK0Q@mail.gmail.com>
	<CAMCfZKFPhz4odA9iMZ5aWzWtT1XR8JX_EHxJQLXyVuy+S7KLqg@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 29 Oct 2013 13:31:06 -0200
Message-ID: <CAMCfZKHaRRVcx5YG+7DJ10-4DE_n9titOG7+aB3R+4H8iZjGvw@mail.gmail.com>
To: Andrea Adami <andrea.adami@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Tue, 29 Oct 2013 15:31:28 -0000
Content-Type: multipart/alternative; boundary=047d7bdc109ee71c2704e9e2e8d9

--047d7bdc109ee71c2704e9e2e8d9
Content-Type: text/plain; charset=ISO-8859-1

Bruce,

I've created new build setup with this configuration:

BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.10"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4.2"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "dylan:4e399f08d596197859214fdb3b06403b87bf8789"
meta-oe           = "dylan:a108b2203a997634f87ac687e81712badaf3c546"
common-bsp        = "dylan:7fdf9c670a10c5031a2d5555c15c45e453de8c21"
meta-mine         = "dylan:4e399f08d596197859214fdb3b06403b87bf8789"

common-bsp comes from meta-beagleboard.
meta-oe needed to be added because of machine_kernel_pr.bbclass.

bblayers.conf:

LCONF_VERSION = "6"
BBPATH = "${TOPDIR}"
BBFILES ?= ""
BBLAYERS ?= " \
   ${TOPDIR}/meta \
  ${TOPDIR}/meta-yocto \
  ${TOPDIR}/meta-yocto-bsp \
  ${TOPDIR}/meta-openembedded/meta-oe \
  ${TOPDIR}/meta-beagleboard/common-bsp \
  ${TOPDIR}/meta-mine \
  "

meta-mine:

conf/layer.conf:

BBPATH .= ":${LAYERDIR}"
BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
 BBFILE_COLLECTIONS += "my-layer"
BBFILE_PATTERN_my-layer := "^${LAYERDIR}/"
BBFILE_PRIORITY_my-layer = "10"

recipes-kernel/linux/linux-mainline_3.8.bbappend (scenario 1):

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.8:"
COMPATIBLE_MACHINE_beaglebone = "(beaglebone)"
SRC_URI += " file://defconfig \
             "

recipes-kernel/linux/linux-mainline-3.8/defconfig (scenario 1):

http://pastebin.com/qd8B3C5K


recipes-kernel/linux/linux-mainline_3.8.bbappend (scenario 2):

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.8:"
inherit kernel
require recipes-kernel/linux/linux-yocto.inc
COMPATIBLE_MACHINE_beaglebone = "(beaglebone)"
SRC_URI += " file://config-addons.cfg \
             "

recipes-kernel/linux/linux-mainline-3.8/config-addons.cfg (scenario 2):

 CONFIG_WATCHDOG_NOWAYOUT=y

CONFIG_NTFS_FS=y
CONFIG_NTFS_RW=y



Results:

   - Scenario 1: Full defconfig replacement

${WORKDIR}/defconfig comes from meta-beagleboard instead of meta-mine

${S}/.config comes from meta-beagleboard instead of meta-mine


   - Scenario 2: Config fragments

"bitbake linux-mainline" got stuck on do_patch

 log.do_patch:

DEBUG: Executing shell function do_patch

WARNING: no meta data branch found ...

Switched to branch 'linux-3.8.y'

[INFO] validating against known patches  (beaglebone-standard-meta)



Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/


2013/10/29 Diego Sueiro <diego.sueiro@gmail.com>

> 2013/10/29 Andrea Adami <andrea.adami@gmail.com>
>
>> I'll jump in one more time...
>>
>> Have you tried putting defconfig and patch under <machine> subdir?
>>
>> recipes-kernel/linux/linux-yocto-3.2/<machine>
>> defconfig
>> my-own.patch
>>
>> I've recently added two similar entries for 3.10 and it works.
>> Afaik it was impossible to put a common patch under /linux-yocto-.3.2
>> at the time.
>>
>
> Andrea,
>
> I did it before and not worked.
> I'll do it again just to make sure.
>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>
>
> 2013/10/29 Andrea Adami <andrea.adami@gmail.com>
>
>> On Tue, Oct 29, 2013 at 11:33 AM, Diego Sueiro <diego.sueiro@gmail.com>
>> wrote:
>> >
>> > 2013/10/28 Bruce Ashfield <bruce.ashfield@windriver.com>
>> >>
>> >> I'm using dylan for my yocto checkout (not oe-core standalone, since
>> >> this is a yocto list/question),
>> >
>> > I thought that opemenbedded-core and poky were sharing the same core
>> > components, classes and functions.
>> >
>> >>
>> >> My build shows:
>> >>
>> >> meta
>> >> meta-yocto
>> >> meta-yocto-bsp    = "dylan:3dc4505f0e744177ae4ddff1e1ce8b31b95dfaa6"
>> >> meta-ti           = "master:c14c386946e1ea341faeea292580e37d538d645d"
>> >> meta-alphalem     = "master:a5c0e8ff51297a4090cd47d669b4fc9c94696908"
>> >> meta-alphalem-bsp = "master:56086e4dc618e975c9a46491793041f0d18e47a2"
>> >>
>> >> Mike indicated that he was using dylan for meta-ti, but that doesn't
>> >> make a difference either, since for our purposed. It's kernel.bbclass
>> >> and the yocto kernel processing that matters.
>> >
>> > I'll build a setup with yocto (dylan), meta-beagleboard (dylan) and
>> > meta-mine to check if I can reproduce the issues.
>> >
>> >>
>> >> In meta-alphalem-bsp, I have linux-mainline_3.2.bbappend, with the
>> >> following content:
>> >>
>> >> > cat linux-mainline_3.2.bbappend
>> >> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.2:"
>> >>
>> >> inherit kernel
>> >> require recipes-kernel/linux/linux-yocto.inc
>> >>
>> >> COMPATIBLE_MACHINE = "(beagleboard)"
>> >>
>> >> SRC_URI_append = " file://defconfig"
>> >> SRC_URI_append = " file://my_frag.cfg"
>> >>
>> >> And I added a fragment which has:
>> >>
>> >> > cat my_frag.cfg
>> >> CONFIG_WATCHDOG_NOWAYOUT=y
>> >> CONFIG_NTFS_FS=y
>> >> CONFIG_NTFS_RW=y
>> >>
>> >> When both are applied to the kernel build, we should see CONFIG_NTFS_FS
>> >> transition from =m to =y:
>> >>
>> >> > grep CONFIG_NTFS_FS *
>> >> defconfig:CONFIG_NTFS_FS=m
>> >> my_frag.cfg:CONFIG_NTFS_FS=y
>> >>
>> >> After invoking linux-mainline's configure task, I see the following:
>> >>
>> >> > grep CONFIG_NTFS_FS linux-beagleboard-standard-build/.config
>> >> CONFIG_NTFS_FS=y
>> >>
>> >> And other elements of the defconfig and fragment are properly applied
>> >> to the configuration phase.
>> >>
>> >> I'm also seeing good results on master, which means that I'm at a
>> >> standstill to reproduce any problems.
>> >>
>> >> Diego: can you confirm for me what triggers you are seeing that shows
>> >> the defconfig and fragment are not used. I assume the config options
>> >> are not present, but I just want to be sure.
>> >
>> > For the full defconfig replacement after doing a do_configure I've
>> checked
>> > .config on ${S} and it did not included my CONFIGS.
>> > For config fragment it got stuck on do_patch task.
>> >
>> >
>> >
>> > Regards,
>> >
>> > --
>> > *dS
>> > Diego Sueiro
>> >
>> > /*long live rock 'n roll*/
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>> I'll jump in one more time...
>>
>> Have you tried putting defconfig and patch under <machine> subdir?
>>
>> recipes-kernel/linux/linux-yocto-3.2/<machine>
>> defconfig
>> my-own.patch
>>
>> I've recently added two similar entries for 3.10 and it works.
>> Afaik it was impossible to put a common patch under /linux-yocto-.3.2
>> at the time.
>>
>> Regards
>>
>> Andrea
>>
>
>

--047d7bdc109ee71c2704e9e2e8d9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Bruce,<div><br></div><div>I&#39;ve created new build setup=
 with this configuration:<br></div><div><blockquote style=3D"margin:0px 0px=
 0px 40px;border:none;padding:0px"><div><div>BB_VERSION =A0 =A0 =A0 =A0=3D =
&quot;1.18.0&quot;</div>


<div>BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;</div><div>NATIV=
ELSBSTRING =A0 =3D &quot;Ubuntu-12.10&quot;</div><div>TARGET_SYS =A0 =A0 =
=A0 =A0=3D &quot;arm-poky-linux-gnueabi&quot;</div><div>MACHINE =A0 =A0 =A0=
 =A0 =A0 =3D &quot;beaglebone&quot;</div>


<div>DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;</div><div>DISTRO_VE=
RSION =A0 =A0=3D &quot;1.4.2&quot;</div><div>TUNE_FEATURES =A0 =A0 =3D &quo=
t;armv7a vfp neon&quot;</div><div>TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-n=
eon&quot;</div><div>meta =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>


<div>meta-yocto =A0 =A0 =A0 =A0</div><div>meta-yocto-bsp =A0 =A0=3D &quot;d=
ylan:4e399f08d596197859214fdb3b06403b87bf8789&quot;</div><div>meta-oe =A0 =
=A0 =A0 =A0 =A0 =3D &quot;dylan:a108b2203a997634f87ac687e81712badaf3c546&qu=
ot;</div><div>common-bsp =A0 =A0 =A0 =A0=3D &quot;dylan:7fdf9c670a10c5031a2=
d5555c15c45e453de8c21&quot;</div>


<div>meta-mine =A0 =A0 =A0 =A0 =3D &quot;dylan:4e399f08d596197859214fdb3b06=
403b87bf8789&quot;</div></div><div><br></div></blockquote></div><div>common=
-bsp comes from meta-beagleboard.</div><div>meta-oe needed to be added beca=
use of=A0machine_kernel_pr.bbclass.<br>



</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">bblay=
ers.conf:</div><div class=3D"gmail_extra"><blockquote style=3D"margin:0px 0=
px 0px 40px;border:none;padding:0px"><div class=3D"gmail_extra">
<div class=3D"gmail_extra">LCONF_VERSION =3D &quot;6&quot;<br></div><div cl=
ass=3D"gmail_extra">BBPATH =3D &quot;${TOPDIR}&quot;<br></div><div class=3D=
"gmail_extra">BBFILES ?=3D &quot;&quot;</div><div class=3D"gmail_extra">BBL=
AYERS ?=3D &quot; \<br>


</div><div class=3D"gmail_extra">
=A0 ${TOPDIR}/meta \</div><div class=3D"gmail_extra">=A0 ${TOPDIR}/meta-yoc=
to \</div><div class=3D"gmail_extra">=A0 ${TOPDIR}/meta-yocto-bsp \</div><d=
iv class=3D"gmail_extra">=A0 ${TOPDIR}/meta-openembedded/meta-oe \</div><di=
v class=3D"gmail_extra">



=A0 ${TOPDIR}/meta-beagleboard/common-bsp \</div><div class=3D"gmail_extra"=
>=A0 ${TOPDIR}/meta-mine \</div><div class=3D"gmail_extra">=A0 &quot;</div>=
<div><br></div></div></blockquote></div><div class=3D"gmail_extra">meta-min=
e:<br></div>


<div class=3D"gmail_extra"><blockquote style=3D"margin:0px 0px 0px 40px;bor=
der:none;padding:0px"><div class=3D"gmail_extra">conf/layer.conf:</div></bl=
ockquote></div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;pad=
ding:0px">



<div class=3D"gmail_extra"><blockquote style=3D"margin:0px 0px 0px 40px;bor=
der:none;padding:0px"><div class=3D"gmail_extra"><div class=3D"gmail_extra"=
>BBPATH .=3D &quot;:${LAYERDIR}&quot;<br></div><div class=3D"gmail_extra">B=
BFILES +=3D &quot;${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbap=
pend&quot;<br>


</div>
<div class=3D"gmail_extra">BBFILE_COLLECTIONS +=3D &quot;my-layer&quot;<br>=
</div><div class=3D"gmail_extra">BBFILE_PATTERN_my-layer :=3D &quot;^${LAYE=
RDIR}/&quot;</div><div class=3D"gmail_extra">BBFILE_PRIORITY_my-layer =3D &=
quot;10&quot;</div>



<div class=3D"gmail_extra"><br></div></div></blockquote></div></blockquote>=
<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div =
class=3D"gmail_extra">recipes-kernel/linux/linux-mainline_3.8.bbappend (sce=
nario 1):<br>

</div></blockquote><blockquote style=3D"margin:0px 0px 0px 40px;border:none=
;padding:0px"><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padd=
ing:0px"><div class=3D"gmail_extra" style><div class=3D"gmail_extra">FILESE=
XTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-3.8:&quot;</div>

<div class=3D"gmail_extra">COMPATIBLE_MACHINE_beaglebone =3D &quot;(beagleb=
one)&quot;<br></div><div class=3D"gmail_extra">SRC_URI +=3D &quot; file://d=
efconfig \<br></div><div class=3D"gmail_extra">=A0 =A0 =A0 =A0 =A0 =A0 =A0&=
quot;</div></div></blockquote>

</blockquote><blockquote style=3D"margin:0px 0px 0px 40px;border:none;paddi=
ng:0px">recipes-kernel/linux/linux-mainline-3.8/defconfig (scenario 1):<br>=
</blockquote><blockquote style=3D"margin:0px 0px 0px 40px;border:none;paddi=
ng:0px">

<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><a hr=
ef=3D"http://pastebin.com/qd8B3C5K">http://pastebin.com/qd8B3C5K</a><br></b=
lockquote></blockquote><blockquote style=3D"margin:0px 0px 0px 40px;border:=
none;padding:0px">

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">recipes-ker=
nel/linux/linux-mainline_3.8.bbappend (scenario 2):<br></div></blockquote><=
blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><block=
quote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">

<div class=3D"gmail_extra"><div class=3D"gmail_extra">FILESEXTRAPATHS_prepe=
nd :=3D &quot;${THISDIR}/${PN}-3.8:&quot;</div>

<div class=3D"gmail_extra">inherit kernel<br></div><div class=3D"gmail_extr=
a">require recipes-kernel/linux/linux-yocto.inc</div><div class=3D"gmail_ex=
tra">COMPATIBLE_MACHINE_beaglebone =3D &quot;(beaglebone)&quot;<br></div>
<div class=3D"gmail_extra">SRC_URI +=3D &quot; file://config-addons.cfg \<b=
r></div><div class=3D"gmail_extra">=A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;</div><=
/div></blockquote></blockquote><blockquote style=3D"margin:0px 0px 0px 40px=
;border:none;padding:0px">



recipes-kernel/linux/linux-mainline-3.8/config-addons.cfg (scenario 2):</bl=
ockquote><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0=
px"><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">


<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
</blockquote></blockquote></blockquote><blockquote style=3D"margin:0px 0px =
0px 40px;border:none;padding:0px"><blockquote style=3D"margin:0px 0px 0px 4=
0px;border:none;padding:0px">CONFIG_WATCHDOG_NOWAYOUT=3Dy<br><blockquote st=
yle=3D"margin:0px 0px 0px 40px;border:none;padding:0px">



</blockquote>CONFIG_NTFS_FS=3Dy<br>CONFIG_NTFS_RW=3Dy</blockquote></blockqu=
ote><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br></d=
iv><div class=3D"gmail_extra">Results:</div><div class=3D"gmail_extra"><div=
><ul style>

<li style>Scenario 1: Full defconfig=A0replacement</li></ul></div></div><bl=
ockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div cla=
ss=3D"gmail_extra"><div style>${WORKDIR}/defconfig comes from meta-beaglebo=
ard instead of meta-mine<br>

</div></div></blockquote><blockquote style=3D"margin:0px 0px 0px 40px;borde=
r:none;padding:0px"><div class=3D"gmail_extra"><div style>${S}/.config=A0co=
mes from meta-beagleboard instead of meta-mine</div></div></blockquote><div=
 class=3D"gmail_extra">

<ul style><li style>Scenario 2: Config fragments</li></ul></div><blockquote=
 style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div class=3D"gm=
ail_extra">&quot;bitbake linux-mainline&quot; got stuck on do_patch</div></=
blockquote>

<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
<div class=3D"gmail_extra">log.do_patch:</div></blockquote><blockquote styl=
e=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><blockquote style=3D"=
margin:0px 0px 0px 40px;border:none;padding:0px"><div class=3D"gmail_extra"=
>
DEBUG: Executing shell function do_patch<br></div></blockquote></blockquote=
><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><blo=
ckquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div clas=
s=3D"gmail_extra">

<div class=3D"gmail_extra" style>WARNING: no meta data branch found ...</di=
v></div></blockquote></blockquote><blockquote style=3D"margin:0px 0px 0px 4=
0px;border:none;padding:0px"><blockquote style=3D"margin:0px 0px 0px 40px;b=
order:none;padding:0px">

<div class=3D"gmail_extra"><div class=3D"gmail_extra" style>Switched to bra=
nch &#39;linux-3.8.y&#39;</div></div></blockquote></blockquote><blockquote =
style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><blockquote style=
=3D"margin:0px 0px 0px 40px;border:none;padding:0px">

<div class=3D"gmail_extra"><div class=3D"gmail_extra" style>[INFO] validati=
ng against known patches =A0(beaglebone-standard-meta)</div></div></blockqu=
ote></blockquote><div class=3D"gmail_extra"><div>
<br></div></div><div class=3D"gmail_extra"><br clear=3D"all"><div><div dir=
=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>
Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br></div></div>
<br><br><div class=3D"gmail_quote">2013/10/29 Diego Sueiro <span dir=3D"ltr=
">&lt;<a href=3D"mailto:diego.sueiro@gmail.com" target=3D"_blank">diego.sue=
iro@gmail.com</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,20=
4,204);border-left-style:solid;padding-left:1ex">



<div dir=3D"ltr"><div class=3D"gmail_extra" style=3D"font-family:arial,sans=
-serif;font-size:13px"><div><div><div class=3D"gmail_quote">2013/10/29 Andr=
ea Adami=A0<span dir=3D"ltr">&lt;<a href=3D"mailto:andrea.adami@gmail.com" =
target=3D"_blank">andrea.adami@gmail.com</a>&gt;</span><br>




<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div style=3D"overflow:hidden">I&#39;ll jump in one more t=
ime...<br>




<br>Have you tried putting defconfig and patch under &lt;machine&gt; subdir=
?<br><br>recipes-kernel/linux/linux-yocto-3.2/&lt;machine&gt;<br>defconfig<=
br>my-own.patch<br><br>I&#39;ve recently added two similar entries for 3.10=
 and it works.<br>




Afaik it was impossible to put a common patch under /linux-yocto-.3.2<br>at=
 the time.</div></blockquote></div><br></div></div>Andrea,</div><div><div c=
lass=3D"gmail_extra" style=3D"font-family:arial,sans-serif;font-size:13px">



<br></div><div class=3D"gmail_extra" style=3D"font-family:arial,sans-serif;=
font-size:13px">
I did it before and not worked.</div><div class=3D"gmail_extra" style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">I&#39;ll do it again just to mak=
e sure.</div></div><div style=3D"font-family:arial,sans-serif;font-size:13p=
x">




<div><img src=3D"https://mail.google.com/mail/u/0/images/cleardot.gif" styl=
e=3D"max-width: 100%;"></div></div><div><div style=3D"font-family:arial,san=
s-serif;font-size:13px"><div class=3D"gmail_extra">
<br><br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></d=
iv>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/</div></d=
iv></div></div></div><div><div><div class=3D"gmail_extra"><div><div dir=3D"=
ltr">



<br></div></div>
<br><div class=3D"gmail_quote">2013/10/29 Andrea Adami <span dir=3D"ltr">&l=
t;<a href=3D"mailto:andrea.adami@gmail.com" target=3D"_blank">andrea.adami@=
gmail.com</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,20=
4);border-left-style:solid;padding-left:1ex">




<div><div>On Tue, Oct 29, 2013 at 11:33 AM, Diego Sueiro &lt;<a href=3D"mai=
lto:diego.sueiro@gmail.com" target=3D"_blank">diego.sueiro@gmail.com</a>&gt=
; wrote:<br>
&gt;<br>
&gt; 2013/10/28 Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@windriv=
er.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m using dylan for my yocto checkout (not oe-core standalone,=
 since<br>
&gt;&gt; this is a yocto list/question),<br>
&gt;<br>
&gt; I thought that opemenbedded-core and poky were sharing the same core<b=
r>
&gt; components, classes and functions.<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; My build shows:<br>
&gt;&gt;<br>
&gt;&gt; meta<br>
&gt;&gt; meta-yocto<br>
&gt;&gt; meta-yocto-bsp =A0 =A0=3D &quot;dylan:3dc4505f0e744177ae4ddff1e1ce=
8b31b95dfaa6&quot;<br>
&gt;&gt; meta-ti =A0 =A0 =A0 =A0 =A0 =3D &quot;master:c14c386946e1ea341faee=
a292580e37d538d645d&quot;<br>
&gt;&gt; meta-alphalem =A0 =A0 =3D &quot;master:a5c0e8ff51297a4090cd47d669b=
4fc9c94696908&quot;<br>
&gt;&gt; meta-alphalem-bsp =3D &quot;master:56086e4dc618e975c9a46491793041f=
0d18e47a2&quot;<br>
&gt;&gt;<br>
&gt;&gt; Mike indicated that he was using dylan for meta-ti, but that doesn=
&#39;t<br>
&gt;&gt; make a difference either, since for our purposed. It&#39;s kernel.=
bbclass<br>
&gt;&gt; and the yocto kernel processing that matters.<br>
&gt;<br>
&gt; I&#39;ll build a setup with yocto (dylan), meta-beagleboard (dylan) an=
d<br>
&gt; meta-mine to check if I can reproduce the issues.<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; In meta-alphalem-bsp, I have linux-mainline_3.2.bbappend, with the=
<br>
&gt;&gt; following content:<br>
&gt;&gt;<br>
&gt;&gt; &gt; cat linux-mainline_3.2.bbappend<br>
&gt;&gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-3.2:&quot;<br>
&gt;&gt;<br>
&gt;&gt; inherit kernel<br>
&gt;&gt; require recipes-kernel/linux/linux-yocto.inc<br>
&gt;&gt;<br>
&gt;&gt; COMPATIBLE_MACHINE =3D &quot;(beagleboard)&quot;<br>
&gt;&gt;<br>
&gt;&gt; SRC_URI_append =3D &quot; file://defconfig&quot;<br>
&gt;&gt; SRC_URI_append =3D &quot; file://my_frag.cfg&quot;<br>
&gt;&gt;<br>
&gt;&gt; And I added a fragment which has:<br>
&gt;&gt;<br>
&gt;&gt; &gt; cat my_frag.cfg<br>
&gt;&gt; CONFIG_WATCHDOG_NOWAYOUT=3Dy<br>
&gt;&gt; CONFIG_NTFS_FS=3Dy<br>
&gt;&gt; CONFIG_NTFS_RW=3Dy<br>
&gt;&gt;<br>
&gt;&gt; When both are applied to the kernel build, we should see CONFIG_NT=
FS_FS<br>
&gt;&gt; transition from =3Dm to =3Dy:<br>
&gt;&gt;<br>
&gt;&gt; &gt; grep CONFIG_NTFS_FS *<br>
&gt;&gt; defconfig:CONFIG_NTFS_FS=3Dm<br>
&gt;&gt; my_frag.cfg:CONFIG_NTFS_FS=3Dy<br>
&gt;&gt;<br>
&gt;&gt; After invoking linux-mainline&#39;s configure task, I see the foll=
owing:<br>
&gt;&gt;<br>
&gt;&gt; &gt; grep CONFIG_NTFS_FS linux-beagleboard-standard-build/.config<=
br>
&gt;&gt; CONFIG_NTFS_FS=3Dy<br>
&gt;&gt;<br>
&gt;&gt; And other elements of the defconfig and fragment are properly appl=
ied<br>
&gt;&gt; to the configuration phase.<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m also seeing good results on master, which means that I&#39=
;m at a<br>
&gt;&gt; standstill to reproduce any problems.<br>
&gt;&gt;<br>
&gt;&gt; Diego: can you confirm for me what triggers you are seeing that sh=
ows<br>
&gt;&gt; the defconfig and fragment are not used. I assume the config optio=
ns<br>
&gt;&gt; are not present, but I just want to be sure.<br>
&gt;<br>
&gt; For the full defconfig replacement after doing a do_configure I&#39;ve=
 checked<br>
&gt; .config on ${S} and it did not included my CONFIGS.<br>
&gt; For config fragment it got stuck on do_patch task.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; --<br>
&gt; *dS<br>
&gt; Diego Sueiro<br>
&gt;<br>
&gt; /*long live rock &#39;n roll*/<br>
&gt;<br>
</div></div><div>&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
<br>
</div>I&#39;ll jump in one more time...<br>
<br>
Have you tried putting defconfig and patch under &lt;machine&gt; subdir?<br=
>
<br>
recipes-kernel/linux/linux-yocto-3.2/&lt;machine&gt;<br>
defconfig<br>
my-own.patch<br>
<br>
I&#39;ve recently added two similar entries for 3.10 and it works.<br>
Afaik it was impossible to put a common patch under /linux-yocto-.3.2<br>
at the time.<br>
<br>
Regards<br>
<span><font color=3D"#888888"><br>
Andrea<br>
</font></span></blockquote></div><br></div></div></div></div>
</blockquote></div><br></div></div>

--047d7bdc109ee71c2704e9e2e8d9--
