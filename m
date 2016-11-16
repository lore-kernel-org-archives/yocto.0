Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1532E00C1A; Wed, 16 Nov 2016 02:57:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98759E00BF8
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 02:57:07 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 9160168A01C; Wed, 16 Nov 2016 10:57:06 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id E66EE68A019;
	Wed, 16 Nov 2016 10:57:03 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 763B26740253;
	Wed, 16 Nov 2016 11:57:03 +0100 (CET)
To: yocto@yoctoproject.org
References: <9c7000d5-44f9-ab6c-6d87-c92531e6da0b@mlbassoc.com>
	<6edb9a2e-4e99-d92e-5844-4c6ca7a5a30e@gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <1a28d005-48f9-8181-f006-741bf7be2c6f@mlbassoc.com>
Date: Wed, 16 Nov 2016 11:57:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <6edb9a2e-4e99-d92e-5844-4c6ca7a5a30e@gmail.com>
Subject: Re: New error
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
X-List-Received-Date: Wed, 16 Nov 2016 10:57:09 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-11-16 07:47, Khem Raj wrote:
> Can you test out this patch for OE-Core
>
> https://github.com/kraj/openembedded-core/commit/b2d345d0217db0c2dda3b9b40824829116599568
>

Yes, this removes all the errors.

Thanks

> On 11/15/16 4:41 AM, Gary Thomas wrote:
>> I just ran a new build for one of my PowerPC targets and I'm getting errors
>> like these:
>>
>> ERROR: openssh-7.3p1-r0 do_package: runstrip:
>> ''powerpc-amltd-linux-gnuspe-strip' --remove-section=.comment
>> --remove-section=.note
>> '/build/diskstation_2016-11-15/tmp/work/p1022ds-amltd-linux-gnuspe/openssh/7.3p1-r0/package/usr/bin/scp.openssh''
>> strip command failed with 1 (b'powerpc-amltd-linux-gnuspe-strip:
>> /build/diskstation_2016-11-15/tmp/work/p1022ds-amltd-linux-gnuspe/openssh/7.3p1-r0/package/usr/bin/strW48QK:
>> Not enough room for program headers, try linking with
>> -N\npowerpc-amltd-linux-gnuspe-strip:/build/diskstation_2016-11-15/tmp/work/p1022ds-amltd-linux-gnuspe/openssh/7.3p1-r0/package/usr/bin/strW48QK[.interp]:
>> Bad value\n')
>> ERROR: coreutils-8.25-r0 do_package: runstrip:
>> ''powerpc-amltd-linux-gnuspe-strip' --remove-section=.comment
>> --remove-section=.note --strip-unneeded
>> '/build/diskstation_2016-11-15/tmp/work/ppce500v2-amltd-linux-gnuspe/coreutils/8.25-r0/package/usr/lib/coreutils/libstdbuf.so''
>> strip command failed with 1 (b'powerpc-amltd-linux-gnuspe-strip:
>> /build/diskstation_2016-11-15/tmp/work/ppce500v2-amltd-linux-gnuspe/coreutils/8.25-r0/package/usr/lib/coreutils/std1tFcO:
>> Not enough room for program headers, try linking with
>> -N\npowerpc-amltd-linux-gnuspe-strip:/build/diskstation_2016-11-15/tmp/work/ppce500v2-amltd-linux-gnuspe/coreutils/8.25-r0/package/usr/lib/coreutils/std1tFcO[.note.gnu.build-id]:
>> Bad value\n')
>> ERROR: eudev-3.2-r0 do_package: runstrip: ''powerpc-amltd-linux-gnuspe-strip'
>> --remove-section=.comment --remove-section=.note --strip-unneeded
>> '/build/diskstation_2016-11-15/tmp/work/ppce500v2-amltd-linux-gnuspe/eudev/3.2-r0/package/lib/libudev.so.1.6.3''
>> strip command failed with 1 (b'powerpc-amltd-linux-gnuspe-strip:
>> /build/diskstation_2016-11-15/tmp/work/ppce500v2-amltd-linux-gnuspe/eudev/3.2-r0/package/lib/stxt1rac:
>> Not enough room for program headers, try linking with
>> -N\npowerpc-amltd-linux-gnuspe-strip:/build/diskstation_2016-11-15/tmp/work/ppce500v2-amltd-linux-gnuspe/eudev/3.2-r0/package/lib/stxt1rac[.note.gnu.build-id]:
>> Bad value\n')
>>
>> Actually, I got 438 of them :-(
>>
>> Build Configuration:
>> BB_VERSION        = "1.32.0"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "universal"
>> TARGET_SYS        = "powerpc-amltd-linux-gnuspe"
>> MACHINE           = "p1022ds"
>> DISTRO            = "amltd"
>> DISTRO_VERSION    = "2.2+snapshot-20161115"
>> TUNE_FEATURES     = "m32 spe ppce500v2"
>> TARGET_FPU        = "ppc-efd"
>> meta              = "master:43e652f3d1fee5ce7fad67e6400315eab1b34270"
>> meta-amltd        = "master:697b2bc1467a311233f1da362aa4c8a2cccf52bf"
>> meta-diskstation  = "master:0839596be89af4da67fb7c5ab41337f1a382e5b5"
>> meta-freescale    = "master:979d079732949c49f7a859e93278287eb95fa056"
>>
>>
>> Questions:
>> * What's the best way to fix them?  I assume it's just some
>>   compiler/binutils option I need to adjust.  I tried comparing
>>   this build against the stock qemuppc, but it got no such errors
>>   and I don't see the difference (except for the CPU tuning of
>>   e500v2 vs 7400).
>> * If these are labeled 'ERROR', why do the packages continue
>>   to be built?  Indeed, I ended up with a complete build image
>>   (which I've not been able to test yet so I don't know if these
>>   errors actually break things)
>>
>> Thanks for any pointers
>>
>
>
>


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

