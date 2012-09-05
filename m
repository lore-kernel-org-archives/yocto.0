Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C796BE01423
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 14:46:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Sep 2012 14:46:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,376,1344236400"; d="scan'208";a="189276344"
Received: from unknown (HELO helios.localnet) ([10.252.121.177])
	by azsmga001.ch.intel.com with ESMTP; 05 Sep 2012 14:46:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 05 Sep 2012 22:46:31 +0100
Message-ID: <2238601.rFqqxpWrI4@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <5047970C.8010208@mlbassoc.com>
References: <5047970C.8010208@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: raspberrypi image questions
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
X-List-Received-Date: Wed, 05 Sep 2012 21:46:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 05 September 2012 12:16:44 Gary Thomas wrote:
> I just built Yocto/Poky for the raspberrypi, following the
> recent thread on this list.  I noticed that the resulting SD
> image is ~4GB, but most of that space seems to be unused:
> 
>    $ ssh root@192.168.1.150
>    Warning: Permanently added '192.168.1.150' (RSA) to the list of known
> hosts. root@192.168.1.150's password:
>    root@raspberrypi:~# df
>    Filesystem           1K-blocks      Used Available Use% Mounted on
>    /dev/root                57388     46754      7718  86% /
>    none                     93964       156     93808   0% /dev
>    /dev/mmcblk0p2           57388     46754      7718  86% /media/mmcblk0p2
>    /dev/mmcblk0p1           19400      8928     10472  46% /media/mmcblk0p1
>    tmpfs                    93964        56     93908   0% /var/volatile
>    tmpfs                    93964         0     93964   0% /dev/shm
>    tmpfs                    93964         0     93964   0% /media/ram
>    root@raspberrypi:~# cat /proc/partitions
>    major minor  #blocks  name
> 
>     179        0    3977216 mmcblk0
>     179        1      19456 mmcblk0p1
>     179        2    3885056 mmcblk0p2
> 
> Notice that the physical partition for /dev/mmcblk0p2 is huge but
> the file system is only 57MB.
> 
> How can I adjust my build and/or resize the file system to actually
> use the rest of the SD card?

I suspect a resize2fs call is needed in there. Since the SD card class in 
meta-raspberrypi was changed to use the actual ext2 rootfs image instead of 
creating a new one on the fly, this has become an issue. I would suggest filing 
the issue on the meta-raspberrypi github.

> Also, is it possible to just build the SD image much like I do for
> other devices like the BeagleBoard, albeit with different contents
> in /boot?  Sloshing around 4GB images is rather painful, plus it
> takes forever to DD it to the SD card.

I must be missing something - do you want the rootfs larger or don't you? If 
it's expanded it will take up 4GB minus the boot partition size so you're into 
a large dd again... 

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

