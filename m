Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFAC2E00B4C; Mon, 16 Jun 2014 06:14:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C792E00AEE
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 06:14:35 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Jun 2014 06:14:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,486,1400050800"; d="scan'208";a="556200494"
Received: from lakaruna-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.8])
	by fmsmga002.fm.intel.com with ESMTP; 16 Jun 2014 06:14:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Mon, 16 Jun 2014 14:14:30 +0100
Message-ID: <1428021.nclvzNdbhY@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.6-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <5390C088.2020006@mlbassoc.com>
References: <53906B96.300@mlbassoc.com>
	<6944853.hSHdg7euvW@peggleto-mobl5.ger.corp.intel.com>
	<5390C088.2020006@mlbassoc.com>
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
X-List-Received-Date: Mon, 16 Jun 2014 13:14:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Thursday 05 June 2014 13:10:00 Gary Thomas wrote:
> On 2014-06-05 11:24, Paul Eggleton wrote:
> > On Thursday 05 June 2014 11:16:55 Gary Thomas wrote:
> >> On 2014-06-05 09:07, Paul Eggleton wrote:
> >>> On Thursday 05 June 2014 08:41:57 Gary Thomas wrote:
> >>>> On 2014-06-05 08:32, Paul Eggleton wrote:
> >>>>> On Thursday 05 June 2014 15:26:28 Paul Eggleton wrote:
> >>>>>> On Thursday 05 June 2014 07:07:34 Gary Thomas wrote:
> >>>>>>> Looking through the Poky/Yocto sources, there seems to be
> >>>>>>> some support for Live CD/USB images.  However, I can't find
> >>>>>>> any examples nor documentation for how to use this.
> >>>>>>> 
> >>>>>>> Can anyone provide some pointers?
> >>>>>> 
> >>>>>> You're right, we seem to be missing that in our documentation; I'm
> >>>>>> not sure where the best place to document it would be though.
> >>>>>> 
> >>>>>> FYI, you should just need to ensure "live" is in IMAGE_FSTYPES; then
> >>>>>> you should get a .directdisk image that you can just dd to a USB
> >>>>>> stick.
> >>>>> 
> >>>>> Of course I meant to say .hddimg, not .directdisk.
> >>>> 
> >>>> Thanks, I'll give that a try.
> >>>> 
> >>>> What if I needed to boot from an actual CD?  I have an old
> >>>> box here I'd like to try, but it doesn't boot from USB.
> >>> 
> >>> We can produce ISO images but I don't think that they work quite as
> >>> well, e.g.:
> >>> 
> >>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=5282
> >>> 
> >>> You could always try it though.
> >> 
> >> Bummer, when I tried to build core-image-minimal and/or core-image-x11,
> >> it failed:
> >> | DEBUG: Executing shell function read_only_rootfs_hook
> >> | sed: can't read
> >> | /home/local/x86_live_2014-06-05/tmp/work/genericx86-poky-linux/core-ima
> >> | ge
> >> | -minimal-initramfs/1.0-r0/rootfs/etc/fstab: No such file or directory
> >> | WARNING:
> >> | /home/local/x86_live_2014-06-05/tmp/work/genericx86-poky-linux/core-ima
> >> | ge
> >> | -minimal-initramfs/1.0-r0/temp/run.read_only_rootfs_hook.30446:1 exit 2
> >> | from|
> >> | 
> >> |   sed -i -e
> >> |   '/^[#[:space:]]*\/dev\/root/{s/defaults/ro/;s/\([[:space:]]*[[:digit:
> >> |   ]]
> >> |   \)\([[:space:]]*\)[[:digit:]]$/\1\20/}'
> >> 
> >> /home/local/x86_live_2014-06-05/tmp/work/genericx86-poky-linux/core-image
> >> -mi nimal-initramfs/1.0-r0/rootfs/etc/fstab
> >> 
> >> | DEBUG: Python function do_rootfs finished
> >> | ERROR: Function failed: read_only_rootfs_hook (log file is located at
> >> 
> >> /home/local/x86_live_2014-06-05/tmp/work/genericx86-poky-linux/core-image
> >> -mi nimal-initramfs/1.0-r0/temp/log.do_rootfs.30446)
> >> 
> >> Using these settings:
> >> Build Configuration:
> >> BB_VERSION        = "1.23.1"
> >> BUILD_SYS         = "i686-linux"
> >> NATIVELSBSTRING   = "Fedora-13"
> >> TARGET_SYS        = "i586-poky-linux"
> >> MACHINE           = "genericx86"
> >> DISTRO            = "poky"
> >> DISTRO_VERSION    = "1.6+snapshot-20140605"
> >> TUNE_FEATURES     = "m32 core2"
> >> TARGET_FPU        = ""
> >> meta
> >> meta-yocto
> >> meta-yocto-bsp    = "master:e7114046be6e71fb326477dc882adb814ef6a751"
> >> 
> >> Extra settings in conf/local.conf
> >> # Live CD setup
> >> IMAGE_FSTYPES_append = " hddimg live"
> > 
> > "hddimg" isn't a valid IMAGE_FSTYPES item.
> > 
> > Also, try IMAGE_FSTYPES += rather than _append, that allows the initramfs
> > image to have its own value (because it's not really valid to make a live
> > initramfs...)
> 
> Sorry, I misread/misapplied your previous suggestions.
> 
> >> IMAGE_FEATURES_append = " read-only-rootfs"
> > 
> > Try EXTRA_IMAGE_FEATURES += instead of IMAGE_FEATURES_append
> 
> I've changed both of these and it still fails if I enable the
> read-only-rootfs.
> 
> If I leave that option out, I can build an .hddimg which I dd'd
> to my USB stick.  It tried to boot, finds /vmlinuz but fails to
> find /initrd
> 
> My local.conf settings are now:
> # Live CD setup
> IMAGE_FSTYPES += " live"
> #IMAGE_FEATURES += " read-only-rootfs"
> CORE_IMAGE_EXTRA_INSTALL += " python-core python-modules"
> 
> Finally, during one of my builds, I ended up with a core-image-minimal*.iso
> I tried burning this to a CD an it booted up, albeit with a couple of
> complaints about a read-only rootfs.  Sadly, I no longer get any .iso
> results when I 'bitbake core-image-minimal'

As far as I know you should get a .iso with live in IMAGE_FSTYPES, unless you 
set NOISO = "1". If you're not getting that or seeing other unexpected 
behaviour I think the best course of action would be to file a bug, and we'll 
try to track down the cause of the issue.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

