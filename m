Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.12672.1624893062838968745
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Jun 2021 08:11:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PYSS6JTC;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: zoran.stojsavljevic@gmail.com)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3334038C06F9
	for <yocto@yoctoproject.org>; Mon, 28 Jun 2021 15:11:02 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id d1so8464858plg.6
        for <yocto@yoctoproject.org>; Mon, 28 Jun 2021 08:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Mhq1iCfokaIPo+dYpj6QHHkFIg9kT8Vx/tvzbNSlE1k=;
        b=PYSS6JTCww9jAzBupmuI+ImGUtxkMtiiS6LmjGHra+AsPMzgbWtIe9qEKHLb0klzfd
         Fbuv7Joe3D03fzNU8jo53sg1bJsNdAw1Uq87EhFE2GnRaPpzWvwR3t9G/vDE4aYwEVFc
         HQy74zI1bRMQSPp12VBCw+wGfqueHbXZ7S3vHSQ75EGfoXHCNScPi7855ZsVYcpTtZDQ
         y0APVapic16ocQOTixEqjWrpHXVRA2nFUmWZ0gD6B1VD+adQAXD9W1qSp2wqiXdMDodp
         RH4sB/v17FCF68Do9GTkBsKC+OG9LJtFFhydz7rtQiH954UyT2Wt7cfiMlD4TJ+Nn/hs
         pDKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Mhq1iCfokaIPo+dYpj6QHHkFIg9kT8Vx/tvzbNSlE1k=;
        b=IAdry6X84ZzeMDUYQnpDONKC94680Q/DXISg33xoZj3nSqfc+g0CU3xYuHxwZJ3HNe
         f+d0qn1fa5lorye+47PG9Qg5WfqYgm4KxJ3RWN0xU8L2WyvrJiBlfVG9d6f3h5lmxqoO
         2GNwCN6ewXCDoJAPXz+JT3jA1MOXLITeBiFi7KSZdZV4CMvlL1QpEfrk57RWod5p2xs1
         A6gmp1EbAJ4ayC6erelKhK9rg0gFlOpTCR+SI+TUVULqBjHCWae0I0JMRdtsR4QViKDx
         UUuGh9ff2BShjnMJNzxxOYZ5MMwr8otUlDxZtqxlI77W4bxKpaDA7afgtF3V5/jaBSj/
         CZwg==
X-Gm-Message-State: AOAM531PYyLN1GqVFG1JRrZzRI8j1/9fVgiDN4eolGBQQaRFAdZTREMv
	v74KhXzZrNASBSfUqMuJMS90CzXbE9KleIqmK4E=
X-Google-Smtp-Source: ABdhPJz4WgiAspOo2MviM42ModNwkleexCMfqwg+K27eB4uGIoMjAh1awXyIMOGMgPffCiAX/6kWUUkMYNqtIVqgq6U=
X-Received: by 2002:a17:90a:e50f:: with SMTP id t15mr28548671pjy.75.1624893061301;
 Mon, 28 Jun 2021 08:11:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAB=6tBQR1S=2niGMojS_55-JebtQX4LybA2aEh_6YNtXf_3yNA@mail.gmail.com>
 <c48956c8a5358d081fb9e8b9b04cf27848bde756.camel@linuxfoundation.org>
In-Reply-To: <c48956c8a5358d081fb9e8b9b04cf27848bde756.camel@linuxfoundation.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 28 Jun 2021 17:10:50 +0200
Message-ID: <CAGAf8Lx-X=SYHdnuB2i40GPbQqxut-4AurMk618ajrDqE5+PMA@mail.gmail.com>
Subject: Re: [yocto] [OE-core] Hardknott (GCC10) Compiler Issues
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Chuck Wolber <chuckwolber@gmail.com>, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

> The target system should be independent of buildtools version and the target
> system should also be binary reproducible so if that were changing through
> changing buildtools tarball, that would be worrying in itself.

Even better, the rootfs built by YOCTO could be used, but anyone can
build U-Boot and kernel outside of the YOCTO, using their own cross
compilers (I use Fedora 33 ARM cross compilers, since my Linux host is
Fedora 33).

Then to install all the different components on the SDcard for the
target system.

And see if the issue repeats itself...

Zee
_______

On Mon, Jun 28, 2021 at 2:49 PM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Thu, 2021-06-24 at 21:48 -0700, Chuck Wolber wrote:
> > All,
> >
> > Please accept my apologies in advance for the detailed submission. I think
> > it is warranted in this case.
> >
> > There is something... "odd" about the GCC 10 compiler that is delivered with
> > Hardknott. I am still chasing it down, so I am not yet ready to declare a
> > root cause or submit a bug, but I am posting what I have now in case anyone
> > has some insights to offer.
>
> The issue you describe does sound strange. I was a little unclear about exactly
> which combinations were passing/failing. Are you saying that some versions of
> buildtools let the system work but some do not? We now have gcc 11 in master
> so it would be interesting to know how things worked there and if any
> regression was fixed.
>
> I have also heard reports of issues with bison segfaulting from other sources
> but I don't have anything I can point to specifically about it.
>
> The target system should be independent of buildtools version and the target
> system should also be binary reproducible so if that were changing through
> changing buildtools tarball, that would be worrying in itself.
>
> > P.P.S. For the sake of completeness, I had to add the following files to the buildtools-extended
> > sysroot to fully complete the build of our images:
> >
> > /usr/include/magic.h -> util-linux "more" command requires this.
> > /usr/include/zstd.h -> I do not recall which recipe required this.
> > /usr/bin/free -> The OpenJDK 8 build scripts need this.
> > /usr/include/sys/* -> openjdk-8-native
> > /lib/libcap.so.2 -> The binutils "dir" command quietly breaks the build without this. I am not a fan of the
> >                             lack of error checking in the binutils build...
> > /usr/include/sensors/error.h and sensors.h -> mesa-native
> > /usr/include/zstd_errors.h -> qemu-system-native
>
> It is great to have this list, outside the non-jdk issues are probably issues we
> should look at fixing in OE-Core. Do you mean binutils above for the dir command?
>
> Cheers,
>
>
> 
>
