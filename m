Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0CF9E00D6C; Mon, 21 Aug 2017 01:33:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F912E00D61
	for <yocto@yoctoproject.org>; Mon, 21 Aug 2017 01:33:44 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga104.jf.intel.com with ESMTP; 21 Aug 2017 01:33:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,408,1498546800"; d="scan'208";a="1185970052"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga001.fm.intel.com with ESMTP; 21 Aug 2017 01:33:44 -0700
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.38])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id 13CBA5805B3;
	Mon, 21 Aug 2017 01:33:42 -0700 (PDT)
Date: Mon, 21 Aug 2017 11:09:40 +0300
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: Riko <antonius.riko@gmail.com>
Message-ID: <20170821080940.GB17975@linux.intel.com>
References: <CAByQQ_q9bBxrK6gzn2nAj2QK9PEiOfyt_09Le27DvXpU4_54hg@mail.gmail.com>
	<1502979391.28682.1.camel@linux.intel.com>
	<3e39f3ca-9228-769f-0b39-126fb124d280@gmail.com>
	<20170818085833.GA6976@linux.intel.com>
	<6428aa75-f822-710e-fd86-c1a83401f1e3@gmail.com>
MIME-Version: 1.0
In-Reply-To: <6428aa75-f822-710e-fd86-c1a83401f1e3@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dd to nand flash chip?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ed.bartosh@linux.intel.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 Aug 2017 08:33:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sat, Aug 19, 2017 at 10:08:06AM +0800, Riko wrote:
> Is it related with :
> 
> https://stackoverflow.com/questions/43211384/how-to-get-to-menuconfig-for-u-boot-in-yocto-environment
> 
I don't think so. It's about kernel build configuration.

> ?
> 
> Thanks
> 
> 
> On 18/08/17 16:58, Ed Bartosh wrote:
> >On Fri, Aug 18, 2017 at 11:40:58AM +0800, Riko wrote:
> >>Here's the boot messages :
> >>
> >>===
> >>
> >>VFS: PARTUUID= is invalid.
> >>Expected PARTUUID=<valid-uuid-id>[/PARTNROFF=%d]
> >>Disabling rootwait; root= is invalid.
> >>VFS: Cannot open root device "PARTUUID=" or unknown-block(0,0): error -6
> >Looks like you have empty PARTUUID in the kernel command line. Which wks
> >file do you use for this image? Which layers? Can you show your
> >bootloader config?
> >
> >>Please append a correct "root=" boot option; here are the available
> >>partitions:
> >>0100            4096 ram0 (driver?)
> >>0101            4096 ram1 (driver?)
> >>0102            4096 ram2 (driver?)
> >>0103            4096 ram3 (driver?)
> >>0104            4096 ram4 (driver?)
> >>0105            4096 ram5 (driver?)
> >>0106            4096 ram6 (driver?)
> >>0107            4096 ram7 (driver?)
> >>0108            4096 ram8 (driver?)
> >>0109            4096 ram9 (driver?)
> >>010a            4096 ram10 (driver?)
> >>010b            4096 ram11 (driver?)
> >>010c            4096 ram12 (driver?)
> >>010d            4096 ram13 (driver?)
> >>010e            4096 ram14 (driver?)
> >>010f            4096 ram15 (driver?)
> >>b300         3735552 mmcblk1  driver: mmcblk
> >>   b301           16384 mmcblk1p1 2848be0f-01
> >>   b302          756704 mmcblk1p2 2848be0f-02
> >>b310            4096 mmcblk1boot1 (driver?)
> >>b308            4096 mmcblk1boot0 (driver?)
> >>VFS: Unable to mount root fs on unknown-block(0,0)
> >>User configuration error - no valid root filesystem found
> >>Kernel panic - not syncing: Invalid configuration from end user
> >>prevents conting
> >>CPU: 0 PID: 1 Comm: swapper Not tainted 4.8.12-yocto-standard #3
> >>Hardware name: Generic AM33XX (Flattened Device Tree)
> >>[<c010f260>] (unwind_backtrace) from [<c010c11c>] (show_stack+0x20/0x24)
> >>[<c010c11c>] (show_stack) from [<c0493068>] (dump_stack+0x20/0x28)
> >>[<c0493068>] (dump_stack) from [<c01f20f4>] (panic+0xc0/0x22c)
> >>[<c01f20f4>] (panic) from [<c0f013ac>] (mount_block_root+0x19c/0x274)
> >>[<c0f013ac>] (mount_block_root) from [<c0f0163c>] (mount_root+0xd0/0x124)
> >>[<c0f0163c>] (mount_root) from [<c0f01810>] (prepare_namespace+0x180/0x1c0)
> >>[<c0f01810>] (prepare_namespace) from [<c0f00f3c>]
> >>(kernel_init_freeable+0x220/)
> >>[<c0f00f3c>] (kernel_init_freeable) from [<c0964fb8>]
> >>(kernel_init+0x18/0x11c)
> >>[<c0964fb8>] (kernel_init) from [<c01078b8>] (ret_from_fork+0x14/0x3c)
> >>---[ end Kernel panic - not syncing: Invalid configuration from end
> >>user preveng
> >>
> >>=====
> >>
> >>How to fix it ? thanks
> >>
> >>
> >>On 17/08/17 22:16, Leonardo Sandoval wrote:
> >>>On Thu, 2017-08-17 at 18:37 +0800, Riko Ho wrote:
> >>>>Dear Yocto Team Members，
> >>>>
> >>>>I tried to dd *.wic to nand flash but always got kernel panic, it can
> >>>>not find rootfs
> >>>>when I dd the same file to sd card, it worked.
> >>>>
> >>>from the bootloader command prompt, you may need to change the root
> >>>kernel parameter and point to the device where the filesystem resides.
> >>>
> >>>
> >>>>I copy only *.wic file to usb drive n dd it.
> >>>>Do I need the whole directory of images for dd? or I need hddimg?
> >>>>
> >>>>Regards,
> >>>>Riko
> >>>>
> >>-- 
> >>/*****
> >>Sent By
> >>Ubuntu 16.04 LTS
> >>Kernel 4.4.0-92-generic
> >>Regards,
> >>Riko H
> >>*****/
> >>
> >>-- 
> >>_______________________________________________
> >>yocto mailing list
> >>yocto@yoctoproject.org
> >>https://lists.yoctoproject.org/listinfo/yocto
> 
> -- 
> /*****
> Sent By
> Ubuntu 16.04 LTS
> Kernel 4.4.0-92-generic
> Regards,
> Riko H
> *****/
> 

-- 
--
Regards,
Ed

