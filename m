Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA6E7E014AD
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 21:01:19 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r0N51HIN008805
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 22 Jan 2013 21:01:17 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.20.73) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.318.4; Tue, 22 Jan 2013 21:01:17 -0800
Message-ID: <50FF6A82.9090201@windriver.com>
Date: Tue, 22 Jan 2013 23:43:46 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Patrick Turley <PatrickTurley@gamestop.com>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
	<50F5992C.9070705@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D97A@GV1HQPEX03.babgsetc.pvt>
	<50F5A221.2070209@windriver.com> <50F6DF54.2020005@linux.intel.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370295@GV1HQPEX03.babgsetc.pvt>
	<50FEF7EC.6030601@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370A99@GV1HQPEX03.babgsetc.pvt>
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C370A99@GV1HQPEX03.babgsetc.pvt>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Build external module against Yocto kernel
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
X-List-Received-Date: Wed, 23 Jan 2013 05:01:20 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-01-22 9:26 PM, Patrick Turley wrote:
> On Jan 22, 2013, at 2:34 PM, Bruce Ashfield<bruce.ashfield@windriver.com>  wrote:
>> On 13-01-22 03:28 PM, Patrick Turley wrote:
>>> One problem I ran into … When I tried to execute "make scripts," I got a whole bunch of config questions that I *think* should have been answered with a .config file or something. Should I have copied out the .config file from the kernel work directory into the SDK installation before I ran that? Is that the "best" way to get around all the questions?
>>>
>>
>> Interesting. I haven't seen this myself, so just a couple of quick
>> questions:
>>
>>   - without the .config, did you still get a working set of hostprogs, and
>>     only had to suffer the warnings ?
>>
>>   - If the answer is yes, then the .config really doesn't matter for this
>>     and the approach of grabbing a .config should work fine or even
>>     having a dummy defconfig available with enough to keep the build
>>     happy.
>>
>> Definitely sounds like something we can address and it's worth putting into
>> bugzilla so it doesn't get lost.
>
> Below, please find a transcript of the commands I executed.
>
> You'll see that I installed the SDK, tried to "make scripts," and then got attacked with a storm of config questions. I cut off the transcript at the second question, but there are dozens that follow.
>
> There *is* a .config file in the SDK directory, and it is identical to the one in our kernel build directory:
>
> /home/pturley/yocto-mpu-build/tmp/work/dm8148_mpu-poky-linux-gnueabi/linux-ti81xx-psp-2.6.37-r0+spawnlabs+r0/git
>
> Unfortunately, I'm still something of a n00b when it comes to building the kernel. I suspect *most* of these questions are irrelevant to hostprogs, but I can't say that *all* of them are.
>
> If I just hold down the "Enter" key, I believe all the defaults are taken, and I eventually *do* get hostprogs that execute, but I don't know if they're appropriate to my kernel. (Again, I'm a n00b, so perhaps there's no effect at all.)
>

This will be fine, the defaults will work. The kernel build infrastructure
is picking up what it thinks is a change source -> to config and trying
to reconcile the differences.

If you throw in a 'make oldconfig' before you do the 'make scripts', does
that quiet things down a bit ?

Cheers,

Bruce

> --------------------
>
> $ pwd
> /home/pturley/yocto-mpu-build/tmp/deploy/sdk
>
> $ ls
> poky-eglibc-x86_64-arm-toolchain-1.3.sh
>
> $ sudo ./poky-eglibc-x86_64-arm-toolchain-1.3.sh
> Enter target directory for SDK (default: /opt/poky/1.3):
> You are about to install the SDK to "/opt/poky/1.3". Proceed[Y/n]?
> Extracting SDK...done
> Setting it up...done
> SDK has been successfully set up and is ready to be used.
>
> $ cd /opt/poky/1.3/sysroots/dm8148_mpu-poky-linux-gnueabi/usr/src/kernel
>
> $ ls -a
> .              firmware           lib             scripts
> ..             fs                 MAINTAINERS     security
> arch           include            Makefile        sound
> block          init               mm              System.map-2.6.37
> .config        ipc                Module.symvers  tools
> COPYING        Kbuild             net             uImage
> CREDITS        Kconfig            patches         usr
> crypto         kernel             README          virt
> Documentation  kernel-abiversion  REPORTING-BUGS
> drivers        kernel-image-name  samples
>
> $ sudo make scripts
>    HOSTCC  scripts/basic/fixdep
>    HOSTCC  scripts/basic/docproc
>    HOSTCC  scripts/kconfig/conf.o
>    HOSTCC  scripts/kconfig/kxgettext.o
>    SHIPPED scripts/kconfig/zconf.tab.c
>    SHIPPED scripts/kconfig/lex.zconf.c
>    SHIPPED scripts/kconfig/zconf.hash.c
>    HOSTCC  scripts/kconfig/zconf.tab.o
>    HOSTLD  scripts/kconfig/conf
> scripts/kconfig/conf --silentoldconfig Kconfig
> *
> * Restart config...
> *
> *
> * General setup
> *
> Prompt for development and/or incomplete code/drivers (EXPERIMENTAL) [Y/n/?] y
> Cross-compiler tool prefix (CROSS_COMPILE) []
> Local version - append to kernel release (LOCALVERSION) []
> Automatically append version information to the version string (LOCALVERSION_AUTO) [N/y/?] n
> Kernel compression mode
>> 1. Gzip (KERNEL_GZIP)
>    2. Bzip2 (KERNEL_BZIP2) (NEW)
>    3. LZMA (KERNEL_LZMA)
>    4. LZO (KERNEL_LZO)
> choice[1-4?]:
> Support for paging of anonymous memory (swap) (SWAP) [N/y/?] n
> System V IPC (SYSVIPC) [Y/n/?] y
> POSIX Message Queues (POSIX_MQUEUE) [Y/n/?] y
> BSD Process Accounting (BSD_PROCESS_ACCT) [Y/n/?] y
>    BSD Process Accounting version 3 file format (BSD_PROCESS_ACCT_V3) [Y/n/?] y
> Export task/process statistics through netlink (EXPERIMENTAL) (TASKSTATS) [Y/n/?] y
>    Enable per-task delay accounting (EXPERIMENTAL) (TASK_DELAY_ACCT) [Y/n/?] y
>    Enable extended accounting over taskstats (EXPERIMENTAL) (TASK_XACCT) [Y/n/?] y
>      Enable per-task storage I/O accounting (EXPERIMENTAL) (TASK_IO_ACCOUNTING) [Y/n/?] y
> Auditing support (AUDIT) [N/y/?] n
> Kernel .config support (IKCONFIG) [Y/n/m/?] y
>    Enable access to .config through /proc/config.gz (IKCONFIG_PROC) [Y/n/?] y
> Kernel log buffer size (16 =>  64KB, 17 =>  128KB) (LOG_BUF_SHIFT) [17] 17
> enable deprecated sysfs features to support old userspace tools (SYSFS_DEPRECATED) [N/y/?] n
> Kernel->user space relay support (formerly relayfs) (RELAY) [N/y/?] n
> Initial RAM filesystem and RAM disk (initramfs/initrd) support (BLK_DEV_INITRD) [Y/n/?] y
>    Initramfs source file(s) (INITRAMFS_SOURCE) []
> Optimize for size (CC_OPTIMIZE_FOR_SIZE) [Y/n/?] y
> Disable heap randomization (COMPAT_BRK) [Y/n/?] y
> Choose SLAB allocator
>    1. SLAB (SLAB)
>> 2. SLUB (Unqueued Allocator) (SLUB)
> choice[1-2?]: 2
> Profiling support (PROFILING) [Y/n/?] y
> OProfile system profiling (OPROFILE) [M/n/y/?] m
>    OProfile multiplexing support (EXPERIMENTAL) (OPROFILE_EVENT_MULTIPLEX) [N/y/?] (NEW)
>


