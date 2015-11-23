Return-Path: <mariano.lopez@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0174EE00957; Mon, 23 Nov 2015 13:15:38 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4A36E005B7
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 13:15:29 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 23 Nov 2015 13:15:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,338,1444719600"; d="scan'208";a="692859567"
Received: from mlopezva-mobl2.zpn.intel.com (HELO [10.219.16.157])
	([10.219.16.157])
	by orsmga003.jf.intel.com with ESMTP; 23 Nov 2015 13:15:27 -0800
Message-ID: <56538201.1020802@intel.com>
Date: Mon, 23 Nov 2015 15:15:45 -0600
From: Mariano Lopez <mariano.lopez@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: OE-core <openembedded-core@lists.openembedded.org>, 
	openembedded-devel@lists.openembedded.org, yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 25 Nov 2015 07:50:27 -0800
Subject: RFC: Reference updater filesystem
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
X-List-Received-Date: Mon, 23 Nov 2015 21:15:38 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

There has been interest in an image based software updater in Yocto 
Project. The proposed solution for a image based updater is to use 
Stefano Babic's software updater (http://sbabic.github.io/swupdate). 
This software do a binary copy, so it is needed to have at least two 
partitions, these partitions would be the rootfs and the maintenance 
partition. The rootfs it's the main partition used to boot during the 
normal device operation, on the other hand, the maintenance will be used 
to update the main partition.

To update the system, the user has to connect to device and boot in the 
maintenance partition; once in the maintenance partition the software 
updater will copy the new image in the rootfs partition. A final reboot 
into the rootfs it is necessary to complete the upgrade.

As mentioned before the the software will copy an image to the 
partition, so everything in that partition will be wiped out, including 
custom configurations. To avoid the loss of configuration I explore 
three different solutions:
1. Use a separate partition for the configuration.
   a. The pro of this method is the partition is not touched during the 
update.
   b. The con of this method is the configuration is not directly in 
rootfs (example: /etc).

2. Do the backup during the update.
   a. The pro is the configuration is directly in rootfs.
   b. The con is If the update fail most likely the configuration would 
be lost.

3. Have an OverlayFS for the rootfs or the partition that have the 
configuration.
   a. The pro is the configuration is  "directly" in rootfs.
   b. The con is there is need to provide a custom init to guarantee the 
Overlay is mounted before the boot process.

With the above information I'm proposing to use a separate partition for 
the configuration; this is because is more reliable and doesn't require 
big changes in the current architecture.

So, the idea is to have 4 partitions in the media:
1. boot. This is the usual boot partition
2. data. This will hold the configuration files. Not modified by updates.
3. maintenance. This partition will be used to update rootfs.
4. rootfs. Partition used for normal operation.

