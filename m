Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 251F8E00B77; Sat,  7 Nov 2015 12:06:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E68EFE00B23
	for <yocto@yoctoproject.org>; Sat,  7 Nov 2015 12:06:18 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id tA7K6GPn022053
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 7 Nov 2015 12:06:16 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.248.2; Sat, 7 Nov 2015 12:06:15 -0800
To: Denton Gentry <denton.gentry@gmail.com>, <yocto@yoctoproject.org>
References: <CABnBrYX3Zenkb5i-3MZ8NEzntnsfDd-iMXLvgr68FFNU9tYU9Q@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <563E59B7.8060002@windriver.com>
Date: Sat, 7 Nov 2015 14:06:15 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CABnBrYX3Zenkb5i-3MZ8NEzntnsfDd-iMXLvgr68FFNU9tYU9Q@mail.gmail.com>
Subject: Re: [prelink-cross] /sbin/init not working after prelink-cross
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
X-List-Received-Date: Sat, 07 Nov 2015 20:06:22 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 11/7/15 11:08 AM, Denton Gentry wrote:
> I'm attempting to use prelink-cross on two different platforms, both
> of which run into the same symptoms. The two platforms are:
>     + ARM, Linux 3.2, glibc
>     + MIPS, Linux 4.1, uclibc

As far as I am aware, the prelinker does not work with uClibc at all.  So I'm
not surprised if the MIPS case breaks.

Do you know if it has worked at all in the past with uClibc?

As for ARM, what version of glibc is being used, and which ARM core is the
system targeting?

I believe that the ARM & glibc issues were resolved.  So you may have found a
new unknown issues.

If you are able to, I'd suggesting building the prelink-cross branch on the
target system, (autoreconf -if ; configure ; make) and then run the 'make
testsuite' and see if you get any errors.  (You should get 3 skips and the rest
pass.  If not, then something in your configuration may be causing a problem.)

The other thing to look into on ARM, since it appears you are likely using older
versions of the tools, would be to try an older version of the prelinker and see
if that works.  If it does, we can attempt to go through the patches and
identify what triggered the failure mode on your machine.

Please open a defect for the glibc case in the yoctoproject bugzilla, make sure
the component in the prelinker -- and as as much information as you can about
your configuration.  (If I can find a way to reproduce it, I'm more likely to be
able to figure out the issue as well.)

--Mark


> I'm using sysvinit 2.88 on both.
> I'm using prelink-cross-20151030_cross.
> 
> 
> My prelink command is:
> prelink --verbose --config-file /etc/prelink.conf --cache-file
> /etc/prelink.cache --root=./target/
> --ld-library-path=/lib:/usr/lib:/usr/local/lib:/chrome/lib:/chrome
> --all
> 
> The uclibc system adds "--dynamic-linker=/lib/ld-uClibc.so.0" to the
> prelink command.
> 
> 
> If /sbin/init is statically linked, the kernel is able to run
> /sbin/init but init cannot run any processes:
> 
> [   10.035122] Mounted root='/dev/mtdblock13' (verity)
> [   10.052350] Looking for init in rootfs.  To bypass this, use init=/bin/sh
> [   10.059559] Trying '/rootfs/sbin/init'
> INIT: version 2.88 booting
> INIT: Entering runlevel: 1
> INIT: Id "S0" respawning too fast: disabled for 5 minutes
> INIT: Id "USB0" respawning too fast: disabled for 5 minutes
> INIT: no more processes left in this runlevel
> 
> 
> If /sbin/init is dynamically linked, the kernel panics when it tries
> to run init:
> 
> [   10.066521] Mounted root='/dev/mtdblock13' (verity)
> [   10.082536] Looking for init in rootfs.  To bypass this, use init=/bin/sh
> [   10.089509] Trying '/rootfs/sbin/init'
> [   10.228603] Kernel panic - not syncing: Attempted to kill init!
> [   10.234639] [<840111e1>] (unwind_backtrace+0x1/0x8c) from
> [<842cee3d>] (panic+0x5d/0x134)
> [   10.242879] [<842cee3d>] (panic+0x5d/0x134) from [<84029dc5>]
> (do_exit+0x239/0x538)
> [   10.250570] [<84029dc5>] (do_exit+0x239/0x538) from [<8402a12d>]
> (do_group_exit+0x4d/0x70)
> [   10.258889] [<8402a12d>] (do_group_exit+0x4d/0x70) from
> [<84033c9d>] (get_signal_to_deliver+0x379/0x40c)
> [   10.268429] [<84033c9d>] (get_signal_to_deliver+0x379/0x40c) from
> [<8400ee01>] (do_signal+0x38d/0x3c0)
> [   10.277790] [<8400ee01>] (do_signal+0x38d/0x3c0) from [<8400f027>]
> (do_notify_resume+0xf/0x28)
> [   10.286457] [<8400f027>] (do_notify_resume+0xf/0x28) from
> [<8400caed>] (work_pending+0x23/0x26)
> [   10.295204] CPU1: stopping
> [   10.297935] [<840111e1>] (unwind_backtrace+0x1/0x8c) from
> [<8401088d>] (handle_IPI+0xcd/0x104)
> [   10.306583] [<8401088d>] (handle_IPI+0xcd/0x104) from [<8400c553>]
> (__irq_svc+0x33/0xb8)
> [   10.314708] [<8400c553>] (__irq_svc+0x33/0xb8) from [<8400d5e8>]
> (default_idle+0x18/0x1c)
> [   10.322921] [<8400d5e8>] (default_idle+0x18/0x1c) from [<8400d6c5>]
> (cpu_idle+0x61/0x94)
> [   10.331045] [<8400d6c5>] (cpu_idle+0x61/0x94) from [<042cb779>] (0x42cb779)
> [   10.338036] Rebooting in 3 seconds..
> 
> 
> This makes it look like the dynamic linker cannot handle prelinked
> binaries. However if I only prelink a single binary (plus the
> libraries it depends on), the prelinked binary is able to run without
> issue.
> 
> I'm hoping these symptoms will look familiar to someone, before I go
> dig into the kernel's handling of /sbin/init to try to figure out why
> it fails.
> 


