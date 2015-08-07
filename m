Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EA73E00A39; Thu,  6 Aug 2015 23:27:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5914DE00A31
	for <yocto@yoctoproject.org>; Thu,  6 Aug 2015 23:27:39 -0700 (PDT)
Received: by igbij6 with SMTP id ij6so25500513igb.1
	for <yocto@yoctoproject.org>; Thu, 06 Aug 2015 23:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=M4NbKSg1UcgUP1x74GqPoEXIpPBIWVEsVDS5AwqQqhs=;
	b=IT3harJHiYZCW8OpWQy3/ZAIYPZ/JN6zgAcpSatP8BFVclIf8VntDjq7F4dgbh28aX
	fVWLEUuYivPCQ4Sc3TYRDeA63FCZFd9ft4OiIqiM/dkLBaDzunZkNQV11RiGlbZ96RPy
	sucroDb5o9VpiuF7NAyEc7pcstw+h3S10nI3+sFtdo7VAgmR+yi7K4egMtsSNzq5xhex
	uwf0ffBKgaBpaQeY1Sac627gqzcYG0bn/ht3KYG67/tIC6mBdbuxkynRU/DOYSzijnmG
	XxPQEByaCacYSXcoOJNM0kZ8IkC4Gt+rrXz1OZ9JmLbIz7J3uizBljt5cFvXxPt4Wnip
	mPyA==
X-Received: by 10.50.59.148 with SMTP id z20mr1664064igq.77.1438928859215;
	Thu, 06 Aug 2015 23:27:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Thu, 6 Aug 2015 23:27:09 -0700 (PDT)
In-Reply-To: <CAM8P1k9OK=6xJydVg=_zeBgjbAC5En4TzaEANqWhjMVs+Sg0kg@mail.gmail.com>
References: <CAM8P1k9OK=6xJydVg=_zeBgjbAC5En4TzaEANqWhjMVs+Sg0kg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 6 Aug 2015 23:27:09 -0700
Message-ID: <CAMKF1sokctQ9+RVFFpZ2WFtLQi6Kq6oaRK6vG2Ssnn4iyFKQCg@mail.gmail.com>
To: Lukas Weiss <lukas.weiss@janitza.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: arm-none-eabi toolchain
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
X-List-Received-Date: Fri, 07 Aug 2015 06:27:43 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 30, 2015 at 10:25 PM, Lukas Weiss <lukas.weiss@janitza.de> wrote:
> Hello,
>
> i need a arm-none-eabi toolchain on my yocto host/build system. Ive tried to
> use the arm-poky-linux-gnueabi, but it does not support the arm version +
> format i need:
>
> arm-poky-linux-gnueabi-ld: unrecognised emulation mode: thumb
> | Supported emulations: armelf_linux_eabi armelfb_linux_eabi
>
> My Linux runs on a ARM9 (armv5e, elf), I need cortex-m3 (armv7m, thumb).
> Where do I get that? I do not find any documentation about additional
> toolchains to generate code like peripheral-firmware in my yocto
> environment.
>
> a) How do I get the toolchain in by yocto host?
> b) How to i tell the bitbake-tool to use that toolchain on a certain receipe
> (PACKAGE_ARCH, TARGET_SYS, ... )?
>
> Do you have any hints?

this is not supported usecase but there was some talk about such a
usecase. you could change ld to support additional emulations
so you can then keep using same toolchain to link it but then the c
runtime etc wont match. So far we dont support non-hosted(bare-metal)
environments
>
> Regards,
> Lukas
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

