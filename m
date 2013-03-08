Return-Path: <insop.song@gmail.com>
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 564D4E01529
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 05:27:42 -0800 (PST)
Received: by mail-wg0-f43.google.com with SMTP id e12so2440787wge.34
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 05:27:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=kBH7qq+bdpKnbaEdDN06kohkDaFKjmOa77uggOSRPQI=;
	b=IqhzUWQEOGCV5gqAh797grjg4X5hAihoqLHTajcJa+JTMXngxZSmUF1YLy4TTDRaUG
	ae7IqTuCxPGZVnTH4Dj9McVsaaMhC/s2L6uEOcf8XRkpg2KfZrN+se0+gkV+jNTR9JHq
	53rFgmWt+e1z6br2Y9UgI/+bT/tZYouz6/czJ/7PGScffx17tFM4M4QZKCa6AT06U8tC
	o5gaODHf9HaQ9fDl/kV5lZirbc4+XIR0SJGfkpvmS6fiTJknDtiymGNeOteMaltrv9N3
	iI63rgFdq0L+E0zTp2skOxVH4lHiAOGKWhEjwJWDZzyFHPJAd+fQrNBqO5xvtMeaE+H3
	oU+A==
X-Received: by 10.194.6.2 with SMTP id w2mr3972036wjw.10.1362749260758; Fri,
	08 Mar 2013 05:27:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Fri, 8 Mar 2013 05:27:20 -0800 (PST)
In-Reply-To: <51389E52.2000109@windriver.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<CACzyEJ_uHp7JQQG=Ufec5ipXdb5aEyWrp38jJFhF+qofsGkZ+Q@mail.gmail.com>
	<513810E4.2040506@windriver.com>
	<CACzyEJ-Nzq1YMH7pDmWhnoco8Xsrm1R9zHDYLO4eM4XKM1a-SA@mail.gmail.com>
	<51389E52.2000109@windriver.com>
From: Insop Song <insop.song@gmail.com>
Date: Fri, 8 Mar 2013 05:27:20 -0800
Message-ID: <CACzyEJ9nXL0E_HggNbYcv5gO7zzXFZj1pLBwkH248DVB3BWRyg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
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
X-List-Received-Date: Fri, 08 Mar 2013 13:27:42 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 7, 2013 at 6:04 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 13-03-07 12:05 AM, Insop Song wrote:
>>
>> Bruce,
>>
>> That's very good. I will bring linux-yocto-3.8 kernel to meta-dl.
>> (https://github.com/insop/meta-dl/tree/linux-yocto-3.8)
>
>
> I have another suggestion to offer here, one I've been wanting to
> do for a bit.
>
> I've added Darren Hart to the thread, since I'd like to hear from
> him on this as well.
>
> I have a use for the scheduling tools and benchmark cases for some
> virtualization usecases (meta-virtualization on git.yoctoproject.org).
>
> We already have "recipes-rt" in oe-core, and the preempt-rt kernel
> available from linux-yocto, and as we've been discussing I've added
> support for EDF/sched_dealine in linux-yocto-3.8.
>
> I'm not a fan of having to many layers, but rather than putting these
> efforts in github layers, hiding them in meta-virtualiation and they
> aren't yet "core" enough to go in oe-core .. I'd rather see them
> conslidated in a "meta-realtime" (or whatever name we decide on)
> layer on git.yoctoproject.org.
>

meta-realtime sounds good to me, and this can include schedulers
real-time application and testing suits.

> There are also ideas around interrupt management, AMP, and alternative
> system partitioning that I'd like to drive into such a layer.
>

Good idea to add these continuously to the "meta-realtime"


> A quick scan of the layer index, doesn't show anything that matches
> this description. So I'm suggesting that we create a new layer
> to consolidate these approaches, and a layer that can be consumed by
> some of the other layers that are currently in progress.
>
> Comments ? In particular, point out a layer that already does this that
> I've missed.
>
>

I've took out machine related from my previous meta-dl-qemux86 and put
together meta-realtime as a starting point. It has two sched_deadline
testing program.
It's on github for now for your reference, but I am willing to move or
merge to git.yocto.

https://github.com/insop/meta-realtime

Thank you,

Insop

