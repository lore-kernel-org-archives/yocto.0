Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4C22F4C80287
	for <yocto@yoctoproject.org>; Tue,  2 Nov 2010 14:13:43 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA2JDesM012079;
	Tue, 2 Nov 2010 12:13:40 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 2 Nov 2010 12:13:40 -0700
Received: from [128.224.143.9] ([128.224.143.9]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 2 Nov 2010 12:13:38 -0700
Message-ID: <4CD062D0.4060206@windriver.com>
Date: Tue, 02 Nov 2010 15:13:20 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4CCBDC67.4050306@linux.intel.com>
	<4CCF1250.4080903@linux.intel.com>
	<4CCF1F6A.2080702@linux.intel.com> <4CCF33E1.6080600@windriver.com>
	<4CCF504D.6050902@linux.intel.com>
In-Reply-To: <4CCF504D.6050902@linux.intel.com>
X-OriginalArrivalTime: 02 Nov 2010 19:13:39.0800 (UTC)
	FILETIME=[0EA30580:01CB7AC2]
Cc: yocto@yoctoproject.org
Subject: Re: Bugzilla Changes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Nov 2010 19:13:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-11-01 07:42 PM, Darren Hart wrote:
> On 11/01/2010 02:40 PM, Bruce Ashfield wrote:
>> On 10-11-01 4:13 PM, Saul Wold wrote:
>>> On 11/01/2010 12:17 PM, Darren Hart wrote:
>>>> On 10/30/2010 01:50 AM, Saul Wold wrote:
>>>>>
>>>>> We need to review the existing Bugzilla and update the Products and
>>>>> Categories to reflect the projects correctly. Please review this email
>>>>> and make comments, suggestions for moving forward with a better
>>>>> Bugzilla
>>>>> categorization.
>>>>>
>>>>> Currently we have "Core OS" with the following Components:
>>>>> General
>>>>> Graphics Driver
>>>>> Kernel
>>>>> Tool Chain
>>>>>
>>>>> Along with "Poky" which contains:
>>>>> General
>>>>> SDK Tools
>>>>>
>>>>> There are also product categories for "Runtime Distribution", "Sato"
>>>>> and
>>>>> "SDK Plugins". Along with other infrastructure items.
>>>>>
>>>>> I would propose that we clearly define the some new products and move
>>>>> bugs as appropriate:
>>>>>
>>>>> Poky Build System - for Poky class and configuration issues
>>>>> User Space - for user space, patching and runtime failures
>>>>> Tool Chain - break it down to compiler, tools, libraries
>>>>
>>>> The divide between User Space and Tool Chain is a bit vague. For
>>>> instance, I would generally expect to see glibc under User Space, but
>>>> your description seems to place it under Tool Chain.
>>>>
>>> Good point. (See my reply to Mark's email)
>>>
>>>>> and general Kernel - Break it down to Arch / Config components
>>>>
>>>> Please keep the kernel separate from the Tool Chain, something along the
>>>> lines of:
>>>>
>>>> Kernel
>>>> - Core
>>>> - Drivers
>>>> - Tooling (Trace, Debug, Perf)
>>>>
>>> I think my lines might have run together! It was meant to be separate,
>>> and this looks like a good break down.
>>
>> This is too much separation, having over categorization
>> of the kernel defects at this point is overkill.
>
> Agree in principle.
>
>> I'd suggest three categories:
>>
>> - kernel build (which often transitions to
>> straight up build-system after triage).
>> - kernel configuration
>> - kernel runtime
>
> Let me confirm:
>
> - kernel runtime (this includes all errors, panics, BUGs, etc. from the
>     three categories I listed above - no objection).

It does. What we can also do, is split it between
'kernel' and 'BSP'. I've been triaging bugs like this
for 6 years now, and typically it is very hard for
the submitters to categorize properly. But typically
they do know if it is particular to a board (BSP) or
everywhere (kernel). The BSP would also cover the drivers
category that you had listed above .. since often, drivers
are exercised by one (or few) boards and those are the
ones that have problems.

>
> It's still 3 categories, but separate by type of bug instead of area of
> bug. It's still fine with me. My biggest concern was keeping the kernel
> separate, and it is in either form. I'll happily defer to Bruce with
> respect to an efficient set of kernel bug categories for an embedded
> "not-a-distribution".

Agreed. We are aligned here. We'll adjust these as we
go forward to whatever makes sense.

Bruce

>
>> Let's keep it simple.
>
> Agreed.
>


