Return-Path: <rm.santos.caldas@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E72CE005BB; Sat, 28 May 2016 12:35:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rm.santos.caldas[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B87CAE00522
	for <yocto@yoctoproject.org>; Sat, 28 May 2016 12:35:29 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id a136so9727393wme.0
	for <yocto@yoctoproject.org>; Sat, 28 May 2016 12:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=vGncMq6b0H+1wHBjzp9Bkaehaf95uMWiOyFuvZtSyn0=;
	b=rKo1jlhBNi26w1/uUJM21h80SEXMibugVWThC/uzwvpb2FoxH6m/kCha5ushFiUHu8
	MLzll8bHMQ93o10LGIGPQDBB1aMMZiz7gb1+S9/oEBc9RPZAU2xVpdtthIvNAPeSxlmC
	RHNJBaIwzcLVCCKL8RA42IDeItiunguETcJOKvb5EYqyVmcQL+4A89F1mDPrT97ZfX+p
	KpC1NVPa63oywMDv8blucOednmBr6kmjZNauVL1K3u8a8tGl6LmFIBqAyR4ZSLQ8GE0f
	xm3j6upRy1f8FJWAcGc6UD1iByHASnyZFB8YwzqxzRA/bpjQrrV07We0zvwDkYgyjz9w
	ehKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=vGncMq6b0H+1wHBjzp9Bkaehaf95uMWiOyFuvZtSyn0=;
	b=MfH/R3U3BCC1vnUIEMJWfA1UwZV+gETPyIxCG4IGI3wjBy6ycMbGp+a2aBLNf0CWAz
	UtSDR30eJtysH+3/uZ/xYUbs+PsoblYjl0jJNSszb29Qn3oCXY6SjWmukft4diEw+7jC
	EWbsr5QgiiW4giDgpclxyuVyqvPsG8IPm8XQ26SAJyam5487Wz1gOaprgrfCZmtE4Lmm
	mRnRWQvvIUYO/cNsN/uBHwwHYF8EXTsMCNX33H3Ffb4/R3rjIKpfgZaAP6ZXlkge27lo
	Op/BfYUDrREt3ho4dR51h9HxValXRiXdR6xpz4R/Yz6XYg5nw6T6hmbUK4029UUq2qhk
	8SGw==
X-Gm-Message-State: ALyK8tKd2TEeAl/YLlcu7zNcKxjZZgREadII17ZFrCUueQ5hPOmtxQVGD/ESn1urmfpoZxUki+d9s+nYKPITtQ==
MIME-Version: 1.0
X-Received: by 10.28.113.67 with SMTP id m64mr4355832wmc.3.1464464128450; Sat,
	28 May 2016 12:35:28 -0700 (PDT)
Received: by 10.194.81.105 with HTTP; Sat, 28 May 2016 12:35:28 -0700 (PDT)
In-Reply-To: <CABvT5oUNfyd1Q8z9cZeH4Xj=rttdr2D_h94=WoCQLkesv42PVw@mail.gmail.com>
References: <CABvT5oUNfyd1Q8z9cZeH4Xj=rttdr2D_h94=WoCQLkesv42PVw@mail.gmail.com>
Date: Sat, 28 May 2016 20:35:28 +0100
Message-ID: <CA+21M5ARVPuecHSmEOUR2jftTS=4RhTrJbmwV=VGQKRUyQO-bg@mail.gmail.com>
From: Renato Caldas <rm.santos.caldas@gmail.com>
To: Henry Hallam <henry@kittyhawk.aero>
Cc: yocto@yoctoproject.org
Subject: Re: Problem baking 'perl' on Debian-unstable
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
X-List-Received-Date: Sat, 28 May 2016 19:35:31 -0000
Content-Type: text/plain; charset=UTF-8

2016-05-28 20:17 GMT+01:00 Henry Hallam <henry@kittyhawk.aero>:
> Hi folks,
>
> I know Debian unstable is not a tested/supported distribution, but it
> worked fine for me for the past 6 months until recently, and I figure
> we'll want Yocto to work on Debian Stretch when it's released next
> year.  I suspect what I'm seeing is a Debian bug rather than a Yocto
> one, but I'd love some help tracking it down so I can report it.
>
> I've narrowed the reproducing test case to the following:
>
> * Set up host with an up-to-date Debian unstable distribution on amd64
> * Checkout a clean copy of 'poky', either on the 'krogoth' or 'jethro'
> branch (I've tried yocto-2.0.0, -2.0.1 and -2.1 as well as the tip of
> jethro, krogoth and master)
> * source oe-init-build-env
> * Edit local.conf to set MACHINE to qemuarm
> * bitbake perl
>
> The build fails at the split_and_strip_files function of the
> do_package step.  The target binutils
> arm-poky-linux-gnueabi-{objcopy,strip} fail to process
> .../package/usr/lib/perl/ptest/generate_uudmap because it is an x86-64
> executable and those tools are presumably only built to be able to
> handle target (ARM) binaries.  I'm not sure whether generate_uudmap is
> supposed to be built for native or target architecture.
>
> https://gist.github.com/henryhallam/de0d2c8ac99bab2c6b9f0ecd41dd4c72
>
> I've reproduced this on several different systems running up-to-date
> Debian Unstable, and confirmed that everything builds correctly on a
> VM running Debian Stable (Jessie).
>
> I'm somewhat at a loss as to how to proceed further.  I did try
> rolling back the 'perl' Debian package from its current version
> 5.22.2-1 to 5.22.1-10 and corresponding dependencies, which made no
> difference.  I'm not sure the host system perl is relevant at all,
> though.
>
> Any advice appreciated,

Hi Henry,

It's not just Debian, there's a bug report here:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=9673

I've already submitted a patch that should solve this:
http://patches.openembedded.org/patch/123675/

Cheers,
  Renato

>
> Henry
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

