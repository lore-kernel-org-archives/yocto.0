Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5E9F74C80044
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 18:42:06 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Nov 2010 16:42:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,277,1286175600"; d="scan'208";a="569396624"
Received: from unknown (HELO [10.255.12.219]) ([10.255.12.219])
	by orsmga002.jf.intel.com with ESMTP; 01 Nov 2010 16:42:05 -0700
Message-ID: <4CCF504D.6050902@linux.intel.com>
Date: Mon, 01 Nov 2010 16:42:05 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4CCBDC67.4050306@linux.intel.com>
	<4CCF1250.4080903@linux.intel.com>
	<4CCF1F6A.2080702@linux.intel.com> <4CCF33E1.6080600@windriver.com>
In-Reply-To: <4CCF33E1.6080600@windriver.com>
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
X-List-Received-Date: Mon, 01 Nov 2010 23:42:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/01/2010 02:40 PM, Bruce Ashfield wrote:
> On 10-11-01 4:13 PM, Saul Wold wrote:
>> On 11/01/2010 12:17 PM, Darren Hart wrote:
>>> On 10/30/2010 01:50 AM, Saul Wold wrote:
>>>>
>>>> We need to review the existing Bugzilla and update the Products and
>>>> Categories to reflect the projects correctly. Please review this email
>>>> and make comments, suggestions for moving forward with a better
>>>> Bugzilla
>>>> categorization.
>>>>
>>>> Currently we have "Core OS" with the following Components:
>>>> General
>>>> Graphics Driver
>>>> Kernel
>>>> Tool Chain
>>>>
>>>> Along with "Poky" which contains:
>>>> General
>>>> SDK Tools
>>>>
>>>> There are also product categories for "Runtime Distribution", "Sato"
>>>> and
>>>> "SDK Plugins". Along with other infrastructure items.
>>>>
>>>> I would propose that we clearly define the some new products and move
>>>> bugs as appropriate:
>>>>
>>>> Poky Build System - for Poky class and configuration issues
>>>> User Space - for user space, patching and runtime failures
>>>> Tool Chain - break it down to compiler, tools, libraries
>>>
>>> The divide between User Space and Tool Chain is a bit vague. For
>>> instance, I would generally expect to see glibc under User Space, but
>>> your description seems to place it under Tool Chain.
>>>
>> Good point. (See my reply to Mark's email)
>>
>>> > and general Kernel - Break it down to Arch / Config components
>>>
>>> Please keep the kernel separate from the Tool Chain, something along the
>>> lines of:
>>>
>>> Kernel
>>> - Core
>>> - Drivers
>>> - Tooling (Trace, Debug, Perf)
>>>
>> I think my lines might have run together! It was meant to be separate,
>> and this looks like a good break down.
>
> This is too much separation, having over categorization
> of the kernel defects at this point is overkill.

Agree in principle.

> I'd suggest three categories:
>
> - kernel build (which often transitions to
> straight up build-system after triage).
> - kernel configuration
> - kernel runtime

Let me confirm:

- kernel runtime (this includes all errors, panics, BUGs, etc. from the
   three categories I listed above - no objection).

It's still 3 categories, but separate by type of bug instead of area of 
bug. It's still fine with me. My biggest concern was keeping the kernel 
separate, and it is in either form. I'll happily defer to Bruce with 
respect to an efficient set of kernel bug categories for an embedded 
"not-a-distribution".

> Let's keep it simple.

Agreed.

-- 
Darren Hart
Embedded Linux Kernel

