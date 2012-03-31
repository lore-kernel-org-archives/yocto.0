Return-Path: <kergoth@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29C6CE004D2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 20:00:33 -0700 (PDT)
Received: by werc1 with SMTP id c1so973557wer.35
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 20:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=M3Ca8XKLvmMJMr4/DKzSBAVsXndiX9+rI99i10dikE0=;
	b=Zp6AD/D7yLm5PSchVbJmGdshTRReJ+hHZLqvsZlL6R710AL4WWJ0KliytVqG6lP09y
	Zv4VaqBHqVZfgxcO7LIdcooFabfgi4dGMKmp6ljJXXFxUD/wPENcoOMs+/1o6oyjuxhB
	OV661In4fG6o7T1KQStCf/uwCTvJLttaZcCtVR4Dl36+HSGr92WpzDyzZeGwkQP8ib8b
	XhnM0B/iNVgZHGZXjkPuo79RiCVLiHxMOC9XPrRyRIbpIQ7WOT6e3pA+GmN3pn3bjVqK
	tpcw8ZfzwdQm0NfKKHMTDPvS9c0St+0wcD5avZVfi6detdQp08pBcFiLdoR8/AFy7/Pe
	ns6w==
Received: by 10.180.98.8 with SMTP id ee8mr2397352wib.14.1333162832402; Fri,
	30 Mar 2012 20:00:32 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.86.11 with HTTP; Fri, 30 Mar 2012 20:00:12 -0700 (PDT)
In-Reply-To: <4F766B84.9080505@linux.intel.com>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<4F764759.1070801@linux.intel.com>
	<1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
	<4F764FB7.2080508@linux.intel.com>
	<95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 30 Mar 2012 20:00:12 -0700
X-Google-Sender-Auth: X6t0Y4xttP0i-Klyg3kWHPuP0nE
Message-ID: <CABcZANm3gPp3zG0WHkgAgX_jC9uqfU46ieoRn_aYk99=6nYVkA@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Sat, 31 Mar 2012 03:00:34 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 30, 2012 at 7:27 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> On 03/30/2012 06:37 PM, Koen Kooi wrote:
>>
>> Op 30 mrt. 2012, om 18:21 heeft Darren Hart het volgende geschreven:
>>>
>>> So that brings us back to what does it mean for Angstrom to be a Yocto
>>> Project project I guess?
>>>
>>> In my very humble opinion (really), it still makes sense to build
>>> Angstrom with the components in the poky repository as part of a Yocto
>>> Project release. I understand that there is resistance to this idea.
>>
>> Yes, it would force angstrom developers to ignore upstream and work on
>> downstream projects
>
> That's an understandable concern. If I were a casual observer, I would
> expect every project identifying itself with the Yocto Project to
> interoperate with eachother at each release point. I would imagine that
> Angstrom developers would continue their feature development with the
> upstreams of bitbake and oe-core. As a Yocto Project release occurs (or
> shortly after, as is the case with many BSPs) I would then expect (again
> as a casual observer) that some effort went into ensuring some version
> of Angstrom works with the release of the poky repository.
>
> You've mentioned preferring to do this with set versions of bitbake and
> oe-core. Do oe-core and bitbake maintain stable branches? I didn't think
> they did. This makes it difficult to stabilize a release, and poky
> serves this purpose well in my opinion. I'm going to stop going down
> this path though as the policies surrounding this aren't clear to me and
> would be better coming from others (RP or Chris for example).
>
> Without this, people working with "The Yocto Project" are back to using
> different versions of bitbake and oe-core depending on which
> distribution or BSP they are building, and we ultimately end up where we
> started with unsolvable dependency chains and people passing around
> fixup patches for this or that issue.
>
>> or as I will label them from now on: forks.
>>
>>> Angstrom has been independent from poky and the Yocto Project in the
>>> past and I can understand not wanting to lose some of that
>>> individuality. However, too much individuality breeds chaos and
>>> fragmentation.
>>
>> I will draw a line in the sand here and say: Forcing people to ignore
>> upstream (oe-core/bitbake) and force a fork down their throats
>> breeds chaos and fragmentation.
>
>
> Don't be so dramatic Koen :-) Everybody involved knows the bitbake and
> oe-core in the poky repository are not forks, at least not in the sense
> you portray here. They are snapshots with the same maintainer (or subset
> of maintainers). They are no more "forks" than the stable Linux kernels
> maintained by Greg KH are forks of Linus' kernel. I won't presume to

Not to be terribly pendatic or difficult here, but technically, the
comparison you make here doesn't ring true. bitbake in poky *still*
has changes that never went into the upstream repository.
-- 
Christopher Larson

