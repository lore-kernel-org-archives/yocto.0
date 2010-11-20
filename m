Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 059B54C80FA7
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 18:06:19 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 Nov 2010 16:06:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,226,1288594800"; d="scan'208";a="575705044"
Received: from doubt.jf.intel.com (HELO [10.7.199.159]) ([10.7.199.159])
	by orsmga002.jf.intel.com with ESMTP; 19 Nov 2010 16:06:19 -0800
Message-ID: <4CE710FC.6010508@linux.intel.com>
Date: Fri, 19 Nov 2010 16:06:20 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <4CE704C6.6010203@linux.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D3667ECAD@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D3667ECAD@shsmsx502.ccr.corp.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RFC: Rapid iterative development
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
X-List-Received-Date: Sat, 20 Nov 2010 00:06:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/2010 03:42 PM, Tian, Kevin wrote:
>> From: Darren Hart
>> Sent: Saturday, November 20, 2010 7:14 AM
>>
>> While working on a single package, I need to be able to tweak a variable
>> in the new recipe, change the MACHINE in local.conf, etc. I'd like to be
>> able to rapidly test my changes, but some of these changes trigger a
>> long list of dependencies for various commands. While working on a new
>> linux kernel recipe, I found it rebuilding a number of things that were
>> either -native (can I force it to use the system version rather than
>> building one) or seemed unrelated to the process at hand.
>
> That's interesting. Did you build from scratch or incrementally? Ideally only
> recipes being changed will be rebuilt in incremental way.

By changing machine type (and therefor architecture) I probably trigger 
at least all the non -native builds. These were clean builds. I'd just 
like to eliminate as much of that as possible when testing things like:

$ bitbake linux-linaro -c fetch

and

$ bitbake linux-linaro -c configure

>
>>
>> Are there some best practices for iterative recipe development that
>> speed things along?
>>
>
> "bitbake -k" is one method if you're sure the dependency doesn't change.
> But if you change MACHINE, I think a whole rebuild except -native will
> be required as it's the fundamental bit for target recipes.

OK, time to get this off the laptop and onto something with some serious 
storage then I guess.

-- 
Darren Hart
Yocto Linux Kernel

