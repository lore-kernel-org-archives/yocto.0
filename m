Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8DF8E00C89; Thu, 17 Aug 2017 20:41:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77B78E00726
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 20:41:04 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id y192so12859207pgd.1
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 20:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=WA9bNhaOhcDhFOknYz0ZWi+tvbplOr6Oalmir5xMGaM=;
	b=VeXIzD7H6oxLl9Sjs5u5bA3eEV5loqlayyL4U9lqPr/vw0WYg7KqNq1Rurz3kIABqL
	zxx4CoZzrLyAY/SgrmsLb+Tm6G8gn56/bqW9JUXxjqr9vMjXd/ovCIV4z32lSHyKHiDr
	jbjDT/3jxAtzdRmB5KM1WnRZGzDNidkjf/5/CJUAN7bthtOWAyWPXOGk7tuRKtoV/KlL
	zCF/E9uHADC217RX6WolpsaaowXbJzW2dbY3519Fmvf6QfotRsmtzGiBm9J0MJ+k2HMz
	fHRIYbXVN5UTYnXylucJLzu6Av6MlohvPijuXvjH+674MmqaV+bGxILNzQQefJGx2GoC
	yQpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=WA9bNhaOhcDhFOknYz0ZWi+tvbplOr6Oalmir5xMGaM=;
	b=dnOm0vLPJfM8/0Hgp+3/wdH/LrZISPPq7MkBtyp/50TcVjAkFq7e6x36Vg1EkEY3th
	UtOqIq/O0IxYyXVI9Sceb8DQhyBcoaN+89qyndhtdz//sNvCiDUu/wJyzEKhw7jNw6Gx
	0yP8LiHti1pXZBhWJrlWRUNd+3f3gDoYlljR5LJ+ae5tLJqR3btHv7d1ANb9kMuKyJ79
	p9BceyTzId5w2VmSHtYGboZvOJMiJzb7qU8WK1ME9C4dw1Rk2iZzyLLQpCPcP9tedeNB
	Jy0rx6mTOLW9n5NP8CeIB5fGQNDECJ9Xm32/KdqIztJdL7XYdCt86+ZX/ixazOkTFzcn
	hxpw==
X-Gm-Message-State: AHYfb5jo8gh3Y3yWbMUKfC2XzrZrBV0OseuvI2Sm7ZiSxQh7iuW6y79Z
	T6WWAwOKs3YUigSI1gA=
X-Received: by 10.98.36.146 with SMTP id k18mr7522248pfk.282.1503027663491;
	Thu, 17 Aug 2017 20:41:03 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:7ae4:ff:fe2d:ca29?
	([2001:8003:804a:b500:7ae4:ff:fe2d:ca29])
	by smtp.gmail.com with ESMTPSA id
	d69sm8481054pfe.49.2017.08.17.20.41.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 17 Aug 2017 20:41:02 -0700 (PDT)
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
References: <CAByQQ_q9bBxrK6gzn2nAj2QK9PEiOfyt_09Le27DvXpU4_54hg@mail.gmail.com>
	<1502979391.28682.1.camel@linux.intel.com>
From: Riko <antonius.riko@gmail.com>
Message-ID: <3e39f3ca-9228-769f-0b39-126fb124d280@gmail.com>
Date: Fri, 18 Aug 2017 11:40:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <1502979391.28682.1.camel@linux.intel.com>
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
X-List-Received-Date: Fri, 18 Aug 2017 03:41:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Here's the boot messages :

===

VFS: PARTUUID= is invalid.
Expected PARTUUID=<valid-uuid-id>[/PARTNROFF=%d]
Disabling rootwait; root= is invalid.
VFS: Cannot open root device "PARTUUID=" or unknown-block(0,0): error -6
Please append a correct "root=" boot option; here are the available 
partitions:
0100            4096 ram0 (driver?)
0101            4096 ram1 (driver?)
0102            4096 ram2 (driver?)
0103            4096 ram3 (driver?)
0104            4096 ram4 (driver?)
0105            4096 ram5 (driver?)
0106            4096 ram6 (driver?)
0107            4096 ram7 (driver?)
0108            4096 ram8 (driver?)
0109            4096 ram9 (driver?)
010a            4096 ram10 (driver?)
010b            4096 ram11 (driver?)
010c            4096 ram12 (driver?)
010d            4096 ram13 (driver?)
010e            4096 ram14 (driver?)
010f            4096 ram15 (driver?)
b300         3735552 mmcblk1  driver: mmcblk
   b301           16384 mmcblk1p1 2848be0f-01
   b302          756704 mmcblk1p2 2848be0f-02
b310            4096 mmcblk1boot1 (driver?)
b308            4096 mmcblk1boot0 (driver?)
VFS: Unable to mount root fs on unknown-block(0,0)
User configuration error - no valid root filesystem found
Kernel panic - not syncing: Invalid configuration from end user prevents 
conting
CPU: 0 PID: 1 Comm: swapper Not tainted 4.8.12-yocto-standard #3
Hardware name: Generic AM33XX (Flattened Device Tree)
[<c010f260>] (unwind_backtrace) from [<c010c11c>] (show_stack+0x20/0x24)
[<c010c11c>] (show_stack) from [<c0493068>] (dump_stack+0x20/0x28)
[<c0493068>] (dump_stack) from [<c01f20f4>] (panic+0xc0/0x22c)
[<c01f20f4>] (panic) from [<c0f013ac>] (mount_block_root+0x19c/0x274)
[<c0f013ac>] (mount_block_root) from [<c0f0163c>] (mount_root+0xd0/0x124)
[<c0f0163c>] (mount_root) from [<c0f01810>] (prepare_namespace+0x180/0x1c0)
[<c0f01810>] (prepare_namespace) from [<c0f00f3c>] 
(kernel_init_freeable+0x220/)
[<c0f00f3c>] (kernel_init_freeable) from [<c0964fb8>] 
(kernel_init+0x18/0x11c)
[<c0964fb8>] (kernel_init) from [<c01078b8>] (ret_from_fork+0x14/0x3c)
---[ end Kernel panic - not syncing: Invalid configuration from end user 
preveng

=====

How to fix it ? thanks


On 17/08/17 22:16, Leonardo Sandoval wrote:
> On Thu, 2017-08-17 at 18:37 +0800, Riko Ho wrote:
>> Dear Yocto Team Members，
>>
>> I tried to dd *.wic to nand flash but always got kernel panic, it can
>> not find rootfs
>> when I dd the same file to sd card, it worked.
>>
> from the bootloader command prompt, you may need to change the root
> kernel parameter and point to the device where the filesystem resides.
>
>
>> I copy only *.wic file to usb drive n dd it.
>> Do I need the whole directory of images for dd? or I need hddimg?
>>
>> Regards,
>> Riko
>>
>

-- 
/*****
Sent By
Ubuntu 16.04 LTS
Kernel 4.4.0-92-generic
Regards,
Riko H
*****/


