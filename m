Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27A5CE015AC
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 00:31:36 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id 17so9546103iea.1
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 00:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=EChKoDPJNqJCeI9wIIKk0chUnBsuDNBKLHMfDTEpxYI=;
	b=BVB+YA+nPwLR5s2HNNT5hCqmwe/L8mOnocEB8Pw8ZKU0Zq5h+CqYn+JFDMt4RD24h1
	GET90zScH2Eg1PXlcZSiio6KmewufcMjZmMc8RhABKJiCCYpGvW/Lkk6Um+4hhoJKlcW
	qvo8Vtwz2l2NlF0g1BrgmhXZS93/K5IcoRvCo6BQpJPyaQwSShM/zZViu0YPnw6KBiot
	Hfn9jQvnA4IkyMSKZKvM2DdkHi7FQfGXqvyXC5SyQrVWP3tJCo4ibBzus6iG29uHbxhL
	GSOxNY9lYoktic1AY3htcBUnV3br0RfFN1n2VJrC9PSF3piTvUhjannYgNGknsX2J2IP
	MERA==
X-Received: by 10.42.64.74 with SMTP id f10mr29626ici.86.1378884695798; Wed,
	11 Sep 2013 00:31:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.216.195 with HTTP; Wed, 11 Sep 2013 00:31:05 -0700 (PDT)
In-Reply-To: <CALmOhg=-=y_TDAbaSgSn1rjv1c1QB2iLe3z0EUYe17gTmxWU4g@mail.gmail.com>
References: <CALmOhg=-=y_TDAbaSgSn1rjv1c1QB2iLe3z0EUYe17gTmxWU4g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 11 Sep 2013 00:31:05 -0700
Message-ID: <CAMKF1sphfs0d487nwL0q6mPDMnCHTZb+LtEEM9N9TQp=BJmOrg@mail.gmail.com>
To: Trevor Woerner <trevor.woerner@linaro.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: CFLAGS and configurations
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
X-List-Received-Date: Wed, 11 Sep 2013 07:31:37 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 11, 2013 at 12:10 AM, Trevor Woerner
<trevor.woerner@linaro.org> wrote:
> Hi Khem,
>
> Sorry if this has been asked too many times before, but is there is an
> advantage to specifying a whole bunch of CFLAGS for every invocation
> of the compiler versus specifying them during the ./configure?
>

Keep in mind that all packages we build are not autotooled. There are other
component build systems besides autotools that come into play like scons, cmake
and so on and we have to be consistent across all of them.

> For example, if one ./configures their cross-compiler with things like
> -march, -mtune, --sysroot, etc then those will be the defaults. If
> nothing is otherwise specified, these ./configure options are what
> will be used. But if these things aren't specified at ./configure
> time, then every time the cross-compiler is invoked these options need
> to be specified.
>
> Looking, roughly, through some of the log.do_compile logs when
> cross-compiling applications for the target, and looking at the output
> of invoking the cross-compile with the "-v" flag, it appears most of
> these flags need to be specified for each invocation of the compiler.
> The ./configure specifies the sysroot, for example, but doesn't try to
> specify any of the -mtune or -march (etc) flags.
>
> Wouldn't it be easier the other way? That way we don't have to worry
> that some component's build isn't clobbering our required CFLAGS?

yes for packages using autotools may be but I dont see a big downside
of using CFLAGS
either. It gives you same functionality but is a bit more homogenous
across all kind of components.

>
> Do the SDK cross-compilers work the same way? Are they ./configure'd similarly?

We now have relocatable SDKs and one feature that we use it making
sure the we have
the ability to change sysroot on install. So this will have to be
passed via CFLAGS.

>
> Best regards,
>     Trevor

