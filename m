Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CB32E00A03; Thu, 11 Jun 2015 05:27:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8A1EE009EB
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 05:27:34 -0700 (PDT)
Received: by lbbqq2 with SMTP id qq2so3212050lbb.3
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 05:27:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=zEfJrGMjeG2jGjGO6uRYDifE2H8u7RnZLkYZX93TzS4=;
	b=Q1KcX3BIW6zR8oq70eH5etITsoKgofAne9y0ycqYRP/5qcBuepHt/MV7BZF11v9ZlV
	c6NazC6BByMnmgWNaFdRBwos7NI37X7cjFks1FVa+ub3JUb7VgYG3p6Ey8zTcImSjfrQ
	J7zOqvYvmtIa+r7luERT5LOUv/LZ7w5m1T2ShVn0V6c8vS76QjxWZx8WWd3QhX31DQTv
	eaKboS5xqoy/Olw0yk/LE6x4PjTiijltVp5acdWtn2Ye69H8+nxQquvLTnwwE4e6pnx3
	iFiB8iWu8n5Msy6/26ccRds6Zq7Rlbq7C/x+yo5Qz6K5oaKrxDcSKzGYCpYWTFhzyKSq
	Z+TA==
X-Gm-Message-State: ALoCoQne7dreN25AVh1q/JkYM0TSWFJks5KdrbOfDNcBMqMeC5qic0s85pNXd2UYkYyP1k0LRbaN
MIME-Version: 1.0
X-Received: by 10.152.7.7 with SMTP id f7mr9737321laa.106.1434025652302; Thu,
	11 Jun 2015 05:27:32 -0700 (PDT)
Received: by 10.25.141.16 with HTTP; Thu, 11 Jun 2015 05:27:31 -0700 (PDT)
In-Reply-To: <CAGMdoFk5-8efJDZ17i_Oj6TQSTR9nOTPRqGqT1AB=kM_qepp8A@mail.gmail.com>
References: <CAGMdoFnO-ikosPoL8ZRn6QDYxp=re3Mp6CxpEKOVQAR8Hqn_4Q@mail.gmail.com>
	<CA+aJhH0RO8MTvXOt-F1x_YCTVmaPnsv6gf7hKU0Oqfoi4WVWjQ@mail.gmail.com>
	<CAGMdoFk5-8efJDZ17i_Oj6TQSTR9nOTPRqGqT1AB=kM_qepp8A@mail.gmail.com>
Date: Thu, 11 Jun 2015 22:27:31 +1000
Message-ID: <CA+aJhH2zRU=w9FLsM=HB9e-0ThwCzA8KEN_evwQQ+JEmU0ko0A@mail.gmail.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: Edward Wingate <edwingate8@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Limit RAM for Linux
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
X-List-Received-Date: Thu, 11 Jun 2015 12:27:37 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 10, 2015 at 2:03 AM, Edward Wingate <edwingate8@gmail.com> wrote:
> Thanks, Nathan, for your help. It worked, with a little oddity I don't
> understand.
>
> In my uEnv.txt, I set both fdt_high and initrd_high to 0x10000000 and
> fdt/initrd are now loaded to 1st 256 MB:
>    Loading Kernel Image ... OK
>    Loading Ramdisk to 0f44c000, end 0ffff2f2 ... OK
>    Loading Device Tree to 0f443000, end 0f44bf40 ... OK
>
> However, with bootarg "mem=256MB", the kernel doesn't boot.
> With "mem=257M", it does:
>
> /proc/iomem:
> 00000000-100fffff : System RAM
>    00008000-00584b03 : Kernel code
>    005b6000-0061d5df : Kernel data
>
> I'd be OK with this, but just want to understand why I can't specify
> mem=256M?  I could probably also lower initrd_high and fdt_high a bit
> more to make mem=256M work, but why would that be necessary?

Not sure it sounds like something might not be accounting for the
first 0x8000 for interrupts or something, what error/messages do you
see when it fails to boot? or do you see nothing output on the serial
port?

I tried setting mem=256M with qemu, and it has no issues:
[    0.000000] Kernel command line: earlyprintk root=/dev/ram rw
console=ttyPS0 mem=256M
[    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)
[    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)
[    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
[    0.000000] Memory: 248948K/262144K available (4282K kernel code,
220K rwdata, 1336K rodata, 192K init, 192K bss, 13196K reserved, 0K
highmem)

Which leads me to think its an issue with how u-boot is booting the
kernel. (qemu puts the initrd and dtb at the bottom of memory instead
of the top)

>
> Also, in the device tree entry for memory, should I leave "reg = <0x0
> 0x20000000>" or change that to reflect 256MB?  Changing it to "reg =
> <0x0 0x10000000>" didn't seem to have any effect.  The mem bootarg
> seems to be the thing that actually works to limit the amount of
> memory Linux sees.

You shouldn't really have to change the device-tree to limit the
memory seen or used by the kernel. But it should still have an effect
on the amount of memory the kernel sees, if you observe that changing
the device tree has no result you might want to check to make sure
that you are loading the changed device-tree and or that the device
tree is being generated correctly (dtc -I dtb -O dts <dtbfile>).

Regards,
Nathan

>
>
> On Mon, Jun 8, 2015 at 9:45 PM, Nathan Rossi <nathan@nathanrossi.com> wrote:
>> On Tue, Jun 9, 2015 at 4:06 AM, Edward Wingate <edwingate8@gmail.com> wrote:
>>
>> Those values are generated via u-boot based on the value of fdt_high
>> and initrd_high which are set in the u-boot environment. (At least for
>> Zynq)
>>
>> If you have a look at the default environment you will see them set to
>> 0x20000000:
>> http://git.denx.de/?p=u-boot.git;a=blob;f=include/configs/zynq-common.h;h=1a52e7d538261a9d36b078d61e00e60bf8918227;hb=HEAD#l217
>>
>> You can override those environment variables with your uEnv.txt file,
>> setting it to 0x10000000 will make sure they fdt/initrd is loaded into
>> the first 256M.
>>
>> Regards,
>> Nathan
>>

