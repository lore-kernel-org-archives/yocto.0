Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 643C3E0123C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 08:48:15 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Dec 2011 08:48:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="90045413"
Received: from unknown (HELO envy.home) ([10.255.12.115])
	by orsmga002.jf.intel.com with ESMTP; 21 Dec 2011 08:48:13 -0800
Message-ID: <4EF20DBB.6040200@linux.intel.com>
Date: Wed, 21 Dec 2011 08:47:55 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1324456294.git.dvhart@linux.intel.com>
	<64ce10cdc685f9f5c0288df4bd0ab276711148d6.1324456294.git.dvhart@linux.intel.com>
	<1324484918.18348.7.camel@ted>
In-Reply-To: <1324484918.18348.7.camel@ted>
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
X-List-Received-Date: Wed, 21 Dec 2011 16:48:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/21/2011 08:28 AM, Richard Purdie wrote:
> On Wed, 2011-12-21 at 01:02 -0800, Darren Hart wrote:
>> Prepare to add additional poky distro variants by factoring out
>> assignments common to all poky* distros into poky-common.inc. Things
>> like the naming schemes, mirrors, etc. are common, while dependencies
>> and other things impacting image generation should be distro specific.
>>
>> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> 
> Why doesn't something like:
> 
> """
> $meta-yocto/conf/distro$ cat poky-lsb.conf 
> require conf/distro/poky.conf
> 
> DISTRO = "poky-lsb"
> DISTROOVERRIDES = "poky:linuxstdbase"
> """
> 
> work?
> 
> Effectively the above takes poky but then customises it...

I seem to recall something about this being harder with tiny as it
removes things rather than just extending. But I can't put recall
exactly what the issue was (or if there was one). I shall try it this
way if you prefer this approach. I felt the .inc approach provided a
more explicit building block mechanism which seemed more intuitive and
less prone to accidental inclusion. But, I don't feel strongly one way
or the other.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

