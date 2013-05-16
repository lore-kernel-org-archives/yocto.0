Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06100E0051D;
	Thu, 16 May 2013 12:35:09 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 May 2013 12:35:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,686,1363158000"; d="scan'208";a="303568097"
Received: from unknown (HELO [10.255.13.40]) ([10.255.13.40])
	by azsmga001.ch.intel.com with ESMTP; 16 May 2013 12:35:08 -0700
Message-ID: <1368732907.1607.49.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Thu, 16 May 2013 14:35:07 -0500
In-Reply-To: <51953053.8060204@linux.intel.com>
References: <1368680239-26344-1-git-send-email-raj.khem@gmail.com>
	<51953053.8060204@linux.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: meta-intel@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [meta-intel] [PATCH] tiny-init: Drop the bbappend
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
X-List-Received-Date: Thu, 16 May 2013 19:35:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Pulled into meta-intel/master.

Thanks,

Tom

On Thu, 2013-05-16 at 12:15 -0700, Darren Hart wrote:
> 
> On 05/15/2013 09:57 PM, Khem Raj wrote:
> > init file which it was providing is ditto as meta-yocto
> > so bbappend is redundant plus it gets rid of following warning
> > for non poky distros.
> > 
> > WARNING: No recipes available for:
> >   /builds1/meta-intel/meta-fri2/recipes-core/tiny-init/tiny-init.bbappend
> > 
> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > CC: Darren Hart <dvhart@linux.intel.com>
> 
> Acked-by: Darren Hart <dvhart@linux.intel.com>
> 
> Thanks Khem!
> 
> > ---
> >  .../recipes-core/tiny-init/tiny-init.bbappend      |    6 -----
> >  meta-fri2/recipes-core/tiny-init/tiny-init/init    |   26 --------------------
> >  2 files changed, 32 deletions(-)
> >  delete mode 100644 meta-fri2/recipes-core/tiny-init/tiny-init.bbappend
> >  delete mode 100644 meta-fri2/recipes-core/tiny-init/tiny-init/init
> > 
> > diff --git a/meta-fri2/recipes-core/tiny-init/tiny-init.bbappend b/meta-fri2/recipes-core/tiny-init/tiny-init.bbappend
> > deleted file mode 100644
> > index 89416dc..0000000
> > --- a/meta-fri2/recipes-core/tiny-init/tiny-init.bbappend
> > +++ /dev/null
> > @@ -1,6 +0,0 @@
> > -# Update the init script for the tiny image to manually mount devtmpfs and
> > -# ensure the ttyPCH1 device is available for the console.
> > -
> > -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> > - 
> > -PRINC := "${@int(PRINC) + 1}"
> > diff --git a/meta-fri2/recipes-core/tiny-init/tiny-init/init b/meta-fri2/recipes-core/tiny-init/tiny-init/init
> > deleted file mode 100644
> > index 4b78f01..0000000
> > --- a/meta-fri2/recipes-core/tiny-init/tiny-init/init
> > +++ /dev/null
> > @@ -1,26 +0,0 @@
> > -#!/bin/sh
> > -
> > -# Mount the Linux kernel virtual filesystems
> > -mount none -t proc /proc
> > -mount none -t sysfs /sys
> > -
> > -# Ensure devtmpfs is mounted, it must be done manually with initramfs
> > -mount none -t devtmpfs /dev
> > -
> > -# Setup PTY infrastructure
> > -mkdir /dev/pts
> > -mount none -t devpts /dev/pts
> > -
> > -ifup lo
> > -
> > -# Allow for distro or local customizations
> > -if [ -f /etc/rc.local ] ; then
> > -	source /etc/rc.local
> > -fi
> > -
> > -# Become session leader and try to find a real tty (e.g. ttyS0)
> > -while true; do
> > -	setsid cttyhack sh
> > -	echo "Console sh exited with $?, respawning..."
> > -	sleep 1
> > -done
> > 
> 



