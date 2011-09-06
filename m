Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 411ACE0075D
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2011 10:42:29 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Sep 2011 10:42:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,339,1312182000"; d="scan'208";a="14498731"
Received: from unknown (HELO envy.home) ([10.255.14.186])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Sep 2011 10:42:28 -0700
Message-ID: <4E665B84.3010006@linux.intel.com>
Date: Tue, 06 Sep 2011 10:42:28 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0) Gecko/20110816 Thunderbird/6.0
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <4BD43A85686FC34D819098DB1C3999D901889D799F@orsmsx502.amr.corp.intel.com>
	<1314850760.10191.3.camel@elmorro>
	<4E5FF19D.6000409@linux.intel.com>
	<4BD43A85686FC34D819098DB1C3999D901889D7F2E@orsmsx502.amr.corp.intel.com>
	<4E5FF413.1090205@linux.intel.com>
	<4BD43A85686FC34D819098DB1C3999D901889D7F5C@orsmsx502.amr.corp.intel.com>
	<4E5FFE8F.3020307@linux.intel.com>
	<4BD43A85686FC34D819098DB1C3999D901889D7FF4@orsmsx502.amr.corp.intel.com>
In-Reply-To: <4BD43A85686FC34D819098DB1C3999D901889D7FF4@orsmsx502.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RT kernel with core-image-sato build failed for sugarbay
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
X-List-Received-Date: Tue, 06 Sep 2011 17:42:29 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 09/01/2011 03:05 PM, Bodke, Kishore K wrote:
> For the build I removed the rttests in the IMAGE_INSTALL , so it is not showing up here.
> 
> bitbake -e core-image-sato | egrep "IMAGE_INSTALL="                                           
> # MULTILIB_IMAGE_INSTALL= 
> # IMAGE_INSTALL=${POKY_BASE_INSTALL}
> IMAGE_INSTALL="task-core-boot     task-base-extended"
> 
> I will rebuild with rttests and send the output.

Hi Kishore,

Where are you with this? Are you unblocked and moving ahead?

Thanks,

Darren

> 
> Thanks
> Kishore.
> 
> -----Original Message-----
> From: Darren Hart [mailto:dvhart@linux.intel.com] 
> Sent: Thursday, September 01, 2011 2:52 PM
> To: Bodke, Kishore K
> Cc: Zanussi, Tom; yocto@yoctoproject.org; Hart, Darren; Saxena, Rahul
> Subject: Re: RT kernel with core-image-sato build failed for sugarbay
> 
> Can you report the output of:
> 
> $ bitbake -e core-image-sato | egrep "^IMAGE_INSTALL="
> 
> Thanks,
> 
> Darren
> 
> On 09/01/2011 02:14 PM, Bodke, Kishore K wrote:
>> Yeah, it is the same do_rootfs failure I get for both the builds.
>> Thanks
>> Kishore.
>>
>> -----Original Message-----
>> From: Darren Hart [mailto:dvhart@linux.intel.com] 
>> Sent: Thursday, September 01, 2011 2:08 PM
>> To: Bodke, Kishore K
>> Cc: Zanussi, Tom; yocto@yoctoproject.org; Hart, Darren; Saxena, Rahul
>> Subject: Re: RT kernel with core-image-sato build failed for sugarbay
>>
>> On 09/01/2011 02:01 PM, Bodke, Kishore K wrote:
>>> Clean build with the below TOM's two commit IDs worked for me, if I
>>> do not add IMAGE_INSTALL += "rttests" for sugarbay.
>>>
>>> It failed if I add the IMAGE_INSTALL += "rttests"
>>
>> Do you get the same error? If so, it's starting to sound like the second
>> build is what fails since neither of your failure scenarios include
>> a change that's related to the failure. Perhaps an issue with sstate...
>>
>> --
>> Darren
>>
>>>
>>> Thanks Kishore. -----Original Message----- From: Darren Hart
>>> [mailto:dvhart@linux.intel.com] Sent: Thursday, September 01, 2011
>>> 1:57 PM To: Zanussi, Tom Cc: Bodke, Kishore K;
>>> yocto@yoctoproject.org; Hart, Darren; Saxena, Rahul Subject: Re: RT
>>> kernel with core-image-sato build failed for sugarbay
>>>
>>>
>>>
>>> On 08/31/2011 09:19 PM, Tom Zanussi wrote:
>>>>
>>>> On Wed, 2011-08-31 at 16:49 -0700, Bodke, Kishore K wrote:
>>>>> Hi,
>>>>>
>>>>>
>>>>>
>>>>> I am trying to build core-image-sato with rt kernel for sugarbay
>>>>> and it fails for the do_rootfs .
>>>>>
>>>>
>>>> FWIW, I was able to build and boot core-image-sato with the rt
>>>> kernel:
>>>>
>>>> Linux sugarbay 3.0.3-rt8-yocto-preempt-rt+ #1 SMP PREEMPT RT Wed
>>>> Aug 31 21:33:27 CDT 2011 x86_64 GNU/Linux
>>>>
>>>> using the following commits:
>>>>
>>>> poky/master 705ec50edda7f7fb8c132238fe3f1477384a470e meta/intel
>>>> 902d2f3c919cd1d870dc8d35a7521cbba42e53ea
>>>>
>>>> Actually, meta/intel was that commit with Darren's grub patch on
>>>> top (meta-intel/dvhart/grub-freetype).
>>>>
>>>
>>> Kishore, would you try with a clean build and see if this works for
>>> you?
>>>
>>> I'm going to try and build first without -rt and then with rt and see
>>> if I can reproduce the issue.
>>>
>>> Thanks,
>>>
>>> Darren
>>>
>>>> Tom
>>>>
>>>>>
>>>>>
>>>>> Attached is the build log.
>>>>>
>>>>>
>>>>>
>>>>> Could you please let me know what went wrong?
>>>>>
>>>>>
>>>>>
>>>>> Thanks
>>>>>
>>>>> Kishore.
>>>>>
>>>>>
>>>>
>>>>
>>>
>>
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

