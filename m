Return-Path: <darren.hart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 265D9E00306
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2012 15:03:51 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Jan 2012 15:03:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="97157087"
Received: from unknown (HELO envy.home) ([10.7.199.59])
	by orsmga001.jf.intel.com with ESMTP; 16 Jan 2012 15:03:50 -0800
Message-ID: <4F14ACC1.3070906@intel.com>
Date: Mon, 16 Jan 2012 15:03:29 -0800
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
References: <CACJvPv3H8QaGffS3kdS1qLogcwn9L1ZsYpzqo6eei6LMK_7=WQ@mail.gmail.com>
	<4F0F2627.3010004@linux.intel.com> <4F0F4E7C.9030506@intel.com>
	<D956029D25CF204F948EA0FB515E1EE202325B@ORSMSX105.amr.corp.intel.com>
	<4F0F52FF.3060601@intel.com>
	<ADD6A3980E8C39419A432FF422031B4C024050@ORSMSX106.amr.corp.intel.com>
	<ADD6A3980E8C39419A432FF422031B4C02406C@ORSMSX106.amr.corp.intel.com>
	<ADD6A3980E8C39419A432FF422031B4C03F6A7@ORSMSX106.amr.corp.intel.com>
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C03F6A7@ORSMSX106.amr.corp.intel.com>
Cc: "Ahmad, Josef" <josef.ahmad@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: qemu EFI build failure
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
X-List-Received-Date: Mon, 16 Jan 2012 23:03:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 01/16/2012 02:00 PM, Kamble, Nitin A wrote:
> Darren,
>   I have reworked the commits to fix issues while building on other distros.
> Can you check this branch http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=nitin/grub-efi
> It is working for me on Fedora 14, for which the other grub-efi commit was failing for me.

Thanks Nitin,

Builds fine for me on Ubuntu 11.10 64 bit

--
Darren

> 
> Thanks,
> Nitin
> 
> 
>> -----Original Message-----
>> From: Kamble, Nitin A
>> Sent: Thursday, January 12, 2012 2:33 PM
>> To: Kamble, Nitin A; Hart, Darren; Bodke, Kishore K
>> Cc: Ahmad, Josef; yocto@yoctoproject.org
>> Subject: RE: [yocto] qemu EFI build failure
>>
>> Here is the commit: http://git.yoctoproject.org/cgit.cgi/poky-
>> contrib/log/?h=nitin/misc
>>
>> Nitin
>>
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>> bounces@yoctoproject.org] On Behalf Of Kamble, Nitin A
>>> Sent: Thursday, January 12, 2012 2:32 PM
>>> To: Hart, Darren; Bodke, Kishore K
>>> Cc: Ahmad, Josef; yocto@yoctoproject.org
>>> Subject: Re: [yocto] qemu EFI build failure
>>>
>>>
>>> I just sent a patch to oecore mailing list to fix the grub issue with
>>> automake 1.11.2.
>>>
>>> Thanks,
>>> Nitin
>>>
>>>
>>>> -----Original Message-----
>>>> From: Hart, Darren
>>>> Sent: Thursday, January 12, 2012 1:39 PM
>>>> To: Bodke, Kishore K
>>>> Cc: Ahmad, Josef; yocto@yoctoproject.org; Kamble, Nitin A
>>>> Subject: Re: [yocto] qemu EFI build failure
>>>>
>>>> On 01/12/2012 01:28 PM, Bodke, Kishore K wrote:
>>>>> I have only
>>>>> MACHINE_FEATURES += "efi"
>>>>> KERNEL_FEATURES_append_cedartrail += "cfg/efi-ext.scc".
>>>>>
>>>>> I am not having IMAGE_FSTYPES += "live".
>>>>
>>>> The "live" change is just to trigger the live image type which
>> builds
>>>> grub-efi-native for efi systems. qemux86 needs this added
>> explicitly.
>>>>
>>>> --
>>>> Darren
>>>>
>>>>>
>>>>> Thanks
>>>>> Kishore.
>>>>> -----Original Message-----
>>>>> From: Hart, Darren
>>>>> Sent: Thursday, January 12, 2012 1:20 PM
>>>>> To: Ahmad, Josef
>>>>> Cc: yocto@yoctoproject.org; Bodke, Kishore K; Kamble, Nitin A
>>>>> Subject: Re: [yocto] qemu EFI build failure
>>>>>
>>>>> On 01/12/2012 10:27 AM, Darren Hart wrote:
>>>>>>
>>>>>>
>>>>>> On 01/12/2012 08:19 AM, Josef Ahmad wrote:
>>>>>>> I tried to build a qemux86 EFI image, by setting:
>>>>>>> - in my local.conf: IMAGE_FSTYPES += "live"
>>>>>>> - in poly/meta/conf/machine/qemux86.conf: MACHINE_FEATURES +=
>>> "efi"
>>>>>>>
>>>>>>
>>>>>> I haven't tried live images with QEMU. For one thing, they
>> aren't
>>>> really
>>>>>> necessary as you can specify all the boot parameters on the qemu
>>>> command
>>>>>> line. Is there are reason you want to use the live image
>>>> specifically?
>>>>>>
>>>>>> Also, in order to properly test EFI in QEMU, you will need to
>> use
>>> an
>>>> EFI
>>>>>> BIOS - I believe you're aware of this already - but this isn't
>>>> currently
>>>>>> supported by the runqemu scripts that ship with yocto.
>>>>>>
>>>>>>> The build gave me the following error:
>>>>>>
>>>>>>
>>>>>> I'll do some test builds - it isn't clear to me what is going on
>>>> here.
>>>>>>
>>>>>> <snip>
>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> Has anyone encountered the same error?  I'm not sure I set up
>> the
>>>>>>> correct configuration. Also, is there another way to append
>> "efi"
>>>> to
>>>>>>> MACHINE_FEATURES rather than by modifying qemux86.conf?
>>>>>>
>>>>>> You should be able to do something like:
>>>>>> MACHINE_FEATURES_append_qemux86 = "efi"
>>>>>>
>>>>>> Note that you will also need to enable the efi support in the
>>>> kernel,
>>>>>> which is done with the KERNEL_FEATURES variable, something like:
>>>>>> KERNEL_FEATURES_append_qemux86 = "conf/efi-ext.scc"
>>>>>>
>>>>>> Either of these can be set in your local.conf.
>>>>>>
>>>>>
>>>>> More accurately:
>>>>>
>>>>> MACHINE_FEATURES_append_qemux86=" efi pcbios"
>>>>> KERNEL_FEATURES_append_qemux86=" cfg/efi-ext.scc"
>>>>> IMAGE_FSTYPES += "live"
>>>>>
>>>>> With these added to local.conf and building for qemux86 I see the
>>>> same
>>>>> configure failures reported by Kishore and Josef:
>>>>>
>>>>> | ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded
>>>> from...
>>>>> | acinclude.m4:363: grub_CHECK_STACK_ARG_PROBE is expanded
>> from...
>>>>>
>>>>> I've discussed in IRC with Nitin and he thinks this may be
>> related
>>> to
>>>>> the automake update and is looking into it.
>>>>>
>>>>
>>>>
>>>> --
>>>> Darren Hart
>>>> Intel Open Source Technology Center
>>>> Yocto Project - Linux Kernel
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

