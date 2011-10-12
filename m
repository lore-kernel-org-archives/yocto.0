Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD952E004E9
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 09:59:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Oct 2011 09:59:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="62274906"
Received: from unknown (HELO envy.home) ([10.255.14.198])
	by orsmga001.jf.intel.com with ESMTP; 12 Oct 2011 09:59:51 -0700
Message-ID: <4E95C787.3020000@linux.intel.com>
Date: Wed, 12 Oct 2011 09:59:51 -0700
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
X-List-Received-Date: Wed, 12 Oct 2011 16:59:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



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
> 
> I'm currently doing some size-related work for Sony (including
> some work to support 4K stacks).
> 

Perhaps while I have the attention of a few interested parties, it would
be a good time for a poll. I'm interested in your motivation for smaller
images.

Are you building SoC's with memory on die and needing to keep the memory
footprint down to save precious die real-estate?

Are you looking at creating mass-market products and saving a few
pennies on the flash storage translates to real money, so you want to
minimize the physical size?

Are you concerned with boot time, and have connected larger image sizes
with longer boot times?

Is there another motivating factor for your interest in small images?

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

