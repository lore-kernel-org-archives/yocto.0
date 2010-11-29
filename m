Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id D58714C803A5
	for <yocto@yoctoproject.org>; Mon, 29 Nov 2010 15:07:01 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxm8 with SMTP id 8so2763518yxm.35
	for <yocto@yoctoproject.org>; Mon, 29 Nov 2010 13:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:content-type;
	bh=nSf5vv8QLt20IgmpJl08sHDy4yhqG33crGZq9GhkSTo=;
	b=O5eelDCqfUxShSlrnBeNLMO+P+CZOwfar3zui5XdoaR3ss2+tWhWfLkVA/86oRQpjk
	uqS/KHqwrHarJEK2F/fLxL6kpsKLB+v78zXBrQqonnUtt1MO4IsVNwiabcOiZi7cl651
	xMSBrFoYinUEsCXYuZlrnUyGmbqo6KatAVejA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=dcyW1k/hV2dI1sX45c+5EsJ8Fq+G2plxNKOaHPYwWVa2D3zIQ7HkYFxhlZz+Iznyv0
	EuOxrTCFqW7G4pVgcXSd9h9WCoE/hVA8T710vX2uq/gZSd6B0U+30blbrAGcqgbKQfhM
	DX+z2T0+U5eln8S3x68VBKbIVjyDS1y7dwZy0=
MIME-Version: 1.0
Received: by 10.231.31.1 with SMTP id w1mr6201213ibc.7.1291064820738; Mon, 29
	Nov 2010 13:07:00 -0800 (PST)
Received: by 10.231.200.140 with HTTP; Mon, 29 Nov 2010 13:07:00 -0800 (PST)
In-Reply-To: <4CF40E3B.10202@windriver.com>
References: <1290974426-24618-1-git-send-email-fransmeulenbroeks@gmail.com>
	<20101129200549.GA25679@windriver.com>
	<AANLkTimm0MxsA4M9eMaPs9jd8-MKB5z9F7kQ714L8umK@mail.gmail.com>
	<4CF40E3B.10202@windriver.com>
Date: Mon, 29 Nov 2010 22:07:00 +0100
Message-ID: <AANLkTi=hFEzaDc7CE7mj1TySpKwLArwkuYeL6EqUCiP5@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: [PATCH] meta-bsp-kirkwood: created layer for Marvellkirkwood
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
X-List-Received-Date: Mon, 29 Nov 2010 21:07:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

Actually wanted my reply to Bruce to go to the list too (and guess his
reply should also have gone to the list so added that too).

Issue is that most of the other lists I'm on (including openembedded)
use reply to reply to the list, not to the original author.
Guess I'll make this mistake every once in a while).

Frans.


---------- Forwarded message ----------
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: 2010/11/29
Subject: Re: [yocto] [PATCH] meta-bsp-kirkwood: created layer for
Marvellkirkwood
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>


On 10-11-29 03:30 PM, Frans Meulenbroeks wrote:
>
> 2010/11/29 Bruce Ashfield<bruce.ashfield@windriver.com>:
>>
>> In message: [yocto] [PATCH] meta-bsp-kirkwood: created layer for Marvellkirkwood
>> on 28/11/2010 Frans Meulenbroeks wrote:
>>
>>> This layer is a first attempt to create a layer for kirkwoord.
>>> It is based upon the OpenEmbedded recipes (most of which I have
>>> added too)
>>
>> Sorry for the slow reply, the 3.2M of inlines/attachments
>> blew Thunderbird out of the water and I had to switch
>> to mutt.
>
> Oops. Sorry about that. I only noticed that the stuff was that big
> after uploading it, and on hindsight, I should probably have cancelled
> it and posted a link instead.
>
>>
>>>
>>> u-boot still needs some work and the kernel also needs some attention
>>> (but marvell/globalscale are not really keeping things up to date)
>>
>> On this topic. Is there any reason to not use linux-yocto
>> for the kernel ? Whenever possible, I'd like to get everyone
>> pulling in the same direction for these platforms. We have
>> plenty of experience and support for platforms close to
>> the kirkwood. If the patches were merged into the linux-yocto
>> kernel repo, they would inherit a feature set and well tested
>> base that the other BSPs in that repo enjoy.
>>
>> It also helps us review and push for platforms to be merged
>> upstrea if things go into a common kernel repository.
>>
>> It would also mean that the BSP would be kept up to date with
>> bug/security fixes and be considered for updating to
>> the latest kernels (i.e. I'm jumping the BSPs to 2.6.37-rc3
>> right now and will done within a day).
>>
>> I'd be willing to help with this part, and will have a look
>> at these patches in a 2.6.37 context (but obviously I don't
>> have the hardware to use for boot testing).
>
> I agree staying closer to or incorporating things into linux-yocto
> would be very desirable.
> Actually I haven't had too much time to migrate stuff to a newer
> version kernel lately.

Understood, being pragmatic to get patches out for discussion
is the best bet.

>
> As it stands I suspect that Sheevaplug is probably well supported in
> the mainline kernel (including sheevaplug variants like guruplug,
> seagate freeagent dockstar and maybe even things like pogoplug).
> A more troublesome part is openrd (and especially openrd client). As
> far as I know they contain some drivers that are not mainlined. The
> video driver and, if I recall correctly, the audio driver falll into
> that category (and maybe some of the pci express stuff).

Agreed. This is the tricky part, whenever we mix mainline
and core functionality that is out of tree, things become
more painful.

>
> I would appreciate it if you could have a look at the patches and see
> if they can be merged one way or another. I am not really an expert
> when it comes to audio and video drivers, so your help is greatly
> appreciated.

I definitely will have a look at this. I've almost completed
the rest of my 2.6.37 effort (bisecting a last BSP now) and will
have a look at it from the angle of how it would work in a
newer kernel.

> As far as testing concerns. I have a sheevaplug and openrd client
> board, I'm more than happy to participate in the testing.
>
> As far as u-boot concerns: I saw some patches on the u-boot mailing
> list the other day to add SD card support. Once that is there I guess
> most of the functionality is available at git head (sheeva ships
> withu-boot 1.1.4 with quite some Marvell specific patches).

Sounds good. Thanks for the reply.

Bruce

>
> Best regards, Frans
>
> PS: it might be possible to pick up a seagate freeagent dockstar quite
> cheaply. I know last august they were only eur 20 in Germany).

