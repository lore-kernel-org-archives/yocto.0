Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8A71B4C80132
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 15:13:31 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Nov 2010 13:13:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,276,1286175600"; d="scan'208";a="622437284"
Received: from unknown (HELO [10.255.12.117]) ([10.255.12.117])
	by fmsmga002.fm.intel.com with ESMTP; 01 Nov 2010 13:13:31 -0700
Message-ID: <4CCF1F6A.2080702@linux.intel.com>
Date: Mon, 01 Nov 2010 13:13:30 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4CCBDC67.4050306@linux.intel.com>
	<4CCF1250.4080903@linux.intel.com>
In-Reply-To: <4CCF1250.4080903@linux.intel.com>
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 01 Nov 2010 20:13:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/01/2010 12:17 PM, Darren Hart wrote:
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
>
Good point. (See my reply to Mark's email)

>  > and general Kernel - Break it down to Arch / Config components
>
> Please keep the kernel separate from the Tool Chain, something along the
> lines of:
>
> Kernel
> - Core
> - Drivers
> - Tooling (Trace, Debug, Perf)
>
I think my lines might have run together!  It was meant to be separate, 
and this looks like a good break down.

Sau!

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

