Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7F40E006CC
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 09:03:33 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 Mar 2013 09:03:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,809,1355126400"; d="scan'208";a="266942332"
Received: from unknown (HELO envy.home) ([10.255.12.187])
	by azsmga001.ch.intel.com with ESMTP; 08 Mar 2013 09:03:15 -0800
Message-ID: <513A19D3.8010508@linux.intel.com>
Date: Fri, 08 Mar 2013 09:03:15 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130110 Thunderbird/17.0.2
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<CACzyEJ_uHp7JQQG=Ufec5ipXdb5aEyWrp38jJFhF+qofsGkZ+Q@mail.gmail.com>
	<513810E4.2040506@windriver.com>
	<CACzyEJ-Nzq1YMH7pDmWhnoco8Xsrm1R9zHDYLO4eM4XKM1a-SA@mail.gmail.com>
	<51389E52.2000109@windriver.com>
In-Reply-To: <51389E52.2000109@windriver.com>
X-Enigmail-Version: 1.5.1
Cc: yocto@yoctoproject.org
Subject: Re: A question on adding a new program to a new meta layer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 08 Mar 2013 17:03:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/07/2013 06:04 AM, Bruce Ashfield wrote:
> On 13-03-07 12:05 AM, Insop Song wrote:
>> Bruce,
>>
>> That's very good. I will bring linux-yocto-3.8 kernel to meta-dl.
>> (https://github.com/insop/meta-dl/tree/linux-yocto-3.8)
> 
> I have another suggestion to offer here, one I've been wanting to
> do for a bit.
> 
> I've added Darren Hart to the thread, since I'd like to hear from
> him on this as well.
> 
> I have a use for the scheduling tools and benchmark cases for some
> virtualization usecases (meta-virtualization on git.yoctoproject.org).
> 
> We already have "recipes-rt" in oe-core, and the preempt-rt kernel
> available from linux-yocto, and as we've been discussing I've added
> support for EDF/sched_dealine in linux-yocto-3.8.
> 
> I'm not a fan of having to many layers, but rather than putting these
> efforts in github layers, hiding them in meta-virtualiation and they
> aren't yet "core" enough to go in oe-core .. I'd rather see them
> conslidated in a "meta-realtime" (or whatever name we decide on)
> layer on git.yoctoproject.org.


I'm fine with that. We should probably consider adding a realtime distro
definition as well at some point soon.


> 
> There are also ideas around interrupt management, AMP, and alternative
> system partitioning that I'd like to drive into such a layer.
> 
> A quick scan of the layer index, doesn't show anything that matches
> this description. So I'm suggesting that we create a new layer
> to consolidate these approaches, and a layer that can be consumed by
> some of the other layers that are currently in progress.
> 
> Comments ? In particular, point out a layer that already does this that
> I've missed.


No objection. Something outside of core would be better do to the
experimental nature of so much of this stuff.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

