Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.10997.1624885942960448255
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Jun 2021 06:12:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tVvrypje;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: zoran.stojsavljevic@gmail.com)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	by mail.yoctoproject.org (Postfix) with ESMTPS id CD15638C056B
	for <yocto@yoctoproject.org>; Mon, 28 Jun 2021 13:12:22 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id x16so14016440pfa.13
        for <yocto@yoctoproject.org>; Mon, 28 Jun 2021 06:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8a5XrJ9zuBtx6aPA0s71E60u5eJOZ22Q9wjrIfVrYMw=;
        b=tVvrypjemZ3Z+zgUM1Wi4+roipflef701toIcQBG+GE7bF4eV1q7EplelzHMFrY19Y
         qxhXbsk8gaBDVoBBrnDcrJDF5VX/VDKCLdlF791B6MdR+ULEa3UVIlY7WREvKs5/VlBx
         FBZiQVFnmmCKptTINo+GhNKT2MLlafuye6y9zofULZTmGWbGZakiwWPQY5DNas7aJxeY
         dcQ7UfK4A3VUTNn9kLV9/yx2l+ZDtZqOotzGgUOc476J267tm9cblBJ+NS3i43TzXrj+
         Ho80yvq9e4bqxhMBbEczmnabn/9MBlUEOpPVdmslOPJeLrtLMITf1k02J0E0MxRYqTWU
         zfdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8a5XrJ9zuBtx6aPA0s71E60u5eJOZ22Q9wjrIfVrYMw=;
        b=MwlvX7FXmJaUXuSwJWAlYec1RWYXJR/BPQusINxDjPKTVTZxV0npPG5NsXIVDIOXx+
         rvZSKI+MEEh1yhU3aKLaP2UWWzqqc48ZIzXlVXHLdne/P692dfLPzwg1fg7YRfYlq8sl
         +fKrT0UR/oQVGjiGisY4Qb2CuCdN9Siv4PAoYZcllpDFmNu7tcaSfs9x0NTkXF4C8uoN
         tBDiMK8L654AzdZ4ppwUenrPgnq0Nd5RISmNUyJ9eZt0cmJAmKBr4ydY5sB+DGH8UKJU
         ecQ/ocHH3FWEAoNYXLQN2z/KnKPboe7teW6LcqLU/lMmFY+WU29qjdoMPANpX1mBhWvh
         pTnA==
X-Gm-Message-State: AOAM530QlFab6qJKS/ebo08irdz0lVeeaC8LMRGI9dwhfK6ghtS9coS9
	CXvzLu6aHbXVreNBMbh499z+oz42yG9mc6OaxjU=
X-Google-Smtp-Source: ABdhPJwE8FqlFtNBI+JvP2ambTeMKOplkf+COo7yOj/Jo906DKkYZ1LvgK3A3uXksmWpSpKYSL4b9RkEoPo/NDloKcg=
X-Received: by 2002:aa7:93bb:0:b029:307:31a3:ad3d with SMTP id
 x27-20020aa793bb0000b029030731a3ad3dmr24814468pff.65.1624885942117; Mon, 28
 Jun 2021 06:12:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAB=6tBQR1S=2niGMojS_55-JebtQX4LybA2aEh_6YNtXf_3yNA@mail.gmail.com>
 <c48956c8a5358d081fb9e8b9b04cf27848bde756.camel@linuxfoundation.org>
In-Reply-To: <c48956c8a5358d081fb9e8b9b04cf27848bde756.camel@linuxfoundation.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 28 Jun 2021 15:12:10 +0200
Message-ID: <CAGAf8Ly+9mbmFJ9NNDuMqDi6eN05p-cR7FES-CwaVa93csCqOg@mail.gmail.com>
Subject: Re: [yocto] [OE-core] Hardknott (GCC10) Compiler Issues
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Chuck Wolber <chuckwolber@gmail.com>, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

At least seems that GCC 10.2 is not the cause of the problem for my
cannelloni recipe issue:

https://github.com/mguentner/cannelloni/issues/35

The same error repeats itself with GCC 11.2 (in hardknott).

The issue is most probably optimizing GCC switches and Include paths
in further cannelloni commits (after release 1.0.0, which compiles
with both 10.2 and 11.1 fine).

Best Regards,
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
