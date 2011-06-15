Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 721D44C800B3
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2011 12:33:05 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Jun 2011 10:33:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,370,1304319600"; d="scan'208";a="18584684"
Received: from unknown (HELO [10.255.13.47]) ([10.255.13.47])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jun 2011 10:33:04 -0700
Message-ID: <4DF8ECD0.8090900@linux.intel.com>
Date: Wed, 15 Jun 2011 10:33:04 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1308133815.git.jingdong.lu@windriver.com>	<4DF8B1D7.8050208@windriver.com>	<E44DE684-78F8-4C17-8FF8-837A46CECD58@dominion.thruhere.net>
	<4DF8B44B.6080104@windriver.com> <4DF8E279.1040206@linux.intel.com>
	<4DF8E369.10000@windriver.com>
In-Reply-To: <4DF8E369.10000@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] Enable to set RTC for beagleboard
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
X-List-Received-Date: Wed, 15 Jun 2011 17:33:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/15/2011 09:52 AM, Bruce Ashfield wrote:
> On 06/15/11 12:48, Darren Hart wrote:
>>
>>
>> On 06/15/2011 06:31 AM, Bruce Ashfield wrote:
>>> On 06/15/11 09:25, Koen Kooi wrote:
>>>>
>>>> Op 15 jun 2011, om 15:21 heeft Bruce Ashfield het volgende
>>>> geschreven:
>>>>
>>>>> On 06/15/11 06:41, Jingdong Lu wrote:
>>>>>> From: Jingdong Lu<jingdong.lu@windriver.com>
>>>>>>
>>>>>> Ensure msecure is mux'd to be able to set the RTC for
>>>>>> beagleboard. Fixes bug [YOCTO #767]
>>>>>
>>>>> Jingdong,
>>>>>
>>>>> The fix looks reasonable to me, Darren has been refreshing the
>>>>> beagleboard support as well, so I've cc'd him here to see if we
>>>>> have this change present in the work in progress trees.
>>>>>
>>
>>
>> I do not have something similar queued.
>>
>>
>>>>> What tests did you run to ensure that the RTC worked on the
>>>>> beagleboard ? There was some debate around whether or not you
>>>>> needed an add-on card to get this functionality available ?
>>>>
>>>> You need to remove some resistors and add a battery, or add an
>>>> expansionboard like the zippy or zippy2, which have a DS1307 RTC
>>>> with battery.
>>>
>>> Thanks Koen,
>>>
>>> This confirms what I thought (zippy*), so clearly this is either a
>>> board with that setup, or runtime testing was .. unique. Either way,
>>> more details and research is needed for this one.
>>
>>
>> I'll wait to hear upstream status on this. Given the requirements for
>> use, I wouldn't mind just closing 767 as will not fix as it can't work
>> with the beagleboard out of the box anyway.
> 
> I'm ok with that resolution .. for the bug. But if the patch
> isn't already in another upstream tree, it's worth having
> (if benign to the rest of the variants) and then we can get
> it sent upstream from there.
> 
> I can change the bug's status if you like.


I want to hear back from Jingdong regarding this patch first. Is this
new code? If so, then yes, let's get it to mainline as Bruce suggested.


> 
> Cheers,
> 
> Bruce
> 
>>
>>
>> --
>> Darren
>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>>
>>>> regards,
>>>>
>>>> Koen
>>>
>>> _______________________________________________ yocto mailing list
>>> yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto
>>
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

