Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6AE1E00D3A; Wed, 18 Oct 2017 22:51:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f48.google.com (mail-pg0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 566DCE00D33
	for <yocto@yoctoproject.org>; Wed, 18 Oct 2017 22:51:16 -0700 (PDT)
Received: by mail-pg0-f48.google.com with SMTP id v78so6209756pgb.5
	for <yocto@yoctoproject.org>; Wed, 18 Oct 2017 22:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rBRqIJZfhHJGcKmOICgdX70mNh32dl9kCRHDqEmKMfg=;
	b=vXwDuY6nRBNu8pIj74VNqro6bXsoB5pqV6PngbiCek5UsYEZpy9Vlm1UPW4O3mgv9j
	YRW20IkJ52z86Yisfrw8XKrHbWdC6hroQVlGpZm/gmvIKweIKFOnEHHf2nXKxhvnj+G2
	U+l1QjDc6OQHEo95mzFM1wdFEt0pgSKmltv242dxUtVuC5/Eb8eEQnRFl/xmItmkPvv9
	l62iMalqRh04wuP8pi2h2HeTKrEuAV2ehS0L8cBbzgizOnceWN+2Riit/wrNkvZRjBaS
	IL7oOX/YHaTGuHT55pDR9/LPutkFSvxvzTkeZ3z14BaSCcAxb85wgEMacT3cPNZhmh1u
	kRPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rBRqIJZfhHJGcKmOICgdX70mNh32dl9kCRHDqEmKMfg=;
	b=UY0S0pN1RkkbIFPIOQJwqq4EbGQgLrByOC7FKoIUUUvBljQsakfCrab0RwWdSgB0N3
	jVkI2Nd0iztTClvprzlpCvpsrOGDgYjHpA3dyEpzKBHja88XgUm04Fo9/4YaiK1Ulj0/
	VLTB8hL7Fe6jAFomCSME7OtOxvP4V+qJ/SgPHwR5xpgoRcXfqcegsApD+zXUS4TGUyZk
	Zrg0fDBwf3QZYnDzQ3WNJv1kQpZ1mPlaKMraw3dLG66sxxM0lnplIlMu6Qo+Knl+ryCA
	Ivg/76Qc9fqxG+bXoExOKi5mggPxdGLMdWMMo38etaWFvTbQvNovZS7MZjVtQ4ByWa2g
	85oA==
X-Gm-Message-State: AMCzsaW4Eu9Ih0MVABt+arHA1bhcP+NoQc4fJ35wPJZtyhYPtrJkayrd
	9tIuYvQuwmjOAUEJhg4cqECSAqxYgfbNUV/ZZ3A=
X-Google-Smtp-Source: ABhQp+QGfU4aR3ltE3NkszQ/UXWLALYn0GfhFCw5bOQ0G0s+l0a5y0bBFW571c4e5Cop5wHUvaJM7F5Yw3r1NF6t6xI=
X-Received: by 10.84.177.129 with SMTP id x1mr531671plb.161.1508392276199;
	Wed, 18 Oct 2017 22:51:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Wed, 18 Oct 2017 22:50:45 -0700 (PDT)
In-Reply-To: <1508364829.4636.30.camel@gmail.com>
References: <1508364829.4636.30.camel@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 18 Oct 2017 22:50:45 -0700
Message-ID: <CAMKF1srFzdJusbLTTEikKQHrzKinot3=YgR+nkegsKGUCbM6tQ@mail.gmail.com>
To: Marlon Smith <marlon.smith10@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building kernel backports for ARM with Yocto
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
X-List-Received-Date: Thu, 19 Oct 2017 05:51:17 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 18, 2017 at 3:13 PM, Marlon Smith <marlon.smith10@gmail.com> wrote:
> Hi everyone,
>
> I'm trying to build the Linux backports project to get updated wifi drivers
> on an older kernel.  The problem is that when building backports, it first
> builds several tools that need to be run natively before cross-compiling the
> rest of the project.
>
> I know how to write a bitbake recipe to compile natively, and how to write
> one to build for the target, but I can't figure out how to combine the two.
> The backports project has steps for LTIB:
>
>  %Build
>  export PATH=$UNSPOOF_PATH
>
>  make menuconfig prefix=%{_prefix} \
>    CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
>    ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
>    KLIB_BUILD=${TOP}/rpm/BUILD/linux
>
>  export PATH=$SPOOF_PATH
>
>  make prefix=%{_prefix} \
>    CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
>    ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
>    KLIB_BUILD=${TOP}/rpm/BUILD/linux
>
>
> I believe what I need is an equivalent to the line export PATH=$UNSPOOF_PATH
> but I can't find anything in the Yocto documentation or mailing lists that
> would be equivalent to that.
>
>
> Any help would be much appreciated!

You might try this out

https://github.com/kraj/meta-himvis/blob/master/recipes-kernel/linux-backports/linux-backports_4.14-rc4.bb

it does not work out of box but with few fixes here and there it should work

>
>
> Thanks
>
>
> Marlon
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

