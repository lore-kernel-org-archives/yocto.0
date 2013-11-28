Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E13A8E0055D
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2013 07:37:24 -0800 (PST)
Received: by mail-ie0-f181.google.com with SMTP id e14so14770842iej.12
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2013 07:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=sNYxibbaZCQwiewUkAWKVrngCSuKFxiHNkPn1OHTH5Y=;
	b=ehwnJEC4t/FUZ5e1o+r1EOrZ6L57GX8W6rJKDtC1Ni4IJww0DTYQJrkUDYV2SUoapl
	Es730qx1wItTdWuwUBfeIa3KqY/jtcNtE9pWvA8QZgfVA+oeBe5DylAxhhglVhNnYCy8
	Cv8i1oN0EWN+OlBj1CtsdEHT1Eh4hZ1GNdfCqWxHJySGQ38tzTlOlxZ9Aa+HPoApOKrA
	mZjfILNSzQkK/bdi21PVcNlMUEmnXZJ0IS1YQgEbWuGoSh+QVo1Y2Ilp6IcLs2glPudJ
	g4FHgVuFn2xREkSPLLKaJR1JB7ezLI/1i7SGa01Sp83+5qlE1a/NeGJRJAr4aK2fazWj
	ow0w==
X-Received: by 10.43.178.135 with SMTP id ow7mr12759926icc.43.1385653043639;
	Thu, 28 Nov 2013 07:37:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Thu, 28 Nov 2013 07:37:03 -0800 (PST)
In-Reply-To: <52771111.5000604@windriver.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
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
	<CAMCfZKHaRRVcx5YG+7DJ10-4DE_n9titOG7+aB3R+4H8iZjGvw@mail.gmail.com>
	<52771111.5000604@windriver.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 28 Nov 2013 13:37:03 -0200
Message-ID: <CAMCfZKEE7wSrpg_7Gq5ScYbwroNn_G+gpvjnZRG36A=xEJu7pg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Thu, 28 Nov 2013 15:37:25 -0000
Content-Type: multipart/alternative; boundary=001a11c30bec72bf7204ec3e7d5b

--001a11c30bec72bf7204ec3e7d5b
Content-Type: text/plain; charset=ISO-8859-1

Bruce,

Any updates on this?

Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/


On Mon, Nov 4, 2013 at 1:14 AM, Bruce Ashfield <bruce.ashfield@windriver.com
> wrote:

> On 13-10-29 11:31 AM, Diego Sueiro wrote:
>
>> Bruce,
>>
>> I've created new build setup with this configuration:
>>
>>     BB_VERSION        = "1.18.0"
>>     BUILD_SYS         = "x86_64-linux"
>>     NATIVELSBSTRING   = "Ubuntu-12.10"
>>     TARGET_SYS        = "arm-poky-linux-gnueabi"
>>     MACHINE           = "beaglebone"
>>     DISTRO            = "poky"
>>     DISTRO_VERSION    = "1.4.2"
>>     TUNE_FEATURES     = "armv7a vfp neon"
>>     TARGET_FPU        = "vfp-neon"
>>     meta
>>     meta-yocto
>>     meta-yocto-bsp    = "dylan:4e399f08d596197859214fdb3b06403b87bf8789"
>>     meta-oe           = "dylan:a108b2203a997634f87ac687e81712badaf3c546"
>>     common-bsp        = "dylan:7fdf9c670a10c5031a2d5555c15c45e453de8c21"
>>     meta-mine         = "dylan:4e399f08d596197859214fdb3b06403b87bf8789"
>>
>> common-bsp comes from meta-beagleboard.
>> meta-oe needed to be added because of machine_kernel_pr.bbclass.
>>
>> bblayers.conf:
>>
>>     LCONF_VERSION = "6"
>>     BBPATH = "${TOPDIR}"
>>     BBFILES ?= ""
>>     BBLAYERS ?= " \
>>        ${TOPDIR}/meta \
>>        ${TOPDIR}/meta-yocto \
>>        ${TOPDIR}/meta-yocto-bsp \
>>        ${TOPDIR}/meta-openembedded/meta-oe \
>>        ${TOPDIR}/meta-beagleboard/common-bsp \
>>        ${TOPDIR}/meta-mine \
>>        "
>>
>> meta-mine:
>>
>>     conf/layer.conf:
>>
>>         BBPATH .= ":${LAYERDIR}"
>>         BBFILES += "${LAYERDIR}/recipes*/*/*.bb
>>         ${LAYERDIR}/recipes*/*/*.bbappend"
>>         BBFILE_COLLECTIONS += "my-layer"
>>         BBFILE_PATTERN_my-layer := "^${LAYERDIR}/"
>>         BBFILE_PRIORITY_my-layer = "10"
>>
>>     recipes-kernel/linux/linux-mainline_3.8.bbappend (scenario 1):
>>
>>         FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.8:"
>>         COMPATIBLE_MACHINE_beaglebone = "(beaglebone)"
>>         SRC_URI += " file://defconfig \
>>                       "
>>
>>     recipes-kernel/linux/linux-mainline-3.8/defconfig (scenario 1):
>>
>>         http://pastebin.com/qd8B3C5K
>>
>>
>>     recipes-kernel/linux/linux-mainline_3.8.bbappend (scenario 2):
>>
>>         FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.8:"
>>         inherit kernel
>>         require recipes-kernel/linux/linux-yocto.inc
>>         COMPATIBLE_MACHINE_beaglebone = "(beaglebone)"
>>         SRC_URI += " file://config-addons.cfg \
>>                       "
>>
>>     recipes-kernel/linux/linux-mainline-3.8/config-addons.cfg (scenario
>> 2):
>>
>>         CONFIG_WATCHDOG_NOWAYOUT=y
>>
>>         CONFIG_NTFS_FS=y
>>         CONFIG_NTFS_RW=y
>>
>>
>>
>> Results:
>>
>>   * Scenario 1: Full defconfig replacement
>>
>>
>>     ${WORKDIR}/defconfig comes from meta-beagleboard instead of meta-mine
>>
>>     ${S}/.config comes from meta-beagleboard instead of meta-mine
>>
>
> FYI: I went silent on this, since I was running a few experiments in the
> background. Mainly on scenario 2, but I can say that I see the same
> behaviour
> with scenario #1 as you do. Whether or not I use the yocto kernel tooling,
> or the core kernel processing, I see exactly the same defconfig used.
>
> The issue you are seeing is distinct from the kernel processing, since
> the defconfig isn't treated any differently than anything else on the
> SRC_URI from the fetcher point of view ... and it is the fetcher which
> is matching file://defconfig from the meta-beagleboard layer before the
> one you have in meta-mine, since FILESEXTRAPATHS are searched after the
> FILESPATH for the elements in the SRC_URI. But I'm not a fetcher expert,
> that's my understanding and empirical evidence.
>
> As a debug, I called src_patches() in patches.bbclass explicitly, and
> it is obvious that the source of the defconfig is from meta-beagleboard.
> Renaming the file in meta-beagleboard, allows the one in meta-mine to
> be found, since the search continues.
>
> So for this question, your issue is with the ordering of the elements
> on the SRC_URI, and you can have your layer prioritized by making sure
> it is in the search paths first.
>
> This may or may not contradict the docs, and there are several threads
> ongoing about SRC_URI ordering in the various branches .. so I'm simply
> watching and waiting on this one.
>
>
>>   * Scenario 2: Config fragments
>>
>>
>>     "bitbake linux-mainline" got stuck on do_patch
>>
>>     log.do_patch:
>>
>>         DEBUG: Executing shell function do_patch
>>
>>         WARNING: no meta data branch found ...
>>
>>         Switched to branch 'linux-3.8.y'
>>
>>         [INFO] validating against known patches
>>  (beaglebone-standard-meta)
>>
>>
> As for this. I debugged it over the weekend, and you wouldn't see this on
> master, but the tools on the dylan branch aren't using the proper
> kern-tools
> SRCREVS. As such, I backported a change from master, and switched the
> kern-tools to use the dylan branch.
>
> What you were seeing as a hang, was really just an extremely long run
> of the patch processing, the 700+ patches in the beagleboard kernel
> recipe were being detected multiple times, and expanding to 47K entries.
>
> Which the patch I've attached here, I was able to patch and configure the
> kernel with the same layers.  Note: the run still takes a long time, since
> even applying 700 patches at a couple of seconds per patch .. takes a
> good chunk of time.
>
> I've added Paul Eggleton to the cc: list, since I'm not sure if dylan is
> still being updated, but if it is, the patch I'm attaching should be
> applied to fix the kern-tools situation in that branch.
>
> Cheers,
>
> Bruce
>
>
>>
>> Regards,
>>
>> --
>> *dS
>> Diego Sueiro
>>
>> /*long live rock 'n roll*/
>>
>>
>> 2013/10/29 Diego Sueiro <diego.sueiro@gmail.com
>> <mailto:diego.sueiro@gmail.com>>
>>
>>     2013/10/29 Andrea Adami <andrea.adami@gmail.com
>>     <mailto:andrea.adami@gmail.com>>
>>
>>
>>         I'll jump in one more time...
>>
>>         Have you tried putting defconfig and patch under <machine> subdir?
>>
>>         recipes-kernel/linux/linux-yocto-3.2/<machine>
>>         defconfig
>>         my-own.patch
>>
>>         I've recently added two similar entries for 3.10 and it works.
>>         Afaik it was impossible to put a common patch under
>>         /linux-yocto-.3.2
>>         at the time.
>>
>>
>>     Andrea,
>>
>>     I did it before and not worked.
>>     I'll do it again just to make sure.
>>
>>
>>     Regards,
>>
>>     --
>>     *dS
>>     Diego Sueiro
>>
>>     /*long live rock 'n roll*/
>>
>>
>>     2013/10/29 Andrea Adami <andrea.adami@gmail.com
>>     <mailto:andrea.adami@gmail.com>>
>>
>>
>>         On Tue, Oct 29, 2013 at 11:33 AM, Diego Sueiro
>>         <diego.sueiro@gmail.com <mailto:diego.sueiro@gmail.com>> wrote:
>>          >
>>          > 2013/10/28 Bruce Ashfield <bruce.ashfield@windriver.com
>>         <mailto:bruce.ashfield@windriver.com>>
>>
>>          >>
>>          >> I'm using dylan for my yocto checkout (not oe-core
>>         standalone, since
>>          >> this is a yocto list/question),
>>          >
>>          > I thought that opemenbedded-core and poky were sharing the
>>         same core
>>          > components, classes and functions.
>>          >
>>          >>
>>          >> My build shows:
>>          >>
>>          >> meta
>>          >> meta-yocto
>>          >> meta-yocto-bsp    =
>>         "dylan:3dc4505f0e744177ae4ddff1e1ce8b31b95dfaa6"
>>          >> meta-ti           =
>>         "master:c14c386946e1ea341faeea292580e37d538d645d"
>>          >> meta-alphalem     =
>>         "master:a5c0e8ff51297a4090cd47d669b4fc9c94696908"
>>          >> meta-alphalem-bsp =
>>         "master:56086e4dc618e975c9a46491793041f0d18e47a2"
>>          >>
>>          >> Mike indicated that he was using dylan for meta-ti, but that
>>         doesn't
>>          >> make a difference either, since for our purposed. It's
>>         kernel.bbclass
>>          >> and the yocto kernel processing that matters.
>>          >
>>          > I'll build a setup with yocto (dylan), meta-beagleboard
>>         (dylan) and
>>          > meta-mine to check if I can reproduce the issues.
>>          >
>>          >>
>>          >> In meta-alphalem-bsp, I have linux-mainline_3.2.bbappend,
>>         with the
>>          >> following content:
>>          >>
>>          >> > cat linux-mainline_3.2.bbappend
>>          >> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.2:"
>>          >>
>>          >> inherit kernel
>>          >> require recipes-kernel/linux/linux-yocto.inc
>>          >>
>>          >> COMPATIBLE_MACHINE = "(beagleboard)"
>>          >>
>>          >> SRC_URI_append = " file://defconfig"
>>          >> SRC_URI_append = " file://my_frag.cfg"
>>          >>
>>          >> And I added a fragment which has:
>>          >>
>>          >> > cat my_frag.cfg
>>          >> CONFIG_WATCHDOG_NOWAYOUT=y
>>          >> CONFIG_NTFS_FS=y
>>          >> CONFIG_NTFS_RW=y
>>          >>
>>          >> When both are applied to the kernel build, we should see
>>         CONFIG_NTFS_FS
>>          >> transition from =m to =y:
>>          >>
>>          >> > grep CONFIG_NTFS_FS *
>>          >> defconfig:CONFIG_NTFS_FS=m
>>          >> my_frag.cfg:CONFIG_NTFS_FS=y
>>          >>
>>          >> After invoking linux-mainline's configure task, I see the
>>         following:
>>          >>
>>          >> > grep CONFIG_NTFS_FS linux-beagleboard-standard-
>> build/.config
>>          >> CONFIG_NTFS_FS=y
>>          >>
>>          >> And other elements of the defconfig and fragment are
>>         properly applied
>>          >> to the configuration phase.
>>          >>
>>          >> I'm also seeing good results on master, which means that I'm
>>         at a
>>          >> standstill to reproduce any problems.
>>          >>
>>          >> Diego: can you confirm for me what triggers you are seeing
>>         that shows
>>          >> the defconfig and fragment are not used. I assume the config
>>         options
>>          >> are not present, but I just want to be sure.
>>          >
>>          > For the full defconfig replacement after doing a do_configure
>>         I've checked
>>          > .config on ${S} and it did not included my CONFIGS.
>>          > For config fragment it got stuck on do_patch task.
>>          >
>>          >
>>          >
>>          > Regards,
>>          >
>>          > --
>>          > *dS
>>          > Diego Sueiro
>>          >
>>          > /*long live rock 'n roll*/
>>          >
>>          > _______________________________________________
>>          > yocto mailing list
>>          > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>
>>          > https://lists.yoctoproject.org/listinfo/yocto
>>          >
>>
>>         I'll jump in one more time...
>>
>>         Have you tried putting defconfig and patch under <machine> subdir?
>>
>>         recipes-kernel/linux/linux-yocto-3.2/<machine>
>>         defconfig
>>         my-own.patch
>>
>>         I've recently added two similar entries for 3.10 and it works.
>>         Afaik it was impossible to put a common patch under
>>         /linux-yocto-.3.2
>>         at the time.
>>
>>         Regards
>>
>>         Andrea
>>
>>
>>
>>
>

--001a11c30bec72bf7204ec3e7d5b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Bruce,<div><br></div><div style>Any updates on this?</div>=
<div class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr"><div>Reg=
ards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock=
 &#39;n roll*/<br>

</div></div>
<br><br><div class=3D"gmail_quote">On Mon, Nov 4, 2013 at 1:14 AM, Bruce As=
hfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.com=
" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">

<div class=3D"im">On <a href=3D"tel:13-10-29%2011" value=3D"+13102911" targ=
et=3D"_blank">13-10-29 11</a>:31 AM, Diego Sueiro wrote:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5">
Bruce,<br>
<br>
I&#39;ve created new build setup with this configuration:<br>
<br>
=A0 =A0 BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.18.0&quot;<br>
=A0 =A0 BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;<br>
=A0 =A0 NATIVELSBSTRING =A0 =3D &quot;Ubuntu-12.10&quot;<br>
=A0 =A0 TARGET_SYS =A0 =A0 =A0 =A0=3D &quot;arm-poky-linux-gnueabi&quot;<br=
>
=A0 =A0 MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;beaglebone&quot;<br>
=A0 =A0 DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
=A0 =A0 DISTRO_VERSION =A0 =A0=3D &quot;1.4.2&quot;<br>
=A0 =A0 TUNE_FEATURES =A0 =A0 =3D &quot;armv7a vfp neon&quot;<br>
=A0 =A0 TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-neon&quot;<br>
=A0 =A0 meta<br>
=A0 =A0 meta-yocto<br>
=A0 =A0 meta-yocto-bsp =A0 =A0=3D &quot;dylan:<u></u>4e399f08d596197859214f=
db3b0640<u></u>3b87bf8789&quot;<br>
=A0 =A0 meta-oe =A0 =A0 =A0 =A0 =A0 =3D &quot;dylan:<u></u>a108b2203a997634=
f87ac687e81712<u></u>badaf3c546&quot;<br>
=A0 =A0 common-bsp =A0 =A0 =A0 =A0=3D &quot;dylan:<u></u>7fdf9c670a10c5031a=
2d5555c15c45<u></u>e453de8c21&quot;<br>
=A0 =A0 meta-mine =A0 =A0 =A0 =A0 =3D &quot;dylan:<u></u>4e399f08d596197859=
214fdb3b0640<u></u>3b87bf8789&quot;<br>
<br>
common-bsp comes from meta-beagleboard.<br>
meta-oe needed to be added because of machine_kernel_pr.bbclass.<br>
<br>
bblayers.conf:<br>
<br>
=A0 =A0 LCONF_VERSION =3D &quot;6&quot;<br>
=A0 =A0 BBPATH =3D &quot;${TOPDIR}&quot;<br>
=A0 =A0 BBFILES ?=3D &quot;&quot;<br>
=A0 =A0 BBLAYERS ?=3D &quot; \<br>
=A0 =A0 =A0 =A0${TOPDIR}/meta \<br>
=A0 =A0 =A0 =A0${TOPDIR}/meta-yocto \<br>
=A0 =A0 =A0 =A0${TOPDIR}/meta-yocto-bsp \<br>
=A0 =A0 =A0 =A0${TOPDIR}/meta-openembedded/<u></u>meta-oe \<br>
=A0 =A0 =A0 =A0${TOPDIR}/meta-beagleboard/<u></u>common-bsp \<br>
=A0 =A0 =A0 =A0${TOPDIR}/meta-mine \<br>
=A0 =A0 =A0 =A0&quot;<br>
<br>
meta-mine:<br>
<br>
=A0 =A0 conf/layer.conf:<br>
<br>
=A0 =A0 =A0 =A0 BBPATH .=3D &quot;:${LAYERDIR}&quot;<br>
=A0 =A0 =A0 =A0 BBFILES +=3D &quot;${LAYERDIR}/recipes*/*/*.bb<br>
=A0 =A0 =A0 =A0 ${LAYERDIR}/recipes*/*/*.<u></u>bbappend&quot;<br>
=A0 =A0 =A0 =A0 BBFILE_COLLECTIONS +=3D &quot;my-layer&quot;<br>
=A0 =A0 =A0 =A0 BBFILE_PATTERN_my-layer :=3D &quot;^${LAYERDIR}/&quot;<br>
=A0 =A0 =A0 =A0 BBFILE_PRIORITY_my-layer =3D &quot;10&quot;<br>
<br>
=A0 =A0 recipes-kernel/linux/linux-<u></u>mainline_3.8.bbappend (scenario 1=
):<br>
<br>
=A0 =A0 =A0 =A0 FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-3.8:&qu=
ot;<br>
=A0 =A0 =A0 =A0 COMPATIBLE_MACHINE_beaglebone =3D &quot;(beaglebone)&quot;<=
br>
=A0 =A0 =A0 =A0 SRC_URI +=3D &quot; file://defconfig \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &quot;<br>
<br>
=A0 =A0 recipes-kernel/linux/linux-<u></u>mainline-3.8/defconfig (scenario =
1):<br>
<br>
=A0 =A0 =A0 =A0 <a href=3D"http://pastebin.com/qd8B3C5K" target=3D"_blank">=
http://pastebin.com/qd8B3C5K</a><br>
<br>
<br>
=A0 =A0 recipes-kernel/linux/linux-<u></u>mainline_3.8.bbappend (scenario 2=
):<br>
<br>
=A0 =A0 =A0 =A0 FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-3.8:&qu=
ot;<br>
=A0 =A0 =A0 =A0 inherit kernel<br>
=A0 =A0 =A0 =A0 require recipes-kernel/linux/linux-<u></u>yocto.inc<br>
=A0 =A0 =A0 =A0 COMPATIBLE_MACHINE_beaglebone =3D &quot;(beaglebone)&quot;<=
br>
=A0 =A0 =A0 =A0 SRC_URI +=3D &quot; file://config-addons.cfg \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &quot;<br>
<br>
=A0 =A0 recipes-kernel/linux/linux-<u></u>mainline-3.8/config-addons.cfg (s=
cenario 2):<br>
<br>
=A0 =A0 =A0 =A0 CONFIG_WATCHDOG_NOWAYOUT=3Dy<br>
<br>
=A0 =A0 =A0 =A0 CONFIG_NTFS_FS=3Dy<br>
=A0 =A0 =A0 =A0 CONFIG_NTFS_RW=3Dy<br>
<br>
<br>
<br>
Results:<br>
<br></div></div>
=A0 * Scenario 1: Full defconfig replacement<div class=3D"im"><br>
<br>
=A0 =A0 ${WORKDIR}/defconfig comes from meta-beagleboard instead of meta-mi=
ne<br>
<br>
=A0 =A0 ${S}/.config comes from meta-beagleboard instead of meta-mine<br>
</div></blockquote>
<br>
FYI: I went silent on this, since I was running a few experiments in the<br=
>
background. Mainly on scenario 2, but I can say that I see the same behavio=
ur<br>
with scenario #1 as you do. Whether or not I use the yocto kernel tooling,<=
br>
or the core kernel processing, I see exactly the same defconfig used.<br>
<br>
The issue you are seeing is distinct from the kernel processing, since<br>
the defconfig isn&#39;t treated any differently than anything else on the<b=
r>
SRC_URI from the fetcher point of view ... and it is the fetcher which<br>
is matching file://defconfig from the meta-beagleboard layer before the<br>
one you have in meta-mine, since FILESEXTRAPATHS are searched after the<br>
FILESPATH for the elements in the SRC_URI. But I&#39;m not a fetcher expert=
,<br>
that&#39;s my understanding and empirical evidence.<br>
<br>
As a debug, I called src_patches() in patches.bbclass explicitly, and<br>
it is obvious that the source of the defconfig is from meta-beagleboard.<br=
>
Renaming the file in meta-beagleboard, allows the one in meta-mine to<br>
be found, since the search continues.<br>
<br>
So for this question, your issue is with the ordering of the elements<br>
on the SRC_URI, and you can have your layer prioritized by making sure<br>
it is in the search paths first.<br>
<br>
This may or may not contradict the docs, and there are several threads<br>
ongoing about SRC_URI ordering in the various branches .. so I&#39;m simply=
<br>
watching and waiting on this one.<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
=A0 * Scenario 2: Config fragments<div class=3D"im"><br>
<br>
=A0 =A0 &quot;bitbake linux-mainline&quot; got stuck on do_patch<br>
<br>
=A0 =A0 log.do_patch:<br>
<br>
=A0 =A0 =A0 =A0 DEBUG: Executing shell function do_patch<br>
<br>
=A0 =A0 =A0 =A0 WARNING: no meta data branch found ...<br>
<br>
=A0 =A0 =A0 =A0 Switched to branch &#39;linux-3.8.y&#39;<br>
<br>
=A0 =A0 =A0 =A0 [INFO] validating against known patches =A0(beaglebone-stan=
dard-meta)<br>
<br>
</div></blockquote>
<br>
As for this. I debugged it over the weekend, and you wouldn&#39;t see this =
on<br>
master, but the tools on the dylan branch aren&#39;t using the proper kern-=
tools<br>
SRCREVS. As such, I backported a change from master, and switched the<br>
kern-tools to use the dylan branch.<br>
<br>
What you were seeing as a hang, was really just an extremely long run<br>
of the patch processing, the 700+ patches in the beagleboard kernel<br>
recipe were being detected multiple times, and expanding to 47K entries.<br=
>
<br>
Which the patch I&#39;ve attached here, I was able to patch and configure t=
he<br>
kernel with the same layers. =A0Note: the run still takes a long time, sinc=
e<br>
even applying 700 patches at a couple of seconds per patch .. takes a<br>
good chunk of time.<br>
<br>
I&#39;ve added Paul Eggleton to the cc: list, since I&#39;m not sure if dyl=
an is<br>
still being updated, but if it is, the patch I&#39;m attaching should be<br=
>
applied to fix the kern-tools situation in that branch.<br>
<br>
Cheers,<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">
<br>
<br>
Regards,<br>
<br>
--<br>
*dS<br>
Diego Sueiro<br>
<br>
/*long live rock &#39;n roll*/<br>
<br>
<br>
2013/10/29 Diego Sueiro &lt;<a href=3D"mailto:diego.sueiro@gmail.com" targe=
t=3D"_blank">diego.sueiro@gmail.com</a><br></div>
&lt;mailto:<a href=3D"mailto:diego.sueiro@gmail.com" target=3D"_blank">dieg=
o.sueiro@gmail.com</a><u></u>&gt;&gt;<br>
<br>
=A0 =A0 2013/10/29 Andrea Adami &lt;<a href=3D"mailto:andrea.adami@gmail.co=
m" target=3D"_blank">andrea.adami@gmail.com</a><br>
=A0 =A0 &lt;mailto:<a href=3D"mailto:andrea.adami@gmail.com" target=3D"_bla=
nk">andrea.adami@gmail.com</a><u></u>&gt;&gt;<div class=3D"im"><br>
<br>
=A0 =A0 =A0 =A0 I&#39;ll jump in one more time...<br>
<br>
=A0 =A0 =A0 =A0 Have you tried putting defconfig and patch under &lt;machin=
e&gt; subdir?<br>
<br>
=A0 =A0 =A0 =A0 recipes-kernel/linux/linux-<u></u>yocto-3.2/&lt;machine&gt;=
<br>
=A0 =A0 =A0 =A0 defconfig<br>
=A0 =A0 =A0 =A0 my-own.patch<br>
<br>
=A0 =A0 =A0 =A0 I&#39;ve recently added two similar entries for 3.10 and it=
 works.<br>
=A0 =A0 =A0 =A0 Afaik it was impossible to put a common patch under<br>
=A0 =A0 =A0 =A0 /linux-yocto-.3.2<br>
=A0 =A0 =A0 =A0 at the time.<br>
<br>
<br>
=A0 =A0 Andrea,<br>
<br>
=A0 =A0 I did it before and not worked.<br>
=A0 =A0 I&#39;ll do it again just to make sure.<br>
<br>
<br></div><div class=3D"im">
=A0 =A0 Regards,<br>
<br>
=A0 =A0 --<br>
=A0 =A0 *dS<br>
=A0 =A0 Diego Sueiro<br>
<br>
=A0 =A0 /*long live rock &#39;n roll*/<br>
<br>
<br>
=A0 =A0 2013/10/29 Andrea Adami &lt;<a href=3D"mailto:andrea.adami@gmail.co=
m" target=3D"_blank">andrea.adami@gmail.com</a><br></div>
=A0 =A0 &lt;mailto:<a href=3D"mailto:andrea.adami@gmail.com" target=3D"_bla=
nk">andrea.adami@gmail.com</a><u></u>&gt;&gt;<div class=3D"im"><br>
<br>
=A0 =A0 =A0 =A0 On Tue, Oct 29, 2013 at 11:33 AM, Diego Sueiro<br></div><di=
v class=3D"im">
=A0 =A0 =A0 =A0 &lt;<a href=3D"mailto:diego.sueiro@gmail.com" target=3D"_bl=
ank">diego.sueiro@gmail.com</a> &lt;mailto:<a href=3D"mailto:diego.sueiro@g=
mail.com" target=3D"_blank">diego.sueiro@gmail.com</a><u></u>&gt;&gt; wrote=
:<br>
=A0 =A0 =A0 =A0 =A0&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt; 2013/10/28 Bruce Ashfield &lt;<a href=3D"mailto:bru=
ce.ashfield@windriver.com" target=3D"_blank">bruce.ashfield@windriver.com</=
a><br></div>
=A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:bruce.ashfield@windriver.com" =
target=3D"_blank">bruce.ashfield@<u></u>windriver.com</a>&gt;&gt;<div><div =
class=3D"h5"><br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; I&#39;m using dylan for my yocto checkout (not =
oe-core<br>
=A0 =A0 =A0 =A0 standalone, since<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; this is a yocto list/question),<br>
=A0 =A0 =A0 =A0 =A0&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt; I thought that opemenbedded-core and poky were shar=
ing the<br>
=A0 =A0 =A0 =A0 same core<br>
=A0 =A0 =A0 =A0 =A0&gt; components, classes and functions.<br>
=A0 =A0 =A0 =A0 =A0&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; My build shows:<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; meta<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; meta-yocto<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; meta-yocto-bsp =A0 =A0=3D<br>
=A0 =A0 =A0 =A0 &quot;dylan:<u></u>3dc4505f0e744177ae4ddff1e1ce8b<u></u>31b=
95dfaa6&quot;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; meta-ti =A0 =A0 =A0 =A0 =A0 =3D<br>
=A0 =A0 =A0 =A0 &quot;master:<u></u>c14c386946e1ea341faeea292580e3<u></u>7d=
538d645d&quot;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; meta-alphalem =A0 =A0 =3D<br>
=A0 =A0 =A0 =A0 &quot;master:<u></u>a5c0e8ff51297a4090cd47d669b4fc<u></u>9c=
94696908&quot;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; meta-alphalem-bsp =3D<br>
=A0 =A0 =A0 =A0 &quot;master:<u></u>56086e4dc618e975c9a46491793041<u></u>f0=
d18e47a2&quot;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; Mike indicated that he was using dylan for meta=
-ti, but that<br>
=A0 =A0 =A0 =A0 doesn&#39;t<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; make a difference either, since for our purpose=
d. It&#39;s<br>
=A0 =A0 =A0 =A0 kernel.bbclass<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; and the yocto kernel processing that matters.<b=
r>
=A0 =A0 =A0 =A0 =A0&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt; I&#39;ll build a setup with yocto (dylan), meta-bea=
gleboard<br>
=A0 =A0 =A0 =A0 (dylan) and<br>
=A0 =A0 =A0 =A0 =A0&gt; meta-mine to check if I can reproduce the issues.<b=
r>
=A0 =A0 =A0 =A0 =A0&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; In meta-alphalem-bsp, I have linux-mainline_3.2=
.bbappend,<br>
=A0 =A0 =A0 =A0 with the<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; following content:<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; cat linux-mainline_3.2.bbappend<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/$=
{PN}-3.2:&quot;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; inherit kernel<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; require recipes-kernel/linux/linux-<u></u>yocto=
.inc<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; COMPATIBLE_MACHINE =3D &quot;(beagleboard)&quot=
;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; SRC_URI_append =3D &quot; file://defconfig&quot=
;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; SRC_URI_append =3D &quot; file://my_frag.cfg&qu=
ot;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; And I added a fragment which has:<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; cat my_frag.cfg<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; CONFIG_WATCHDOG_NOWAYOUT=3Dy<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; CONFIG_NTFS_FS=3Dy<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; CONFIG_NTFS_RW=3Dy<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; When both are applied to the kernel build, we s=
hould see<br>
=A0 =A0 =A0 =A0 CONFIG_NTFS_FS<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; transition from =3Dm to =3Dy:<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; grep CONFIG_NTFS_FS *<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; defconfig:CONFIG_NTFS_FS=3Dm<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; my_frag.cfg:CONFIG_NTFS_FS=3Dy<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; After invoking linux-mainline&#39;s configure t=
ask, I see the<br>
=A0 =A0 =A0 =A0 following:<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; grep CONFIG_NTFS_FS linux-beagleboard-stan=
dard-<u></u>build/.config<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; CONFIG_NTFS_FS=3Dy<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; And other elements of the defconfig and fragmen=
t are<br>
=A0 =A0 =A0 =A0 properly applied<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; to the configuration phase.<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; I&#39;m also seeing good results on master, whi=
ch means that I&#39;m<br>
=A0 =A0 =A0 =A0 at a<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; standstill to reproduce any problems.<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; Diego: can you confirm for me what triggers you=
 are seeing<br>
=A0 =A0 =A0 =A0 that shows<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; the defconfig and fragment are not used. I assu=
me the config<br>
=A0 =A0 =A0 =A0 options<br>
=A0 =A0 =A0 =A0 =A0&gt;&gt; are not present, but I just want to be sure.<br=
>
=A0 =A0 =A0 =A0 =A0&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt; For the full defconfig replacement after doing a do=
_configure<br>
=A0 =A0 =A0 =A0 I&#39;ve checked<br>
=A0 =A0 =A0 =A0 =A0&gt; .config on ${S} and it did not included my CONFIGS.=
<br>
=A0 =A0 =A0 =A0 =A0&gt; For config fragment it got stuck on do_patch task.<=
br>
=A0 =A0 =A0 =A0 =A0&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt; Regards,<br>
=A0 =A0 =A0 =A0 =A0&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt; --<br>
=A0 =A0 =A0 =A0 =A0&gt; *dS<br>
=A0 =A0 =A0 =A0 =A0&gt; Diego Sueiro<br>
=A0 =A0 =A0 =A0 =A0&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt; /*long live rock &#39;n roll*/<br>
=A0 =A0 =A0 =A0 =A0&gt;<br>
=A0 =A0 =A0 =A0 =A0&gt; ______________________________<u></u>______________=
___<br>
=A0 =A0 =A0 =A0 =A0&gt; yocto mailing list<br></div></div>
=A0 =A0 =A0 =A0 =A0&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D=
"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoct=
oproject.org" target=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;<div c=
lass=3D"im"><br>


=A0 =A0 =A0 =A0 =A0&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/=
yocto" target=3D"_blank">https://lists.yoctoproject.<u></u>org/listinfo/yoc=
to</a><br>
=A0 =A0 =A0 =A0 =A0&gt;<br>
<br>
=A0 =A0 =A0 =A0 I&#39;ll jump in one more time...<br>
<br>
=A0 =A0 =A0 =A0 Have you tried putting defconfig and patch under &lt;machin=
e&gt; subdir?<br>
<br>
=A0 =A0 =A0 =A0 recipes-kernel/linux/linux-<u></u>yocto-3.2/&lt;machine&gt;=
<br>
=A0 =A0 =A0 =A0 defconfig<br>
=A0 =A0 =A0 =A0 my-own.patch<br>
<br>
=A0 =A0 =A0 =A0 I&#39;ve recently added two similar entries for 3.10 and it=
 works.<br>
=A0 =A0 =A0 =A0 Afaik it was impossible to put a common patch under<br>
=A0 =A0 =A0 =A0 /linux-yocto-.3.2<br>
=A0 =A0 =A0 =A0 at the time.<br>
<br>
=A0 =A0 =A0 =A0 Regards<br>
<br>
=A0 =A0 =A0 =A0 Andrea<br>
<br>
<br>
<br>
</div></blockquote>
<br>
</blockquote></div><br></div></div>

--001a11c30bec72bf7204ec3e7d5b--
