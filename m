Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 14C2C4C80044
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 16:40:59 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA1LewH0026170;
	Mon, 1 Nov 2010 14:40:58 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 1 Nov 2010 14:40:57 -0700
Received: from bruce-ashfields-macbook.local ([128.224.143.26]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 1 Nov 2010 14:40:56 -0700
Message-ID: <4CCF33E1.6080600@windriver.com>
Date: Mon, 01 Nov 2010 17:40:49 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <4CCBDC67.4050306@linux.intel.com>
	<4CCF1250.4080903@linux.intel.com>
	<4CCF1F6A.2080702@linux.intel.com>
In-Reply-To: <4CCF1F6A.2080702@linux.intel.com>
X-OriginalArrivalTime: 01 Nov 2010 21:40:57.0615 (UTC)
	FILETIME=[77F8D1F0:01CB7A0D]
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
X-List-Received-Date: Mon, 01 Nov 2010 21:40:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-11-01 4:13 PM, Saul Wold wrote:
> On 11/01/2010 12:17 PM, Darren Hart wrote:
>> On 10/30/2010 01:50 AM, Saul Wold wrote:
>>>
>>> We need to review the existing Bugzilla and update the Products and
>>> Categories to reflect the projects correctly. Please review this email
>>> and make comments, suggestions for moving forward with a better Bugzilla
>>> categorization.
>>>
>>> Currently we have "Core OS" with the following Components:
>>> General
>>> Graphics Driver
>>> Kernel
>>> Tool Chain
>>>
>>> Along with "Poky" which contains:
>>> General
>>> SDK Tools
>>>
>>> There are also product categories for "Runtime Distribution", "Sato" and
>>> "SDK Plugins". Along with other infrastructure items.
>>>
>>> I would propose that we clearly define the some new products and move
>>> bugs as appropriate:
>>>
>>> Poky Build System - for Poky class and configuration issues
>>> User Space - for user space, patching and runtime failures
>>> Tool Chain - break it down to compiler, tools, libraries
>>
>> The divide between User Space and Tool Chain is a bit vague. For
>> instance, I would generally expect to see glibc under User Space, but
>> your description seems to place it under Tool Chain.
>>
> Good point. (See my reply to Mark's email)
>
>>   >  and general Kernel - Break it down to Arch / Config components
>>
>> Please keep the kernel separate from the Tool Chain, something along the
>> lines of:
>>
>> Kernel
>> - Core
>> - Drivers
>> - Tooling (Trace, Debug, Perf)
>>
> I think my lines might have run together!  It was meant to be separate,
> and this looks like a good break down.

This is too much separation, having over categorization
of the kernel defects at this point is overkill. I'd
suggest three categories:

   - kernel build (which often transitions to
     straight up build-system after triage).
   - kernel configuration
   - kernel runtime

Let's keep it simple.

Bruce

>
> Sau!
>
>> Thanks,
>>
>> --
>> Darren
>>
>>> SDK - For all SDK related issues, have components for plugin, tools, ...
>>> Sato - as it exists today
>>> Runtime Distribution- Delete this, we are not a distro (no bugs now)
>>>
>>> Additionally, there is other discussion about Poky Test components for
>>> the standards tests such as LSB, LTP, Posix.
>>>
>>> We will need to add Product Categories for other Yocto Projects that do
>>> not have bugzilla yet.
>>>
>>> Finally we need to update the Bugzilla Interface to be Yocto Project,
>>> changing naming as appropriate.
>>>
>>> Please take a few minutes to review this and give some feedback.
>>>
>>>
>>> Thanks
>>>
>>> Sau!
>>>
>>> Saul Wold
>>> Yocto Component Wrangler @ Intel
>>> Yocto Project / Poky Build System
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.pokylinux.org/listinfo/yocto
>>
>>


