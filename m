Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A818E0078F
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2013 08:14:33 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rBGGEGw3020921
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 16 Dec 2013 08:14:16 -0800 (PST)
Received: from server.local (128.224.22.115) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.2.347.0;
	Mon, 16 Dec 2013 08:14:16 -0800
Message-ID: <52AF26DB.4070509@windriver.com>
Date: Mon, 16 Dec 2013 11:14:19 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Sudhangathan B S <sudhangathan@gmail.com>
References: <CAGX3a99HP8-gseen9mzKB_g2hSGCeLGt0oFe4t6MDOazqSaGdQ@mail.gmail.com>
	<52A8109A.50705@windriver.com>
	<CAGX3a9-Nn+FYRbz4o_MrtV7-uBDxshaTTX6Kvyi4bp10mkhyYQ@mail.gmail.com>
	<52A8D4A7.5000807@windriver.com>
	<CAGX3a986aPD-GBjFMfRpZZjrssUXE2=t=gACKg24ERMVVTTydQ@mail.gmail.com>
In-Reply-To: <CAGX3a986aPD-GBjFMfRpZZjrssUXE2=t=gACKg24ERMVVTTydQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 16 Dec 2013 16:14:40 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/11/2013, 7:46 PM, Sudhangathan B S wrote:
> Bruce, for more information on what i'm doing..
> I had to forcibly migrate to this latest version from the danny versions
> that I was using.. I had exactly same problems with danny too..!
> Last week I followed instruction again at
> https://github.com/gumstix/Gumstix-YoctoProject-Repo
> In both the cases my recipe is the same and is placed in a layer that I
> created for this purpose.

FYI: apparently my ASAP is now measure in many days, but I did complete
my own externalsrc builds, and they work out of the box.

Looking at the recipe you quoted below, you are running into the config
handling of the layer/recipes you are basing your work from:

i.e. you pasted this:

-----------

         require linux.inc
         #THIS TEMPLATE COPIED FROM linux-sakoman_3.5.bb
         <http://linux-sakoman_3.5.bb>
         <http://linux-sakoman_3.5.bb>

         DESCRIPTION = "Linux kernel for OMAP processors"
         LIC_FILES_CHKSUM =
         "file://COPYING;md5=__d7810fab7487fb0aad327b76f1be7c__d7"

         KERNEL_IMAGETYPE = "uImage"
         COMPATIBLE_MACHINE = "overo"
         FILESEXTRAPATHS_prepend := "${THISDIR}/linux-omap-__khilmanpm:"

         PV = "3.5"
         inherit externalsrc
         S =
 
"/home/desen555/suan_work/__kernel_work/khilman35-src-__mods/linux-omap-khilmanpm"

         B = "${WORKDIR}/git"
         SRC_URI = "file://defconfig \
                      file://omap2plus_defconfig \
                      file://usb_off.patch \
                      "
-------------

Since linux.inc isn't in oe-core or yocto, I can't build that directly, but
I do have no problems with a simple korg recipe that inherits kernel
or linux-yocto kernel support.

So that leaves me to say that your defconfig and config pain is coming
from whatever linux.inc is doing and you need to take that up with the
authors of that recipe.

Cheers,

Bruce


> path:
> /home/desen555/yocto/poky/meta-dese_iisc/recipes-kernel/linux/linux-omap-khilmanpm_3.5.bb
> <http://linux-omap-khilmanpm_3.5.bb>
> this is my current meta data info:
>
> Parsing of 1449 .bb files complete (1448 cached, 1 parsed). 1816
> targets, 41 skipped, 0 masked, 0 errors.
>
> Build Configuration:
> BB_VERSION        = "1.18.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-12.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "overo"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.4.2"
> TUNE_FEATURES     = "armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "(nobranch):4e399f08d596197859214fdb3b06403b87bf8789"
> meta-gnome
> meta-oe
> meta-xfce
> meta-systemd
> meta-networking
> meta-multimedia   = "(nobranch):44754206632dd5b0725aeb43e99e4ff9e0245dca"
> meta-gumstix      = "(nobranch):f10408773c2e81cc520c5a022c8bbe232a7b26aa"
> meta-gumstix-extras = "(nobranch):42adc07d0586cc2056dcd9d1997c554d5a4a577e"
> meta-dese_iisc    = "(nobranch):4e399f08d596197859214fdb3b06403b87bf8789"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks *...*
>
> Thanks very much Bruce,
> ---------------------------------
> Sudhangathan BS
> Ph:(+91) 9731-905-205
> ---------------------------------
>
>
> On Thu, Dec 12, 2013 at 2:39 AM, Bruce Ashfield
> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>> wrote:
>
>     On 13-12-11 06:30 AM, Sudhangathan B S wrote:
>
>         Thanks Bruce, I now understood a little more..!
>
>         So if I put the defconfig file in the place it is looking for
>         (kindly
>         note, it is looking for defconfig within yocto folders, it is is not
>         looking for defconfig in my external src directory), it then
>         throws this
>         error:
>
>         NOTE: Executing RunQueue Tasks
>         ERROR: Function failed: do_configure (see
>         /home/desen555/yocto/build/__tmp/work/overo-poky-linux-__gnueabi/linux-omap-khilmanpm/__3.5-r0/temp/log.do_configure.__683
>         for further information)
>         ERROR: Logfile of failure stored in:
>         /home/desen555/yocto/build/__tmp/work/overo-poky-linux-__gnueabi/linux-omap-khilmanpm/__3.5-r0/temp/log.do_configure.__683
>         Log data follows:
>         | DEBUG: Executing python function sysroot_cleansstate
>         | DEBUG: Python function sysroot_cleansstate finished
>         | DEBUG: Executing shell function do_configure
>         | NOTE: make oldconfig
>         | make: *** No rule to make target `oldconfig'.  Stop.
>         | ERROR: oe_runmake failed
>         | ERROR: Function failed: do_configure (see
>         /home/desen555/yocto/build/__tmp/work/overo-poky-linux-__gnueabi/linux-omap-khilmanpm/__3.5-r0/temp/log.do_configure.__683
>         for further information)
>         ERROR: Task 2
>         (/home/desen555/yocto/poky/__meta-dese_iisc/recipes-kernel/__linux/linux-omap-khilmanpm_3.__5.bb
>         <http://linux-omap-khilmanpm_3.5.bb>
>         <http://linux-omap-khilmanpm___3.5.bb
>         <http://linux-omap-khilmanpm_3.5.bb>>, do_configure) failed with
>         exit
>         code '1'
>         NOTE: Tasks Summary: Attempted 545 tasks of which 544 didn't
>         need to be
>         rerun and 1 failed.
>         No currently running tasks (264 of 559)
>
>         Summary: 1 task failed:
>
>         /home/desen555/yocto/poky/__meta-dese_iisc/recipes-kernel/__linux/linux-omap-khilmanpm_3.__5.bb
>         <http://linux-omap-khilmanpm_3.5.bb>
>         <http://linux-omap-khilmanpm___3.5.bb
>         <http://linux-omap-khilmanpm_3.5.bb>>, do_configure
>         Summary: There was 1 ERROR message shown, returning a non-zero
>         exit code.
>         desen555@Xeon-S5000XVN:~/__yocto/build$
>
>         Now I hope you have more information...!!
>         My external src directory has got the .config file.
>
>
>     I need to launch a test build to see if there's been some breakage
>     recently.
>
>     I didn't quite get to that today .. but will have a go at it ASAP.
>
>     Bruce
>
>
>         ------------------------------__---
>         Sudhangathan BS
>         Ph:(+91) 9731-905-205 <tel:%28%2B91%29%209731-905-205>
>         <tel:%28%2B91%29%209731-905-__205>
>
>         ------------------------------__---
>
>
>         On Wed, Dec 11, 2013 at 12:43 PM, Bruce Ashfield
>         <bruce.ashfield@windriver.com
>         <mailto:bruce.ashfield@windriver.com>
>         <mailto:bruce.ashfield@__windriver.com
>         <mailto:bruce.ashfield@windriver.com>>> wrote:
>
>              On 12/11/2013, 2:00 AM, Sudhangathan B S wrote:
>
>                  Hi, I'm having this issue, I'm not able to compile a kernel
>                  source which
>                  I have in my system, locally.
>
>                  This is my recipe, after following instructions at
>         http://www.yoctoproject.org/____docs/1.4/dev-manual/dev-____manual.html#building-software-____from-an-external-source
>         <http://www.yoctoproject.org/__docs/1.4/dev-manual/dev-__manual.html#building-software-__from-an-external-source>
>
>
>         <http://www.yoctoproject.org/__docs/1.4/dev-manual/dev-__manual.html#building-software-__from-an-external-source
>         <http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#building-software-from-an-external-source>>
>
>                  require linux.inc
>                  #THIS TEMPLATE COPIED FROM linux-sakoman_3.5.bb
>         <http://linux-sakoman_3.5.bb>
>                  <http://linux-sakoman_3.5.bb>
>                  <http://linux-sakoman_3.5.bb>
>
>                  DESCRIPTION = "Linux kernel for OMAP processors"
>                  LIC_FILES_CHKSUM =
>
>         "file://COPYING;md5=____d7810fab7487fb0aad327b76f1be7c____d7"
>
>                  KERNEL_IMAGETYPE = "uImage"
>                  COMPATIBLE_MACHINE = "overo"
>                  FILESEXTRAPATHS_prepend :=
>         "${THISDIR}/linux-omap-____khilmanpm:"
>
>                  PV = "3.5"
>                  inherit externalsrc
>                  S =
>
>         "/home/desen555/suan_work/____kernel_work/khilman35-src-____mods/linux-omap-khilmanpm"
>
>                  B = "${WORKDIR}/git"
>                  SRC_URI = "file://defconfig \
>                               file://omap2plus_defconfig \
>                               file://usb_off.patch \
>                               "
>
>                  As you can see the kernel source directory is in S
>         variable.
>
>                  When the command "bitbake virtual/kernel" is run, i get
>         this output
>
>                  ERROR: Function failed: do_configure (see
>
>         /home/desen555/yocto/build/____tmp/work/overo-poky-linux-____gnueabi/linux-omap-khilmanpm/____3.5-r0/temp/log.do_configure.____28505
>
>                  for further information)
>                  ERROR: Logfile of failure stored in:
>
>         /home/desen555/yocto/build/____tmp/work/overo-poky-linux-____gnueabi/linux-omap-khilmanpm/____3.5-r0/temp/log.do_configure.____28505
>
>                  Log data follows:
>                  | DEBUG: Executing python function sysroot_cleansstate
>                  | DEBUG: Python function sysroot_cleansstate finished
>                  | DEBUG: Executing shell function do_configure
>                  | sed: can't read
>
>         /home/desen555/yocto/build/____tmp/work/overo-poky-linux-____gnueabi/linux-omap-khilmanpm/____3.5-r0/*defconfig:
>
>                  No such file or directory*
>
>                  | ERROR: Function failed: do_configure (see
>
>         /home/desen555/yocto/build/____tmp/work/overo-poky-linux-____gnueabi/linux-omap-khilmanpm/____3.5-r0/temp/log.do_configure.____28505
>
>                  for further information)
>                  ERROR: Task 2
>
>         (/home/desen555/yocto/poky/____meta-dese_iisc/recipes-kernel/____linux/linux-omap-khilmanpm___3.__5.bb
>         <http://5.bb>
>                  <http://linux-omap-khilmanpm___3.5.bb
>         <http://linux-omap-khilmanpm_3.5.bb>>
>                  <http://linux-omap-khilmanpm_____3.5.bb
>         <http://linux-omap-khilmanpm___3.5.bb>
>
>                  <http://linux-omap-khilmanpm___3.5.bb
>         <http://linux-omap-khilmanpm_3.5.bb>>>, do_configure) failed with
>                  exit
>
>                  code '1'
>                  NOTE: Tasks Summary: Attempted 545 tasks of which 543
>         didn't
>                  need to be
>                  rerun and 1 failed.
>                  Waiting for 0 running tasks to finish:
>
>                  Summary: 1 task failed:
>
>
>         /home/desen555/yocto/poky/____meta-dese_iisc/recipes-kernel/____linux/linux-omap-khilmanpm___3.__5.bb
>         <http://5.bb>
>                  <http://linux-omap-khilmanpm___3.5.bb
>         <http://linux-omap-khilmanpm_3.5.bb>>
>                  <http://linux-omap-khilmanpm_____3.5.bb
>         <http://linux-omap-khilmanpm___3.5.bb>
>
>                  <http://linux-omap-khilmanpm___3.5.bb
>         <http://linux-omap-khilmanpm_3.5.bb>>>, do_configure
>
>                  Summary: There was 1 ERROR message shown, returning a
>         non-zero
>                  exit code.
>
>                  If at all I put my defconfig file in the place it is
>         looking
>                  for, then
>                  it throws other errors, so I guess that is not the
>         right way..
>
>
>              What other errors ? You are on the right track. When using
>         externalsrc,
>              you need to ensure the kernel is configured before the
>         build starts,
>              since the actual build skips steps to not modify your
>         source tree.
>
>              If you ensure that a full .config is in your kernel's build
>              directory, and that defconfig is in place, what errors do
>         you get then ?
>
>              Also note: you can have tasks skipped by adding them to
>              SRCTREECOVEREDTASKS
>              in your recipe.
>
>              Bruce
>
>
>                  Anybody compiled kernel as an external source in yocto..??
>                  ------------------------------____---
>                  *Sudhangathan BS*
>                  Ph:(+91) 9731-905-205 <tel:%28%2B91%29%209731-905-205>
>         <tel:%28%2B91%29%209731-905-__205>
>                  ------------------------------____---
>
>
>                  ___________________________________________________
>                  yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>__>
>         https://lists.yoctoproject.____org/listinfo/yocto
>                  <https://lists.yoctoproject.__org/listinfo/yocto
>         <https://lists.yoctoproject.org/listinfo/yocto>>
>
>
>
>
>


