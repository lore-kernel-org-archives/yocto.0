Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE9DEE004E5; Mon,  7 Nov 2016 15:13:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47D82E00498
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2016 15:13:49 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 07 Nov 2016 15:13:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,459,1473145200"; d="scan'208";a="1081955699"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga002.fm.intel.com with ESMTP; 07 Nov 2016 15:13:49 -0800
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.68])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 6223D6A4006;
	Mon,  7 Nov 2016 15:13:11 -0800 (PST)
Date: Tue, 8 Nov 2016 01:13:40 +0200
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: Nicolas Bigaouette <nbigaouette@rogue-research.com>
Message-ID: <20161107231340.GC7754@linux.intel.com>
References: <c62407c3-6850-ab3e-9116-b2cfe2ae53ce@rogue-research.com>
MIME-Version: 1.0
In-Reply-To: <c62407c3-6850-ab3e-9116-b2cfe2ae53ce@rogue-research.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Question about wic partition creation
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
X-List-Received-Date: Mon, 07 Nov 2016 23:13:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 01, 2016 at 11:14:48AM -0400, Nicolas Bigaouette wrote:
> We are using Yocto (jethro and krogoth) to build an image for a device.
> 
> I organized the compilation process into multiple stages for easier
> integration with our tooling. The last stage is a call to `wic` to
> create a drive image that we can then `dd` to a real drive to get a
> workable system.
>
Do you use wic images produced by bitbake or run wic after bitbake build?

> I am faced with a problem where I would like the top-level directory
> of one of the partition created by wic to have a different owner
> than root.
> 
> I am able to tell wic the partition information (size, filesystem,
> etc.) but I can't find a way to tell wic to change permissions of
> files/directories inside the partition...
>
> As an example I have an entry like the following at the end of my `.wks`:
> > part /opt/mnt        --label extra  --fstype=ext4 --align 1024
> --ondisk sda --size=2040
> which will add an extra partition after all others on the final
> image. An entry in `/etc/fstab` will be added so that the partition
> will be mounted to `/opt/mnt`.
> 
> Note that the partition should be empty: I'm not populating it with
> any files or directories.
> 
> But after booting the system, the directory `/opt/mnt` will have the
> permissions of the top-level directory of the created partition, and
> by default those are `0755` and owned by `root:root`.
> 
> So my question is: How can I change this so that it's owned by a
> specific uid and gid (`1000:1000`)?

> I am investigating plugins for now (for example by having a
> `meta-mylayer/scripts/lib/wic/plugins/source/fsimage-mypartition.py`)
> but I still can't see how I can change the owner of the directory.
> Should I provide a rootfs-like directory which is empty but owned by
> the proper uid and gid?
>
Yes, that's what I'd suggest to do. rootfs plugin may help you with
this. If it doesn't work as expected please create bug for me in Yocto
bugzilla.

> Note that letting users be able to mount the partition (by adding
> `users` to `/etc/fstab`) is not what I want; it would _not_ change
> the permissions/owner of the top-level directory of the partition.

--
Regards,
Ed

