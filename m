Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B47F6E0146D
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 05:21:01 -0700 (PDT)
Received: by lagr15 with SMTP id r15so4740539lag.35
	for <yocto@yoctoproject.org>; Tue, 04 Sep 2012 05:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=zabHaVt4B7JTh32UwqKsOsCKjTxjmGJy0CRufDGtZqw=;
	b=gXV9hDe5VQYPGhFEaAE9gMHrHOjg1qyxkabIiQG13O4b6V80fcoXtUbX+y+FLCK/zz
	ALY6sst4t7ECI3dm9GjjJ0fk6WghkPgFP8jD7JihsU3Q32zSE27u7yU7TUILIwJcOfh/
	kmgMwutc8zxYQjmK6QomQHHrqr+7lXMmii/7NY4YnmxJcoBiK/y+THYGxTytkJgrkk3Q
	wJiu1oYJmw2irsEXPaD350Ia3/jglM07WZSWzy0HESzqnfey36ULQcJmkf0701o1hB0F
	8WltsWxq7moGLoMp8r6x9gMaSPEfQ+PZg8+qxqHN65hG4VlWcEZnSIl6M92PxdMZcUqq
	bRBQ==
MIME-Version: 1.0
Received: by 10.152.108.103 with SMTP id hj7mr130550lab.46.1346761246149; Tue,
	04 Sep 2012 05:20:46 -0700 (PDT)
Received: by 10.114.68.20 with HTTP; Tue, 4 Sep 2012 05:20:46 -0700 (PDT)
In-Reply-To: <5045C2B7.1070406@r-finger.com>
References: <50450DC6.20303@r-finger.com>
	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>
	<50451947.2090401@r-finger.com>
	<CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>
	<5045C2B7.1070406@r-finger.com>
Date: Tue, 4 Sep 2012 08:20:46 -0400
Message-ID: <CADkTA4No3Y0K1eUF_w5OZApD7pfnmLD3YY2uiMG9rDe2okYtEg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
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
X-List-Received-Date: Tue, 04 Sep 2012 12:21:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Sep 4, 2012 at 4:58 AM, Tomas Frydrych
<tf+lists.yocto@r-finger.com> wrote:
> Hi Bruce,
>
> On 03/09/12 22:08, Bruce Ashfield wrote:
>> That being said, taking a step back, what are you trying to get out of
>> meta-yocto in this scenario ?
>
> a) I am targeting multiple chips, including TI Omap and Intel Atom.
> meta-yocto is a prerequisite for the various machines in meta-intel, so
> I have to include meta-yocto if I want to build images for an Intel
> chip. Nothing unusual here.
>
> b) meta-yocto is the Poky distro layer; if you want to use Poky, then
> you need meta-yocto.
>
>> see above. I misspoke. I don't think there's an intent to make meta-yocto
>> and meta-ti work together, but oe-core + meta-ti, that's the combo that
>> makes sense.
>
> See (b) above; you are not saying that Poky is only meant for Intel HW,
> are you?

Definitely not. But I'm not familiar with anyone's (outside of the
weekly meetings
that I attend) plans for meta-yocto, so I'm commenting on what I see. You'd need
someone from TI to comment on their meta-yocto compatibility. And that person
definitely is not me :)

>
> The basic problem with meta-yocto is that it combines BSP stuff
> (meta-intel prerequisite, Atom & Beagle config) with distro stuff (Poky,
> Yocto branding). That's convenient for doing QA on a limited set of HW,
> but suboptimal for real use; BSP layers simply should not be dependent
> on distro layers, it largely defeats the purpose of having layers.
>
> Splitting out the minimal beagle config into a layer of its own would
> improve things quite a bit.

All of the above are things that Richard would need to comment on, the yocto
layering and maintenance is not something that I have control over :)

Cheers,

Bruce

>
> Tomas
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

