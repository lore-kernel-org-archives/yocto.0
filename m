Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8CFCE00CE6; Wed, 10 Feb 2016 04:29:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C036E00CE0
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 04:29:08 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 10 Feb 2016 04:28:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,425,1449561600"; d="scan'208";a="45541905"
Received: from linux.intel.com ([10.23.219.25])
	by fmsmga004.fm.intel.com with ESMTP; 10 Feb 2016 04:28:49 -0800
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.51])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 5BDAD6A4002
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 05:16:40 -0800 (PST)
Date: Wed, 10 Feb 2016 12:19:13 +0200
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: yocto@yoctoproject.org
Message-ID: <20160210101913.GA31234@linux.intel.com>
References: <20160209082916.GB6748@graute-opti>
MIME-Version: 1.0
In-Reply-To: <20160209082916.GB6748@graute-opti>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: wic adds wrong mount lines to my fstab
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
X-List-Received-Date: Wed, 10 Feb 2016 12:29:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Oliver,

On Tue, Feb 09, 2016 at 09:29:16AM +0100, Oliver Graute wrote:
> # It uses SPL and u-boot
> #
> # The disk layout used is:
> #  - ----- --------- ---------- -------- --------- ---------- ------------
> # | | SPL | u-boot  |  /boot1  | /boot2 | rootfs1 | rootfs2  |    data    |
> #  - ----- --------- ---------- -------- --------- ---------- ------------
> # ^ ^     ^         ^         ^              ^
> # | |     |         |         |              |
> # 0 1kiB  69kiB     4MiB   4MiB + 20MiB    4MiB + 8Mib + rootfs1 + rootfs2 + data
> #
> part SPL --source rawcopy --sourceparams="file=SPL" --ondisk mmcblk --no-table --align 1
> part u-boot --source rawcopy --sourceparams="file=u-boot.img" --ondisk mmcblk --no-table --align 69
> part /boot --source bootimg-partition --ondisk mmcblk --fstype=vfat --label boot --active --align 4096 --size 20M --extra-space 0
> #part /boot2 --source bootimg-partition --ondisk mmcblk --fstype=vfat --label boot2 --active --align 4096 --size 8M --extra-space 0
> part / --source rootfs --ondisk mmcblk --fstype=ext3 --label root --align 4 --size 125
> part /rescue --source rootfs --ondisk mmcblk --fstype=ext3 --label secondary --align 4 --size 125
> part /data --ondisk mmcblk --fstype=ext3 --label data --align 4 --size 730
>
> Some sugesstions to fix this?
How exactly wic complains if you use --ondisk mmcblk0 ?

It worked for me with this .wks:
part /boot --source bootimg-pcbios --ondisk mmcblk0 --label boot --active --align 1024
part / --source rootfs --ondisk mmcblk0 --fstype=ext3 --label root --align 1024
part /rescue --source rootfs --ondisk mmcblk0 --fstype=ext3 --label secondary --align 4 --size 125
part /data --ondisk mmcblk0 --fstype=ext3 --label data --align 4 --size 730

bootloader --timeout=0 --append="rootwait rootfstype=ext3 console=tty0"

and produced these 2 lines in fstab:
/dev/mmcblk0p3  /rescue ext3    defaults        0       0
/dev/mmcblk0p5  /data   ext3    defaults        0       0

If you provide more info about your setup(layers used?) I can try to
reproduce it and fix the issue.
Creating bug in https://bugzilla.yoctoproject.org would be great too.

--
Regards,
Ed

