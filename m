Return-Path: <autif.mlist@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28810E0030B
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2011 10:14:22 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbbfa15 with SMTP id fa15so13365178vbb.35
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2011 10:14:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=rk5AE/Zvi5g82ual8/AB5lxj3AKEOBO4ULK0mHon4Ps=;
	b=b2i0m1m8VUh5yzb5VLFo5JHvmP3QNiisCbWE9Yeqwp9MNLoWO279JOVGuiLqF2oCCT
	2X6wE340UvG3h7B+4dQ3zY1mgHM7nLZ5NwbWMnYadInVH2AvX7z0d44dRSiMiKY6mZzt
	Gs0WIkuhH0GXROBJfd6s2aSDwrQNlFIoeDLa8=
MIME-Version: 1.0
Received: by 10.52.70.199 with SMTP id o7mr13288847vdu.88.1325182460314; Thu,
	29 Dec 2011 10:14:20 -0800 (PST)
Received: by 10.52.161.103 with HTTP; Thu, 29 Dec 2011 10:14:20 -0800 (PST)
In-Reply-To: <CADzUK1KGOFCQbTFSU5FmjERuUMBft-m5FSgtgrX_NmDF1MfSzg@mail.gmail.com>
References: <CADzUK1KE=DHJp3WDGdqOv62QAvGbrc=pnVCUNpYQ4RU+KXpZJg@mail.gmail.com>
	<CABcZANka9vU=D4aT6szH47Q6NJK3CHucWwhN=0Jg+iu3B5HCbg@mail.gmail.com>
	<CADzUK1Kqmbrt_o3Dr-YsLPaBg=SSjFZuyWJO_v_2rM7bcQHe9A@mail.gmail.com>
	<CABcZAN=OiDbQT28=R0tak0-1+EdeA-3YbkUVSDnzFZP6R9NOiA@mail.gmail.com>
	<CADzUK1KGOFCQbTFSU5FmjERuUMBft-m5FSgtgrX_NmDF1MfSzg@mail.gmail.com>
Date: Thu, 29 Dec 2011 13:14:20 -0500
Message-ID: <CADzUK1+qXxsQ445f2nJkvCfEM9+nmFTkop74EMK8EDag5brNpQ@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: Chris Larson <clarson@kergoth.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to require image recipe from another layer?
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
X-List-Received-Date: Thu, 29 Dec 2011 18:14:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

Another recipe question along the same path.

The following recipe does not actually put helloworld in the image -
it does not even build it.

require recipes-sato/images/core-image-sato.bb
IMAGE_FEATURES += "helloworld"

The following one does.

require recipes-sato/images/core-image-sato.bb
IMAGE_INSTALL += "helloworld"

I am guessing that if I have several recipes in my layer (say) hw1,
hw2, hw3 etc, I would have to use the following recipe.

require recipes-sato/images/core-image-sato.bb
IMAGE_INSTALL += "hw1 hw2 hw3 etc"

However, I am sure there is a way to ties these up with
"IMAGE_FEATURE" variable.

Can you please help me with setting up my recipes so that all the
hello world apps are included when I use the following recipe.

require recipes-sato/images/core-image-sato.bb
IMAGE_FEATURES += "helloworld"

I am guessing that I would have to tell the hw1 recipe that it is a
helloworld feature. How do I go about doing this?

Here it is for reference:

DESCRIPTION = "hello world app"
SECTION = "autif"
LICENSE = "SomeLic"
LIC_FILES_CHKSUM = "file://COPYING;md5=178c09540123ca26c1b9c1ccbfbcde87"
PR = "r0"

SRC_URI = "file://COPYING \
		   file://helloworld.c"

S = "${WORKDIR}"

do_compile () {
	${CC} helloworld.c -o helloworld
}

do_install () {
	install -d ${D}${bindir}
	install -m 0755 helloworld ${D}${bindir}
}


Thanks again!

Autif

On Wed, Dec 28, 2011 at 3:43 PM, autif khan <autif.mlist@gmail.com> wrote:
> Must be the hangover from the holidays!
>
> I typed the path as you suggested (I did replace recipes-core with
> recipes-sato), but I must have had a type somewhere and it did not
> work and gave the same error. I then tried the relative path - which I
> copied and pasted - instead of typing and it worked. So I assumed
> thats what it must have been.
>
> Now, I have the following as my recipe and it works just fine. As I
> said - must be the hangover from the holidays.
>
> require recipes-sato/images/core-image-sato.bb
> IMAGE_FEATURES += "helloworld"
>
> Thanks again
>
> Autif
>
> On Wed, Dec 28, 2011 at 3:31 PM, Chris Larson <clarson@kergoth.com> wrote:
>> On Wed, Dec 28, 2011 at 1:22 PM, autif khan <autif.mlist@gmail.com> wrote:
>>> Thats right. Accounting for the relative, path, the following recipe
>>> seems to works.
>>>
>>> require ../../../meta/recipes-sato/images/core-image-sato.bb
>>> IMAGE_FEATURES += "helloworld"
>>
>>
>> That's not what I was referring to. You don't need the full relative
>> path. It will automatically search BBPATH if you require a relative
>> path. if you do require recipes-sato/images/core-image-sato.bb, it
>> will search your layers and find it.
>> --
>> Christopher Larson
>> clarson at kergoth dot com
>> Founder - BitBake, OpenEmbedded, OpenZaurus
>> Maintainer - Tslib
>> Senior Software Engineer, Mentor Graphics

