Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF782E0044A
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 07:09:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q42E9PYD004251
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 2 May 2012 07:09:25 -0700 (PDT)
Received: from [128.224.92.159] (128.224.92.159) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 2 May 2012 07:09:25 -0700
Message-ID: <4FA14013.7040900@windriver.com>
Date: Wed, 2 May 2012 10:09:23 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
	<d70b8e0f1ec6eade123a18194283b15e8aaa2bef.1335909082.git.dvhart@linux.intel.com>
	<4FA12EBD.5010306@windriver.com> <4FA13E66.8080705@linux.intel.com>
In-Reply-To: <4FA13E66.8080705@linux.intel.com>
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
X-List-Received-Date: Wed, 02 May 2012 14:09:27 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-02 10:02 AM, Darren Hart wrote:
>
>
> On 05/02/2012 05:55 AM, Bruce Ashfield wrote:
>> On 12-05-01 06:12 PM, Darren Hart wrote:
>>> Update the PREFERRED_VERSION to 3.2.
>>> Drop cfg/smp.scc as this is now included in common-pc.
>>
>> Just having a look at the series now. Can you confirm for me if there
>> are 3 or 7 patches for n450 ? I see the other syslinux series has 7
>> patches, but only 3 here. Just a number issue on the send ? Or did
>> I manage to lose 4 changes ?
>
> There is only 1 for n450, the rest are for other BSPs in meta-inte. See
> 0/7 for the list:
>
> [PATCH 0/7][linux-yocto-3.2] fri2 and sys940x meta updates
> ...
> Darren Hart (7):
>    fri2: Prefer linux-yocto 3.2
>    linux-firmware: Move fri2 linux-firmware append to common
>    n450: Update to linux-yocto 3.2
>    sys940x: prefer xf86-input-evdev 2.6.0
>    sys940x: Add product URL to README
>    ia32-base.inc: Use a weak default assignment for kernel provider and
>      version
>    sys940x: Update to linux-yocto 3.2
>
> I then manually added "8/7":
>    sys940x: Drop PREFERRED_VERSION for emgd driver
>
> Of course the 7 I'm hoping you're most concerned with are those for
> linux-yocto:
>
> [PATCH 0/7][linux-yocto-3.2] fri2 and sys940x meta updates
> ...
> Darren Hart (7):
>    fri2: Use emgd-1.10 feature and branch
>    fri2: Cleanup fri2-$KTYPE.scc files re efi-ext.scc
>    sys940x: Move emgd-1.10 data to the standard scc file
>    sys940x: Add efi-ext to standard and preempt-rt configs
>    sys940x: Add common standard and preempt-rt features
>    sys940x: Use PHYSICAL_START of 0x200000 to boot
>    sys940x: Cleanup sys940x.scc
>
> Plus one more for standard/base:
>
> [PATCH 0/1][linux-yocto-3.2] pch_gbe: Do not abort probe on bad MAC
>
> Clear as mud?

Argh. Right you are, the linux-yocto-3.2 drew my attention and I see that
these are outside the kernel tree .. so my scanning of them is really
all that I needed to do.

I see the 8 kernel patches, and I'll focus on them, and getting them
merged.

Thanks for the clarification. Jet lag has clouded my mind a bit :)

Bruce

>
>> Cheers,
>>
>> Bruce
>>
>>>
>>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>>> ---
>>>    meta-n450/conf/machine/n450.conf                   |    3 +++
>>>    .../linux/linux-yocto-rt_as Tai, he's got a lot of the KVM on powerpc work done. He's
up and booting on the 8548 and almost on the p4080. So the work is to
complete and productize what he's done (and add other patches we
find). Thomas may also help us out on this, so definitely sync up with
him, to split the work and see if he can help :)
3.2.bbappend              |   10 ++++++++++
>>>    .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    7 +++++++
>>>    3 files changed, 20 insertions(+), 0 deletions(-)
>>>    create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
>>>    create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend
>>>
>>> diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
>>> index dac63ed..7ce4cc7 100644
>>> --- a/meta-n450/conf/machine/n450.conf
>>> +++ b/meta-n450/conf/machine/n450.conf
>>> @@ -3,6 +3,9 @@
>>>
>>>    #@DESCRIPTION: Machine configuration for Intel 1-N450 based systems
>>>
>>> +PREFERRED_PROVIDER-virtual/kernel ?= "linux-yocto"
>>> +PREFERRED_VERSION_linux-yocto ?= "3.2%"
>>> +
>>>    require conf/machine/include/tune-atom.inc
>>>    require conf/machine/include/ia32-base.inc
>>>
>>> diff --git a/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
>>> new file mode 100644
>>> index 0000000..1c7fef9
>>> --- /dev/null
>>> +++ b/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
>>> @@ -0,0 +1,10 @@
>>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>> +COMPATIBLE_MACHINE_n450 = "n450"
>>> +KMACHINE_n450 = "atom-pc"
>>> +
>>> +KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
>>> +
>>> +# Update the following to use a different BSP branch or meta SRCREV
>>> +#KBRANCH_n450 = "yocto/standard/preempt-rt/base"
>>> +#SRCREV_machine_pn-linux-yocto-rt_n450 ?= XXXX
>>> +#SRCREV_meta_pn-linux-yocto-rt_n450 ?= XXXX
>>> diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend
>>> new file mode 100644
>>> index 0000000..f02c475
>>> --- /dev/null
>>> +++ b/meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend
>>> @@ -0,0 +1,7 @@
>>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>> +COMPATIBLE_MACHINE_n450 = "n450"
>>> +KMACHINE_n450  = "atom-pc"
>>> +KBRANCH_n450 = "standard/default/common-pc/base"
>>> +
>>> +#SRCREV_machine_pn-linux-yocto_n450 = XXXX
>>> +#SRCREV_meta_pn-linux-yocto_n450 ?= XXXX
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


