Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A1A64C80044
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 14:43:34 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA1JhXHc007112
	for <yocto@yoctoproject.org>; Mon, 1 Nov 2010 12:43:33 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 1 Nov 2010 12:43:33 -0700
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 1 Nov 2010 12:43:33 -0700
Message-ID: <4CCF1864.7000007@windriver.com>
Date: Mon, 01 Nov 2010 14:43:32 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4CCBDC67.4050306@linux.intel.com>
	<4CCF1250.4080903@linux.intel.com>
In-Reply-To: <4CCF1250.4080903@linux.intel.com>
X-OriginalArrivalTime: 01 Nov 2010 19:43:33.0839 (UTC)
	FILETIME=[118DE5F0:01CB79FD]
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
X-List-Received-Date: Mon, 01 Nov 2010 19:43:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/1/10 2:17 PM, Darren Hart wrote:
> On 10/30/2010 01:50 AM, Saul Wold wrote:
>>
>> We need to review the existing Bugzilla and update the Products and
>> Categories to reflect the projects correctly. Please review this email
>> and make comments, suggestions for moving forward with a better Bugzilla
>> categorization.
>>
>> Currently we have "Core OS" with the following Components:
>> General
>> Graphics Driver
>> Kernel
>> Tool Chain
>>
>> Along with "Poky" which contains:
>> General
>> SDK Tools
>>
>> There are also product categories for "Runtime Distribution", "Sato" and
>> "SDK Plugins". Along with other infrastructure items.
>>
>> I would propose that we clearly define the some new products and move
>> bugs as appropriate:
>>
>> Poky Build System - for Poky class and configuration issues
>> User Space - for user space, patching and runtime failures
>> Tool Chain - break it down to compiler, tools, libraries
>
> The divide between User Space and Tool Chain is a bit vague. For
> instance, I would generally expect to see glibc under User Space, but
> your description seems to place it under Tool Chain.

I think this is where the Bugzilla description needs to be verbose.

Toolchain for me includes:  userspace kernel headers (but not the kernel), 
binutils, gcc, "the libc" (uclibc, glibc, eglibc), and gdb.

>   >  and general Kernel - Break it down to Arch / Config components
>
> Please keep the kernel separate from the Tool Chain, something along the
> lines of:
>
> Kernel
>     - Core
>     - Drivers
>     - Tooling (Trace, Debug, Perf)

Yes, I agree. the kernel needs to be treated as a separate project as it is an 
external item to Poky -- but part of the overall Yocto Project.

--Mark

> Thanks,
>
> --
> Darren
>
>> SDK - For all SDK related issues, have components for plugin, tools, ...
>> Sato - as it exists today
>> Runtime Distribution- Delete this, we are not a distro (no bugs now)
>>
>> Additionally, there is other discussion about Poky Test components for
>> the standards tests such as LSB, LTP, Posix.
>>
>> We will need to add Product Categories for other Yocto Projects that do
>> not have bugzilla yet.
>>
>> Finally we need to update the Bugzilla Interface to be Yocto Project,
>> changing naming as appropriate.
>>
>> Please take a few minutes to review this and give some feedback.
>>
>>
>> Thanks
>>
>> Sau!
>>
>> Saul Wold
>> Yocto Component Wrangler @ Intel
>> Yocto Project / Poky Build System
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.pokylinux.org/listinfo/yocto
>
>


