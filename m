Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11AB8E004CF
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 08:55:42 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 Oct 2011 08:55:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,335,1315206000"; d="scan'208";a="61529768"
Received: from unknown (HELO envy.home) ([10.255.14.198])
	by azsmga001.ch.intel.com with ESMTP; 12 Oct 2011 08:55:42 -0700
Message-ID: <4E95B87E.6050300@linux.intel.com>
Date: Wed, 12 Oct 2011 08:55:42 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Tim Bird <tim.bird@am.sony.com>
References: <4E933C41.4000207@linux.intel.com> <4E94D624.1020107@am.sony.com>
In-Reply-To: <4E94D624.1020107@am.sony.com>
X-Enigmail-Version: 1.3.2
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RFC: User configurable recipe features
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
X-List-Received-Date: Wed, 12 Oct 2011 15:55:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Tim,

On 10/11/2011 04:49 PM, Tim Bird wrote:
> On 10/10/2011 11:41 AM, Darren Hart wrote:
>> As part of working on meta-tiny, I've come across a need (want?) to
>> present users with the ability to select some set of features in a local
>> configuration file that will impact the build of the image and a set of
>> recipes.
> 
> Can you tell me more about meta-tiny?  this is the first I've heard
> about this (sorry if discussion went by on the mailing list and I
> missed it), and I'm very interested.


Tim,

I'll be presenting things in more detail at ELCE, Friday @ 3:45 PM in
the Kepler room. The summary is that I have received a lot of questions
along the lines of "How small of an image can I build with Yocto?".
core-image-minimal does a decent job at a small general purpose image,
but it still has a lot of baggage that a truly size conscious developer
doesn't need for a custom BSP.

meta-tiny is my experimental layer where I'm looking at what we can
build with our existing sources and infrastructure. I've found that we
can cut the image size to about 10% of core-image-minimal without
changes to source code, but dropping a lot of functionality. We can get
to something like 20% while still maintaining ipv4 networking.

This "recipe features" thread stems from this work. Before I can
integrate something like this into Yocto, it needs a more suitable user
exposed configuration mechanism.

I'm working from a public git repository, but it isn't in sync with my
local development branch as things are changing by the minute still. I
will be pushing this to a Yocto hosted git repository in time for ELCE,
but it will still be development/experimental. If you are interested in
seeing what is there now, you can have a look to get an idea of what I'm
doing. Please note this tree WILL rebase, it WILL fail to build, it WILL
destroy your tmp dir, your sstate, and waste your time as you try and
pick through the various options to get something that builds and boots
;-) Also, this repo will disappear in the next few days, but if you just
want to see it, it's here:

http://git.infradead.org/users/dvhart/meta-tiny.git

> 
> I'm currently doing some size-related work for Sony (including
> some work to support 4K stacks).

I'd like to have a look - is there anything out there I can read through?

Post ELCE, I'd like to look at more source level changes we can make. In
particular I'd like to see the >200k bzImage increase for ipv4 come
down. In addition to that, I'm hoping to take a closer look at dynamic
memory usage in the Linux kernel for small systems.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

