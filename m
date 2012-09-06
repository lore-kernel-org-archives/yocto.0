Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B92D0E0027F
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 22:27:47 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-84-143.range81-153.btcentralplus.com
	[81.153.84.143]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id A21019ADE
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 06:27:32 +0100 (BST)
Message-ID: <50483443.2050809@r-finger.com>
Date: Thu, 06 Sep 2012 06:27:31 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5047970C.8010208@mlbassoc.com> <2238601.rFqqxpWrI4@helios>
	<5047CAA9.1000708@eumx.net>
In-Reply-To: <5047CAA9.1000708@eumx.net>
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
X-List-Received-Date: Thu, 06 Sep 2012 05:27:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/09/12 22:56, Jack Mitchell wrote:
> On 05/09/2012 22:46, Paul Eggleton wrote:
>> On Wednesday 05 September 2012 12:16:44 Gary Thomas wrote:
>>> I just built Yocto/Poky for the raspberrypi, following the
>>> recent thread on this list.  I noticed that the resulting SD
>>> image is ~4GB, but most of that space seems to be unused:
>>>
>>>     $ ssh root@192.168.1.150
>>>     Warning: Permanently added '192.168.1.150' (RSA) to the list of
>>> known
>>> hosts. root@192.168.1.150's password:
>>>     root@raspberrypi:~# df
>>>     Filesystem           1K-blocks      Used Available Use% Mounted on
>>>     /dev/root                57388     46754      7718  86% /
>>>     none                     93964       156     93808   0% /dev
>>>     /dev/mmcblk0p2           57388     46754      7718  86%
>>> /media/mmcblk0p2
>>>     /dev/mmcblk0p1           19400      8928     10472  46%
>>> /media/mmcblk0p1
>>>     tmpfs                    93964        56     93908   0%
>>> /var/volatile
>>>     tmpfs                    93964         0     93964   0% /dev/shm
>>>     tmpfs                    93964         0     93964   0% /media/ram
>>>     root@raspberrypi:~# cat /proc/partitions
>>>     major minor  #blocks  name
>>>
>>>      179        0    3977216 mmcblk0
>>>      179        1      19456 mmcblk0p1
>>>      179        2    3885056 mmcblk0p2
>>>
>>> Notice that the physical partition for /dev/mmcblk0p2 is huge but
>>> the file system is only 57MB.
>>>
>>> How can I adjust my build and/or resize the file system to actually
>>> use the rest of the SD card?
>> I suspect a resize2fs call is needed in there. Since the SD card class in
>> meta-raspberrypi was changed to use the actual ext2 rootfs image
>> instead of
>> creating a new one on the fly, this has become an issue. I would
>> suggest filing
>> the issue on the meta-raspberrypi github.
>>
>>> Also, is it possible to just build the SD image much like I do for
>>> other devices like the BeagleBoard, albeit with different contents
>>> in /boot?  Sloshing around 4GB images is rather painful, plus it
>>> takes forever to DD it to the SD card.
>> I must be missing something - do you want the rootfs larger or don't
>> you? If
>> it's expanded it will take up 4GB minus the boot partition size so
>> you're into
>> a large dd again...
>>
>> Cheers,
>> Paul
>>
> 
> I think what he means (or this is what I would like to see ;) ) is a
> boot.tar.gz and a rootfs.tar.gz which can then be extracted straight
> onto the partitions? 

For the rootfs, you can just add IMAGE_FSTYPES += "tar.bz2" somewhere
suitable; I tend to do that for all my images, as it makes it easy to
examine the rootfs contents.

Tomas





Hence only a ~40mb boot write and ~50mb rootfs
> write rather than a 4GB dd slog.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


