Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92209E0072A
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 05:16:13 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Jan 2012 05:14:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="95113378"
Received: from gzhai-mobl3.ccr.corp.intel.com (HELO [10.255.29.136])
	([10.255.29.136])
	by azsmga001.ch.intel.com with ESMTP; 12 Jan 2012 05:14:08 -0800
Message-ID: <4F0EDC9F.4050502@intel.com>
Date: Thu, 12 Jan 2012 21:14:07 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:6.0.2) Gecko/20110902 Thunderbird/6.0.2
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <20120111070157.GC10415@edwin-gen> <4F0D83EB.3010008@windriver.com>
In-Reply-To: <4F0D83EB.3010008@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Request to enable SMP and virtio for qemux86/x86-64
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
X-List-Received-Date: Thu, 12 Jan 2012 13:16:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Bruce,
Thanks for your efforts!

Edwin

On 2012/1/11 20:43, Bruce Ashfield wrote:
> On 12-01-11 02:01 AM, Zhai, Edwin wrote:
>> Bruce,
>> Can we enable SMP and virtio by default for qemux86/x86-64? This can
>> achieve
>> huge perf boost for workload inside qemu. E.g. we enabled self-hosted
>> image,
>> where we build yocto inside qemu.
>>
>> Attached patch showes the kernel config option.
>>
>> Is it reasonable?
>
> It should be. I just need to look at the fallback modes, and how this
> impacts different host systems. That being said, I've run with similar
> configs in the past (depending on the workload) with no issues.
>
> qemux8-64 is already SMP, so it would just need the addition of virtio
> devices, which just means we'd look at this as any BSP/target config
> update.
>
> But with graceful degradation (i.e maxcpus with SMP set) and agreement
> that we'd like to simulate SMP by default, then we can make the change
> and I'll merge it into the base config for the target and pull it into
> the kernel tree.
>
> Cheers,
>
> Bruce
>
>
>
>
>>
>> Thanks,
>> Edwin
>>
>


