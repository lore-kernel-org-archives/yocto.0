Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0AABE0055D
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2013 07:49:28 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rASFnPer028713
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Nov 2013 07:49:25 -0800 (PST)
Received: from server.local (128.224.22.47) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.2.347.0;
	Thu, 28 Nov 2013 07:49:25 -0800
Message-ID: <52976604.4010908@windriver.com>
Date: Thu, 28 Nov 2013 10:49:24 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: Diego Sueiro <diego.sueiro@gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
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
	<CAMCfZKEE7wSrpg_7Gq5ScYbwroNn_G+gpvjnZRG36A=xEJu7pg@mail.gmail.com>
In-Reply-To: <CAMCfZKEE7wSrpg_7Gq5ScYbwroNn_G+gpvjnZRG36A=xEJu7pg@mail.gmail.com>
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
X-List-Received-Date: Thu, 28 Nov 2013 15:49:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/28/2013, 10:37 AM, Diego Sueiro wrote:
> Bruce,
>
> Any updates on this?

Which part ? :) The defconfig "selection" (prioritization) was
explained by instrumenting the SRC_URI processing order, and it
was behaving as expected.

And the patch I attached for the kern-tools to use the dedicated
release branch for dylan fixed the other patching issue you were
seeing.

Cheers,

Bruce

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
> On Mon, Nov 4, 2013 at 1:14 AM, Bruce Ashfield
> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>> wrote:
>
>     On 13-10-29 11 <tel:13-10-29%2011>:31 AM, Diego Sueiro wrote:
>
>         Bruce,
>
>         I've created new build setup with this configuration:
>
>              BB_VERSION        = "1.18.0"
>              BUILD_SYS         = "x86_64-linux"
>              NATIVELSBSTRING   = "Ubuntu-12.10"
>              TARGET_SYS        = "arm-poky-linux-gnueabi"
>              MACHINE           = "beaglebone"
>              DISTRO            = "poky"
>              DISTRO_VERSION    = "1.4.2"
>              TUNE_FEATURES     = "armv7a vfp neon"
>              TARGET_FPU        = "vfp-neon"
>              meta
>              meta-yocto
>              meta-yocto-bsp    =
>         "dylan:__4e399f08d596197859214fdb3b0640__3b87bf8789"
>              meta-oe           =
>         "dylan:__a108b2203a997634f87ac687e81712__badaf3c546"
>              common-bsp        =
>         "dylan:__7fdf9c670a10c5031a2d5555c15c45__e453de8c21"
>              meta-mine         =
>         "dylan:__4e399f08d596197859214fdb3b0640__3b87bf8789"
>
>         common-bsp comes from meta-beagleboard.
>         meta-oe needed to be added because of machine_kernel_pr.bbclass.
>
>         bblayers.conf:
>
>              LCONF_VERSION = "6"
>              BBPATH = "${TOPDIR}"
>              BBFILES ?= ""
>              BBLAYERS ?= " \
>                 ${TOPDIR}/meta \
>                 ${TOPDIR}/meta-yocto \
>                 ${TOPDIR}/meta-yocto-bsp \
>                 ${TOPDIR}/meta-openembedded/__meta-oe \
>                 ${TOPDIR}/meta-beagleboard/__common-bsp \
>                 ${TOPDIR}/meta-mine \
>                 "
>
>         meta-mine:
>
>              conf/layer.conf:
>
>                  BBPATH .= ":${LAYERDIR}"
>                  BBFILES += "${LAYERDIR}/recipes*/*/*.bb
>                  ${LAYERDIR}/recipes*/*/*.__bbappend"
>                  BBFILE_COLLECTIONS += "my-layer"
>                  BBFILE_PATTERN_my-layer := "^${LAYERDIR}/"
>                  BBFILE_PRIORITY_my-layer = "10"
>
>              recipes-kernel/linux/linux-__mainline_3.8.bbappend
>         (scenario 1):
>
>                  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.8:"
>                  COMPATIBLE_MACHINE_beaglebone = "(beaglebone)"
>                  SRC_URI += " file://defconfig \
>                                "
>
>              recipes-kernel/linux/linux-__mainline-3.8/defconfig
>         (scenario 1):
>
>         http://pastebin.com/qd8B3C5K
>
>
>              recipes-kernel/linux/linux-__mainline_3.8.bbappend
>         (scenario 2):
>
>                  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.8:"
>                  inherit kernel
>                  require recipes-kernel/linux/linux-__yocto.inc
>                  COMPATIBLE_MACHINE_beaglebone = "(beaglebone)"
>                  SRC_URI += " file://config-addons.cfg \
>                                "
>
>              recipes-kernel/linux/linux-__mainline-3.8/config-addons.cfg
>         (scenario 2):
>
>                  CONFIG_WATCHDOG_NOWAYOUT=y
>
>                  CONFIG_NTFS_FS=y
>                  CONFIG_NTFS_RW=y
>
>
>
>         Results:
>
>            * Scenario 1: Full defconfig replacement
>
>
>              ${WORKDIR}/defconfig comes from meta-beagleboard instead of
>         meta-mine
>
>              ${S}/.config comes from meta-beagleboard instead of meta-mine
>
>
>     FYI: I went silent on this, since I was running a few experiments in the
>     background. Mainly on scenario 2, but I can say that I see the same
>     behaviour
>     with scenario #1 as you do. Whether or not I use the yocto kernel
>     tooling,
>     or the core kernel processing, I see exactly the same defconfig used.
>
>     The issue you are seeing is distinct from the kernel processing, since
>     the defconfig isn't treated any differently than anything else on the
>     SRC_URI from the fetcher point of view ... and it is the fetcher which
>     is matching file://defconfig from the meta-beagleboard layer before the
>     one you have in meta-mine, since FILESEXTRAPATHS are searched after the
>     FILESPATH for the elements in the SRC_URI. But I'm not a fetcher expert,
>     that's my understanding and empirical evidence.
>
>     As a debug, I called src_patches() in patches.bbclass explicitly, and
>     it is obvious that the source of the defconfig is from meta-beagleboard.
>     Renaming the file in meta-beagleboard, allows the one in meta-mine to
>     be found, since the search continues.
>
>     So for this question, your issue is with the ordering of the elements
>     on the SRC_URI, and you can have your layer prioritized by making sure
>     it is in the search paths first.
>
>     This may or may not contradict the docs, and there are several threads
>     ongoing about SRC_URI ordering in the various branches .. so I'm simply
>     watching and waiting on this one.
>
>
>            * Scenario 2: Config fragments
>
>
>              "bitbake linux-mainline" got stuck on do_patch
>
>              log.do_patch:
>
>                  DEBUG: Executing shell function do_patch
>
>                  WARNING: no meta data branch found ...
>
>                  Switched to branch 'linux-3.8.y'
>
>                  [INFO] validating against known patches
>           (beaglebone-standard-meta)
>
>
>     As for this. I debugged it over the weekend, and you wouldn't see
>     this on
>     master, but the tools on the dylan branch aren't using the proper
>     kern-tools
>     SRCREVS. As such, I backported a change from master, and switched the
>     kern-tools to use the dylan branch.
>
>     What you were seeing as a hang, was really just an extremely long run
>     of the patch processing, the 700+ patches in the beagleboard kernel
>     recipe were being detected multiple times, and expanding to 47K entries.
>
>     Which the patch I've attached here, I was able to patch and
>     configure the
>     kernel with the same layers.  Note: the run still takes a long time,
>     since
>     even applying 700 patches at a couple of seconds per patch .. takes a
>     good chunk of time.
>
>     I've added Paul Eggleton to the cc: list, since I'm not sure if dylan is
>     still being updated, but if it is, the patch I'm attaching should be
>     applied to fix the kern-tools situation in that branch.
>
>     Cheers,
>
>     Bruce
>
>
>
>         Regards,
>
>         --
>         *dS
>         Diego Sueiro
>
>         /*long live rock 'n roll*/
>
>
>         2013/10/29 Diego Sueiro <diego.sueiro@gmail.com
>         <mailto:diego.sueiro@gmail.com>
>         <mailto:diego.sueiro@gmail.com <mailto:diego.sueiro@gmail.com>__>>
>
>              2013/10/29 Andrea Adami <andrea.adami@gmail.com
>         <mailto:andrea.adami@gmail.com>
>              <mailto:andrea.adami@gmail.com
>         <mailto:andrea.adami@gmail.com>__>>
>
>
>                  I'll jump in one more time...
>
>                  Have you tried putting defconfig and patch under
>         <machine> subdir?
>
>                  recipes-kernel/linux/linux-__yocto-3.2/<machine>
>                  defconfig
>                  my-own.patch
>
>                  I've recently added two similar entries for 3.10 and it
>         works.
>                  Afaik it was impossible to put a common patch under
>                  /linux-yocto-.3.2
>                  at the time.
>
>
>              Andrea,
>
>              I did it before and not worked.
>              I'll do it again just to make sure.
>
>
>              Regards,
>
>              --
>              *dS
>              Diego Sueiro
>
>              /*long live rock 'n roll*/
>
>
>              2013/10/29 Andrea Adami <andrea.adami@gmail.com
>         <mailto:andrea.adami@gmail.com>
>              <mailto:andrea.adami@gmail.com
>         <mailto:andrea.adami@gmail.com>__>>
>
>
>                  On Tue, Oct 29, 2013 at 11:33 AM, Diego Sueiro
>                  <diego.sueiro@gmail.com <mailto:diego.sueiro@gmail.com>
>         <mailto:diego.sueiro@gmail.com
>         <mailto:diego.sueiro@gmail.com>__>> wrote:
>                   >
>                   > 2013/10/28 Bruce Ashfield
>         <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>
>                  <mailto:bruce.ashfield@__windriver.com
>         <mailto:bruce.ashfield@windriver.com>>>
>
>                   >>
>                   >> I'm using dylan for my yocto checkout (not oe-core
>                  standalone, since
>                   >> this is a yocto list/question),
>                   >
>                   > I thought that opemenbedded-core and poky were
>         sharing the
>                  same core
>                   > components, classes and functions.
>                   >
>                   >>
>                   >> My build shows:
>                   >>
>                   >> meta
>                   >> meta-yocto
>                   >> meta-yocto-bsp    =
>                  "dylan:__3dc4505f0e744177ae4ddff1e1ce8b__31b95dfaa6"
>                   >> meta-ti           =
>                  "master:__c14c386946e1ea341faeea292580e3__7d538d645d"
>                   >> meta-alphalem     =
>                  "master:__a5c0e8ff51297a4090cd47d669b4fc__9c94696908"
>                   >> meta-alphalem-bsp =
>                  "master:__56086e4dc618e975c9a46491793041__f0d18e47a2"
>                   >>
>                   >> Mike indicated that he was using dylan for meta-ti,
>         but that
>                  doesn't
>                   >> make a difference either, since for our purposed. It's
>                  kernel.bbclass
>                   >> and the yocto kernel processing that matters.
>                   >
>                   > I'll build a setup with yocto (dylan), meta-beagleboard
>                  (dylan) and
>                   > meta-mine to check if I can reproduce the issues.
>                   >
>                   >>
>                   >> In meta-alphalem-bsp, I have
>         linux-mainline_3.2.bbappend,
>                  with the
>                   >> following content:
>                   >>
>                   >> > cat linux-mainline_3.2.bbappend
>                   >> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.2:"
>                   >>
>                   >> inherit kernel
>                   >> require recipes-kernel/linux/linux-__yocto.inc
>                   >>
>                   >> COMPATIBLE_MACHINE = "(beagleboard)"
>                   >>
>                   >> SRC_URI_append = " file://defconfig"
>                   >> SRC_URI_append = " file://my_frag.cfg"
>                   >>
>                   >> And I added a fragment which has:
>                   >>
>                   >> > cat my_frag.cfg
>                   >> CONFIG_WATCHDOG_NOWAYOUT=y
>                   >> CONFIG_NTFS_FS=y
>                   >> CONFIG_NTFS_RW=y
>                   >>
>                   >> When both are applied to the kernel build, we
>         should see
>                  CONFIG_NTFS_FS
>                   >> transition from =m to =y:
>                   >>
>                   >> > grep CONFIG_NTFS_FS *
>                   >> defconfig:CONFIG_NTFS_FS=m
>                   >> my_frag.cfg:CONFIG_NTFS_FS=y
>                   >>
>                   >> After invoking linux-mainline's configure task, I
>         see the
>                  following:
>                   >>
>                   >> > grep CONFIG_NTFS_FS
>         linux-beagleboard-standard-__build/.config
>                   >> CONFIG_NTFS_FS=y
>                   >>
>                   >> And other elements of the defconfig and fragment are
>                  properly applied
>                   >> to the configuration phase.
>                   >>
>                   >> I'm also seeing good results on master, which means
>         that I'm
>                  at a
>                   >> standstill to reproduce any problems.
>                   >>
>                   >> Diego: can you confirm for me what triggers you are
>         seeing
>                  that shows
>                   >> the defconfig and fragment are not used. I assume
>         the config
>                  options
>                   >> are not present, but I just want to be sure.
>                   >
>                   > For the full defconfig replacement after doing a
>         do_configure
>                  I've checked
>                   > .config on ${S} and it did not included my CONFIGS.
>                   > For config fragment it got stuck on do_patch task.
>                   >
>                   >
>                   >
>                   > Regards,
>                   >
>                   > --
>                   > *dS
>                   > Diego Sueiro
>                   >
>                   > /*long live rock 'n roll*/
>                   >
>                   > _________________________________________________
>                   > yocto mailing list
>                   > yocto@yoctoproject.org
>         <mailto:yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org
>         <mailto:yocto@yoctoproject.org>__>
>
>                   > https://lists.yoctoproject.__org/listinfo/yocto
>         <https://lists.yoctoproject.org/listinfo/yocto>
>                   >
>
>                  I'll jump in one more time...
>
>                  Have you tried putting defconfig and patch under
>         <machine> subdir?
>
>                  recipes-kernel/linux/linux-__yocto-3.2/<machine>
>                  defconfig
>                  my-own.patch
>
>                  I've recently added two similar entries for 3.10 and it
>         works.
>                  Afaik it was impossible to put a common patch under
>                  /linux-yocto-.3.2
>                  at the time.
>
>                  Regards
>
>                  Andrea
>
>
>
>
>


