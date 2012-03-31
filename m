Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3077E004D2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 20:28:40 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Mar 2012 20:28:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="148084846"
Received: from unknown (HELO envy.home) ([10.255.12.115])
	by fmsmga002.fm.intel.com with ESMTP; 30 Mar 2012 20:28:40 -0700
Message-ID: <4F7679BE.4090104@linux.intel.com>
Date: Fri, 30 Mar 2012 20:27:58 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<4F764759.1070801@linux.intel.com>
	<1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
	<4F764FB7.2080508@linux.intel.com>
	<95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
	<CABcZANm3gPp3zG0WHkgAgX_jC9uqfU46ieoRn_aYk99=6nYVkA@mail.gmail.com>
In-Reply-To: <CABcZANm3gPp3zG0WHkgAgX_jC9uqfU46ieoRn_aYk99=6nYVkA@mail.gmail.com>
X-Enigmail-Version: 1.4
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Sat, 31 Mar 2012 03:28:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 03/30/2012 08:00 PM, Chris Larson wrote:
> On Fri, Mar 30, 2012 at 7:27 PM, Darren Hart <dvhart@linux.intel.com> wrote:
>> On 03/30/2012 06:37 PM, Koen Kooi wrote:
>>>
>>> Op 30 mrt. 2012, om 18:21 heeft Darren Hart het volgende geschreven:
>>>>
>>>> So that brings us back to what does it mean for Angstrom to be a Yocto
>>>> Project project I guess?
>>>>
>>>> In my very humble opinion (really), it still makes sense to build
>>>> Angstrom with the components in the poky repository as part of a Yocto
>>>> Project release. I understand that there is resistance to this idea.
>>>
>>> Yes, it would force angstrom developers to ignore upstream and work on
>>> downstream projects
>>
>> That's an understandable concern. If I were a casual observer, I would
>> expect every project identifying itself with the Yocto Project to
>> interoperate with eachother at each release point. I would imagine that
>> Angstrom developers would continue their feature development with the
>> upstreams of bitbake and oe-core. As a Yocto Project release occurs (or
>> shortly after, as is the case with many BSPs) I would then expect (again
>> as a casual observer) that some effort went into ensuring some version
>> of Angstrom works with the release of the poky repository.
>>
>> You've mentioned preferring to do this with set versions of bitbake and
>> oe-core. Do oe-core and bitbake maintain stable branches? I didn't think
>> they did. This makes it difficult to stabilize a release, and poky
>> serves this purpose well in my opinion. I'm going to stop going down
>> this path though as the policies surrounding this aren't clear to me and
>> would be better coming from others (RP or Chris for example).
>>
>> Without this, people working with "The Yocto Project" are back to using
>> different versions of bitbake and oe-core depending on which
>> distribution or BSP they are building, and we ultimately end up where we
>> started with unsolvable dependency chains and people passing around
>> fixup patches for this or that issue.
>>
>>> or as I will label them from now on: forks.
>>>
>>>> Angstrom has been independent from poky and the Yocto Project in the
>>>> past and I can understand not wanting to lose some of that
>>>> individuality. However, too much individuality breeds chaos and
>>>> fragmentation.
>>>
>>> I will draw a line in the sand here and say: Forcing people to ignore
>>> upstream (oe-core/bitbake) and force a fork down their throats
>>> breeds chaos and fragmentation.
>>
>>
>> Don't be so dramatic Koen :-) Everybody involved knows the bitbake and
>> oe-core in the poky repository are not forks, at least not in the sense
>> you portray here. They are snapshots with the same maintainer (or subset
>> of maintainers). They are no more "forks" than the stable Linux kernels
>> maintained by Greg KH are forks of Linus' kernel. I won't presume to
> 
> Not to be terribly pendatic or difficult here, but technically, the
> comparison you make here doesn't ring true. bitbake in poky *still*
> has changes that never went into the upstream repository.

I wasn't aware. Not knowing what they are, I'll have to leave a comment
on those to others.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

