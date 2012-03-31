Return-Path: <koen@dominion.thruhere.net>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C06F6E0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 17:08:12 -0700 (PDT)
Received: by dajx4 with SMTP id x4so108478daj.28
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 17:08:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=+hE+XVcPGBRR0/9InaR/hsr4wDa07GjVyUDZsq30q0A=;
	b=F+0/4kD+JbIfWkPVpp3JeWpkKllLsfs+2FBRMRfNSyeddMBpq3BHaTBv90xiio/gQG
	39Z1fLMF6dwE2VBu1RqaoVjRLz2cpiW6hGjgBlcWqE6kQjDo3Q+ILjU4VOIFogIZZmwX
	D12dj8pSKM0gZ/YPoWuaSNE3upM4gHI78NFmhakZDI5QmVt+NhnVFE3nRVXStjm7nQMV
	9kxEQGs+fe1GxGM1uBUnbF1xlJVz+m0yh4o1/U3EEhEYP0BQdRYluZnRs0YbPZaha40r
	fctmsGXyeTJM9tWuEw+9AQXpGRPM9fqavzc9q0bOC8hK2xPlBNeFlZM/QL/uo88+j6Sq
	8ceA==
Received: by 10.68.229.169 with SMTP id sr9mr1144780pbc.164.1333152492503;
	Fri, 30 Mar 2012 17:08:12 -0700 (PDT)
Received: from [10.61.32.129] ([69.38.219.78])
	by mx.google.com with ESMTPS id m5sm8385962pbk.64.2012.03.30.17.08.11
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 30 Mar 2012 17:08:11 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4F764759.1070801@linux.intel.com>
Date: Fri, 30 Mar 2012 17:08:15 -0700
Message-Id: <1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<4F764759.1070801@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQlJDfXeFP8K8nzrjlYVLUicw0ud5HKX5BqeVQ5Wwy+TbitHgB2CxxplZMYSvJoEeY5NgZOo
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
X-List-Received-Date: Sat, 31 Mar 2012 00:08:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 30 mrt. 2012, om 16:52 heeft Darren Hart het volgende geschreven:

[snip]

> On 03/30/2012 02:11 PM, Richard Purdie wrote:
>>=20
>> The criteria I see for being part of the Yocto Project are:
>>=20
>> a) Sharing the project's objectives (e.g. making embedded Liunx=20
>>   development easier)
>> b) Willing to be part of the Yocto Project's governance structure
>> c) Bringing something new/beneficial to the Yocto Project (often with=20=

>>   mutual benefit)
>> d) Have some kind of sustainable resource plan
>>=20
>=20
> I'll take a couple careful steps into this arena to offer just one =
more
> possible criteria.
>=20
> One of the touted goals/advantages/benefits of using the Yocto Project
> is to work with a vetted set of sources that are known to all work
> together, having had some level of QA performed. This is something the
> poky repository accomplishes by bringing specifc versions of bitbake =
and
> oe-core together (along with some other tooling). At some point, this
> gets rolled up into a release of the Yocto Project: 0.9, 1.1, and soon
> 1.2. It's common for someone to refer to these release points as the
> base for their BSP.
>=20
> It therefor seems reasonable to me for a distribution definition =
(which
> is how I think of Angstrom - but feel free to correct me Koen) to make =
a
> statement like "This release of Angstrom builds with the Yocto Project
> X.Y release."

Yes, but see below

> I believe this is the sort of language that most outside developers
> would immediately understand and associate with being part of the =
Yocto
> Project.

What does a 'yocto project release' actually mean? Right now it looks =
more like a 'poky (the distro) release'. Since angstrom builds on =
oe-core and bitbake directly the statement (in the current situation) =
would be more like:

"This release of angstrom builds on oe-core 2012.1, bitbake =
1.something.x, which matches the YP 1.x release".

If we move more things under the YP banner and convince subprojects to =
adopt the same schedule, we could make statements like:

"The Yocto Project 1.x release consist of the following modules:

* bitbake 1.x
* oe-core 2012.x
* poky $DOTT_character
* eglibc 2.17
* pseudo 1.2
* angstrom 2012.04
* meta-xilinx 6.5
... etc"

I think that would make it fit better with the "umbrella project" idea. =
"consists" might be a bad choice of words, I blame the unlimited coffee =
refills at the diner across the street :)

regards,

Koen=

