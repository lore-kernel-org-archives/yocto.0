Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF6C6E00D5E; Thu,  9 Nov 2017 08:00:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A990BE00C59
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 08:00:00 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id vA9Fxwnu014325
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 9 Nov 2017 07:59:59 -0800
Received: from [128.224.56.93] (128.224.56.93) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Thu, 9 Nov 2017 07:59:58 -0800
To: Alan Martinovic <alan.martinovic@senic.com>
References: <CAOT_U5a2DJzXR2a0JCGPRRPyTY30-BmtSCwNTmt4=mYg3ZUnkw@mail.gmail.com>
	<db7a5271-522c-ea83-ae33-4d1ac3f51c7d@windriver.com>
	<CAOT_U5bj9S+LTPSVjoa0xgHnXfBdgPAbWC8K9rOt3uyv2Re_YQ@mail.gmail.com>
	<5153e880-0977-8f23-716f-5eb44954266d@windriver.com>
	<CAOT_U5aiYOMwVFYYQNYS9TtCSmtLtccAUTTguxLopVcbP3ei4A@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <c8c334bb-5455-a793-d230-f539a35cd7d4@windriver.com>
Date: Thu, 9 Nov 2017 10:59:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAOT_U5aiYOMwVFYYQNYS9TtCSmtLtccAUTTguxLopVcbP3ei4A@mail.gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: KBUILD_DEFCONFIG_KMACHINE not used anywhere
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
X-List-Received-Date: Thu, 09 Nov 2017 16:00:03 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 11/09/2017 10:53 AM, Alan Martinovic wrote:
>       - what branch/release of yocto are you using ?
> 
> 
> Morty
> 
>     - can you try just using: KBUILD_DEFCONFIG="senic_defconfig"
> 
> 
> Yup, same error.
> 
>     .. and finally, the KBUILD_DEFCONFIG processing is meant to pick
>     up in-tree defconfigs for use in the build, so whatever you reference
>     must bein in arch/<your arch>/configs/<kbuild defconfig> .. so make
>     sure that is the case with senic_defconfig.
> 
> 
> Yup, it's in there.
> 
> 
>     You can always add the defconfig directly to the SRC_URI as well
>     (i.e. copy it into your layer and call it 'defconfig' and add it
>     to the SRC_URI like any other element.
> 
> 
> Yup, am using that as a workaround .
> 
> What is the difference between do_kernel_configme and do_configure?

do configure is the existing/traditional/common/simple kernel.bbclass
way to copy a defconfig and make sure it gets into the build.

do_kernel_configme has more processing and logic to deal with
kernel config fragments and wasn't something that was desired to be
imposed on all build (but I do have a streamlined version that moves
the logic into the core class now .. that will be out for review
shortly).

Things like the KBUILD_DEFCONFIG that you are trying to use, are
that extra level of processing that weren't needed/wanted in the
core part.

> Not quite clear on why both exist.
> I ask because I originally wanted to override do_configure as a fix,
> and it seems that wouldn't have helped because it fails at 
> do_kernel_configme.

Are the recipes / kernel tree something I can find ? If I can just
launch a build, I'm sure I can point out what is wrong pretty
quickly.

Bruce

> 
> 
> On Thu, Nov 9, 2017 at 3:13 PM, Bruce Ashfield 
> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>> wrote:
> 
>     On 2017-11-09 8:11 AM, Alan Martinovic wrote:
> 
>              What is your kernel recipe ? Something you wrote, or something
>              from a vendor ?
> 
> 
>         Something I inherited.
>         It does seem to have been based on linux-yocto-custom.bb
>         <http://linux-yocto-custom.bb> <http://linux-yocto-custom.bb>.
> 
> 
>         SECTION = "kernel"
>         DESCRIPTION = "Mainline Linux kernel"
>         LICENSE = "GPLv2"
>         LIC_FILES_CHKSUM =
>         "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> 
>         COMPATIBLE_MACHINE = "(senic-hub-beta|senic-hub)"
> 
>         inherit kernel
>         require recipes-kernel/linux/linux-yocto.inc
> 
>         KBRANCH = "senic/4.13"
>         SRCREV = "e469b218af6fe7cb8c50c4395ae9f3204f8033ae"
> 
>         PV = "4.13+git${SRCPV}"
>         S = "${WORKDIR}/git"
> 
>         KBUILD_DEFCONFIG_senic-hub-beta="senic_defconfig"
> 
>         SRC_URI =
>         "git://github.com/TheMeaningfulEngineer/senic-os-linux.git;nobranch=1;protocol=git;branch=${KBRANCH}
>         <http://github.com/TheMeaningfulEngineer/senic-os-linux.git;nobranch=1;protocol=git;branch=$%7BKBRANCH%7D>
>         <http://github.com/TheMeaningfulEngineer/senic-os-linux.git;nobranch=1;protocol=git;branch=${KBRANCH}
>         <http://github.com/TheMeaningfulEngineer/senic-os-linux.git;nobranch=1;protocol=git;branch=$%7BKBRANCH%7D>>
>         \
>                     "
> 
> 
>         Running it with:
> 
>         bitbake -v linux-senic
> 
> 
>         It fails with:
> 
>         ERROR: linux-senic-4.13+gitAUTOINC+e469b218af-r0
>         do_kernel_configme: Could not configure senic-hub-beta-standard
>         ERROR: linux-senic-4.13+gitAUTOINC+e469b218af-r0
>         do_kernel_configme: Function failed: do_kernel_configme (log
>         file is located at /home/alan/senic-o
>         s/build/tmp-glibc/work/senic_hub_beta-senic-linux-gnueabi/linux-senic/4.13+gitAUTOINC+e469b218af-r0/temp/log.do_kernel_configme.5641)
> 
>         ERROR: Logfile of failure stored in:
>         /home/alan/senic-os/build/tmp-glibc/work/senic_hub_beta-senic-linux-gnueabi/linux-senic/4.13+gitAUTOINC+e469b2
>         18af-r0/temp/log.do_kernel_configme.5641
> 
> 
>         Not sure when "-standard" got appended...?
> 
> 
>     That's just part of the localversion processing in the bbclass, so
>     no worries there.
> 
>         A more exact error seems to be:
> 
>         linux-senic-4.13+gitAUTOINC+e469b218af-r0 do_kernel_configme: +
>         configs=[ERROR]: no configuration queue found in outdir
>         (.kernel-meta)
> 
>         Could it be expecting a "linux-yocto style" with the meta branches?
> 
> 
>     Nope. Well, you do need some sort of configuration available, but it
>     doesn't have to be in that format.
> 
>     That error is indicating that no configuration was found (no defconfig
>     or fragments).
> 
>     A couple more questions, and I can probably sort this out.
> 
>     - what branch/release of yocto are you using ?
>     - can you try just using: KBUILD_DEFCONFIG="senic_defconfig"
> 
>     For that second one, I'm wondering if the variable expansion is not
>     working with the machine override.
> 
>     .. and finally, the KBUILD_DEFCONFIG processing is meant to pick
>     up in-tree defconfigs for use in the build, so whatever you reference
>     must bein in arch/<your arch>/configs/<kbuild defconfig> .. so make
>     sure that is the case with senic_defconfig.
> 
>     You can always add the defconfig directly to the SRC_URI as well
>     (i.e. copy it into your layer and call it 'defconfig' and add it
>     to the SRC_URI like any other element.
> 
>     Bruce
> 
> 
> 
> 
>         On Tue, Nov 7, 2017 at 6:47 PM, Bruce Ashfield
>         <bruce.ashfield@windriver.com
>         <mailto:bruce.ashfield@windriver.com>
>         <mailto:bruce.ashfield@windriver.com
>         <mailto:bruce.ashfield@windriver.com>>> wrote:
> 
>              On 11/07/2017 08:46 AM, Alan Martinovic wrote:
> 
>                  Hi,
>                  I'm trying to get yocto to build the kernel with an in-tree
>                  defconfig.
>                  For that I found references to the variable
>                  KBUILD_DEFCONFIG_KMACHINE.
> 
>                  However, I've been experiencing that the kernel is
>         being built with
>                  some default defconfig, and not the in-tree one that
>         came with the
>                  kernel and I defined with the KBUILD_DEFCONFIG_KMACHINE.
> 
>                  I've looked through all yocto sources for where the
>                  KBUILD_DEFCONFIG_KMACHINE is actually used, and found
>         it only in my
>                  kernel recipe. So I decided to dissect my recipe.
> 
> 
>              What is your kernel recipe ? Something you wrote, or something
>              from a vendor ?
> 
> 
> 
>                  There is a:
> 
>                  inherit kernel
> 
>                  in my recipe for which, besides others, defines how the
>         kernel
>                  config
>                  will be selected.
>                  Looking at the sources of
>         oe/meta/classes/kernel.bbclass exposes how
>                  the kernel configuration happens:
> 
>                  kernel_do_configure() {
>                            # fixes extra + in /lib/modules/2.6.37+
>                            # $ scripts/setlocalversion . => +
>                            # $ make kernelversion => 2.6.37
>                            # $ make kernelrelease => 2.6.37+
>                            touch ${B}/.scmversion ${S}/.scmversion
> 
>                            if [ "${S}" != "${B}" ] && [ -f
>         "${S}/.config" ] && [ ! -f
>                  "${B}/.config" ]; then
>                                    mv "${S}/.config" "${B}/.config"
>                            fi
> 
>                            # Copy defconfig to .config if .config does
>         not exist.
>                  This allows
>                            # recipes to manage the .config themselves in
>                  do_configure_prepend().
>                            if [ -f "${WORKDIR}/defconfig" ] && [ ! -f
>                  "${B}/.config" ]; then
>                                    cp "${WORKDIR}/defconfig" "${B}/.config"
>                            fi
> 
>                            ${KERNEL_CONFIG_COMMAND}
>                  }
> 
> 
>                  I'm planning a workaround by overriding the
>         do_configure in my
>                  recipe
>                  to select the correct defconfig from the kernel. It
>         does seem
>                  however
>                  like the KBUILD_DEFCONFIG_KMACHINE is exactly here to
>         not have to do
>                  the workarounds.
> 
>                  Anyone has experiences with successfully using
>                  KBUILD_DEFCONFIG_KMACHINE?
>                  Is it a specific poky feature (I'm not using poky but
>         specific open
>                  embedded layers and bitbake)?
> 
>              That is a feature of kernel-yocto, so if your recipe is
>         inheriting
>              kernel-yocto you can use what you are looking for.
> 
>              But note, in the documentation you are referencing you have
>         to replace
>              KMACHINE with your actual machine .. not use the string
>         KMACHINE.
> 
>              i.e. in your recipe (or bbappend)
> 
>              # for cases where the KMACHINE (KERNEL MACHINE) and bitbake
>              # machine match, just do this:
>              KMACHINE=$MACHINE
> 
>              KBUILD_DEFCONFIG_${KMACHINE}="your defconfig"
> 
>              i.e. it is just a standard bitbake variable with a machine
>         OVERRIDE
>              to make it specific to the machine you are building.
> 
>              Bruce
> 
> 
> 
>                  Be Well,
>                  Alan
> 
>                  Ref.
>         https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file
>         <https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file>
>                 
>         <https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file
>         <https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file>>
> 
> 
> 
> 
> 


