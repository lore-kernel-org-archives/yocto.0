Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 902B5E00309
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 11:43:50 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 23 Nov 2011 11:43:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,560,1315206000"; d="scan'208";a="78584947"
Received: from unknown (HELO envy.home) ([10.255.12.65])
	by azsmga001.ch.intel.com with ESMTP; 23 Nov 2011 11:43:49 -0800
Message-ID: <4ECD4CF8.4020005@linux.intel.com>
Date: Wed, 23 Nov 2011 11:43:52 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <4ECAF89E.1030505@mindchasers.com> <4ECC2718.50008@linux.intel.com>
In-Reply-To: <4ECC2718.50008@linux.intel.com>
X-Enigmail-Version: 1.3.3
Cc: yocto@yoctoproject.org
Subject: Re: Atom netbook recommendation?
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
X-List-Received-Date: Wed, 23 Nov 2011 19:43:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 11/22/2011 02:50 PM, Joshua Lock wrote:
> Hi Bob,
> 
> On 21/11/11 17:19, Bob Cochran wrote:
>> Hello,
>>
>> We're going to bring an Atom based netbook in house for some additional
>> yocto testing. I would greatly appreciate any recommendations for ones
>> that behave well with the yocto project & are solid in general. Also,
>> letting me know about any netbooks to avoid would also be appreciated.
> 
> I assume the plan is to build for the netbooks, not on the netbooks? :-)
> 
> I've run Poky built images on a bunch of older netbooks I have lying 
> around by Samsung, Acer and Asus.
> 
> I think you should be fine with pretty much any netbook you can get but 
> I strongly recommend you avoid anything which requires non-open drivers 
> - that way you have a better chance of the stock kernel just working.
> 
> Just last week I built an image for my Samsung NC10 and the stock kernel 
> worked fine.
> 

We also have things working on the Toshiba NB305. The atom-pc machine
config lists some others - although they aren't particularly current.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

