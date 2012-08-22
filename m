Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE671E0140A
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 16:29:57 -0700 (PDT)
Received: by eekd41 with SMTP id d41so51319eek.35
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 16:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=iNitQp7QToZfNvV545urUeMXM9fyt5KtN5heWA2jpWM=;
	b=uIYZ/TZTonatvLKT3bfgxAVzQmujPplLtqCYzPPbyE0f61qFGKL00Ow3pbEx45c4ip
	qvzwIJGeyOfVgDdDSTD60TOyLH8eq5O22simm5cPyTI79KD/CBjHibA8TZXGWAK5OoFG
	JJyKxt4ZaeYK3KZlqk1hYoz1xYghTMxNVjyUwVmSJxZ5RVl7TOB6dKZG9J5AVOc/rWfR
	Hzfo4Y1tPhrEnwp5b1QTbExn4GnN1FrkmtjcU4hlI26UXyHLEjalzB7tTY7Mw4x2upfW
	3cr1dydOE/HtVsWxqwo+bqE7LwIGuhrStxai80/UJwOWA9+ta34F57EztAvg4XpG79md
	/TJQ==
Received: by 10.14.211.3 with SMTP id v3mr20543375eeo.43.1345678179785; Wed,
	22 Aug 2012 16:29:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Wed, 22 Aug 2012 16:29:09 -0700 (PDT)
In-Reply-To: <CA+gsK-rG1i7A1CHgR+T7UevStRVQXku6ri6LK407hHzSqqLfUA@mail.gmail.com>
References: <CA+gsK-rG1i7A1CHgR+T7UevStRVQXku6ri6LK407hHzSqqLfUA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 22 Aug 2012 16:29:09 -0700
Message-ID: <CAMKF1soSLzM=u9EgFg4TJ-E4q+Hjfz2eMxt3XgNoRjN9vG6UPg@mail.gmail.com>
To: Rudolf Streif <rudolf.streif@linux.com>
Cc: yocto@yoctoproject.org
Subject: Re: [ADT] Autotools: configure using --with-libtool-sysroot
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
X-List-Received-Date: Wed, 22 Aug 2012 23:29:58 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Aug 22, 2012 at 4:22 PM, Rudolf Streif <rudolf.streif@linux.com> wrote:
> I tried, according to the documentation at
> http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#extracting-the-root-filesystem),
> to configure and compile the autotooled GNU Hello World Applcation for x86
> and ARM with
>
> ./configure --host=i586-poky-linux
> --with-libtool-sysroot=${YOCTODIR}/adt-sysroots/x86
>
> and
>
> ./configure --host=armv5te-poky-linux-gnueabi
> --with-libtool-sysroot=${YOCTODIR}/adt-sysroots/arm
>
> As expected configure does not recognize --with-libtool-sysroot: configure:
> WARNING: unrecognized options: --with-libtool-sysroot.
>
> Running the suggested commands:
>
> $ libtoolize --automake
> $ aclocal -I ${OECORE_NATIVE_SYSROOT}/usr/share/aclocal \
>         [-I <dir_containing_your_project-specific_m4_macros>]
> $ autoconf
> $ autoheader
> $ automake -a
>
> did not make a difference (same error message). However, compiling the
> application worked just fine.
>
> Questions:
>
> What exactly is --with-libtool-sysroot supposed to do?

its an option for libtool sysroot support actually it was called --with-sysroot
but it conflicts with gcc and binutils which already had that option
before lib tool added it.

> What could be the reason that the steps to update the configure script to
> recognize the option do not work?
>

so I guess if you have new enough libtool this option should be effective
but will be ignored for old libtools (pre 2.4)

> Suggestion:
>
> Add --prefix to ./configure --host=armv5te-poky-linux-gnueabi
> --with-libtool-sysroot=<sysrootdir> --prefix=<sysrootdir>/<prefix> so that
> make install actually installs into the system root.
>
> :rjs
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

