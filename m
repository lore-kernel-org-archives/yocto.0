Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAB16E007E1; Mon,  9 Nov 2015 09:56:44 -0800 (PST)
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
	*      [209.85.213.170 listed in list.dnswl.org]
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DFD1E0071C
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 09:56:41 -0800 (PST)
Received: by igcph11 with SMTP id ph11so32634454igc.1
	for <yocto@yoctoproject.org>; Mon, 09 Nov 2015 09:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=xPKYgtaiy/mvxnbKtWmwM3smQ6/pN83R2GPMDh4Y2G0=;
	b=JOeSRHU+siYI3ZVD0oQJa3VxBD7d4JwtQEpl9ASe5CK3XWuQwkRjswhnwalJa4Dx93
	SK7rY/ONwIS0pd2g4B3+HFU268Qr0r3ODIwON+zS5OgloOjjbwR8TgRcr2ipO/Lg5YM8
	wBpNRqT4+I/CyV/Nrgc4cK4ZlS8P6fkV2dO7jrQSNTy1ppnIaZL2KRanvwjaM5aU2fKl
	AsHzqjZIBRZBYqHcqAa91Ku0QFy/2icnunurQC/FvlQiMeega+xRzGauTO/q7CpiGmYr
	J5fvak1bXBCl2KyKplEC+fR0LC6Wac6II4iiGcu+G0An04nbhPbYnLsuY2FJU9Jizrux
	kuvg==
X-Received: by 10.50.155.106 with SMTP id vv10mr23133153igb.77.1447091800932; 
	Mon, 09 Nov 2015 09:56:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.38.133 with HTTP; Mon, 9 Nov 2015 09:56:11 -0800 (PST)
In-Reply-To: <CABatt_y6X3uxCcq+0Z7r2Zcz_4McJJSQ0D=SwKo-uPFaxuG3Og@mail.gmail.com>
References: <CABatt_y6X3uxCcq+0Z7r2Zcz_4McJJSQ0D=SwKo-uPFaxuG3Og@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 9 Nov 2015 09:56:11 -0800
Message-ID: <CAMKF1squtQKgLmwTQNBykLx5LK=2dwsnWO594yJ+V2b1GjErXg@mail.gmail.com>
To: Martin Townsend <mtownsend1973@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: binutils failing in FIDO branch
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
X-List-Received-Date: Mon, 09 Nov 2015 17:56:44 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Nov 9, 2015 at 4:36 AM, Martin Townsend <mtownsend1973@gmail.com> wrote:
> Hi,
>
> binutils is failing to compile.  I'm using tip of fido branch.  Error
> message is:
>
> |
> /home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cortexa9hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/fibheap.c:
> In function 'fibheap_replace_key_data':
> |
> /home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cortexa9hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/fibheap.c:38:24:
> error: 'LONG_MIN' undeclared (first use in this function)
> |  #define FIBHEAPKEY_MIN LONG_MIN
>
> I've tracked it down to the fact that libiberty is the only component that
> doesn't define HAVE_LIMITS in config.h, so I assume this part of the
> configure is failing for some reason.
>
> Anyone else seen this, or have an idea on how to fix this?

whats your host distro ?

>
> Cheers,
> Martin.
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

