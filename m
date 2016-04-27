Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 285F6E00D7D; Wed, 27 Apr 2016 01:48:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7407E00D79
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 01:48:10 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id C5D0068A019; Wed, 27 Apr 2016 09:48:08 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 4DE1A68A019;
	Wed, 27 Apr 2016 09:48:04 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id EE73A67405AD;
	Wed, 27 Apr 2016 10:48:03 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <57207CC3.3020905@mlbassoc.com>
Date: Wed, 27 Apr 2016 10:48:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
Subject: eudev hwdb?
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
X-List-Received-Date: Wed, 27 Apr 2016 08:48:14 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I see that the replacement for udev (eudev) in OE-core takes nearly
12MB on my i.MX6 (ARM CortexA7).  This is nearly 25% of my total
storage space (64MB NAND)!

# ls -lR /etc/udev
/etc/udev:
total 6520
-rw-r--r-- 1 root root    1600 Jan  1  1970 cache.data
-r--r--r-- 1 root root 6660476 Apr 26 13:08 hwdb.bin
drwxr-xr-x 2 root root    1296 Apr 26 11:34 hwdb.d
-rw-r--r-- 1 root root      51 Apr 26 11:31 mount.blacklist
drwxr-xr-x 2 root root     160 Apr 26 11:35 mount.blacklist.d
drwxr-xr-x 2 root root     608 Apr 26 13:08 rules.d
drwxr-xr-x 2 root root     304 Apr 26 11:35 scripts
-rw-r--r-- 1 root root      49 Apr 26 11:34 udev.conf

/etc/udev/hwdb.d:
total 5224
-rw-r--r-- 1 root root 1292931 Apr 26 11:34 20-OUI.hwdb
-rw-r--r-- 1 root root  126596 Apr 26 11:34 20-acpi-vendor.hwdb
-rw-r--r-- 1 root root   41289 Apr 26 11:34 20-bluetooth-vendor-product.hwdb
-rw-r--r-- 1 root root     111 Apr 26 11:34 20-net-ifname.hwdb
-rw-r--r-- 1 root root   13710 Apr 26 11:34 20-pci-classes.hwdb
-rw-r--r-- 1 root root 2648842 Apr 26 11:34 20-pci-vendor-model.hwdb
-rw-r--r-- 1 root root     783 Apr 26 11:34 20-sdio-classes.hwdb
-rw-r--r-- 1 root root    4067 Apr 26 11:34 20-sdio-vendor-model.hwdb
-rw-r--r-- 1 root root    8070 Apr 26 11:34 20-usb-classes.hwdb
-rw-r--r-- 1 root root 1113001 Apr 26 11:34 20-usb-vendor-model.hwdb
-rw-r--r-- 1 root root    3702 Apr 26 11:34 60-evdev.hwdb
-rw-r--r-- 1 root root   52967 Apr 26 11:34 60-keyboard.hwdb
-rw-r--r-- 1 root root   14217 Apr 26 11:34 70-mouse.hwdb
-rw-r--r-- 1 root root    4627 Apr 26 11:34 70-pointingstick.hwdb

/etc/udev/mount.blacklist.d:
total 0

/etc/udev/rules.d:
total 20
-rw-r--r-- 1 root root 1449 Apr 26 11:31 10-imx.rules
-rw-r--r-- 1 root root    0 Apr 26 11:34 80-net-name-slot.rules
-rw-r--r-- 1 root root  847 Apr 26 11:31 automount.rules
-rw-r--r-- 1 root root  757 Apr 26 11:31 autonet.rules
-rw-r--r-- 1 root root  885 Apr 26 11:34 local.rules
-rw-r--r-- 1 root root  843 Apr 26 11:31 localextra.rules

/etc/udev/scripts:
total 8
-rwxr-xr-x 1 root root 2469 Apr 26 11:31 mount.sh
-rwxr-xr-x 1 root root 1402 Apr 26 11:31 network.sh

Is there any way to not have both the hwdb.bin (which I assume
is a binary version of the hardware databases) and /etc/udev/hwdb.d?
Perhaps there is some way to only use one?

Or maybe there is a better choice, such as mdev?  I'm not sure about
this (no experience) but my system needs to handle plug&play devices
which the current eudev does well.  It's just a huge "price" to pay.

Any ideas or pointers would be great

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

