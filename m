Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30096E01217
	for <yocto@yoctoproject.org>; Sun,  5 Feb 2012 12:19:57 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 05 Feb 2012 12:19:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="114365320"
Received: from unknown (HELO envy.home) ([10.255.14.217])
	by fmsmga001.fm.intel.com with ESMTP; 05 Feb 2012 12:19:56 -0800
Message-ID: <4F2EE44C.7090809@linux.intel.com>
Date: Sun, 05 Feb 2012 12:19:24 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: James Abernathy <jfabernathy@gmail.com>
References: <4F2D4D12.3060500@gmail.com> <4F2ED655.5020808@linux.intel.com>
	<2779C8B7-F034-4F86-8BCF-0CC6374AD803@gmail.com>
In-Reply-To: <2779C8B7-F034-4F86-8BCF-0CC6374AD803@gmail.com>
X-Enigmail-Version: 1.3.5
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: HOW DO I - new one added for EMGD and Crownbay
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
X-List-Received-Date: Sun, 05 Feb 2012 20:19:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 02/05/2012 11:44 AM, James Abernathy wrote:
> 
> On Feb 5, 2012, at 2:19 PM, Darren Hart wrote:
> 
>> On 02/04/2012 07:21 AM, jfabernathy wrote:
>>> I just added and EMGD example to the How Do I in the wiki.
>>
>> Jim, really appreciate your work here. For those of us not following
>> quite as closely, please provide links to the pages you update so we
>> don't have to go hunting for them.
>>
> It's the How Do I link on the wiki page:
> 
> https://wiki.yoctoproject.org/wiki/How_do_I

I see. This Question heading seems a bit inconsistent with what you are
actually doing. Step 1 of getting EMGD on Crownbay is adding alsa to
MACHINE_FEATURES for a BSP called meta-mymachine?

This appears to be just trying to get commercial codecs working with
accelerated graphics.

The reason I raise this, is that while it's good to have these sorts of
"Tactical" guides, if we aren't careful they can dilute the
documentation space and end up confusing users more than they help. The
README for crownbay covers what is necessary to enable EMGD accelerated
graphics. Please consider renaming the title to someting more consistent
with what you're trying accomplish.

--
Darren

> 
>> I'm interested to see what more was needed for EMGD and Crownbay than is
>> already in the BSP README.
>>
>>>
>>> In my opinion, we need to think about breaking this one big edit up into 
>>> individual How Do I's.  It would simplify editing and make getting to 
>>> the individual How Do I's much easier and quicker.
>>>
>>> I don't know how to do that, but I think it needs doing.
>>>
>>> Jim A
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> -- 
>> Darren Hart
>> Intel Open Source Technology Center
>> Yocto Project - Linux Kernel
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

