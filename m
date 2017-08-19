Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 383CAE00CCB; Fri, 18 Aug 2017 19:31:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f42.google.com (mail-pg0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A291E00BB7
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 19:31:38 -0700 (PDT)
Received: by mail-pg0-f42.google.com with SMTP id t3so46169337pgt.0
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 19:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=qaXPum/RHBMbVyjhuPmH0rSyeETFF/173u+gmYzPuj0=;
	b=uRzFabNJ5PXNzw6AwQ+ouf8KB824hXLmvF52eRXAJd+GP36MDLD4v10/g/iSHvygnw
	FdfapVot7qG1I9c4oBAY9PJlvlwPmhSWXPnYRBcHQO01cTHiSQ0Sx9FcGrRRa8wh+iXr
	6tAkKBjgvmPMW1vJ5yO4W+vXhbuhPAcZ7G3zBCRydQ66TeaaFpqdsFctgkmVJkHibf4Y
	3a2DTAWyOYEZBIBxvwO1geYLYZVooLGq7r0uTbSLq1/70f94Z0LZ8qpRI/sobIXLUboq
	35sGM+k2jF3Qyn6QOf1sQsg+HwyxZb+LuasvkAbihNUxPlQ0Inx7GvohXEuzZYZy9fzj
	T5mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=qaXPum/RHBMbVyjhuPmH0rSyeETFF/173u+gmYzPuj0=;
	b=gKJjCgCLhTsDAa1zwRTKMPY8JLjpkHvOqowInVDzsOhHSmYEwz2YeRxSVWJop7e277
	yiWFviCbSN04AZb0uYUMu88CMLc1HE1S+GvegCnJK2Ri9IYFBmmPYBDpAhbcPV0SNJLq
	qBU211K2r+1WSCMeO/pcjtzRcU5BQyoLsVQzo/njMrtOZO8YAUw4bRVJM48C4KlZD4aW
	m50kYJyxYa6TDjU9M3QrLN63GYrBdeToMK+QLrtUbYYwZi0wF49BhuvXrFEVHmi742DT
	IJ4Be2TwWmHFN9uTM+MhGiDIF2pPtbFud+/CeU0Eag2+oi7UiAQeHtHTjeJV8AyHQPBf
	q9HA==
X-Gm-Message-State: AHYfb5gLqf3yMjJjZ4ckvQrw0Tm9GRSV+/WcG7d1Fe+h45l/rzAYeI2V
	sfSlRMeX3GmmhW7eTxU=
X-Received: by 10.84.128.76 with SMTP id 70mr11532062pla.56.1503109897871;
	Fri, 18 Aug 2017 19:31:37 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:7ae4:ff:fe2d:ca29?
	([2001:8003:804a:b500:7ae4:ff:fe2d:ca29])
	by smtp.gmail.com with ESMTPSA id v12sm643679pgf.6.2017.08.18.19.31.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Aug 2017 19:31:37 -0700 (PDT)
To: ed.bartosh@linux.intel.com
References: <CAByQQ_q9bBxrK6gzn2nAj2QK9PEiOfyt_09Le27DvXpU4_54hg@mail.gmail.com>
	<1502979391.28682.1.camel@linux.intel.com>
	<3e39f3ca-9228-769f-0b39-126fb124d280@gmail.com>
	<20170818085833.GA6976@linux.intel.com>
From: Riko <antonius.riko@gmail.com>
Message-ID: <be5970b8-895c-972e-2b00-2f3d9fb5147b@gmail.com>
Date: Sat, 19 Aug 2017 10:31:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170818085833.GA6976@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dd to nand flash chip?
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
X-List-Received-Date: Sat, 19 Aug 2017 02:31:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

When I did fdisk -l here was what I got :

====

Disk /dev/ram0: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/ram1: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/ram2: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/ram3: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/ram4: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/ram5: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/ram6: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/ram7: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/ram8: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/ram9: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/ram10: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/ram11: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/ram12: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/ram13: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/ram14: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/ram15: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/mmcblk0: 14.6 GiB, 15640559616 bytes, 30547968 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x156b2128

Device         Boot Start     End Sectors  Size Id Type
/dev/mmcblk0p1 *        8   42605   42598 20.8M  c W95 FAT32 (LBA)
/dev/mmcblk0p2      42608 2171617 2129010    1G 83 Linux


Disk /dev/mmcblk1: 3.6 GiB, 3825205248 bytes, 7471104 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x19fcf925

Device         Boot Start     End Sectors  Size Id Type
/dev/mmcblk1p1 *        8   32775   32768   16M  c W95 FAT32 (LBA)
/dev/mmcblk1p2      32776 1546183 1513408  739M 83 Linux


Disk /dev/mmcblk1boot1: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/mmcblk1boot0: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/sda: 496 MiB, 520092160 bytes, 1015805 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x00000000

=====

I boot from :

Disk /dev/mmcblk0: 14.6 GiB, 15640559616 bytes, 30547968 sectors

but I can't boot from : Disk /dev/mmcblk1 which is NAND flash chip.

Is there a partition problem here ? thanks

I saw something strange on NAND flash partition :

Disk /dev/mmcblk1boot1: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/mmcblk1boot0: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

I tried to fdisk it but can not, any other option for deleting it ?

Thanks


On 18/08/17 16:58, Ed Bartosh wrote:
> On Fri, Aug 18, 2017 at 11:40:58AM +0800, Riko wrote:
>> Here's the boot messages :
>>
>> ===
>>
>> VFS: PARTUUID= is invalid.
>> Expected PARTUUID=<valid-uuid-id>[/PARTNROFF=%d]
>> Disabling rootwait; root= is invalid.
>> VFS: Cannot open root device "PARTUUID=" or unknown-block(0,0): error -6
> Looks like you have empty PARTUUID in the kernel command line. Which wks
> file do you use for this image? Which layers? Can you show your
> bootloader config?
>
>> Please append a correct "root=" boot option; here are the available
>> partitions:
>> 0100            4096 ram0 (driver?)
>> 0101            4096 ram1 (driver?)
>> 0102            4096 ram2 (driver?)
>> 0103            4096 ram3 (driver?)
>> 0104            4096 ram4 (driver?)
>> 0105            4096 ram5 (driver?)
>> 0106            4096 ram6 (driver?)
>> 0107            4096 ram7 (driver?)
>> 0108            4096 ram8 (driver?)
>> 0109            4096 ram9 (driver?)
>> 010a            4096 ram10 (driver?)
>> 010b            4096 ram11 (driver?)
>> 010c            4096 ram12 (driver?)
>> 010d            4096 ram13 (driver?)
>> 010e            4096 ram14 (driver?)
>> 010f            4096 ram15 (driver?)
>> b300         3735552 mmcblk1  driver: mmcblk
>>    b301           16384 mmcblk1p1 2848be0f-01
>>    b302          756704 mmcblk1p2 2848be0f-02
>> b310            4096 mmcblk1boot1 (driver?)
>> b308            4096 mmcblk1boot0 (driver?)
>> VFS: Unable to mount root fs on unknown-block(0,0)
>> User configuration error - no valid root filesystem found
>> Kernel panic - not syncing: Invalid configuration from end user
>> prevents conting
>> CPU: 0 PID: 1 Comm: swapper Not tainted 4.8.12-yocto-standard #3
>> Hardware name: Generic AM33XX (Flattened Device Tree)
>> [<c010f260>] (unwind_backtrace) from [<c010c11c>] (show_stack+0x20/0x24)
>> [<c010c11c>] (show_stack) from [<c0493068>] (dump_stack+0x20/0x28)
>> [<c0493068>] (dump_stack) from [<c01f20f4>] (panic+0xc0/0x22c)
>> [<c01f20f4>] (panic) from [<c0f013ac>] (mount_block_root+0x19c/0x274)
>> [<c0f013ac>] (mount_block_root) from [<c0f0163c>] (mount_root+0xd0/0x124)
>> [<c0f0163c>] (mount_root) from [<c0f01810>] (prepare_namespace+0x180/0x1c0)
>> [<c0f01810>] (prepare_namespace) from [<c0f00f3c>]
>> (kernel_init_freeable+0x220/)
>> [<c0f00f3c>] (kernel_init_freeable) from [<c0964fb8>]
>> (kernel_init+0x18/0x11c)
>> [<c0964fb8>] (kernel_init) from [<c01078b8>] (ret_from_fork+0x14/0x3c)
>> ---[ end Kernel panic - not syncing: Invalid configuration from end
>> user preveng
>>
>> =====
>>
>> How to fix it ? thanks
>>
>>
>> On 17/08/17 22:16, Leonardo Sandoval wrote:
>>> On Thu, 2017-08-17 at 18:37 +0800, Riko Ho wrote:
>>>> Dear Yocto Team Members，
>>>>
>>>> I tried to dd *.wic to nand flash but always got kernel panic, it can
>>>> not find rootfs
>>>> when I dd the same file to sd card, it worked.
>>>>
>> >from the bootloader command prompt, you may need to change the root
>>> kernel parameter and point to the device where the filesystem resides.
>>>
>>>
>>>> I copy only *.wic file to usb drive n dd it.
>>>> Do I need the whole directory of images for dd? or I need hddimg?
>>>>
>>>> Regards,
>>>> Riko
>>>>
>> -- 
>> /*****
>> Sent By
>> Ubuntu 16.04 LTS
>> Kernel 4.4.0-92-generic
>> Regards,
>> Riko H
>> *****/
>>
>> -- 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

-- 
/*****
Sent By
Ubuntu 16.04 LTS
Kernel 4.4.0-92-generic
Regards,
Riko H
*****/


