Return-Path: <raj.khem@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A391E0129F
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 13:51:05 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qadb14 with SMTP id b14so664298qad.35
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 13:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=y/zqydup64Pdyy0lTHGMHnWKAFH1ffORUb6d6b+BxJg=;
	b=ubyTfnbGEJK3bAE2hsqsN/hZjHRbHlxguF+J0sycqrOMo8V7Ppg5U+1+99jwz0J0Cj
	DUQMx5023/oS4OjhtTbTW9g0jHsK+8c4jnyK/D9K0ZT4QEU8Az/4no+xZcK8Yh1Pnqjg
	qdxO/c/OpNYUVYDGf1csj0sCXTbGyA/qEOZEQ=
Received: by 10.68.74.4 with SMTP id p4mr11437942pbv.47.1318539064072; Thu, 13
	Oct 2011 13:51:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.48.230 with HTTP; Thu, 13 Oct 2011 13:50:34 -0700 (PDT)
In-Reply-To: <4E972F04.4030908@ti.com>
References: <4E933C41.4000207@linux.intel.com> <4E94D624.1020107@am.sony.com>
	<4E95C787.3020000@linux.intel.com>
	<4E96A198.9030109@communistcode.co.uk> <4E972F04.4030908@ti.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 13 Oct 2011 13:50:34 -0700
Message-ID: <CAMKF1sqdCsSbPnL4e-e3MHgdpwwH1UqZzSn4rD4V+-b+EN5D-g@mail.gmail.com>
To: William Mills <wmills@ti.com>
Cc: yocto@yoctoproject.org
Subject: Re: RFC: User configurable recipe features
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
X-List-Received-Date: Thu, 13 Oct 2011 20:51:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 13, 2011 at 11:33 AM, William Mills <wmills@ti.com> wrote:
>
>
> On 10/13/2011 04:30 AM, Jack Mitchell wrote:
>>
>> On 12/10/2011 17:59, Darren Hart wrote:
>>>
>>> On 10/11/2011 04:49 PM, Tim Bird wrote:
>>>>
>>>> On 10/10/2011 11:41 AM, Darren Hart wrote:
>>>>>
>>>>> As part of working on meta-tiny, I've come across a need (want?) to
>>>>> present users with the ability to select some set of features in a
>>>>> local
>>>>> configuration file that will impact the build of the image and a set =
of
>>>>> recipes.
>>>>
>>>> Can you tell me more about meta-tiny? =C2=A0this is the first I've hea=
rd
>>>> about this (sorry if discussion went by on the mailing list and I
>>>> missed it), and I'm very interested.
>>>>
>>>> I'm currently doing some size-related work for Sony (including
>>>> some work to support 4K stacks).
>>>>
>>> Perhaps while I have the attention of a few interested parties, it woul=
d
>>> be a good time for a poll. I'm interested in your motivation for smalle=
r
>>> images.
>>>
>>> Are you building SoC's with memory on die and needing to keep the memor=
y
>>> footprint down to save precious die real-estate?
>>
>> no
>>
>>>
>>> Are you looking at creating mass-market products and saving a few
>>> pennies on the flash storage translates to real money, so you want to
>>> minimize the physical size?
>>
>> no
>>
>>>
>>> Are you concerned with boot time, and have connected larger image sizes
>>> with longer boot times?
>>
>> I am concerned with boot time, but don't believe it is image size that
>> ramps it up.
>>
>>>
>>> Is there another motivating factor for your interest in small images?
>>
>> Yes, a smaller system which is easier to check, build and maintain. In m=
y
>> office I am the leading driver for using linux in a team of 3 (two softw=
are,
>> one fpga developer) so the less time I spend building, rebuilding and
>> checking features I don't need, to ensure they don't comprimise the
>> stability of the system, the more faith they have in the system I'm putt=
ing
>> forward.
>>
>
> Ahhh, nice one Jack.
>
> I had a similar thought this morning. =C2=A0As the target system gets sma=
ller the
> tolerance for spending X amount of time building non-target code goes dow=
n
> and the expectation of being able to use a "modest machine" goes up.
>
> What is a modest machine? =C2=A0Yocto quotes build times for a "refernce =
machine"
> that is pretty up to date and not on the low end. =C2=A0To me, a modest m=
achine
> is the laptop Mom & Dad bought "Stacy" when she graduated from High Schoo=
l
> and went off to College. =C2=A0Stacy is now a junior and is exploring emb=
edded
> Linux. =C2=A0This might be an i3 2 GB machine. =C2=A0A China based startu=
p may also
> give its engineers modest machines. =C2=A0I think many TI'ers would claim=
 they
> have been stuck on modest machines for long periods.
>
> So If a sato image takes 1 hour to build on the reference machine it may
> take 4 hours to build on a modest machine. =C2=A0Of that time perhaps 1 h=
r is
> spent building host side stuff.
>
> If your image is just kernel, busybox, and uclibc you probably only spend
> 1/2 hour building that on a modest machine. =C2=A0Question is does oe-cor=
e/poky
> still make you build 1 hr worth of host stuff?

Usually some of the host distros have sane(for OE sense) versions of
host packages. You might experiment using
ASSUME_PROVIDED for the build host packages this will then use the
packages from your build system
however the results you get might be different than others that's one
reason for host packages

A lot of stuff in OE environment is done to ensure predictability of
builds on different host distros
which is a good thing IMO.

>
> I know Richard's answer will be shared state but I want to see how that
> really works out. =C2=A0This is an area we plan on playing with over the =
next
> release cycle.
>
>
>>> Thanks,
>>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

