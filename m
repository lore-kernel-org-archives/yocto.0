Return-Path: <koen@dominion.thruhere.net>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB2BBE0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 17:53:36 -0700 (PDT)
Received: by dajx4 with SMTP id x4so141970daj.28
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 17:53:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=TNUpRJ+2IsTTn5gnwUunbHfFgIpWNAFAQuLIYg0FSh0=;
	b=fTvs+pBeJB4Dy7ZUaMc/SN3IJTDEOYhcBOf1l2kGiZu3bLyzeLSVVgISn0xUIxBGUj
	zCOJHvj402Kc/2420zAvw62FIvOklI4mO1l/BtXEbz0b2+0PgTOCUrRibzO41fte5kmp
	/ANQ2zePYZCmTNpvDW94TH4lnXmUgBOySuaKJIbkmNHw5QNmGuUe/pvgBlLTcnI1A44Z
	2PJhfWECdX76J0pLcfJSTykI/Nqf+J83FPBiU4TZyKi+hUe42Nhf5IYLgxwGfOpJrN9q
	Lngno987i+S7sZmxBwM2tCZoS2VRj+2DXADYpOk58YsbMerpsd6rNGzKHvR+uwWQ2TRT
	3oDA==
Received: by 10.68.230.230 with SMTP id tb6mr1738754pbc.40.1333155216474;
	Fri, 30 Mar 2012 17:53:36 -0700 (PDT)
Received: from [10.61.32.129] ([69.38.219.78])
	by mx.google.com with ESMTPS id f7sm8483835pbr.3.2012.03.30.17.53.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 30 Mar 2012 17:53:35 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4F764FB7.2080508@linux.intel.com>
Date: Fri, 30 Mar 2012 17:53:38 -0700
Message-Id: <95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<4F764759.1070801@linux.intel.com>
	<1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
	<4F764FB7.2080508@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQm2MPqCBh6CLrRDX9zZdnuIu3WosmQI8mCYv2hQTHGknWt9K6QEb7uG4Ejumi6qcyaS99D+
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
X-List-Received-Date: Sat, 31 Mar 2012 00:53:36 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


Op 30 mrt. 2012, om 17:28 heeft Darren Hart het volgende geschreven:

>=20
>=20
> On 03/30/2012 05:08 PM, Koen Kooi wrote:
>>=20
>> Op 30 mrt. 2012, om 16:52 heeft Darren Hart het volgende geschreven:
>>=20
>> [snip]
>>=20
>>> On 03/30/2012 02:11 PM, Richard Purdie wrote:
>>>>=20
>>>> The criteria I see for being part of the Yocto Project are:
>>>>=20
>>>> a) Sharing the project's objectives (e.g. making embedded Liunx=20
>>>> development easier) b) Willing to be part of the Yocto Project's
>>>> governance structure c) Bringing something new/beneficial to the
>>>> Yocto Project (often with mutual benefit) d) Have some kind of
>>>> sustainable resource plan
>>>>=20
>>>=20
>>> I'll take a couple careful steps into this arena to offer just one
>>> more possible criteria.
>>>=20
>>> One of the touted goals/advantages/benefits of using the Yocto
>>> Project is to work with a vetted set of sources that are known to
>>> all work together, having had some level of QA performed. This is
>>> something the poky repository accomplishes by bringing specifc
>>> versions of bitbake and oe-core together (along with some other
>>> tooling). At some point, this gets rolled up into a release of the
>>> Yocto Project: 0.9, 1.1, and soon 1.2. It's common for someone to
>>> refer to these release points as the base for their BSP.
>>>=20
>>> It therefor seems reasonable to me for a distribution definition
>>> (which is how I think of Angstrom - but feel free to correct me
>>> Koen) to make a statement like "This release of Angstrom builds
>>> with the Yocto Project X.Y release."
>>=20
>> Yes, but see below
>>=20
>>> I believe this is the sort of language that most outside
>>> developers would immediately understand and associate with being
>>> part of the Yocto Project.
>>=20
>> What does a 'yocto project release' actually mean? Right now it looks
>> more like a 'poky (the distro) release'. Since angstrom builds on
>> oe-core and bitbake directly the statement (in the current situation)
>> would be more like:
>>=20
>=20
> /me hands koen a real MUA that wraps at < 80 characters...
> and wraps his mail for him...
>=20
> (everyone else gets a pass, but you?  ;-)
>=20
> I see the "poky" distro definition as only a part of the poky
> repository, the naming is unfortunate, but I think we can all see past
> that for the purposes of this discussion. This is part of meta-yocto
> which will at some point be it's own repository.
>=20
> So I don't agree with the assertion that it looks more like a "poky =
the
> distro release".

But it is the only component of the YP that gets released as part of the =
YP release, no?

>> "This release of angstrom builds on oe-core 2012.1, bitbake
>> 1.something.x, which matches the YP 1.x release".
>=20
>=20
> OK. Donning my "Yeah but I have a XYZ and things to get done" hat, I
> think people will respond more positively to:
>=20
> "Download the 1.2 Yocto Project release, add meta-angstrom to your
> bblayers.conf, and build $IMAGE_TARGET"
>=20
> than they will to
>=20
> Download bitbake X.Y, Angstrom X.Y, OE Core X.Y, etc. instructions on
> setting up the layers, the local.conf, etc etc.
>=20
> I believe there are some other details the poky repository helps out
> with (someone more familiar with working with the individual =
components
> would have to enumerate these, I honestly don't know what they all =
are).
>=20
> And yes, there are the BSP layers to add to each of these scenarios, =
but
> that effects each equally.
>=20
> All that environment setup is something that can make or break the
> initial experience. I believe lots of users appreciate not having to
> pull all the pieces together themselves. (especially those that don't
> even know what they're not having to do!)

And that's why angstrom (currently!) only supports setup using the =
angstrom setup-scripts. That contains all the logic that is needed to =
get the right versions. It also contains pretty much all known layers, =
so there's a high likelihood that users will never need to open =
bblayers.conf (either manually or using a script).

> If we move more things under the YP banner and convince subprojects
>> to adopt the same schedule, we could make statements like:
>>=20
>> "The Yocto Project 1.x release consist of the following modules:
>>=20
>> * bitbake 1.x * oe-core 2012.x * poky $DOTT_character * eglibc 2.17 *
>> pseudo 1.2 * angstrom 2012.04 * meta-xilinx 6.5 ... etc"
>>=20
>=20
> With the exception of eglibc (I wouldn't want to have to list every
> package from oe-core and the layers!) this doesn't seem out of line to =
me.

I was listing YP projects, not recipes/packages. I guess my point about =
a YP release needing to contain more than one yocto subproject got lost =
:(

>> I think that would make it fit better with the "umbrella project"
>> idea. "consists" might be a bad choice of words, I blame the
>> unlimited coffee refills at the diner across the street :)
>=20
>=20
> And I blame any perceived snarkiness on the migraine and the 4 =
different
> medications the doc's got me on to try and patch me up to fly on =
Monday ;-)

I hope you get well soon!=

