Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B1DCE00D89; Thu, 15 Dec 2016 10:24:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E82C7E0081A;
	Thu, 15 Dec 2016 10:23:59 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 15 Dec 2016 10:23:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,353,1477983600"; d="scan'208";a="18615624"
Received: from drfaulkn-mobl.amr.corp.intel.com ([10.255.230.187])
	by orsmga002.jf.intel.com with ESMTP; 15 Dec 2016 10:23:58 -0800
Message-ID: <1481826238.5641.1.camel@linux.intel.com>
From: Todor Minchev <todor.minchev@linux.intel.com>
To: Cal Sullivan <california.l.sullivan@intel.com>, Jianxun Zhang
	<jianxun.zhang@linux.intel.com>
Date: Thu, 15 Dec 2016 10:23:58 -0800
In-Reply-To: <853c0b5d-62c4-9ee7-85be-7cde2d8b2341@intel.com>
References: <20161213225649.80589-1-todor.minchev@linux.intel.com>
	<D283043F-7FBE-41F9-A02E-EB716EF421FB@linux.intel.com>
	<1481676638.41690.21.camel@linux.intel.com>
	<853c0b5d-62c4-9ee7-85be-7cde2d8b2341@intel.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
Cc: meta-intel@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [meta-inte][rmc][PATCH v2 1/1] rmc: add support for alternative EFI bootloaders
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
X-List-Received-Date: Thu, 15 Dec 2016 18:24:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2016-12-15 at 10:09 -0800, Cal Sullivan wrote:
> 
> On 12/13/2016 04:50 PM, Todor Minchev wrote:
> > 
> > On Tue, 2016-12-13 at 16:22 -0800, Jianxun Zhang wrote:
> > > 
> > > > 
> > > > On Dec 13, 2016, at 2:56 PM, Todor Minchev <todor.minchev@linux
> > > > .intel.com> wrote:
> > > > 
> > > > RMC was previously configured to work only with the systemd-
> > > > boot EFI
> > > > bootloader. With this commit we can specify alternative
> > > > bootloaders by
> > > > setting the RMC_BOOTLOADER variable in local.conf. If
> > > > RMC_BOOTLOADER is
> > > > not set systemd-boot will be used by default.
> > > > 
> > > > Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
> > > > ---
> > > > Remove references to grub-efi and gummiboot from V1.
> > > > 
> > > > classes/{rmc-systemd-boot.bbclass => rmc-boot.bbclass} |  5
> > > > +++--
> > > > conf/machine/include/meta-intel.inc                    |  2 +-
> > > > documentation/rmc/README                               | 16
> > > > +++++++++++++---
> > > > 3 files changed, 17 insertions(+), 6 deletions(-)
> > > > rename classes/{rmc-systemd-boot.bbclass => rmc-boot.bbclass}
> > > > (73%)
> > > > 
> > > > diff --git a/classes/rmc-systemd-boot.bbclass b/classes/rmc-
> > > > boot.bbclass
> > > > similarity index 73%
> > > > rename from classes/rmc-systemd-boot.bbclass
> > > > rename to classes/rmc-boot.bbclass
> > > > index ad2cf10..a1f2093 100644
> > > > --- a/classes/rmc-systemd-boot.bbclass
> > > > +++ b/classes/rmc-boot.bbclass
> > > > @@ -1,9 +1,10 @@
> > > > -# rmc-systemd-boot bbclass
> > > > +# rmc-boot bbclass
> > > > # Deploy central RMC database file to ESP
> > > > 
> > > > IMAGE_INSTALL_append = " rmc"
> > > > +RMC_BOOTLOADER ?= "systemd-boot”
> > > Maybe this is what we could have now without bothering OE. It is
> > > better than the corrent code at the cost of another variable to
> > > user. I hope in the future we could get rid of  the dependency to
> > > EFI_PROVIDER (e.g. bz10084).
> > > 
> > > Also refer to my comment for the document change at the below.
> > > > 
> > > > -inherit systemd-boot
> > > > +inherit ${RMC_BOOTLOADER}
> > > > 
> > > > do_bootimg[depends] += "${MLPREFIX}rmc-db:do_deploy"
> > > > 
> > > > diff --git a/conf/machine/include/meta-intel.inc
> > > > b/conf/machine/include/meta-intel.inc
> > > > index c7555ce..fd0a792 100644
> > > > --- a/conf/machine/include/meta-intel.inc
> > > > +++ b/conf/machine/include/meta-intel.inc
> > > > @@ -32,7 +32,7 @@ MACHINE_ESSENTIAL_EXTRA_RDEPENDS_append = "${
> > > > @bb.utils.contains('MACHINE_FEATURE
> > > > # merge the microcode data in the final initrd image.
> > > > INITRD_LIVE_prepend = "${@bb.utils.contains('MACHINE_FEATURES',
> > > > 'intel-ucode', '${DEPLOY_DIR_IMAGE}/microcode.cpio ', '', d)}"
> > > > 
> > > > -EFI_PROVIDER ?= "rmc-systemd-boot"
> > > > +EFI_PROVIDER ?= "rmc-boot"
> > > > 
> > > > # Add general MACHINEOVERRIDE for meta-intel
> > > > MACHINEOVERRIDES =. "intel-x86-common:"
> > > > diff --git a/documentation/rmc/README
> > > > b/documentation/rmc/README
> > > > index 2427ffd..dbee6b6 100644
> > > > --- a/documentation/rmc/README
> > > > +++ b/documentation/rmc/README
> > > > @@ -165,14 +165,24 @@ steps still can override results from
> > > > this hook for boot entries and KBOOTPARAM.
> > > > 
> > > > Enable RMC Feature
> > > > -------------------------------------------------------------
> > > > -------------------
> > > > -To Enable RMC feature in build, add the below lines in a conf
> > > > file:
> > > > +To enable the RMC feature please add the following variables
> > > > to your local.conf.
> > > > +
> > > > DISTRO_FEATURES_append = " rmc"
> > > > -EFI_PROVIDER = "rmc-systemd-boot"
> > > > +EFI_PROVIDER = "rmc-boot"
> > > > +
> > > > +The default EFI bootloader used with RMC is systemd-boot. To
> > > > change the default
> > > > +bootloader please overwrite the RMC_BOOTLOADER variable in
> > > > your local.conf
> > > > 
> > > > Note:
> > > > Image could be still bootable if you only have either of two
> > > > lines, but RMC
> > > > feature won't be fully functional.
> > > > 
> > > > +To install only the RMC client with the systemd-boot
> > > > bootloader without
> > > > +including a default RMC database file, add the following lines
> > > > to your
> > > > +local.conf:
> > > > +
> > > > +EFI_PROVIDER = "systemd-boot"
> > > > +IMAGE_INSTALL_append = " rmc”
> > > I think this use case could confuse for user without much
> > > benefit. And actually they still can set EFI_PROVIDER to any
> > > available efi bootloaders to get this effect as long as it is not
> > > “rmc-boot”, right?
> > > Maybe we should just say “you won’t get rmc database deployed if
> > > you set EFI_PROVIDER to any values not rmc-boot."
> > Yes, this can be another way to phrase this.
> Is there going to be a v3 or is it sufficient as-is?

This is OK for now. I will reword the README after we add full RMC
support to grub-efi.
 
> 
> Thanks,
> Cal
> > 
> > 
> > > 
> > > > 
> > > > Examples
> > > > @@ -190,7 +200,7 @@ EXAMPLE 1: Support a new board type:
> > > > (1) enable the feature and do a build to get a live-boot image
> > > > by adding these
> > > >      lines in conf/local.conf:
> > > >      DISTRO_FEATURES_append = " rmc"
> > > > -    EFI_PROVIDER = "rmc-systemd-boot"
> > > > +    EFI_PROVIDER = "rmc-boot"
> > > > 
> > > > (2) flash the image to a USB stick and boot it on your board
> > > > 

