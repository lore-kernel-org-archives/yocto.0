Return-Path: <denton.gentry@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 290BEE00B5D; Sat,  7 Nov 2015 09:08:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (denton.gentry[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f42.google.com (mail-vk0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7106AE005B7
	for <yocto@yoctoproject.org>; Sat,  7 Nov 2015 09:08:03 -0800 (PST)
Received: by vkgs66 with SMTP id s66so33855130vkg.1
	for <yocto@yoctoproject.org>; Sat, 07 Nov 2015 09:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=J2t3eYypd9cripEiCkVTG8GDcsWb5HCqDLqzUIT9Kng=;
	b=g85KtwBxGTcNTfm5Z7x59+ZyONwMF9LVGqOZtl/FjjEFQbmMyw2/8zVhpOrrOvQ3p9
	28W5WTwyohDFUcG6cbAF5c/Bhv6PWkTRVt1ju8HYSkYb3DKNr54IKrpAvcMQO5Zrin/A
	5v1VhPeJQCmZ1V0eQwlu62lZ9xodZS7Q0NNWs4nXBFbKwDrSrOU9bbywDT9UcPuGGVqr
	ewpZtB6q92E4VMsgn1uw6/VZgrgb5/MrMZWqS0laXce7sdUQgmg2ebGZgPrU8Qb53JtB
	uttpyKtFCTlag5nBUtcCmb3dtr7VvCPjDqKWIHUJ/6lTON5tfWH5NnS61vd6oHWbJqS9
	jK3w==
MIME-Version: 1.0
X-Received: by 10.31.49.22 with SMTP id x22mr20189746vkx.60.1446916083131;
	Sat, 07 Nov 2015 09:08:03 -0800 (PST)
Received: by 10.31.16.32 with HTTP; Sat, 7 Nov 2015 09:08:03 -0800 (PST)
Date: Sat, 7 Nov 2015 09:08:03 -0800
Message-ID: <CABnBrYX3Zenkb5i-3MZ8NEzntnsfDd-iMXLvgr68FFNU9tYU9Q@mail.gmail.com>
From: Denton Gentry <denton.gentry@gmail.com>
To: yocto@yoctoproject.org
Subject: [prelink-cross] /sbin/init not working after prelink-cross
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
X-List-Received-Date: Sat, 07 Nov 2015 17:08:05 -0000
Content-Type: text/plain; charset=UTF-8

I'm attempting to use prelink-cross on two different platforms, both
of which run into the same symptoms. The two platforms are:
    + ARM, Linux 3.2, glibc
    + MIPS, Linux 4.1, uclibc
I'm using sysvinit 2.88 on both.
I'm using prelink-cross-20151030_cross.


My prelink command is:
prelink --verbose --config-file /etc/prelink.conf --cache-file
/etc/prelink.cache --root=./target/
--ld-library-path=/lib:/usr/lib:/usr/local/lib:/chrome/lib:/chrome
--all

The uclibc system adds "--dynamic-linker=/lib/ld-uClibc.so.0" to the
prelink command.


If /sbin/init is statically linked, the kernel is able to run
/sbin/init but init cannot run any processes:

[   10.035122] Mounted root='/dev/mtdblock13' (verity)
[   10.052350] Looking for init in rootfs.  To bypass this, use init=/bin/sh
[   10.059559] Trying '/rootfs/sbin/init'
INIT: version 2.88 booting
INIT: Entering runlevel: 1
INIT: Id "S0" respawning too fast: disabled for 5 minutes
INIT: Id "USB0" respawning too fast: disabled for 5 minutes
INIT: no more processes left in this runlevel


If /sbin/init is dynamically linked, the kernel panics when it tries
to run init:

[   10.066521] Mounted root='/dev/mtdblock13' (verity)
[   10.082536] Looking for init in rootfs.  To bypass this, use init=/bin/sh
[   10.089509] Trying '/rootfs/sbin/init'
[   10.228603] Kernel panic - not syncing: Attempted to kill init!
[   10.234639] [<840111e1>] (unwind_backtrace+0x1/0x8c) from
[<842cee3d>] (panic+0x5d/0x134)
[   10.242879] [<842cee3d>] (panic+0x5d/0x134) from [<84029dc5>]
(do_exit+0x239/0x538)
[   10.250570] [<84029dc5>] (do_exit+0x239/0x538) from [<8402a12d>]
(do_group_exit+0x4d/0x70)
[   10.258889] [<8402a12d>] (do_group_exit+0x4d/0x70) from
[<84033c9d>] (get_signal_to_deliver+0x379/0x40c)
[   10.268429] [<84033c9d>] (get_signal_to_deliver+0x379/0x40c) from
[<8400ee01>] (do_signal+0x38d/0x3c0)
[   10.277790] [<8400ee01>] (do_signal+0x38d/0x3c0) from [<8400f027>]
(do_notify_resume+0xf/0x28)
[   10.286457] [<8400f027>] (do_notify_resume+0xf/0x28) from
[<8400caed>] (work_pending+0x23/0x26)
[   10.295204] CPU1: stopping
[   10.297935] [<840111e1>] (unwind_backtrace+0x1/0x8c) from
[<8401088d>] (handle_IPI+0xcd/0x104)
[   10.306583] [<8401088d>] (handle_IPI+0xcd/0x104) from [<8400c553>]
(__irq_svc+0x33/0xb8)
[   10.314708] [<8400c553>] (__irq_svc+0x33/0xb8) from [<8400d5e8>]
(default_idle+0x18/0x1c)
[   10.322921] [<8400d5e8>] (default_idle+0x18/0x1c) from [<8400d6c5>]
(cpu_idle+0x61/0x94)
[   10.331045] [<8400d6c5>] (cpu_idle+0x61/0x94) from [<042cb779>] (0x42cb779)
[   10.338036] Rebooting in 3 seconds..


This makes it look like the dynamic linker cannot handle prelinked
binaries. However if I only prelink a single binary (plus the
libraries it depends on), the prelinked binary is able to run without
issue.

I'm hoping these symptoms will look familiar to someone, before I go
dig into the kernel's handling of /sbin/init to try to figure out why
it fails.

