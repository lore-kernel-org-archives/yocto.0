Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E94D5E00DEE; Mon, 19 Mar 2018 17:15:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E57AE00DE1
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 17:14:59 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id z73so16130124wrb.0
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 17:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=64ehH1N/LWpX972rGLSKQfnQy5foYGQYs74E2wGukLg=;
	b=kXPbH5n8WJM6C3CAQAvoVYveFtFCR5tabNtsDFhGpxE90B0nLPnOMka/IBkD1L6JES
	E87z0oNGgUE0RTy94XZ0zUe/zoOalMCfrKChV2s5ee6rVKM3w6fxzXrylwbptFnkWJzm
	n93ylbZmSljrPV8iHBFDw2jXIjMhbeqjZeaAOiB7YbcgF5oQsWxhozmawpkq8IbrdJYX
	veSuyOihHm8XMvefUTZRIrDG5ExEOQCFzrg4QOgcXhEXc2BqNAmCkz882TsmusHc6PZ7
	lktayTEYrVPnoXoYbNyWAZ9MZGHTFIrI48in969AfmKKybc16iXd8QPVsAUBaDUE0XLB
	TX/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=64ehH1N/LWpX972rGLSKQfnQy5foYGQYs74E2wGukLg=;
	b=GWdNW81DgdI7xPqR5JWkMVQ5q6KkChiT86T7ZegUdaMjksCayYBRpBUjNujLFg1PCU
	hiOfSy+y+oqW3NnG+0YlRVLpeTBweklkVc/uNzq4B5iuiGYj4zGQAJ2pslMViGVkOrY1
	bR27EBYhJOdsGg76LdfvKDIN93EbXs4hS5MRYzpU6BmRpAjayZoWCfvaSuUIJ8af9dAe
	jkS8PzJ2znl+JLqZ3bLEHsGzFxRM7931thXzCW37Y9MjqbszxFLNn4WFJ4vy/JgpMwAc
	mT2lus6E7IConnvSbeNYvlo2XYv/1nQwADrQLyVkNcHqqr8pi79+U5IKMDLFRnmOKGtR
	0tMg==
X-Gm-Message-State: AElRT7HhZYMWUKOyW2uu2J+ftFAHM++WYCKukZRn3iWt1Y1Zc77KcwQA
	Mk5Xn8bT9voWZ/03jzvbhBGuTIi6C8ZUC0YUM1UYjg==
X-Google-Smtp-Source: AG47ELs+RUApXAX2me53BMALhkywH6qETBzQCN9UIhgaRLEzaXHgTPGY+q83hpyrLCgKCXhPOk8haztedjMxGhlI4ys=
X-Received: by 10.223.134.47 with SMTP id 44mr3819257wrv.114.1521504899047;
	Mon, 19 Mar 2018 17:14:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.163.65 with HTTP; Mon, 19 Mar 2018 17:14:58 -0700 (PDT)
In-Reply-To: <156ED905-4814-427E-9F21-8F92AAE0B020@korgrd.com>
References: <6C79F0E5-F966-4068-B0CA-0B2FACB4ACD3@korgrd.com>
	<CAJ86T=UGbOp3MtiMC=rL74qHXLrnVfp0k-CTXcdPqZbeUbCytw@mail.gmail.com>
	<156ED905-4814-427E-9F21-8F92AAE0B020@korgrd.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 19 Mar 2018 17:14:58 -0700
Message-ID: <CAJ86T=Uh4OyoJXyN3tHOSUksWPNohGu_8TSiyrABOxcepr0SPw@mail.gmail.com>
To: Steve Pavao <stevep@korgrd.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: ARM CPU version question
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
X-List-Received-Date: Tue, 20 Mar 2018 00:15:01 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 19, 2018 at 4:35 PM, Steve Pavao <stevep@korgrd.com> wrote:
>
> I think I may have discovered a specific situation which is causing the
> problem to occur for me.  It seems it occurs because I am trying to build a
> kernel module under the recipes-kernel directory in my custom layer.   A
> colleague pointed out to me that meta/classes/module.bbclass explicitly
> unsets CFLAGS and a bunch of other macros in this situation.

OK, but note that the kernel (and kernel modules) are quite different
to user space in the way that CFLAGS and -mcpu etc are setup. For code
which runs in user space, these options are set by the OE build
environment, based on the machine config. For code which runs in
kernel space, these options come from the kernel build system, based
on the kernel config.

ie it's quite correct for module.bbclass to unset CFLAGS etc - it
prevents OE's flags for user space contaminating or conflicting with
the flags set by the kernel build system.

> Maybe I need to put in some custom shell syntax in my recipe, to export
> __ARM_ARCH_6__ or to directly define the compiler macro when needed, based
> on the value of the TARGET variable.  I wonder if there is a better
> recommended solution than this, though.

__ARM_ARCH_6__ is one of the macros normally set internally by gcc, so
you shouldn't be trying to set it manually.

Instead, you should probably either:

1) Update your code to test for defined(__ARM_ARCH_6__) ||
defined(__ARM_ARCH_6K__), since according to:

  https://github.com/torvalds/linux/blob/master/arch/arm/Makefile#L65

the kernel will either pass -march=armv6 or -march=armv6k for ARMv6
targets (depending on whether or not your kernel config enables
CONFIG_CPU_32v6K).

2) Update your code to test the generic ARMv6 macro set by the kernel
build system, ie (__LINUX_ARM_ARCH__ == 6), which should catch all
ARMv6 targets.


> BTW, my kernel module contains conditionally-compiled code for initializing
> the ARM PMU correctly for each CPU case.
>

