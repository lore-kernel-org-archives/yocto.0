Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3A87E0071A
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2011 14:52:16 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Sep 2011 14:52:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="44523538"
Received: from unknown (HELO envy.home) ([10.255.14.97])
	by orsmga001.jf.intel.com with ESMTP; 01 Sep 2011 14:52:16 -0700
Message-ID: <4E5FFE8F.3020307@linux.intel.com>
Date: Thu, 01 Sep 2011 14:52:15 -0700
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
In-Reply-To: <4BD43A85686FC34D819098DB1C3999D901889D7F5C@orsmsx502.amr.corp.intel.com>
Cc: "Hart, Darren" <darren.hart@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 01 Sep 2011 21:52:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Can you report the output of:

$ bitbake -e core-image-sato | egrep "^IMAGE_INSTALL="

Thanks,

Darren

On 09/01/2011 02:14 PM, Bodke, Kishore K wrote:
> Yeah, it is the same do_rootfs failure I get for both the builds.
> Thanks
> Kishore.
> 
> -----Original Message-----
> From: Darren Hart [mailto:dvhart@linux.intel.com] 
> Sent: Thursday, September 01, 2011 2:08 PM
> To: Bodke, Kishore K
> Cc: Zanussi, Tom; yocto@yoctoproject.org; Hart, Darren; Saxena, Rahul
> Subject: Re: RT kernel with core-image-sato build failed for sugarbay
> 
> On 09/01/2011 02:01 PM, Bodke, Kishore K wrote:
>> Clean build with the below TOM's two commit IDs worked for me, if I
>> do not add IMAGE_INSTALL += "rttests" for sugarbay.
>>
>> It failed if I add the IMAGE_INSTALL += "rttests"
> 
> Do you get the same error? If so, it's starting to sound like the second
> build is what fails since neither of your failure scenarios include
> a change that's related to the failure. Perhaps an issue with sstate...
> 
> --
> Darren
> 
>>
>> Thanks Kishore. -----Original Message----- From: Darren Hart
>> [mailto:dvhart@linux.intel.com] Sent: Thursday, September 01, 2011
>> 1:57 PM To: Zanussi, Tom Cc: Bodke, Kishore K;
>> yocto@yoctoproject.org; Hart, Darren; Saxena, Rahul Subject: Re: RT
>> kernel with core-image-sato build failed for sugarbay
>>
>>
>>
>> On 08/31/2011 09:19 PM, Tom Zanussi wrote:
>>>
>>> On Wed, 2011-08-31 at 16:49 -0700, Bodke, Kishore K wrote:
>>>> Hi,
>>>>
>>>>
>>>>
>>>> I am trying to build core-image-sato with rt kernel for sugarbay
>>>> and it fails for the do_rootfs .
>>>>
>>>
>>> FWIW, I was able to build and boot core-image-sato with the rt
>>> kernel:
>>>
>>> Linux sugarbay 3.0.3-rt8-yocto-preempt-rt+ #1 SMP PREEMPT RT Wed
>>> Aug 31 21:33:27 CDT 2011 x86_64 GNU/Linux
>>>
>>> using the following commits:
>>>
>>> poky/master 705ec50edda7f7fb8c132238fe3f1477384a470e meta/intel
>>> 902d2f3c919cd1d870dc8d35a7521cbba42e53ea
>>>
>>> Actually, meta/intel was that commit with Darren's grub patch on
>>> top (meta-intel/dvhart/grub-freetype).
>>>
>>
>> Kishore, would you try with a clean build and see if this works for
>> you?
>>
>> I'm going to try and build first without -rt and then with rt and see
>> if I can reproduce the issue.
>>
>> Thanks,
>>
>> Darren
>>
>>> Tom
>>>
>>>>
>>>>
>>>> Attached is the build log.
>>>>
>>>>
>>>>
>>>> Could you please let me know what went wrong?
>>>>
>>>>
>>>>
>>>> Thanks
>>>>
>>>> Kishore.
>>>>
>>>>
>>>
>>>
>>
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

