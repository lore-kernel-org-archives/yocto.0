Received: from mailrelay2-2.pub.mailoutpod1-cph3.one.com (mailrelay2-2.pub.mailoutpod1-cph3.one.com [46.30.212.1])
 by mx.groups.io with SMTP id smtpd.web11.3136.1575360000692652892
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 00:00:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@berginkonsult.se header.s=20191106 header.b=olLOM/9z;
 spf=none, err=permanent DNS error (domain: berginkonsult.se, ip: 46.30.212.1, mailfrom: peter@berginkonsult.se)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20191106;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	 message-id:from:references:cc:to:subject:from;
	bh=OqM19LtXYtHRXZY6sLUanfXfH3gJbp8OElVOqGC4EVc=;
	b=olLOM/9zbpnxrlthLlQCr2bM8bPFARZUU1r+BABcWsMPx+P+UqwcrqHOw5cjlsgXQGXl04XEFdzla
	 ioUETqvwdNChSqgYnthxnJ+zuArnGaqRtF2RXk7LxjiEzLAwb/geauLzw41EYNUHdjLfxo64EYDoDd
	 f92a0ylSMMM8IgRVw8IhNqCDspID3NojSAGRtrJ71L9HKd+lYn5KFX9EUOsZe51MCkK+/C3jEvXAPj
	 8wvVi0Pi9Jg6qHHOMtSSaREcf/RTu8YxPPIyvBp08wuJ16bKOpg6Gi0z/Q3VYgySHmzkHMpOaz1h1t
	 DNrqUeWbwyxOYrO+o/JzBXfBXq3tDiA==
X-HalOne-Cookie: 14cf2658820f089f3cab234af218f8010af1c60c
X-HalOne-ID: e51d02b9-15a2-11ea-ba02-d0431ea8a290
Received: from [IPv6:2a00:801:42c:c51a:659f:e981:c76b:e4a9] (unknown [2a00:801:42c:c51a:659f:e981:c76b:e4a9])
	by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id e51d02b9-15a2-11ea-ba02-d0431ea8a290;
	Tue, 03 Dec 2019 07:59:57 +0000 (UTC)
Subject: Re: [yocto] linux-libc-headers - how to handle for older kernels?
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Mike Looijmans <mike.looijmans@topic.nl>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <93249840-e25f-bb2d-39af-325c15ae7afe@berginkonsult.se>
 <dcb9a8b4-88c5-5b1e-00ba-4b89f809e3d3@topic.nl>
 <CADkTA4O_vBgX-PRssZbCgzMDsyVr6LyoscXEAe5qyHFCJPu+rw@mail.gmail.com>
From: "Peter Bergin" <peter@berginkonsult.se>
Message-ID: <25ffb320-1366-369c-c9f1-302fb8bcc07b@berginkonsult.se>
Date: Tue, 3 Dec 2019 08:59:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CADkTA4O_vBgX-PRssZbCgzMDsyVr6LyoscXEAe5qyHFCJPu+rw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

On 2019-12-02 14:44, Bruce Ashfield wrote:
> On Mon, Dec 2, 2019 at 4:14 AM Mike Looijmans <mike.looijmans@topic.nl> wrote:
>> On 01-12-19 22:57, Peter Bergin via Lists.Yoctoproject.Org wrote:
>>> Hi,
>>>
>>> I'm currently working in a project using Yocto 2.6 (thud) release. It has
>>> default kernel v4.18 and also linux-libc-headers from kernel v4.18. In my
>>> project we will use kernel v4.1. I would like advice how to handle the
>>> linux-libc-headers package for my project, should I use the v4.18 headers or
>>> should I use the v4.1 header files which matches the running kernel?
>>>
>>>   From https://www.kernel.org/doc/html/latest/kbuild/headers_install.html:
>>> "Kernel headers are backwards compatible, but not forwards compatible. This
>>> means that a program built against a C library using older kernel headers
>>> should run on a newer kernel (although it may not have access to new
>>> features), but a program built against newer kernel headers may not work on an
>>> older kernel."
>>>
>>> With the information from the quote above I would directly use v4.1 headers as
>>> my linux-libc-headers. But then reading the information in the file
>>> meta/recipes-kernel/linux-libc-headers/linux-libc-headers.inc makes me think
>>> another round. It states:
>>>
>>> "
>>> # You're probably looking here thinking you need to create some new copy
>>> # of linux-libc-headers since you have your own custom kernel. To put
>>> # this simply, you DO NOT.
>>> ...
>>> # There can also be a case where your kernel extremely old and you want
>>> # an older libc ABI for that old kernel. The headers installed by this
>>> # recipe should still be a standard mainline kernel, not your own custom
>>> # one.
>>> "
>>>
>>> The first part states that I should not change linux-libc-headers. But when I
>>> read the last part I'm not sure about the interpretation and it could be for
>>> my case. Just a matter of definition if v4.1 is extremely old compared to v4.18.
>>>
>>> Then another thing comes in to the equation; the LIBC ABI. When I look into
>>> the configuration of the glibc package it uses the configure switch
>>> "--enable-kernel=3.2" which means it shall be compatible with all kernel newer
>>> than v3.2. Then probably glibc is fine if it is compiled with v4.18 and run on
>>> v4.1?
>>>
>>> If building all applications against v4.18 headers but run on v4.1 kernel. I
>>> have a feeling that there potentially can be problems here.
>>>
>>> Please help me with some information about this and share your opinions? Are
>>> there any risks at all to use v4.1 as linux-libc-headers in my Yocto build?
>>> The only drawback I see is that it will be a new configuration not well tested
>>> by the community. Are there other risks or drawbacks using your own version of
>>> linux-libc-headers?
>>
>> It is not broken, so please don't fix it.
>>
>> OpenPLi has been using kernels way older than 4.1 with the kernel-headers
>> generated by OE/yocto and did not experience any problems with that. There's
>> about 50+ machines in there that have pre-built binary drivers that only work
>> with a particular kernel config and hence the old stuff.
>>
>> There are some corner-cases with exotic kernels and exotic exports and exotic
>> boot executables that use the kernel compiler, but I doubt that you're in there...
>>
>> If you have a kernel that exports something that's not in the regular headers,
>> it's way better to solve that using a syscall than trying to poke in low level
>> libc stuff.
>>
>> So again, if you don't experience problems, please don't try to fix it...
> This has been my experience as well.
That's appealing approach. The part with the custom kernel headers is in 
my case solved that we have separate kernel headers that we add to the 
SDK. It is how I have understood the recommendation to solve this.

> I've run a really wide set of BSP kernel's against the various "much
> newer" yocto/OE libc-headers over the years, and I've never hit an ABI
> or otherwise incompatibility.
Actually there are issues with Yocto 2.6 together with v4.1 headers. I 
did an experiment to use v4.1 as linux-libc-headers. For my image i hit 
build failures in two packages, systemd and iptables. Those were easily 
fixed by upstream commits referenced below. I can not by a quick review 
say that those should cause run-time issues, probably not, but just 
showing that there are cases where packages not is fully aligned with 
all versions of kernel headers.

systemd:
https://github.com/systemd/systemd/commit/9c869d08d82c73f62ab3527567858ce4b0cf1257
iptables:
https://git.netfilter.org/iptables/commit/?id=5beb1582d13d3bfdd0d2b277f5f3154b2fbf4a8e

If you want the most deterministic build for one system and one setup I 
can not see any other option than using the same version for the kernel 
headers in both virtual/kernel and linux-libc-headers. Then if you want 
flexibility and possibility to support many builds it is better to have 
one common linux-libc-header version. Also from a test and validation 
point of view it is better if many people using the same version of 
linux-libc-headers instead of their own combination as we have a 
situation where this works almost all the time. Can anyone comment on 
this analyze, is it valid?

Thanks,
/Peter

