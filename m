Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6FA0E00B88; Thu,  5 Jun 2014 10:30:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DC7FE00B68
	for <yocto@yoctoproject.org>; Thu,  5 Jun 2014 10:30:09 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Jun 2014 10:30:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,982,1392192000"; d="scan'208";a="523299695"
Received: from smoffitt-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.113])
	by orsmga001.jf.intel.com with ESMTP; 05 Jun 2014 10:24:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 05 Jun 2014 18:24:32 +0100
Message-ID: <6944853.hSHdg7euvW@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.4-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <5390A607.9010106@mlbassoc.com>
References: <53906B96.300@mlbassoc.com>
	<2865499.mMpv2bqsZi@peggleto-mobl5.ger.corp.intel.com>
	<5390A607.9010106@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: Live images?
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
X-List-Received-Date: Thu, 05 Jun 2014 17:30:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 05 June 2014 11:16:55 Gary Thomas wrote:
> On 2014-06-05 09:07, Paul Eggleton wrote:
> > On Thursday 05 June 2014 08:41:57 Gary Thomas wrote:
> >> On 2014-06-05 08:32, Paul Eggleton wrote:
> >>> On Thursday 05 June 2014 15:26:28 Paul Eggleton wrote:
> >>>> Hi Gary,
> >>>> 
> >>>> On Thursday 05 June 2014 07:07:34 Gary Thomas wrote:
> >>>>> Looking through the Poky/Yocto sources, there seems to be
> >>>>> some support for Live CD/USB images.  However, I can't find
> >>>>> any examples nor documentation for how to use this.
> >>>>> 
> >>>>> Can anyone provide some pointers?
> >>>> 
> >>>> You're right, we seem to be missing that in our documentation; I'm not
> >>>> sure
> >>>> where the best place to document it would be though.
> >>>> 
> >>>> FYI, you should just need to ensure "live" is in IMAGE_FSTYPES; then
> >>>> you
> >>>> should get a .directdisk image that you can just dd to a USB stick.
> >>> 
> >>> Of course I meant to say .hddimg, not .directdisk.
> >> 
> >> Thanks, I'll give that a try.
> >> 
> >> What if I needed to boot from an actual CD?  I have an old
> >> box here I'd like to try, but it doesn't boot from USB.
> > 
> > We can produce ISO images but I don't think that they work quite as well,
> > e.g.:
> > 
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=5282
> > 
> > You could always try it though.
> 
> Bummer, when I tried to build core-image-minimal and/or core-image-x11, it 
failed:
> | DEBUG: Executing shell function read_only_rootfs_hook
> | sed: can't read
> | /home/local/x86_live_2014-06-05/tmp/work/genericx86-poky-linux/core-image
> | -minimal-initramfs/1.0-r0/rootfs/etc/fstab: No such file or directory
> | WARNING:
> | /home/local/x86_live_2014-06-05/tmp/work/genericx86-poky-linux/core-image
> | -minimal-initramfs/1.0-r0/temp/run.read_only_rootfs_hook.30446:1 exit 2
> | from| 
> |   sed -i -e
> |   '/^[#[:space:]]*\/dev\/root/{s/defaults/ro/;s/\([[:space:]]*[[:digit:]]
> |   \)\([[:space:]]*\)[[:digit:]]$/\1\20/}'
> /home/local/x86_live_2014-06-05/tmp/work/genericx86-poky-linux/core-image-mi
> nimal-initramfs/1.0-r0/rootfs/etc/fstab
> | DEBUG: Python function do_rootfs finished
> | ERROR: Function failed: read_only_rootfs_hook (log file is located at
> 
> /home/local/x86_live_2014-06-05/tmp/work/genericx86-poky-linux/core-image-mi
> nimal-initramfs/1.0-r0/temp/log.do_rootfs.30446)
> 
> Using these settings:
> Build Configuration:
> BB_VERSION        = "1.23.1"
> BUILD_SYS         = "i686-linux"
> NATIVELSBSTRING   = "Fedora-13"
> TARGET_SYS        = "i586-poky-linux"
> MACHINE           = "genericx86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.6+snapshot-20140605"
> TUNE_FEATURES     = "m32 core2"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-yocto-bsp    = "master:e7114046be6e71fb326477dc882adb814ef6a751"
> 
> Extra settings in conf/local.conf
> # Live CD setup
> IMAGE_FSTYPES_append = " hddimg live"

"hddimg" isn't a valid IMAGE_FSTYPES item.

Also, try IMAGE_FSTYPES += rather than _append, that allows the initramfs 
image to have its own value (because it's not really valid to make a live 
initramfs...)

> IMAGE_FEATURES_append = " read-only-rootfs"

Try EXTRA_IMAGE_FEATURES += instead of IMAGE_FEATURES_append

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

