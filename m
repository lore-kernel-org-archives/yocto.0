Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1E21E006B0
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 14:56:30 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Dec 2011 14:56:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="84483431"
Received: from sharon1-mobl1.amr.corp.intel.com (HELO envy.home)
	([10.7.199.161])
	by orsmga001.jf.intel.com with ESMTP; 08 Dec 2011 14:56:29 -0800
Message-ID: <4EE140AA.3040506@linux.intel.com>
Date: Thu, 08 Dec 2011 14:56:42 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
	<CABcZANkovWJH9dFUpRngNzrQH5VAxYOiO1dK3H2pPB4SM9GS6A@mail.gmail.com>
	<1605255.ltn5bNtJ0l@helios>
	<752D6B50-3DE9-4257-B160-AE1CAA99F2C7@dominion.thruhere.net>
	<88701C38B5D07249817D428430999C910B774381@sestoex09.enea.se>
	<CADkTA4O1DeNXkfVk0Oc3Gspsz2erGf0pJTRE0XOLypww8M2n_Q@mail.gmail.com>
	<4EE106CB.6080104@linux.intel.com> <1323384424.5309.85.camel@ted>
In-Reply-To: <1323384424.5309.85.camel@ted>
X-Enigmail-Version: 1.3.3
Cc: =?UTF-8?B?RGF2aWQgTnlzdHLDtg==?= =?UTF-8?B?bQ==?= <David.Nystrom@enea.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Variable locality too restricted.
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
X-List-Received-Date: Thu, 08 Dec 2011 22:56:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/08/2011 02:47 PM, Richard Purdie wrote:
> On Thu, 2011-12-08 at 10:49 -0800, Darren Hart wrote:
>> On 12/08/2011 06:31 AM, Bruce Ashfield wrote:
>>> If you want to then modify the configuration slightly using either
>>> in-tree or add on kernel
>>> configuration fragments you can simply add a .cfg to the SCR_URI or set the
>>> KERNEL_FEATURES variable, just like Darren did recently.
>>>
>>>    KERNEL_FEATURES_append_fri2 += " cfg/smp.scc cfg/efi-ext.scc"
>>
>>
>> This has the same original variable scope issue as before however. It
>> would be nice to be able to do this:
>>
>> $ bitbake core-image-minimal
>> $ bitbake core-image-minimal-debug
>>
>> The latter image would use the same machine, but it would build perf,
>> add "debug" and other configurable options to "APPEND", and add a
>> configurable set of KERNEL_FEATURES. We should also update the base
>> kernel tools (non-Yocto) to use merge_config.sh so fragments can be used
>> in those recipes as well.
>>
>> The problem I've run into here in the past has been that I cannot
>> specify things like PREFERRED_PROVIDER in the image recipe. So, for
>> example, to build RT, the current documented approach is to first add a
>> PREFERRED_PROVIDER line to either local.conf or bblayers to select
>> linux-yocto-rt and then to build core-image-rt which merely adds some
>> relevant packages. It would be much preferable to be able to specify
>> just an image target and not have to change your configuration because
>> the image is the intuitive distinguishing factor for people.
> 
> I'd like to give the bitbake perspective on this problem.
> 
> PREFERRED_PROVIDER in images doesn't really make sense to bitbake.
> Imagine you have:
> 
> core-image-minimal setting PREFERRED_PROVIDER = "kernelA" and
> core-image-minima-debug setting PREFERRED_PROVIDER = "kernelB". Both
> would depend on "virtual/kernel". You then run:
> 
> "bitbake core-image-minimal core-image-minimal-debug"
> 
> What would you expect bitbake to do?

What I _think_ most people would expect it to do is to build each kernel
and install the right one in each image. I understand this doesn't work
with the way bitbake currently handles kernels, as you describe below.

> The kernel is special in that doesn't really stage output that is reused
> by other parts of the system but we have to consider the general case
> where output such as libraries would end up in a shared sysroot. Even
> then, the kernel does generate packages which it places in a machine
> specific feed and the names don't reflect the different inputs, there is
> one kernel-image package for example and in the above case it would be a
> race on which one built last.

The names not reflecting different inputs seems like it should be
something we can address. I appreciate it isn't trivial, and probably
stomps on some pretty core assumptions dealing with how we build images,
but I believe it would be valuable to be able to build multiple kernel
versions for a given machine. Many Linux distributions do this and I can
see users of Yocto wanting to do the same with the distributions they build.

> 
> Bitbake therefore takes PREFERRED_PROVIDER and VERSION decisions from
> the core configuration (.conf / .inc / machine / distro / bitbake.conf /
> base.bbclass). There is no easy solution to this problem, even recipe
> specific sysroots would only get a part solution.

Would this be something we should consider as a major feature
development item for a future release?

> Having said that, if you enable sstate checksums on the stamp files, you
> will get a system that is *much* more responsive to change. With that
> enabled you could:
> 
> bitbake core-image-minimal
> <realise you need debug enabled>
> <edit some .conf which turns it on>
> bitbake core-image-minimal
> <have an image with debug enabled>
> 
> The reason is that with the checksums on, bitbake can tell exactly what
> changed, what it needs to rebuild and it will then do so.
> 
> Cheers,
> 
> Richard
-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

