Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D5EBE01385
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 11:16:28 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 273A2F811FF; Wed,  5 Sep 2012 12:16:27 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8C887F811EA;
	Wed,  5 Sep 2012 12:16:26 -0600 (MDT)
Message-ID: <5047970C.8010208@mlbassoc.com>
Date: Wed, 05 Sep 2012 12:16:44 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: raspberrypi image questions
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
X-List-Received-Date: Wed, 05 Sep 2012 18:16:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I just built Yocto/Poky for the raspberrypi, following the
recent thread on this list.  I noticed that the resulting SD
image is ~4GB, but most of that space seems to be unused:

   $ ssh root@192.168.1.150
   Warning: Permanently added '192.168.1.150' (RSA) to the list of known hosts.
   root@192.168.1.150's password:
   root@raspberrypi:~# df
   Filesystem           1K-blocks      Used Available Use% Mounted on
   /dev/root                57388     46754      7718  86% /
   none                     93964       156     93808   0% /dev
   /dev/mmcblk0p2           57388     46754      7718  86% /media/mmcblk0p2
   /dev/mmcblk0p1           19400      8928     10472  46% /media/mmcblk0p1
   tmpfs                    93964        56     93908   0% /var/volatile
   tmpfs                    93964         0     93964   0% /dev/shm
   tmpfs                    93964         0     93964   0% /media/ram
   root@raspberrypi:~# cat /proc/partitions
   major minor  #blocks  name

    179        0    3977216 mmcblk0
    179        1      19456 mmcblk0p1
    179        2    3885056 mmcblk0p2

Notice that the physical partition for /dev/mmcblk0p2 is huge but
the file system is only 57MB.

How can I adjust my build and/or resize the file system to actually
use the rest of the SD card?

Also, is it possible to just build the SD image much like I do for
other devices like the BeagleBoard, albeit with different contents
in /boot?  Sloshing around 4GB images is rather painful, plus it
takes forever to DD it to the SD card.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

