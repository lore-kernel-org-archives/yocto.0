Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C4A5E011BC
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 08:11:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7BFBhVA027258
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 11 Aug 2011 08:11:43 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 11 Aug 2011 08:11:42 -0700
Message-ID: <4E43F12D.8040207@windriver.com>
Date: Thu, 11 Aug 2011 11:11:41 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 00/17][linux-yocto-3.0:meta] preempt-rt update (3.0.1-rt8 scc's)
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
X-List-Received-Date: Thu, 11 Aug 2011 15:11:35 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-11 04:23 AM, Darren Hart wrote:
> The following series adds the necessary scc files in support of preempt-rt
> for the following machines. These have all been build tested, issues
> are noted below.  A handful have been boot tested, also noted.
> 	sugarbay
> 	common-pc (boots)
> 	common-pc-64
> 	jasperforest
> 	fri2
> 	fishriver
> 	emenlow
> 	crownbay (boots)add5f74557fb069f6f15d25bd5d953c148e5d18b
> 	qemuarm (arm-versatile-926ejs, boots)
> 	qemumips (mti-malta32-be, panics on boot)
> 	qemuppc (boot hangs with lost interrupts for hda)
> 	routerstationpro (build fails)
> 	mpc8315e-rdb
> 	beagleboard (build fails)

Ack'd. This is good data, and we'll pull this in, since
it improves the situation greatly. There is no guarantee
that -rt will build and boot on ALL bsps, so having some
non-functional boards is consistent with that approach.

I recall you mentioning that you'd open bugs for the issue,
and that is a good idea. We can use it to track any efforts
on this in the 1.1 and 1.1+ timeframe. We can disable
the support in recipe space, or in the kernel before 1.1
is released, if we don't get any of the issues you raise
addressed.

>
> Also included in the series are some preempt-rt related configuration
> changes and a minor correction to a fix made for the mpc8315e-rdb compilation
> breakage with -Os in the boot Makefile.

I just made a similar fix here, so we'll keep it pushed down, but
keep the patch validation step happy.

>
> The accompanying linux-yocto-rt recipes will follow once these are committed,
> and I have SRC_REVs to include in the recipes.
>
> note: approximately 17 hadrosaurs were converted to electricity to complete
>        the necessary test builds.

17!

> The following changes since commit c692a2320dd10c7f3ac89f474f4bdd302da56634:
>
>    meta/rt: remove explicit patch references (2011-08-10 00:16:17 -0400)
>
> are available in the git repository at:
>    git://git.kernel.org/pub/scm/linux/kernel/git/dvhart/yocto/linux-yocto-3.0.git dvhart/meta

Merging has commenced, it will be in the upcoming pull
request.

Bruce

>
> Darren Hart (17):
>    meta/rt: use CONFIG_PREEMPT_RT_FULL for 3.0 kernels
>    meta/rt: beagleboard preempt-rt support
>    meta/rt: mpc8315 preempt-rt support
>    meta-rt: rsp preempt-rt support
>    meta/rt: qemu-ppc32 preempt-rt support
>    meta/rt: mti-malta32-be preempt-rt support
>    meta/rt: arm-versatile-926ejs preempt-rt support
>    meta/rt: crownbay preempt-rt support
>    meta/rt: emenlow preempt-rt support
>    meta/rt: fishriver preempt-rt support
>    meta/rt: fri2 preempt-rt support
>    meta/rt: jasperforest preempt-rt support
>    meta/rt: common-pc[-64] preempt-rt no branch fix
>    meta/rt: sugarbay preempt-rt support
>    mpc8315e-rdb: remove boot -Os patch which is now in base
>    routerstationpro: add remove-superfluous-endif patch to scc
>    routerstationpro: remove CONFIG_PREEMPT* definitions
>
>   .../arm-versatile-926ejs-preempt-rt.scc            |    7 ++++
>   .../bsp/beagleboard/beagleboard-preempt-rt.scc     |    7 ++++
>   .../bsp/common-pc-64/common-pc-64-preempt-rt.scc   |    4 +-
>   .../bsp/common-pc/common-pc-preempt-rt.scc         |    4 +-
>   .../bsp/crownbay/crownbay-preempt-rt.scc           |    7 ++++
>   .../bsp/emenlow/emenlow-preempt-rt.scc             |    7 ++++
>   .../bsp/fishriver/fishriver-preempt-rt.scc         |    7 ++++
>   meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc |    7 ++++
>   .../fsl-mpc8315e-rdb-preempt-rt.scc                |    7 ++++
>   .../bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.scc      |    1 -
>   .../powerpc-boot-remove-Os-from-BOOTFLAGS.patch    |   35 -------------------
>   .../bsp/jasperforest/jasperforest-preempt-rt.scc   |    8 ++++
>   .../bsp/mti-malta32/mti-malta32-be-preempt-rt.scc  |    8 ++++
>   .../bsp/qemu-ppc32/qemu-ppc32-preempt-rt.scc       |    7 ++++
>   .../remove-superfluous-endif-in-gpio-Kconfig.patch |   36 ++++++++++++++++++++
>   .../routerstationpro-preempt-rt.scc                |    7 ++++
>   .../bsp/routerstationpro/routerstationpro.cfg      |    3 --
>   .../bsp/routerstationpro/routerstationpro.scc      |    1 +
>   .../bsp/sugarbay/sugarbay-preempt-rt.scc           |    8 ++++
>   .../kernel-cache/ktypes/preempt-rt/preempt-rt.cfg  |    2 +-
>   20 files changed, 129 insertions(+), 44 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/bsp/arm-versatile-926ejs/arm-versatile-926ejs-preempt-rt.scc
>   create mode 100644 meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc
>   create mode 100644 meta/cfg/kernel-cache/bsp/crownbay/crownbay-preempt-rt.scc
>   create mode 100644 meta/cfg/kernel-cache/bsp/emenlow/emenlow-preempt-rt.scc
>   create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/fishriver-preempt-rt.scc
>   create mode 100644 meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
>   create mode 100644 meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb-preempt-rt.scc
>   delete mode 100644 meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/powerpc-boot-remove-Os-from-BOOTFLAGS.patch
>   create mode 100644 meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-preempt-rt.scc
>   create mode 100644 meta/cfg/kernel-cache/bsp/mti-malta32/mti-malta32-be-preempt-rt.scc
>   create mode 100644 meta/cfg/kernel-cache/bsp/qemu-ppc32/qemu-ppc32-preempt-rt.scc
>   create mode 100644 meta/cfg/kernel-cache/bsp/routerstationpro/remove-superfluous-endif-in-gpio-Kconfig.patch
>   create mode 100644 meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro-preempt-rt.scc
>   create mode 100644 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc
>


