Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B364E00B45; Tue, 24 Nov 2015 09:20:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B0A8E00B1C
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 09:20:42 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 24 Nov 2015 09:19:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,339,1444719600"; d="scan'208";a="828127184"
Received: from jwbarz-mobl2.amr.corp.intel.com (HELO [10.254.191.22])
	([10.254.191.22])
	by orsmga001.jf.intel.com with ESMTP; 24 Nov 2015 09:19:46 -0800
To: Randy Witt <rewitt@declaratino.com>
References: <56538808.5050606@linux.intel.com>
	<CAP5N7XH-wVfyyCeBK7gdYXtoDLQuXPKkXV=CRNowmbPUGvxb8Q@mail.gmail.com>
From: "Lopez, Mariano" <mariano.lopez@linux.intel.com>
Message-ID: <56549C31.8010604@linux.intel.com>
Date: Tue, 24 Nov 2015 11:19:45 -0600
User-Agent: Mozilla/5.0 (Windows NT 6.2; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAP5N7XH-wVfyyCeBK7gdYXtoDLQuXPKkXV=CRNowmbPUGvxb8Q@mail.gmail.com>
Cc: yocto@yoctoproject.org, openembedded-devel@lists.openembedded.org,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] RFC: Reference updater filesystem
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
X-List-Received-Date: Tue, 24 Nov 2015 17:20:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/24/2015 1:32 AM, Randy Witt wrote:
>
>
> On Mon, Nov 23, 2015 at 1:41 PM, Mariano Lopez 
> <mariano.lopez@linux.intel.com <mailto:mariano.lopez@linux.intel.com>> 
> wrote:
>
>     There has been interest in an image based software updater in
>     Yocto Project. The proposed solution for a image based updater is
>     to use Stefano Babic's software updater
>     (http://sbabic.github.io/swupdate). This software do a binary
>     copy, so it is needed to have at least two partitions, these
>     partitions would be the rootfs and the maintenance partition. The
>     rootfs it's the main partition used to boot during the normal
>     device operation, on the other hand, the maintenance will be used
>     to update the main partition.
>
>     To update the system, the user has to connect to device and boot
>     in the maintenance partition; once in the maintenance partition
>     the software updater will copy the new image in the rootfs
>     partition. A final reboot into the rootfs it is necessary to
>     complete the upgrade.
>
>     As mentioned before the the software will copy an image to the
>     partition, so everything in that partition will be wiped out,
>     including custom configurations. To avoid the loss of
>     configuration I explore three different solutions:
>     1. Use a separate partition for the configuration.
>       a. The pro of this method is the partition is not touched during
>     the update.
>       b. The con of this method is the configuration is not directly
>     in rootfs (example: /etc).
>
> Configuration files can be anywhere a package decides to install them. 
> So having a single partition would be difficult. If you could, you 
> would most likely be forced to have an initramfs to make sure /etc was 
> mounted before init runs.

/etc was an example, the image should have the required files to make 
the target boot and the get the application configuration from this 
other partition. This is like openwrt does, it has a read-only rootfs 
and small read-write partition where the user can write its 
configuration and restore it at boot time.

>     2. Do the backup during the update.
>       a. The pro is the configuration is directly in rootfs.
>       b. The con is If the update fail most likely the configuration
>     would be lost.
>
> Why would the configuration be lost if the update fails? Couldn't it 
> just be stored on the thumbdrive?

If there is a power loss while the configuration is copied, the 
partition could go corrupt and would be difficult to recover. And as you 
mentioned  before the configuration files could be anywhere, so the 
script must be customized to get all those files and once the update is 
complete another script must restore those files, these could be 
cumbersome instead of the application have the config in another partition.

>     3. Have an OverlayFS for the rootfs or the partition that have the
>     configuration.
>       a. The pro is the configuration is  "directly" in rootfs.
>       b. The con is there is need to provide a custom init to
>     guarantee the Overlay is mounted before the boot process.
>
>     With the above information I'm proposing to use a separate
>     partition for the configuration; this is because is more reliable
>     and doesn't require big changes in the current architecture.
>
>     So, the idea is to have 4 partitions in the media:
>     1. boot. This is the usual boot partition
>     2. data. This will hold the configuration files. Not modified by
>     updates.
>     3. maintenance. This partition will be used to update rootfs.
>     4. rootfs. Partition used for normal operation.
>
>     Mariano
>     -- 
>     _______________________________________________
>     Openembedded-core mailing list
>     Openembedded-core@lists.openembedded.org
>     <mailto:Openembedded-core@lists.openembedded.org>
>     http://lists.openembedded.org/mailman/listinfo/openembedded-core
>
>


