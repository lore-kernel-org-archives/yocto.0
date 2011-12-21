Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6A6AE00305
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 11:42:09 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Dec 2011 11:42:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="89051021"
Received: from unknown (HELO envy.home) ([10.255.12.115])
	by orsmga001.jf.intel.com with ESMTP; 21 Dec 2011 11:42:08 -0800
Message-ID: <4EF2367E.5080309@linux.intel.com>
Date: Wed, 21 Dec 2011 11:41:50 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1324493490.git.dvhart@linux.intel.com>
	<1df27b9bdc349f658a19645a4af6f73548203aca.1324493490.git.dvhart@linux.intel.com>
	<4EF2322C.5050801@windriver.com>
In-Reply-To: <4EF2322C.5050801@windriver.com>
X-Enigmail-Version: 1.3.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 4/9] linux-yocto-tiny: New kernel recipe for poky-tiny distro (INCOMPLETE)
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
X-List-Received-Date: Wed, 21 Dec 2011 19:42:10 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/21/2011 11:23 AM, Bruce Ashfield wrote:
> On 11-12-21 01:58 PM, Darren Hart wrote:
>> linux-yocto-tiny drops the linux-tools and sets the KMACHINE
>> branch to standard/tiny.
>>
>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>> ---
>>   meta/recipes-kernel/linux/linux-yocto-tiny/ata.cfg |    9 +
>>   .../recipes-kernel/linux/linux-yocto-tiny/core.cfg |   19 +
>>   .../linux/linux-yocto-tiny/debug.cfg               |    5 +
>>   .../linux/linux-yocto-tiny/devtmpfs.cfg            |    6 +
>>   .../linux/linux-yocto-tiny/e1000.cfg               |    7 +
>>   .../recipes-kernel/linux/linux-yocto-tiny/ext2.cfg |    1 +
>>   .../recipes-kernel/linux/linux-yocto-tiny/ext3.cfg |    2 +
>>   .../recipes-kernel/linux/linux-yocto-tiny/lzma.cfg |    3 +
>>   meta/recipes-kernel/linux/linux-yocto-tiny/net.cfg |   26 +
>>   .../linux/linux-yocto-tiny/qemux86/defconfig       |  613 ++++++++++++++++++++
>>   .../linux/linux-yocto-tiny/ramfs.cfg               |    6 +
>>   .../linux/linux-yocto-tiny/rtc-pc.cfg              |   13 +
>>   .../linux/linux-yocto-tiny/serial.cfg              |    7 +
>>   meta/recipes-kernel/linux/linux-yocto-tiny/smp.cfg |    7 +
>>   meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb  |   36 ++
>>   15 files changed, 760 insertions(+), 0 deletions(-)
>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/ata.cfg
>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/core.cfg
>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/debug.cfg
>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/devtmpfs.cfg
>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/e1000.cfg
>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/ext2.cfg
>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/ext3.cfg
>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/lzma.cfg
>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/net.cfg
>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/qemux86/defconfig
>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/ramfs.cfg
>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/rtc-pc.cfg
>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/serial.cfg
>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/smp.cfg
>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb
>>
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny/ata.cfg b/meta/recipes-kernel/linux/linux-yocto-tiny/ata.cfg
>> new file mode 100644
>> index 0000000..97e4d00
>> --- /dev/null
>> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny/ata.cfg
>> @@ -0,0 +1,9 @@
>> +# IDE disk support
>> +# Dependencies
>> +CONFIG_PCI=y
>> +CONFIG_BLOCK=y
>> +CONFIG_BLK_DEV_SD=y
>> +CONFIG_ATA=y
>> +CONFIG_ATA_SFF=y
>> +CONFIG_ATA_BMDMA=y
>> +CONFIG_ATA_PIIX=y
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny/core.cfg b/meta/recipes-kernel/linux/linux-yocto-tiny/core.cfg
>> new file mode 100644
>> index 0000000..7057218
>> --- /dev/null
>> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny/core.cfg
>> @@ -0,0 +1,19 @@
>> +# Basic facilities that shall be present in all kernels
>> +
>> +# Needed to execute... anything (like init)
>> +CONFIG_BINFMT_ELF=y
>> +
>> +# Needed by at least the telephony daemon
>> +CONFIG_SIGNALFD=y
>> +
>> +# At least bootlogd requires this
>> +CONFIG_UNIX98_PTYS=y
>> +
>> +# Required for basic IPC and pthread locking support
>> +CONFIG_SYSVIPC=y
>> +CONFIG_FUTEX=y
>> +CONFIG_RT_MUTEXES=y
>> +
>> +CONFIG_PROC_FS=y
>> +CONFIG_SYSFS=y
>> +
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny/debug.cfg b/meta/recipes-kernel/linux/linux-yocto-tiny/debug.cfg
>> new file mode 100644
>> index 0000000..886bfd9
>> --- /dev/null
>> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny/debug.cfg
>> @@ -0,0 +1,5 @@
>> +# Debug options
>> +# +98k bzImage
>> +CONFIG_PRINTK=y
>> +CONFIG_EARLY_PRINTK=y
>> +CONFIG_PRINTK_TIME=y
> 
> Taking the closer look that I promised. Did you build with printk
> completely disabled ? It used to produce invalid images, so I was
> curious to know if that has been fixed.

I have indeed, it works fine. I find that leaving it in is the better
option and just setting the LOGLEVEL in the kernel parameters if you
want a silent boot. You get all the boot time advantages while still
being able to debug your kernel.

EARLY_PRINTK and PRINTK_TIME might be something we make options.

> 
> Anytime I see debug, I always think 'optional' (i.e. like the cfg/debug.cfg
> that I've had in the past).

Yeah, CONFIG_PRINTK should move into "core policy" I think when we
define the tiny ktype.

> 
> 98k isn't much to add, but in a crunch, these could easily be made
> optional.
> 
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny/devtmpfs.cfg b/meta/recipes-kernel/linux/linux-yocto-tiny/devtmpfs.cfg
>> new file mode 100644
>> index 0000000..07632e2
>> --- /dev/null
>> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny/devtmpfs.cfg
>> @@ -0,0 +1,6 @@
>> +# For /dev and udev
>> +# Could eliminate for a static /dev tree
>> +# +1.5k bzImage
>> +CONFIG_HOTPLUG=y
>> +CONFIG_DEVTMPFS=y
>> +CONFIG_DEVTMPFS_MOUNT=y
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny/e1000.cfg b/meta/recipes-kernel/linux/linux-yocto-tiny/e1000.cfg
>> new file mode 100644
>> index 0000000..8e18bbb
>> --- /dev/null
>> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny/e1000.cfg
>> @@ -0,0 +1,7 @@
>> +# e1000 PCI network card support (qemu default)
>> +# FIXME: This appears in dmesg, but a probe fails
>> +# bzImage +31k
>> +CONFIG_PCI=y
>> +CONFIG_NETDEVICES=y
>> +CONFIG_NETDEV_1000=y
>> +CONFIG_E1000=y
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny/ext2.cfg b/meta/recipes-kernel/linux/linux-yocto-tiny/ext2.cfg
>> new file mode 100644
>> index 0000000..e35c36d
>> --- /dev/null
>> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny/ext2.cfg
>> @@ -0,0 +1 @@
>> +CONFIG_EXT2_FS=y
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny/ext3.cfg b/meta/recipes-kernel/linux/linux-yocto-tiny/ext3.cfg
>> new file mode 100644
>> index 0000000..df9dd64
>> --- /dev/null
>> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny/ext3.cfg
>> @@ -0,0 +1,2 @@
>> +# bzImage +61k
>> +CONFIG_EXT3_FS=y
> 
> As long as we don't end up breaking things down too much, this
> is fine. But if there are too many, classifying a set of filesystem
> options into named/useful configs works as well. i.e. "settopbox-fs"

I don't even use this one in the recipe, expecting RO fs or initramfs
usage. I left it to easily allow people to add it. The journal takes up
1MB, which is more than 25 of the rootfs :-)

> 
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny/lzma.cfg b/meta/recipes-kernel/linux/linux-yocto-tiny/lzma.cfg
>> new file mode 100644
>> index 0000000..f1bafe1
>> --- /dev/null
>> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny/lzma.cfg
>> @@ -0,0 +1,3 @@
>> +# bzImage -235k (-15% of bzImage size)
>> +CONFIG_KERNEL_LZMA=y
>> +
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny/net.cfg b/meta/recipes-kernel/linux/linux-yocto-tiny/net.cfg
>> new file mode 100644
>> index 0000000..ab6d1ee
>> --- /dev/null
>> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny/net.cfg
>> @@ -0,0 +1,26 @@
>> +# +246k bzImage
>> +
>> +# Basic socket support
>> +CONFIG_NET=y
>> +CONFIG_UNIX=y
>> +CONFIG_NETWORK_FILESYSTEMS=y
>> +CONFIG_NLATTR=y
>> +
>> +# INET TCP/IP
>> +CONFIG_INET=y
>> +CONFIG_TCP_CONG_CUBIC=y
>> +CONFIG_DEFAULT_TCP_CONG="cubic"
>> +
>> +# Disable certain new defaults
>> +# bzImage ~ -200k
>> +# Using allnoconfig internally would eliminate the need for this
>> +# CONFIG_XFRM is not set
>> +# CONFIG_IPV6 is not set
>> +# CONFIG_WIRELESS is not set
>> +# CONFIG_IPCOMP_XFRM is not set
>> +# IPSEC
>> +# CONFIG_INET_XFRM_MODE_TRANSPORT is not set
>> +# CONFIG_INET_XFRM_MODE_TUNNEL is not set
>> +# CONFIG_INET_XFRM_MODE_BEET is not set
>> +#
>> +# CONFIG_INET_DIAG is not set
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny/qemux86/defconfig b/meta/recipes-kernel/linux/linux-yocto-tiny/qemux86/defconfig
>> new file mode 100644
>> index 0000000..ba9ae04
>> --- /dev/null
>> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny/qemux86/defconfig
>> @@ -0,0 +1,613 @@
>> +#
>> +# Automatically generated make config: don't edit
>> +# Linux/i386 3.0.4 Kernel Configuration
>> +#
> 
> I can test this against the allnoconfig staging work, but so I'm clear,
> you went for the approach of a defconfig baseline (generated from
> allnoconfig?) and then re-enabling what you need/want ?

Right, there is nothing interesting in the defconfig, it's just there to
force a bunch of settings that the allnoconfig support will do once it's
in place.

<SNIP>

> 
> I don't see anything missing in there, but I see some options as
> enabled that surprised me (preempt none, ftrace (but these look
> largley like HAVE_* options) or "hardware" options that we can
> move to boards at some point. If the approach is what I mentioned
> above, then this all looks sane.

Correct.

> 
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny/ramfs.cfg b/meta/recipes-kernel/linux/linux-yocto-tiny/ramfs.cfg
>> new file mode 100644
>> index 0000000..96f4bd3
>> --- /dev/null
>> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny/ramfs.cfg
>> @@ -0,0 +1,6 @@
>> +CONFIG_BLK_DEV=y
>> +CONFIG_BLK_DEV_INITRD=y
>> +CONFIG_BLK_DEV_RAM=y
>> +CONFIG_BLK_DEV_RAM_COUNT=1
>> +CONFIG_BLK_DEV_RAM_SIZE=6144
>> +
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny/rtc-pc.cfg b/meta/recipes-kernel/linux/linux-yocto-tiny/rtc-pc.cfg
>> new file mode 100644
>> index 0000000..f667440
>> --- /dev/null
>> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny/rtc-pc.cfg
>> @@ -0,0 +1,13 @@
>> +# Dependencies
>> +CONFIG_ACPI=y
>> +CONFIG_HPET=y
>> +CONFIG_HPET_TIMER=y
>> +
>> +CONFIG_HPET_EMULATE_RTC=y
>> +CONFIG_RTC_LIB=y
>> +CONFIG_RTC_CLASS=y
>> +CONFIG_RTC_HCTOSYS=y
>> +CONFIG_RTC_HCTOSYS_DEVICE="rtc0"
>> +CONFIG_RTC_INTF_PROC=y
>> +CONFIG_RTC_INTF_DEV=y
>> +CONFIG_RTC_DRV_CMOS=y
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny/serial.cfg b/meta/recipes-kernel/linux/linux-yocto-tiny/serial.cfg
>> new file mode 100644
>> index 0000000..0a28dca
>> --- /dev/null
>> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny/serial.cfg
>> @@ -0,0 +1,7 @@
>> +CONFIG_SERIAL_8250=y
>> +CONFIG_SERIAL_8250_CONSOLE=y
>> +CONFIG_SERIAL_8250_NR_UARTS=4
>> +CONFIG_SERIAL_8250_RUNTIME_UARTS=4
>> +# CONFIG_SERIAL_8250_EXTENDED is not set
>> +CONFIG_SERIAL_CORE=y
>> +CONFIG_SERIAL_CORE_CONSOLE=y
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny/smp.cfg b/meta/recipes-kernel/linux/linux-yocto-tiny/smp.cfg
>> new file mode 100644
>> index 0000000..a82096e
>> --- /dev/null
>> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny/smp.cfg
>> @@ -0,0 +1,7 @@
>> +# bzImage +104k
>> +CONFIG_HOTPLUG=y
>> +CONFIG_HOTPLUG_CPU=y
>> +CONFIG_SMP=y
>> +CONFIG_SCHED_SMT=y
>> +CONFIG_SCHED_MC=y
> 
> All looks sane. At some point, there could be more arch specific
> items found here.
> 

Thanks for the review Bruce.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

