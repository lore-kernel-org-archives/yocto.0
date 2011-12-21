Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3B75E006DE
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 09:58:08 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Dec 2011 09:57:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="89013570"
Received: from unknown (HELO envy.home) ([10.255.12.115])
	by orsmga001.jf.intel.com with ESMTP; 21 Dec 2011 09:57:58 -0800
Message-ID: <4EF21E14.2010302@linux.intel.com>
Date: Wed, 21 Dec 2011 09:57:40 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1324456294.git.dvhart@linux.intel.com>
	<64ce10cdc685f9f5c0288df4bd0ab276711148d6.1324456294.git.dvhart@linux.intel.com>
	<1324484918.18348.7.camel@ted> <4EF20DBB.6040200@linux.intel.com>
	<4EF21124.2050501@linux.intel.com> <1324488661.19860.8.camel@ted>
In-Reply-To: <1324488661.19860.8.camel@ted>
X-Enigmail-Version: 1.3.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 6/9] distro: Factor out poky-common.inc from poky.conf
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
X-List-Received-Date: Wed, 21 Dec 2011 17:58:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/21/2011 09:31 AM, Richard Purdie wrote:
> On Wed, 2011-12-21 at 09:02 -0800, Darren Hart wrote:
>>
>> On 12/21/2011 08:47 AM, Darren Hart wrote:
>>>
>>>
>>> On 12/21/2011 08:28 AM, Richard Purdie wrote:
>>>> On Wed, 2011-12-21 at 01:02 -0800, Darren Hart wrote:
>>>>> Prepare to add additional poky distro variants by factoring out
>>>>> assignments common to all poky* distros into poky-common.inc. Things
>>>>> like the naming schemes, mirrors, etc. are common, while dependencies
>>>>> and other things impacting image generation should be distro specific.
>>>>>
>>>>> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
>>>>
>>>> Why doesn't something like:
>>>>
>>>> """
>>>> $meta-yocto/conf/distro$ cat poky-lsb.conf 
>>>> require conf/distro/poky.conf
>>>>
>>>> DISTRO = "poky-lsb"
>>>> DISTROOVERRIDES = "poky:linuxstdbase"
>>>> """
>>>>
>>>> work?
>>>>
>>>> Effectively the above takes poky but then customises it...
>>>
>>> I seem to recall something about this being harder with tiny as it
>>> removes things rather than just extending. But I can't put recall
>>> exactly what the issue was (or if there was one). I shall try it this
>>> way if you prefer this approach. I felt the .inc approach provided a
>>> more explicit building block mechanism which seemed more intuitive and
>>> less prone to accidental inclusion. But, I don't feel strongly one way
>>> or the other.
>>
>> Aha, now I remember. Consider things like the following, defined in
>> poky.conf:
>>
>> DISTRO_FEATURES_append = " largefile opengl"
>>
>> This one, not so bad, I can easily override it.
> 
> Right, I'd expect you are totally overriding DISTRO_FEATURES anyway.
> 
>> PREFERRED_VERSION_linux-yocto ?= "2.6.37+git%"
>> PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.0%"
>> PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.0%"
>> PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.0%"
>> PREFERRED_VERSION_linux-yocto_qemumips ?= "3.0%"
>> PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.0%"
>>
>>
>> All the above I could override.... but I'd rather be able to use the
>> default without having to override them. This pollutes my distro config
>> space unnecessarily in my opinion.
> 
> Right now you need to override these things, in future I suspect you're
> going to want to share them when tiny becomes compatible with the
> default kernel. This is why I feel the line you've drawn over what to
> put into the .inc is a little arbitrary and why its a bad idea.
> 

tiny won't become compatible with the default kernel. linux-yocto-tiny
will continue to exist in order to specify the KMACHINE and KBRANCH and
possibly some other things. Much in the same way the linux-yocto-rt
recipe does. They all use the same repository, they just prepare the
sources differently enough to warrant specific recipes. So poky-tiny
will continue to specify the PREFERRED_PROVIDER_virtual/kernel. And now
that I think about it, that means the above assignments don't affect it
at all as they are referring to linux-yocto only.

>> DISTRO_EXTRA_RRECOMMENDS += "kernel-module-af-packet"
>>
>> Things like this are the kicker. I don't know of a way to remove just
>> what poky.conf appended to a variable, and not wipe out the rest of the
>> variable.
> 
> So can we just change poky.conf to do:
> 
> POKYDEFAULTRECOMMENDS = "kernel-module-af-packet
> DISTRO_EXTRA_RRECOMMENDS += "${POKYDEFAULTRECOMMENDS}"
> 
> and then you can change POKYDEFAULTRECOMMENDS to ""?

OK. I'll give it a shot. My only concern is that we get a lot of these
sorts of things and then the .inc makes more sense in my mind. As to the
line drawn, it wasn't really arbitrary, the idea was if it was likely to
be the same for all poky distro definitions, it went in the inc. If
things changes in the future, they can get shuffled around.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

