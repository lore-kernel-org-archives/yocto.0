Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B79B2E00B71
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 04:55:08 -0700 (PDT)
Received: by mail-ve0-f171.google.com with SMTP id cz12so2200093veb.30
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 04:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=nQBAtu7Y3ITH3aWrTcJk6B55jgRmvpFdQn3up5y9nKg=;
	b=UTBy8hdSx3LfO7RUhlGJs3LyqqBoA9YPWo7YyBLj7pQ21neA6ojxZoy+tuIeHutgCc
	L7cbTdgOGDYBczixbtt2x7g1lSKZ66lNalTRDivfi1tCspl+EL0ynnmYql/71j6m1ywt
	8DSnsIynxo0a9S4r76pjmfTvA8PxKLP7pq3CfbQT5uAX2U1TNQpvfZXXf61CsuEM2Qj1
	A7eu8rjcaUhD9PaD42XNfV0Zm9skOVEypqsUa5qPwSuHmSngA9u8jQLoEfqBeNrwl9wG
	C/CxOhQvDbYhpxMw6gVZyec8SYFqpqVzR6cApcyEHOxlsMPYS6WY73vDz/gfkzQasbuo
	aEmg==
X-Received: by 10.220.106.84 with SMTP id w20mr60344554vco.18.1395834908293;
	Wed, 26 Mar 2014 04:55:08 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.239.135 with HTTP; Wed, 26 Mar 2014 04:54:28 -0700 (PDT)
In-Reply-To: <CAMCfZKEr6gZkQ0Mvr6+YWjB_9wpD_aH4EoanvB61Q=UdG-Zk4g@mail.gmail.com>
References: <CAMCfZKG3ku29ztup_Dc0HLrnTBB9SirC+VM2QFjChX6Pwv=oZQ@mail.gmail.com>
	<CANyK_8fBM+cR3GZ71PFpvrVkhDWzp4bWrQvCk7bxhuUGnEUASQ@mail.gmail.com>
	<CAMCfZKEr6gZkQ0Mvr6+YWjB_9wpD_aH4EoanvB61Q=UdG-Zk4g@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 26 Mar 2014 11:54:28 +0000
X-Google-Sender-Auth: sY-UjM4d8w0Bg0GVDe-Jrk-8_NA
Message-ID: <CANyK_8dHzo-TrO6j7mxHoieSGsvf0KSqgjhtJ2_bTtRRjjN6xw@mail.gmail.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Get rid of opkg install error
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
X-List-Received-Date: Wed, 26 Mar 2014 11:55:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 26 March 2014 11:29, Diego Sueiro <diego.sueiro@gmail.com> wrote:
>
> On Wed, Mar 26, 2014 at 8:16 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
>>
>> On 26 March 2014 09:47, Diego Sueiro <diego.sueiro@gmail.com> wrote:
>> > Folks,
>> >
>> > I have a image recipe which installs some custom files on rootfs.
>> > Instead of having a bbappend for each package that provides those files
>> > I
>> > want to concentrate it on image recipe.
>>
>> Why do you want to merge all your custom files into one recipe? With
>> them separated into the packages they affect you can add/remove
>> packages a lot easier in the future.
>
>
> Because I want to have different image recipes for different proposes.
> For example: One image with eth0 on dhcp and another one with static ip. Or
> some different images for product variations.
>

Ok, I understand you now. I need to work out a way of handling this
for future systems I'll be working on but it's not something I've
needed to do so far.

I would probably lean in the direction of using bbappends and
generating all config packages during a build (because a package of
custom config files shouldn't have a long build time). So you'd have
init-ifupdown-image1config, init-ifupdown-image2config, etc. Then in
each image recipe I'd select which package is installed.

That does leave it spread between bbappend files as it's grouped by
functionality rather than by target image. I'm not sure how to
efficiently group it the other way around.

>>
>>
>> >
>> > The problem is that I'm receiving the following error:
>> >
>> > "But that file is already provided by package"
>> >
>> >
>> > Is there a way to get rid of this error?
>>
>> The only thing I can think of is to use bbappends to prevent the
>> original files from installing but not to add the replacement files.
>> Then have a single recipe which packages all the replacement files.
>> That way only one package provides each file.
>
>
> This is a possible solution. But if I build an image without these custom
> files (core-image-minimal for example) the original ones will not be
> shipped. Am I correct?
> Or maybe I can check for a custom variable defined at local.conf and check
> for it on bbappend to know if I have to remove or not the original files.
>

Yes, that would be the issue there. Not sure how well a local.conf
check would work.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

