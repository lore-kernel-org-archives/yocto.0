Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0D96E00717
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 18:35:12 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Oct 2012 18:35:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,531,1344236400"; d="scan'208";a="200305321"
Received: from unknown (HELO [10.255.13.203]) ([10.255.13.203])
	by azsmga001.ch.intel.com with ESMTP; 03 Oct 2012 18:35:11 -0700
Message-ID: <506CE7CF.6000500@linux.intel.com>
Date: Wed, 03 Oct 2012 18:35:11 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: Rudolf Streif <rudolf.streif@linux.com>
References: <CA+gsK-oEmJJHQo1BHYfr1CZS3KbjiG8piMV30EodDGOFrEpaLA@mail.gmail.com>
In-Reply-To: <CA+gsK-oEmJJHQo1BHYfr1CZS3KbjiG8piMV30EodDGOFrEpaLA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [Poky] Baking core-image-minimal with Poky from Master fails with libffi dependency
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
X-List-Received-Date: Thu, 04 Oct 2012 01:35:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/03/2012 04:21 PM, Rudolf Streif wrote:
> I checked out Poky from Master and tried to build core-image-minimal.
> do_rootfs failed on the libffi dependency [1]. Is that known/expected?
>
This is interesting, I just tried it also, and it is working, see below.


> :rjs
>
> --------
>
> [1]
>
> bitbake core-image-minimal
> Loading cache: 100%
> |################################################################################|
> ETA:  00:00:00
> Loaded 1131 entries from dependency cache.
>
> Build Configuration:
> BB_VERSION        = "1.16.0"
> TARGET_ARCH       = "i586"
> TARGET_OS         = "linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.2+snapshot-20121003"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-yocto-bsp    = "master:09aaad16be178bd675750aa6cfe7a373d7c9a8a6"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Function failed: do_rootfs (see
> /data/Develop/yocto-develop/x86/tmp/work/qemux86-poky-linux/core-image-minimal-1.0-r0/temp/log.do_rootfs.29559
> for further information)
> ERROR: Logfile of failure stored in:
> /data/Develop/yocto-develop/x86/tmp/work/qemux86-poky-linux/core-image-minimal-1.0-r0/temp/log.do_rootfs.29559
> Log data follows:
> | DEBUG: Executing shell function do_rootfs
> | Generating solve db for
> /data/Develop/yocto-develop/x86/tmp/deploy/rpm/qemux86...
> | Generating solve db for
> /data/Develop/yocto-develop/x86/tmp/deploy/rpm/i586...
> | Generating solve db for
> /data/Develop/yocto-develop/x86/tmp/deploy/rpm/all...
> | Generating solve db for
> /data/Develop/yocto-develop/x86/tmp/deploy/rpm/all...
> | Processing packagegroup-core-tools-profile...
> | Processing packagegroup-core-boot...
> | Processing packagegroup-core-tools-testapps...
> | Processing packagegroup-core-tools-debug...
> | error: Failed dependencies:
> |       libffi.so.5 is needed by lttng-viewer-0.12.38-r3.i586
> |       libffi.so.5 is needed by
> clutter-box2d-0.12.1+git1+de5452e56b537a11fd7f9453d048ff4b4793b5a2-r1.qemux86
> |       libffi.so.5 is needed by
> libowl-av0-0.1+git1+03030c41ea578cfa74a2ffceb875675b248318ae-r3.i586
> |       libffi.so.5 is needed by libclutter-glx-1.0-0-1.8.4-r2.i586
> | ERROR: Function failed: do_rootfs (see
> /data/Develop/yocto-develop/x86/tmp/work/qemux86-poky-linux/core-image-minimal-1.0-r0/temp/log.do_rootfs.29559
> for further information)
> ERROR: Task 7
> (/data/Develop/yocto-develop/poky/meta/recipes-core/images/core-image-minimal.bb
> <http://core-image-minimal.bb>, do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3891 tasks of which 3890 didn't need to
> be rerun and 1 failed.
> No currently running tasks (3890 of 3892)
>
The number of tasks and including lttng-viewer and clutter seems to be 
lartger than core-image-minimal, do you have anything in the local.conf?

Sau!

> Summary: 1 task failed:
>
> /data/Develop/yocto-develop/poky/meta/recipes-core/images/core-image-minimal.bb
> <http://core-image-minimal.bb>, do_rootfs
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

