Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A3B9E006D9
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 14:01:30 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2012 14:01:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="179646609"
Received: from unknown (HELO envy.home) ([10.255.12.119])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jun 2012 14:01:29 -0700
Message-ID: <4FD8FF5D.5060205@linux.intel.com>
Date: Wed, 13 Jun 2012 14:00:13 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <21DFE0D0610B43B982449CB678019727@intel.com>
	<4FD8FC7A.6000209@linux.intel.com>
	<66686EEDFFCF448E9EA9D435AD58344B@intel.com>
	<4FD8FE53.1030805@windriver.com>
In-Reply-To: <4FD8FE53.1030805@windriver.com>
X-Enigmail-Version: 1.4.2
Cc: yocto@yoctoproject.org
Subject: Re: More useful generic-x86 machine
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
X-List-Received-Date: Wed, 13 Jun 2012 21:01:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 06/13/2012 01:55 PM, Bruce Ashfield wrote:
> On 12-06-13 04:52 PM, Ross Burton wrote:
>> On Wednesday, 13 June 2012 at 21:47, Darren Hart wrote:
>>> Seems reasonable to me. We should probably have 32b and 64b of this
>>> machine as well.
>>
>> And x32… :)
> 
>  From the kernel point of view, these are just configuration extensions
> to a base, which is where this discussion started (the kernel, I'm
> excluding userspace on purpose). So this should be one machine with
> these as overlays, not three different machines.

I would have thought the three different architectures would have called
for three different machines. How would this work from the KMACHINE
meta-data perspective?

--
Darren

> 
> Cheers,
> 
> Bruce
> 
>>
>> Ross
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



