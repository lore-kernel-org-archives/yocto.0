Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEFE8E0030B
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 08:01:57 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 06 Feb 2012 08:01:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="63777397"
Received: from unknown (HELO envy.home) ([10.255.14.217])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Feb 2012 08:00:21 -0800
Message-ID: <4F2FF8F6.7060601@linux.intel.com>
Date: Mon, 06 Feb 2012 07:59:50 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: James Abernathy <jfabernathy@gmail.com>
References: <4F2D4D12.3060500@gmail.com> <4F2ED655.5020808@linux.intel.com>
	<2779C8B7-F034-4F86-8BCF-0CC6374AD803@gmail.com>
	<4F2EE44C.7090809@linux.intel.com>
	<F23113B0-A013-4723-A4D9-09FC4FB5FA38@gmail.com>
In-Reply-To: <F23113B0-A013-4723-A4D9-09FC4FB5FA38@gmail.com>
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
X-List-Received-Date: Mon, 06 Feb 2012 16:01:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 02/06/2012 05:00 AM, James Abernathy wrote:
> 
> On Feb 5, 2012, at 3:19 PM, Darren Hart wrote:
> 
>> 
>> 
>> On 02/05/2012 11:44 AM, James Abernathy wrote:
>>> 
>>> On Feb 5, 2012, at 2:19 PM, Darren Hart wrote:
>>> 
>>>> On 02/04/2012 07:21 AM, jfabernathy wrote:
>>>>> I just added and EMGD example to the How Do I in the wiki.
>>>> 
>>>> Jim, really appreciate your work here. For those of us not
>>>> following quite as closely, please provide links to the pages
>>>> you update so we don't have to go hunting for them.
>>>> 
>>> It's the How Do I link on the wiki page:
>>> 
>>> https://wiki.yoctoproject.org/wiki/How_do_I
>> 
>> I see. This Question heading seems a bit inconsistent with what you
>> are actually doing. Step 1 of getting EMGD on Crownbay is adding
>> alsa to MACHINE_FEATURES for a BSP called meta-mymachine?
>> 
>> This appears to be just trying to get commercial codecs working
>> with accelerated graphics.
>> 
>> The reason I raise this, is that while it's good to have these
>> sorts of "Tactical" guides, if we aren't careful they can dilute
>> the documentation space and end up confusing users more than they
>> help. The README for crownbay covers what is necessary to enable
>> EMGD accelerated graphics. Please consider renaming the title to
>> someting more consistent with what you're trying accomplish.
>> 
> 
> Look, I'm not a documentation expert or understand what the project
> team is trying to accomplish with their documentation or wiki.  A
> user on the mailing list asked me to summarize what I did to get all
> the issues resolve related to media acceleration and decoder.  What I
> put in  the How Do I was a summation of the questions and answers
> that were in the email thread. I can just as easily email that user
> the summary, if it's not appropriate for the wiki.
> 

Please don't take the above as a criticism of the "How Do I" concept, as
I said at first, I appreciate you doing it - I understand it takes some
considerable additional time to publish it. The goal is clearly to make
things easier for others when they attempt what you're doing. I saw
something in there that might not fit the goal and raised it as a point
of improvement, that's all.


> Please feel free to edit what I put there or remove it.

I've CC'd Scott R. to review and see if he might care to adjust things a
bit. I certainly don't want to remove it :)

--
Darren

> 
> Jim A
> 
>> -- Darren
>> 
>>> 
>>>> I'm interested to see what more was needed for EMGD and
>>>> Crownbay than is already in the BSP README.
>>>> 
>>>>> 
>>>>> In my opinion, we need to think about breaking this one big
>>>>> edit up into individual How Do I's.  It would simplify
>>>>> editing and make getting to the individual How Do I's much
>>>>> easier and quicker.
>>>>> 
>>>>> I don't know how to do that, but I think it needs doing.
>>>>> 
>>>>> Jim A
>>>>> 
>>>>> _______________________________________________ yocto mailing
>>>>> list yocto@yoctoproject.org 
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>> 
>>>> -- Darren Hart Intel Open Source Technology Center Yocto
>>>> Project - Linux Kernel
>>> 
>> 
>> -- Darren Hart Intel Open Source Technology Center Yocto Project -
>> Linux Kernel
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

