Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 25F914C80132
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 15:25:04 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Nov 2010 13:25:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,276,1286175600"; d="scan'208";a="569340252"
Received: from unknown (HELO [10.255.12.117]) ([10.255.12.117])
	by orsmga002.jf.intel.com with ESMTP; 01 Nov 2010 13:25:03 -0700
Message-ID: <4CCF221E.8050300@linux.intel.com>
Date: Mon, 01 Nov 2010 13:25:02 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4CCBDC67.4050306@linux.intel.com> <4CCF0E5F.5060900@windriver.com>
In-Reply-To: <4CCF0E5F.5060900@windriver.com>
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
X-List-Received-Date: Mon, 01 Nov 2010 20:25:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/01/2010 12:00 PM, Mark Hatle wrote:
> On 10/30/10 3:50 AM, Saul Wold wrote:
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
>> Tool Chain - break it down to compiler, tools, libraries, and general
>> Kernel - Break it down to Arch / Config components
>> SDK - For all SDK related issues, have components for plugin, tools, ...
>> Sato - as it exists today
>> Runtime Distribution- Delete this, we are not a distro (no bugs now)
>
> My proposal -- similar bug slightly different:
>
> Poky Build System
> Bitbake
> Documentation
> General
>
Add Configurations - for the config/site data

> Poky Distribution
> Runtime Distribution -- Poky embedded linux distribution
Remember this is not a Distribution, I think Yocto (Poky?) Meta-Data / 
Recipes and then the following components

> Documentation
> Security
> Toolchain
> SDK
> Test Suite
Add:
   User Space Recipes (this could be further broken down, if needed)
   Toolchain Recipes (instead of Toolchain)
   General

>
> Yocto Infrastructure
> AutoBuilder
> Bugzilla
> Website
>
> Anjuta Plug-in
> ???
>
> Eclipse Plug-in
> ???
>
> Cross-Prelink
>
> Pseudo
>
> SDK Generator
>
> Swabber
>
Add the Kernel Product
  - Core
  - Drivers
  - Tooling (Trace, Debug, Perf)


>
> ... specifically we need a major category for each of the projects in
> Yocto, right now the bugzilla is very specific to Poky and I think that
> needs to be updated now that things are public.
>
>> Additionally, there is other discussion about Poky Test components for
>> the standards tests such as LSB, LTP, Posix.
>
> My suggestion is that is part of the run-time distribution. If someone
> chooses to not use the Poky run-time, then the tests likely won't be
> useful on their own.
>
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
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.pokylinux.org/listinfo/yocto

