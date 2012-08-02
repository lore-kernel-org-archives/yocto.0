Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A840E00289
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 09:46:04 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Aug 2012 09:46:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="176252124"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 02 Aug 2012 09:46:03 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 2 Aug 2012 09:46:03 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.231]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.210]) with mapi id
	14.01.0355.002; Thu, 2 Aug 2012 09:46:02 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [yocto] [PATCH 1/1] [KERNEL] meta: Crystal Forest Machine
	Created.
Thread-Index: AQHNcBmAcgU9PGztGkeXAUHia8q2tZdGB1UAgACz6fA=
Date: Thu, 2 Aug 2012 16:46:02 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20AD43527@ORSMSX105.amr.corp.intel.com>
References: <cover.1343847920.git.kishore.k.bodke@intel.com>
	<21e6c2bcd419609619b45491918f9bfc5fa6d4a7.1343847920.git.kishore.k.bodke@intel.com>
	<5019B476.8080709@linux.intel.com>
In-Reply-To: <5019B476.8080709@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] [KERNEL] meta: Crystal Forest Machine Created.
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
X-List-Received-Date: Thu, 02 Aug 2012 16:46:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Darren Hart [mailto:dvhart@linux.intel.com]
>Sent: Wednesday, August 01, 2012 3:58 PM
>To: Bodke, Kishore K
>Cc: yocto@yoctoproject.org; bruce.ashfield@windriver.com
>Subject: Re: [yocto] [PATCH 1/1] [KERNEL] meta: Crystal Forest Machine
>Created.
>
>Hi Kishore,
>
>On 08/01/2012 12:15 PM, kishore.k.bodke@intel.com wrote:
>> From: Kishore Bodke <kishore.k.bodke@intel.com>
>>
>> Initial checkin for the new Crystal Forest Machine Branch.
>>
>> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
>> ---
>>  .../bsp/crystalforest/crystalforest-preempt-rt.scc |   15 +++++
>>  .../bsp/crystalforest/crystalforest-standard.scc   |   10 ++++
>>  .../bsp/crystalforest/crystalforest.cfg            |   63 +++++++++++++=
+++++++
>>  .../bsp/crystalforest/crystalforest.scc            |   14 +++++
>>  4 files changed, 102 insertions(+)
>>  create mode 100644 meta/cfg/kernel-
>cache/bsp/crystalforest/crystalforest-preempt-rt.scc
>>  create mode 100644 meta/cfg/kernel-
>cache/bsp/crystalforest/crystalforest-standard.scc
>>  create mode 100644 meta/cfg/kernel-
>cache/bsp/crystalforest/crystalforest.cfg
>>  create mode 100644 meta/cfg/kernel-
>cache/bsp/crystalforest/crystalforest.scc
>>
>> diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preem=
pt-
>rt.scc b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-
>rt.scc
>> new file mode 100644
>> index 0000000..6c250af
>> --- /dev/null
>> +++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-
>rt.scc
>> @@ -0,0 +1,15 @@
>> +define KMACHINE crystalforest
>> +define KTYPE preempt-rt
>> +define KARCH x86_64
>> +
>> +# no new branch required, re-use the ktypes/preempt-rt branch
>> +include ktypes/preempt-rt
>> +include bsp/common-pc-64/common-pc-64.scc
>> +
>> +include crystalforest.scc
>> +
>> +# default policy for preempt-rt kernels
>> +include cfg/usb-mass-storage.scc
>> +include cfg/boot-live.scc
>> +include features/latencytop/latencytop.scc
>> +include features/profiling/profiling.scc
>> diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-
>standard.scc b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-
>standard.scc
>> new file mode 100644
>> index 0000000..9d24c76
>> --- /dev/null
>> +++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
>> @@ -0,0 +1,10 @@
>> +define KMACHINE crystalforest
>> +define KTYPE standard
>> +define KARCH x86_64
>> +
>> +include bsp/common-pc-64/common-pc-64-standard
>> +branch crystalforest
>> +
>> +include crystalforest.scc
>> +
>> +# default policy for standard kernels
>> diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
>b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
>> new file mode 100644
>> index 0000000..341cc20
>> --- /dev/null
>> +++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
>> @@ -0,0 +1,63 @@
>> +CONFIG_PRINTK=3Dy
>> +
>> +# Basic hardware support for the box - network, USB, PCI, sound
>> +CONFIG_NETDEVICES=3Dy
>> +CONFIG_ATA=3Dy
>> +CONFIG_ATA_GENERIC=3Dy
>> +CONFIG_ATA_SFF=3Dy
>> +CONFIG_PCI=3Dy
>> +CONFIG_MMC=3Dy
>> +CONFIG_MMC_SDHCI=3Dy
>> +CONFIG_USB_SUPPORT=3Dy
>> +CONFIG_USB=3Dy
>
>USB support should be pulled in using the various usb scc files Tom
>created relatively recently.
>
>> +CONFIG_USB_ARCH_HAS_EHCI=3Dy
>> +CONFIG_R8169=3Dy
>> +CONFIG_PATA_SCH=3Dy
>> +CONFIG_MMC_SDHCI_PCI=3Dy
>> +CONFIG_USB_EHCI_HCD=3Dy
>> +CONFIG_PCIEPORTBUS=3Dy
>> +CONFIG_NET=3Dy
>> +CONFIG_USB_UHCI_HCD=3Dy
>> +CONFIG_BLK_DEV_SD=3Dy
>> +CONFIG_CHR_DEV_SG=3Dy
>> +CONFIG_SOUND=3Dy
>> +CONFIG_SND=3Dy
>> +CONFIG_SND_HDA_INTEL=3Dy
>> +
>> +# Make sure these are on, otherwise the bootup won't be fun
>> +CONFIG_UNIX=3Dy
>> +CONFIG_INET=3Dy
>> +CONFIG_MODULES=3Dy
>> +CONFIG_SHMEM=3Dy
>> +CONFIG_TMPFS=3Dy
>> +CONFIG_PACKET=3Dy
>> +
>> +# These are needed for the Poulsbo kernel modules
>> +CONFIG_I2C=3Dy
>> +CONFIG_AGP=3Dy
>> +CONFIG_VFAT_FS=3Dy
>
>VFAT_FS is required for Poulsbo kernel modules?
>
>This would make more sense as a poulsbo.scc and .cfg file.
>
>> +CONFIG_PM=3Dy
>> +CONFIG_FB=3Dy
>> +CONFIG_BACKLIGHT_LCD_SUPPORT=3Dy
>> +CONFIG_BACKLIGHT_CLASS_DEVICE=3Dy
>> +CONFIG_INPUT=3Dy
>> +CONFIG_VIDEO_V4L2=3Dy
>> +CONFIG_VIDEO_IVTV=3Dy
>> +CONFIG_MEDIA_SUPPORT=3Dy
>> +CONFIG_VIDEO_CAPTURE_DRIVERS=3Dy
>> +CONFIG_VIDEO_DEV=3Dy
>> +CONFIG_VIDEO_V4L2_COMMON=3Dy
>> +CONFIG_I2C_ALGOBIT=3Dy
>> +CONFIG_FB_CFB_COPYAREA=3Dy
>> +CONFIG_FB_CFB_IMAGEBLIT=3Dy
>> +CONFIG_FB_CFB_FILLRECT=3Dy
>> +CONFIG_VIDEO_FB_IVTV=3Dy
>> +
>> +# Needed for booting (and using) USB memory sticks
>> +CONFIG_USB_STORAGE=3Dy
>> +CONFIG_BLK_DEV_RAM=3Dy
>> +CONFIG_BLK_DEV_LOOP=3Dy
>> +CONFIG_BLK_DEV_INITRD=3Dy
>> +CONFIG_RD_GZIP=3Dy
>> +CONFIG_NLS_CODEPAGE_437=3Dy
>> +CONFIG_NLS_ISO8859_1=3Dy
>
>All this is taken care of with the:
>
>> +include cfg/usb-mass-storage.scc
>> +include cfg/boot-live.scc
>
>lines which are missing from your non-preempt-rt bsp file.
>
>> diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
>b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
>> new file mode 100644
>> index 0000000..ff45107
>> --- /dev/null
>> +++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
>> @@ -0,0 +1,14 @@
>> +kconf hardware crystalforest.cfg
>> +
>> +include features/i915/i915.scc
>
>Sorry, are Poulsbo and i915 the same thing?
>
>> +include cfg/8250.scc
>> +include cfg/x86_64.scc
>> +include features/uio/uio.scc
>> +include features/hugetlb/hugetlb.scc
>> +include features/ixgbe/ixgbe.scc
>> +include features/igb/igb.scc
>> +include features/power/intel.scc
>> +
>
>Insert usb-mass-storage and boot-live here...

Thanks for the input Darren.
I have derived this from Romley, and Romley does not have these changes.
I will send a new pull request with these changes included.

Thanks
Kishore.

>
>> +include features/latencytop/latencytop.scc
>> +include features/profiling/profiling.scc
>> +
>>
>
>Thanks,
>
>--
>Darren Hart
>Intel Open Source Technology Center
>Yocto Project - Technical Lead - Linux Kernel

