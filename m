Return-Path: <raj.khem@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABBE54C8007E
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 14:29:00 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pve37 with SMTP id 37so2183691pve.35
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 12:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=k+YEL49vUT/fneap7b6PS0X3ckykIuIraXLOAKWzv2Q=;
	b=S3eCUfGwxLVJQvZuuWol42FIAJr2pDyl5BjOTIH3huIYigt4UV2hHOfnYDZvwEe5dD
	R//47b/qJWBYZptPov05GEHP7Oo+P9+vf1mqDdEYqQvqQwJMTeLP1MeFWH6Veb4CHuM2
	ijsWFvCvhq8mo4zQ1Mwae5cWUhEw2y3saYKok=
Received: by 10.68.33.200 with SMTP id t8mr4455580pbi.144.1310758140225; Fri,
	15 Jul 2011 12:29:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.62.36 with HTTP; Fri, 15 Jul 2011 12:28:30 -0700 (PDT)
In-Reply-To: <04B51588-62E1-4D77-8BB4-5EF0FB3DC73D@kernel.crashing.org>
References: <04B51588-62E1-4D77-8BB4-5EF0FB3DC73D@kernel.crashing.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 15 Jul 2011 12:28:30 -0700
Message-ID: <CAMKF1sp701jBJ3zX-bGURsdf0=wOJw3+rjw8sEEM3Gs5NfERUg@mail.gmail.com>
To: Kumar Gala <galak@kernel.crashing.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: toolchain queries
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
X-List-Received-Date: Fri, 15 Jul 2011 19:29:01 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 14, 2011 at 7:36 PM, Kumar Gala <galak@kernel.crashing.org> wrote:
> Where is the best place to ask questions and try and get support for adding some toolchain variations in?
>
> I'm wanting to add support in for a few different flavors of PPC that are not currently supported:
>
> * e500v2 (gcc needs --enable-e500_double, eglibc

this means ABI change especially due to double formats. This should be
doable in machine.conf
files or tune files.

> * e5500 (64-bit embedded ppc)

this is new I guess. Its like adding a new arch to OE. See around
http://lists.linuxtogo.org/pipermail/openembedded-devel/2010-September/024661.html
is roughly what can be helpful in getting ppc64 going

> * e5500 - multilib support for 32/64-bit

there is some thought and work RP has been doing on multilib.

>
> - k
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

