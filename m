Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CD5DE006C2
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 09:12:56 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Jan 2013 09:12:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,480,1355126400"; d="scan'208";a="247790457"
Received: from unknown (HELO envy.home) ([10.255.15.50])
	by orsmga001.jf.intel.com with ESMTP; 16 Jan 2013 09:11:49 -0800
Message-ID: <50F6DF54.2020005@linux.intel.com>
Date: Wed, 16 Jan 2013 09:11:48 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
	<50F5992C.9070705@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D97A@GV1HQPEX03.babgsetc.pvt>
	<50F5A221.2070209@windriver.com>
In-Reply-To: <50F5A221.2070209@windriver.com>
X-Enigmail-Version: 1.5
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Brian Lloyd <blloyd@familyhonor.net>
Subject: Re: Build external module against Yocto kernel
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
X-List-Received-Date: Wed, 16 Jan 2013 17:12:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/15/2013 10:38 AM, Bruce Ashfield wrote:
> On 13-01-15 01:26 PM, Patrick Turley wrote:
>> On Jan 15, 2013, at 12:00 PM, Bruce Ashfield <bruce.ashfield@windriver.com>
>>   wrote:
>>
>>> On 13-01-15 12:54 PM, Patrick Turley wrote:
>>>> Thank you for directing me toward that documentation. As it happens, I
>>>> have already read that, and it doesn't apply.
>>>
>>> There are ways to do this, your requirement is the same as the on-target
>>> module building requirement. Have enough of the kernel source packaged
>>> to build modules on the target, after it has booted.
>>
>> Well, I still want to cross-compile them, but I see your point.
>>
>>> The trick is packaging things properly to not get binary/target elements
>>> in the SDK/native packages, and to package just enough for the build. But
>>> the issues have been explored and there was a plan. I know that Darren
>>> (cc'd) has looked into this more than I have recently.
>>>
>>> I can't locate the bugzilla entries on this at the moment, but I recall
>>> that some parts were still missing, but may be addressed in yocto 1.4,
>>> when I find the bug numbers, I'll have a better idea.
>>
>> As I expected, someone else has already thought about this. This isn't the most common approach so it makes sense that it's been a lower priority. The good news for me is that I know I'm not missing something, so I can stop looking for it.
> 
> I finally found the entries that I was recalling earlier. They are:
> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=241
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=1614
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=2968
> 
> 1614 and 2968 are the most interesting for what you are asking.
> 
> As you can see the net result of those bugs is that you can get the
> right parts of the kernel tree in SDK packages, since they include
> dev packages, and with what is currently in kernel-dev .. it should
> be enough to build against in the SDK (perhaps with just the LDFLAGS
> tweaks mentioned in the other thread). The sources should be part
> of the sysroot, and hence available when that is packaged for use
> outside of bitbake/yocto.
> 
> If you aren't seeing kernel-dev in the SDK image, it might be that
> TOOLCHAIN_TARGET_TASK doesn't have kernel-dev by default, or something
> else is different in the SDK that is being generated in your testing.
> 
> I'm only speculating about what might be missing, since I'm not 100%
> familiar with the SDK, but perhaps Jessica or others can chime in if
> I've led you astray :)
> 

Thanks for keeping this going Bruce. Yes, kernel-dev is the package for
the target. The only trick here is that we currently purge the host
binaries which means that you need to build scripts on the target prior
to building the module.

I think this might be missing from the new kernel manual as it isn't a
particularly common use-case, and is rather orthogonal to the way the
tooling has been designed (not to say it can't be done).

Patrick, please keep us posted if this continues to not work for you. I
will open a bug to include a section about this in the kernel
development manual.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

