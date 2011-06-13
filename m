Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5A6604C80052
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2011 15:09:03 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Jun 2011 13:09:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,360,1304319600"; d="scan'208";a="14027329"
Received: from doubt.jf.intel.com (HELO [10.7.199.61]) ([10.7.199.61])
	by orsmga001.jf.intel.com with ESMTP; 13 Jun 2011 13:09:02 -0700
Message-ID: <4DF66E5D.3080000@linux.intel.com>
Date: Mon, 13 Jun 2011 13:09:01 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1307938815.git.tom.zanussi@intel.com>	
	<4DF657B6.4030609@linux.intel.com>
	<1307990989.10825.14.camel@elmorro>
In-Reply-To: <1307990989.10825.14.camel@elmorro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2] meta-intel: add bbappends for systemtap
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
X-List-Received-Date: Mon, 13 Jun 2011 20:09:03 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06/13/2011 11:49 AM, Tom Zanussi wrote:
> On Mon, 2011-06-13 at 11:32 -0700, Darren Hart wrote:
>> On 06/13/2011 07:32 AM, tom.zanussi@intel.com wrote:
>>> From: Tom Zanussi <tom.zanussi@intel.com>
>>>
>>> Removing any old references to systemtap from meta means we need to add
>>> it here.  It also adds systemtap support for the other, previously
>>> uncovered meta-intel bsps.
>>
>> Wouldn't it make more sense to add systemtap to and image recipe, either
>> a new recipe or a bbappend? Also, it seems to me that RRECOMMENDS would
>> make more sense than RDEPENDS - as it isn't required for boot.
>>
> 
> Hmm, not following you here - why would I want a new image recipe for
> systemtap?
> 
> Systemtap fits in with the other profiling tools in the
> task-core-tools-profile as far as I can see;\

Ah, I see. OK.

> this patch essentially adds
> systemtap to that list, but since it won't run on half the architectures
> we support, it can't be simply added to the recipe but needs to be
> appended for each machine (well, that may change when I switch to
> COMPATIBLE_HOST as pointed out by a couple people, but that was the
> reason behind the current appends).

> And, yeah, maybe RRECOMMENDs makes more sense here, will think about
> changing that on the respin.

OK.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

