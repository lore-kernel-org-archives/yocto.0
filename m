Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18AB5E01554
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 01:12:55 -0700 (PDT)
Received: by mail-vb0-f42.google.com with SMTP id e12so921812vbg.1
	for <yocto@yoctoproject.org>; Thu, 05 Sep 2013 01:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=XP9FpfttG5xztyaKzahUtYJAL/aVmyRR2UUvLrP8BCo=;
	b=e/LY84TGCgHuEWo7g5SZeEoTlQIiEWCbjxMxwTc1IXZS8gHJOfHWyAq460HQdPhytT
	yOexS2eKoG+Bc6CPZkFE20/d94UTuYgIQCBeHgF/Urffp5FONKut5d80HwEbpi+gKGJr
	HpOBDfeEtlbGacgQC/tioup4YnKLC4bcm6AqwFJ7nMg/IYW+aIIr2wYVAmMi6VU/M9lV
	nqgv0Nd/bdB7GjQ6OBUyVKJ8PkOTlawTk3nmVSsergqTZr5I27aRMrumPbQjuC+5Ucvu
	0gVQIgkFXARmZ7GGChI0zbvty8kHfBYQY6LIC1MOTAbL+FOy3ZPedZn/Kq8bMS1kVaSD
	UdUA==
X-Received: by 10.58.218.225 with SMTP id pj1mr5585586vec.24.1378368775026;
	Thu, 05 Sep 2013 01:12:55 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.155.17 with HTTP; Thu, 5 Sep 2013 01:12:14 -0700 (PDT)
In-Reply-To: <52283BEE.9020504@vtkloud.com>
References: <5227629A.5090505@vtkloud.com> <52276400.6070307@mlbassoc.com>
	<522830FF.6090100@vtkloud.com>
	<CANyK_8fN2_OYy6nRvud7udkS0Sp+gqWkaO7xHvJ9X5mZJ-ZC5Q@mail.gmail.com>
	<522838E7.1060007@vtkloud.com>
	<CANyK_8f0bwoB8sd6PdN4ZV=bZtw6E-6AqQAQnMB9j7QgAypmtA@mail.gmail.com>
	<52283BEE.9020504@vtkloud.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Thu, 5 Sep 2013 09:12:14 +0100
X-Google-Sender-Auth: PRaZtKGCcjGLvE-lrhYtSqc5Z3s
Message-ID: <CANyK_8c=yXSFuaU7JT2i5PP7K=QfoVe0x62mh9Ax+KQk9shvVg@mail.gmail.com>
To: JC <jc@vtkloud.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: raspberry layer
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
X-List-Received-Date: Thu, 05 Sep 2013 08:12:57 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 5 September 2013 09:08, JC <jc@vtkloud.com> wrote:
> On 05/09/2013 10:04, Paul Barker wrote:
>> The log you've attached shows paths for poky as well as
>> openembedded-core. Poky is basically a combination of
>> openembedded-core, meta-yocto and bitbake so you don't want to add
>> openembedded-core again. Could you post your full bblayers.conf?
>>
>
> Yes that's strange. Do you think it could be an issue with trunk ?
>
> Here's my bblayers:
>

>
> BBLAYERS ?= " \
>   /media/yocto/yocto/poky/meta \
>   /media/yocto/yocto/poky/meta-yocto \
>   /media/yocto/yocto/poky/meta-yocto-bsp \
>   /media/yocto/yocto/meta-openembedded/meta-oe \
>   /media/yocto/yocto/meta-raspberrypi \
>   "
>

In the log you posted is the line:

> ERROR: Failed to parse recipe: /media/yocto/yocto/openembedded-core/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.28.2.bb

So something was adding the path
/media/yocto/yocto/openembedded-core/meta to BBLAYERS. If you've just
removed that, give it another try.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

