Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3E55E0146D
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 05:24:53 -0700 (PDT)
Received: by lboi15 with SMTP id i15so3525711lbo.35
	for <yocto@yoctoproject.org>; Tue, 04 Sep 2012 05:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Emkbx8sWnDZpep2Sr+/WnJsWh4jlwrprVVKMo6MKtlQ=;
	b=r0CaGOd21nPzyTLau3b8FcPfRjoWCmYuzXV5zxSLJZ03I9KoBmEta1ihjlFfC/kiWF
	ILbvUdUJEpoBq4gUhTkkEqhgZLNdMsq7nkZrmW8Pf2gJe8B2mBD9GIm/ZCuLk9Ig8aO6
	vSz3VUFMqvtzIQFRsSYSYhmU+lthQkhMQQVnfF9NuV6JLnLPW6umbVPkC62tY9o1pQZH
	gCD/wO1mydFfvHPFS/bXesFtZBeC92la6GnI/R5eI15urKYSQG+cpGjNI5HUx5Gy4Aqm
	u76u4BwZkOiWgDg/rgw7s1TYP2f5/F7yObfTI/2FCvoedtCPIqRiIbNCguQJRuPdJ28g
	GJ2A==
MIME-Version: 1.0
Received: by 10.152.144.168 with SMTP id sn8mr16760303lab.1.1346761490225;
	Tue, 04 Sep 2012 05:24:50 -0700 (PDT)
Received: by 10.114.68.20 with HTTP; Tue, 4 Sep 2012 05:24:50 -0700 (PDT)
In-Reply-To: <5045BA26.9030104@communistcode.co.uk>
References: <50450DC6.20303@r-finger.com>
	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>
	<50451947.2090401@r-finger.com>
	<CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>
	<5045BA26.9030104@communistcode.co.uk>
Date: Tue, 4 Sep 2012 08:24:50 -0400
Message-ID: <CADkTA4M69HfmCkjdxdJBpQ4RHi4=i2QHU7p0g3yAiZsPmcfyLw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: ml@communistcode.co.uk
Cc: yocto@yoctoproject.org
Subject: Re: yocto beagleboard.conf -- should it not go away?
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
X-List-Received-Date: Tue, 04 Sep 2012 12:24:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Sep 4, 2012 at 4:21 AM, Jack Mitchell <ml@communistcode.co.uk> wrote:
> On 03/09/12 22:08, Bruce Ashfield wrote:
>>
>> On Mon, Sep 3, 2012 at 4:55 PM, Tomas Frydrych
>> <tf+lists.yocto@r-finger.com> wrote:
>>>
>>> snip...
>>>
>>>
>>>
>>>
>>> That being said, taking a step back, what are you trying to get out of
>>> meta-yocto in this scenario ? oe-core + meta-ti is probably what you
>>> should be using.
>>>
>
> Sorry to jump in here, but this is actually a very interesting point. From
> coming to OpenEmbedded through Yocto and subsequently learning about the
> ecosystem as a whole, I have always considered meta-yocto to be providing a
> sane distro configuration. This implies that I believe the oe-core default
> distro configuration, even though it will build, the result won't be very
> satisfying - or maybe a bit disjointed.

No worries. Take everything that I say as observations from a arms length
distance to how things are maintained and the plans about compatibility,
evolution, etc. So what I say, may not reflect reality :)

>
> You seem to be saying above that the meta-yocto layer is only any good for
> providing the kernel framework, and as he is not using the framework (i.e.
> using meta-ti) then there is no point in using the meta-yocto layer? So does
> the Poky distro config only really slap a name on the oe-core default distro
> policy - or does it have some added value?

There's value, and Richard has covered it a few times on the mailing list. I
probably wouldn't do it justice, so I'll wait to see if others with a better
articulated description jump in.

The linux-yocto kernel itself can work without any build system at all, so my
point of view is different :)

Cheers,

Bruce

>
> I'm not trying to rile anyone up here, just trying to put the jigsaw
> together as the picture looks different every time I revisit it!!
>
> Regards,
>
> --
>
>   Jack Mitchell (jack@embed.me.uk)
>   Embedded Systems Engineer
>   http://www.embed.me.uk
>
> --
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

