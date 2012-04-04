Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0675E0137C
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 03:14:57 -0700 (PDT)
Received: from [192.168.0.2] (host86-132-173-70.range86-132.btcentralplus.com
	[86.132.173.70]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id AF0F699C2
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 11:14:56 +0100 (BST)
Message-ID: <4F7C1F1F.4070806@r-finger.com>
Date: Wed, 04 Apr 2012 11:14:55 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Not booting on BeagleBoard xM 0x2
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
X-List-Received-Date: Wed, 04 Apr 2012 10:14:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

I am trying to get Yocto image built from yesterday's master
(Linux-3.0.23-yocto-standard) to boot on the NAND-less version of
BeagleBoard xM, but the kernel panics with:

----------------- console log start ------------

Waiting for root device /dev/mmcblk0p2...
mmc0: new SDHC card at address 1234
mmcblk0: mmc0:1234 SA04G 3.67 GiB (ro)
 mmcblk0: p1 p2

VFS: Cannot open root device "mmcblk0p2" or unknown-block(179,2)
Please append a correct "root=" boot option; here are the available
partitions:

b300         3858432 mmcblk0  driver: mmcblk
  b301          120456 mmcblk0p1 00000000-0000-0000-0000-000000000mmcblk0p1
  b302         3445942 mmcblk0p2 00000000-0000-0000-0000-000000000mmcblk0p2

VFS: Unable to mount root fs on unknown-block(179,2)
User configuration error - no valid root filesystem found
Kernel panic - not syncing: Invalid configuration from end user prevents
continuing

-------------- console log end ------------------------------------

My guess would be the problem is the card being detected as 'ro' (line
3), but I do not know why that is (there is no lock switch on mmc cards).

The card itself is fine, it's the original card that came with the
board, the original Angstrom demo boots fine from it, and yocto kernel
2.6.37 also used to boot.

Tomas



