Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3026E0044A
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 07:02:47 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 May 2012 07:02:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="136158733"
Received: from unknown (HELO envy.home) ([10.255.12.136])
	by orsmga001.jf.intel.com with ESMTP; 02 May 2012 07:02:45 -0700
Message-ID: <4FA13E66.8080705@linux.intel.com>
Date: Wed, 02 May 2012 07:02:14 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
	<d70b8e0f1ec6eade123a18194283b15e8aaa2bef.1335909082.git.dvhart@linux.intel.com>
	<4FA12EBD.5010306@windriver.com>
In-Reply-To: <4FA12EBD.5010306@windriver.com>
X-Enigmail-Version: 1.4.1
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 3/7] n450: Update to linux-yocto 3.2
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
X-List-Received-Date: Wed, 02 May 2012 14:02:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/02/2012 05:55 AM, Bruce Ashfield wrote:
> On 12-05-01 06:12 PM, Darren Hart wrote:
>> Update the PREFERRED_VERSION to 3.2.
>> Drop cfg/smp.scc as this is now included in common-pc.
> 
> Just having a look at the series now. Can you confirm for me if there
> are 3 or 7 patches for n450 ? I see the other syslinux series has 7
> patches, but only 3 here. Just a number issue on the send ? Or did
> I manage to lose 4 changes ?

There is only 1 for n450, the rest are for other BSPs in meta-inte. See
0/7 for the list:

[PATCH 0/7][linux-yocto-3.2] fri2 and sys940x meta updates
...
Darren Hart (7):
  fri2: Prefer linux-yocto 3.2
  linux-firmware: Move fri2 linux-firmware append to common
  n450: Update to linux-yocto 3.2
  sys940x: prefer xf86-input-evdev 2.6.0
  sys940x: Add product URL to README
  ia32-base.inc: Use a weak default assignment for kernel provider and
    version
  sys940x: Update to linux-yocto 3.2

I then manually added "8/7":
  sys940x: Drop PREFERRED_VERSION for emgd driver

Of course the 7 I'm hoping you're most concerned with are those for
linux-yocto:

[PATCH 0/7][linux-yocto-3.2] fri2 and sys940x meta updates
...
Darren Hart (7):
  fri2: Use emgd-1.10 feature and branch
  fri2: Cleanup fri2-$KTYPE.scc files re efi-ext.scc
  sys940x: Move emgd-1.10 data to the standard scc file
  sys940x: Add efi-ext to standard and preempt-rt configs
  sys940x: Add common standard and preempt-rt features
  sys940x: Use PHYSICAL_START of 0x200000 to boot
  sys940x: Cleanup sys940x.scc

Plus one more for standard/base:

[PATCH 0/1][linux-yocto-3.2] pch_gbe: Do not abort probe on bad MAC

Clear as mud?

> Cheers,
> 
> Bruce
> 
>>
>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>> ---
>>   meta-n450/conf/machine/n450.conf                   |    3 +++
>>   .../linux/linux-yocto-rt_3.2.bbappend              |   10 ++++++++++
>>   .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    7 +++++++
>>   3 files changed, 20 insertions(+), 0 deletions(-)
>>   create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
>>   create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend
>>
>> diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
>> index dac63ed..7ce4cc7 100644
>> --- a/meta-n450/conf/machine/n450.conf
>> +++ b/meta-n450/conf/machine/n450.conf
>> @@ -3,6 +3,9 @@
>>
>>   #@DESCRIPTION: Machine configuration for Intel 1-N450 based systems
>>
>> +PREFERRED_PROVIDER-virtual/kernel ?= "linux-yocto"
>> +PREFERRED_VERSION_linux-yocto ?= "3.2%"
>> +
>>   require conf/machine/include/tune-atom.inc
>>   require conf/machine/include/ia32-base.inc
>>
>> diff --git a/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
>> new file mode 100644
>> index 0000000..1c7fef9
>> --- /dev/null
>> +++ b/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
>> @@ -0,0 +1,10 @@
>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> +COMPATIBLE_MACHINE_n450 = "n450"
>> +KMACHINE_n450 = "atom-pc"
>> +
>> +KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
>> +
>> +# Update the following to use a different BSP branch or meta SRCREV
>> +#KBRANCH_n450 = "yocto/standard/preempt-rt/base"
>> +#SRCREV_machine_pn-linux-yocto-rt_n450 ?= XXXX
>> +#SRCREV_meta_pn-linux-yocto-rt_n450 ?= XXXX
>> diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend
>> new file mode 100644
>> index 0000000..f02c475
>> --- /dev/null
>> +++ b/meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend
>> @@ -0,0 +1,7 @@
>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> +COMPATIBLE_MACHINE_n450 = "n450"
>> +KMACHINE_n450  = "atom-pc"
>> +KBRANCH_n450 = "standard/default/common-pc/base"
>> +
>> +#SRCREV_machine_pn-linux-yocto_n450 = XXXX
>> +#SRCREV_meta_pn-linux-yocto_n450 ?= XXXX
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

