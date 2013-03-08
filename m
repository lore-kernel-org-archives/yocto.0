Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 67FFEE012F1
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 08:32:59 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r28GWpat016894
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 8 Mar 2013 08:32:51 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Fri, 8 Mar 2013 08:32:51 -0800
Message-ID: <513A12A7.7040401@windriver.com>
Date: Fri, 8 Mar 2013 11:32:39 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Insop Song <insop.song@gmail.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<CACzyEJ_uHp7JQQG=Ufec5ipXdb5aEyWrp38jJFhF+qofsGkZ+Q@mail.gmail.com>
	<513810E4.2040506@windriver.com>
	<CACzyEJ-Nzq1YMH7pDmWhnoco8Xsrm1R9zHDYLO4eM4XKM1a-SA@mail.gmail.com>
	<51389E52.2000109@windriver.com>
	<CACzyEJ9nXL0E_HggNbYcv5gO7zzXFZj1pLBwkH248DVB3BWRyg@mail.gmail.com>
In-Reply-To: <CACzyEJ9nXL0E_HggNbYcv5gO7zzXFZj1pLBwkH248DVB3BWRyg@mail.gmail.com>
Cc: Darren Hart <dvhart@linux.intel.com>, yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 08 Mar 2013 16:32:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-08 08:27 AM, Insop Song wrote:
> On Thu, Mar 7, 2013 at 6:04 AM, Bruce Ashfield
> <bruce.ashfield@windriver.com> wrote:
>> On 13-03-07 12:05 AM, Insop Song wrote:
>>>
>>> Bruce,
>>>
>>> That's very good. I will bring linux-yocto-3.8 kernel to meta-dl.
>>> (https://github.com/insop/meta-dl/tree/linux-yocto-3.8)
>>
>>
>> I have another suggestion to offer here, one I've been wanting to
>> do for a bit.
>>
>> I've added Darren Hart to the thread, since I'd like to hear from
>> him on this as well.
>>
>> I have a use for the scheduling tools and benchmark cases for some
>> virtualization usecases (meta-virtualization on git.yoctoproject.org).
>>
>> We already have "recipes-rt" in oe-core, and the preempt-rt kernel
>> available from linux-yocto, and as we've been discussing I've added
>> support for EDF/sched_dealine in linux-yocto-3.8.
>>
>> I'm not a fan of having to many layers, but rather than putting these
>> efforts in github layers, hiding them in meta-virtualiation and they
>> aren't yet "core" enough to go in oe-core .. I'd rather see them
>> conslidated in a "meta-realtime" (or whatever name we decide on)
>> layer on git.yoctoproject.org.
>>
>
> meta-realtime sounds good to me, and this can include schedulers
> real-time application and testing suits.
>
>> There are also ideas around interrupt management, AMP, and alternative
>> system partitioning that I'd like to drive into such a layer.
>>
>
> Good idea to add these continuously to the "meta-realtime"
>
>
>> A quick scan of the layer index, doesn't show anything that matches
>> this description. So I'm suggesting that we create a new layer
>> to consolidate these approaches, and a layer that can be consumed by
>> some of the other layers that are currently in progress.
>>
>> Comments ? In particular, point out a layer that already does this that
>> I've missed.
>>
>>
>
> I've took out machine related from my previous meta-dl-qemux86 and put
> together meta-realtime as a starting point. It has two sched_deadline
> testing program.
> It's on github for now for your reference, but I am willing to move or
> merge to git.yocto.
>
> https://github.com/insop/meta-realtime

Thanks. I'll have a look, I have my own local meta-realtime as well,
so I can consolidate the two and see about getting them hosted on
git.yoctoproject.org.

Cheers,

Bruce

>
> Thank you,
>
> Insop
>


