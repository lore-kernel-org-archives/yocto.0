Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8EB054C80B71
	for <yocto@yoctoproject.org>; Wed, 17 Nov 2010 23:23:27 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Nov 2010 21:23:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,215,1288594800"; d="scan'208";a="678630156"
Received: from unknown (HELO [10.255.13.148]) ([10.255.13.148])
	by orsmga001.jf.intel.com with ESMTP; 17 Nov 2010 21:23:27 -0800
Message-ID: <4CE4B84E.6050506@linux.intel.com>
Date: Wed, 17 Nov 2010 21:23:26 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4CE46608.1010708@linux.intel.com>
	<4CE4817F.3070007@linux.intel.com> <4CE4B603.2030709@windriver.com>
In-Reply-To: <4CE4B603.2030709@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Bugzilla Reorg Take 2
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
X-List-Received-Date: Thu, 18 Nov 2010 05:23:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/17/2010 09:13 PM, Bruce Ashfield wrote:
> On 10-11-17 8:29 PM, Darren Hart wrote:
>> On 11/17/2010 03:32 PM, Saul Wold wrote:
>>>
>>> Folks,
>>>
>>> After reviewing the emails from the first attempt and review bugzilla,
>>> there are a couple of different approaches that can be taken. It's
>>> important to note that bugzilla supports 3 layers, Classification,
>>> Product and Components, version are tracked at the Product level.
>>>
>>> Since we have 3 Layers, there are 2 possible scenarios:
>>>
>>> This is the Yocto Projects Bugzilla, so each "project" can have it's
>>> own classification, I am not sure that this is the best since some of
>>> the projects are pretty flat the extra level does not make sense.
>>>
>>> I am proposing the following top level classifications, containing the
>>> following projects (products/components) :
>>>
>>> Yocto Projects
>> ...
>>> - Kernel
>>> - build
>>> - configuration
>>> - runtime
>>
>> Acked-by: Darren Hart<dvhart@linux.intel.com>
>>
>>> - BSPs
>>> - by board??
>>
>> Let's start off simple - by board might not scale well. Just "BSP" would
>> be my vote - Bruce might have additional thoughts.
>
> This is the sane thing to do. One category 'bsp'. We can specify
> the BSP in the subject of the bug. If a bug appears across a
> class of BSPs or an arch, it gets bumped to kernel runtime and
> is dealt with there.
>
> We've been using this scheme for about 200 supported BSPs, so it
> should do just fine here as well.
>
OK, so should we 'demote' bsp to component or leave it a 'product'
level with 1 general component, just trying make sure we have flexibility.

Sau!

> Cheers,
>
> Bruce
>
>>
>

