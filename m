Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D2B8E0030C
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2012 06:06:19 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q0HE6Gou010774
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 17 Jan 2012 06:06:17 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 17 Jan 2012 06:06:16 -0800
Message-ID: <4F15804E.4020009@windriver.com>
Date: Tue, 17 Jan 2012 09:06:06 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: "Zhai, Edwin" <edwin.zhai@intel.com>
References: <20120111070157.GC10415@edwin-gen>
	<4F0D83EB.3010008@windriver.com> <4F0EDC9F.4050502@intel.com>
In-Reply-To: <4F0EDC9F.4050502@intel.com>
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
X-List-Received-Date: Tue, 17 Jan 2012 14:06:19 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-01-12 08:14 AM, Zhai, Edwin wrote:
> Bruce,
> Thanks for your efforts!

FYI: I haven't forgotten about this, I'm just reworking a few
things with the 3.2 kernel tree, and will include this as part
of that effort. It will all be available soon.

Bruce

>
> Edwin
>
> On 2012/1/11 20:43, Bruce Ashfield wrote:
>> On 12-01-11 02:01 AM, Zhai, Edwin wrote:
>>> Bruce,
>>> Can we enable SMP and virtio by default for qemux86/x86-64? This can
>>> achieve
>>> huge perf boost for workload inside qemu. E.g. we enabled self-hosted
>>> image,
>>> where we build yocto inside qemu.
>>>
>>> Attached patch showes the kernel config option.
>>>
>>> Is it reasonable?
>>
>> It should be. I just need to look at the fallback modes, and how this
>> impacts different host systems. That being said, I've run with similar
>> configs in the past (depending on the workload) with no issues.
>>
>> qemux8-64 is already SMP, so it would just need the addition of virtio
>> devices, which just means we'd look at this as any BSP/target config
>> update.
>>
>> But with graceful degradation (i.e maxcpus with SMP set) and agreement
>> that we'd like to simulate SMP by default, then we can make the change
>> and I'll merge it into the base config for the target and pull it into
>> the kernel tree.
>>
>> Cheers,
>>
>> Bruce
>>
>>
>>
>>
>>>
>>> Thanks,
>>> Edwin
>>>
>>
>


