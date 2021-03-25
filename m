Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web08.8615.1616681432284048467
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 07:10:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=DCBu4rcf;
 spf=softfail (domain: sakoman.com, ip: 209.85.221.49, mailfrom: steve@sakoman.com)
Received: by mail-wr1-f49.google.com with SMTP id z2so2432401wrl.5
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 07:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S02FYP5UidXtwrz3Wp2ztOWMvMnxiinN4DdATCE0U0w=;
        b=DCBu4rcf71RbErHU4dxtENZ9+S1UewTKJ8RIAeo0EG/mxYWhS7ScjfoIFv/kryuOpn
         QleaqWcaJDVeTVH61UoW6sUiNkQUMa6PWZ6b3kqUs05jI+ZFPNdL48hIeRuxEus+3h/9
         EqOElPETl1Ijkrb4It3mONDn0Xx8XNiok6qNzr6s/Wyrc1ORoz0EF7A8FfHbNos29+CU
         e0LeEuMKXCGGotlfeyWQvAHNse6wAcWaQJNqP9MGV7C43rKYUNV8NGTPpbVgPc1/7ypN
         y8lIxoXdoBKiuFroqZH8wp/GymWR2R9GmAcqc1ymG6Q/5GLQwef8+j0F/CPOhe5cVG5T
         bOLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S02FYP5UidXtwrz3Wp2ztOWMvMnxiinN4DdATCE0U0w=;
        b=Q/Qvyo/AypOTZSDMECNO4ZrEyRQMh8KHDMrhcvLHc8FXxyiL/UZ8K45WVuoQm4GGAN
         pQHNTWiTjGb0sLgGX0M0j/XQeIlZml5Hwp0u6LJd6b+ffJCXFZoPcvPPnlvP7PA6ULdQ
         4SrpfK+TpaHsdSa03fcZDJfzQmXqMag6RDzSv+rYS7c0Q70tXbZbg/8nugxBc8NgJtX7
         luEzj0r3B4lYh/z90txsAnYMyXuZW0wHuIJrcaXcJljCjIGJh7M1mA43hn0A5PzA+TRL
         vp5f/bbm8k/ZZrsNO7vqTegQ7rrf3goBJbncn1yN/6SFxWcBROAWl0TR9k7KaFr1BZ+6
         dghw==
X-Gm-Message-State: AOAM533P887xwj7OPm+52ER91XgAKo2C7CPOFj+SJCL9gEQFutPVd+/Y
	OC2l/kRJMnWjmOJK+2Qy6YQCAgP4tLd3wgrsBXxeTQ==
X-Google-Smtp-Source: ABdhPJxGIlohR6cMlNYqe6rX0IIcXu/F0cyqukqvLo2/sofvV9rzz/3B5cUxP0zP4FKzO1zqfQafIoydSLgEcSOa7gs=
X-Received: by 2002:a5d:54c4:: with SMTP id x4mr9127660wrv.329.1616681430615;
 Thu, 25 Mar 2021 07:10:30 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1616625264.git.steve@sakoman.com> <7b3d9d7f821620d3e0549b0f2834f8c2e0b04065.1616625264.git.steve@sakoman.com>
 <1e63adb5b11f29a2413de79c69012d52dfa0aea5.camel@linuxfoundation.org>
In-Reply-To: <1e63adb5b11f29a2413de79c69012d52dfa0aea5.camel@linuxfoundation.org>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Thu, 25 Mar 2021 04:10:19 -1000
Message-ID: <CAOSpxdbAx-SwxBhYTj4qd3-+hq2NO+73yK6XcOnWVxgQnQAXag@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][dunfell 07/23] scripts/generate-testresult-index.py: Use bulma css to improve the look of the index
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 25, 2021 at 4:04 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Wed, 2021-03-24 at 14:39 -1000, Steve Sakoman wrote:
> > From: Richard Purdie <richard.purdie@linuxfoundation.org>
> >
> > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> > (cherry picked from commit 4b8eab92ee1f68ec8cd680c62e40b17006fa6efc)
> > Signed-off-by: Steve Sakoman <steve@sakoman.com>
> > ---
> >  scripts/generate-testresult-index.py | 34 ++++++++++++++++++++--------
> >  1 file changed, 24 insertions(+), 10 deletions(-)
>
> I'm torn on this and the other generate-testresult-index patches. These
> are only ever run from the master branch so in the context of dunfell,
> they don't matter. Equally, they therefore don't hurt anything...

I wasn't really sure whether these ran in dunfell, thanks for
confirming that they don't.

I'll drop the generate-test-result-index patches from the pull request too.

Steve
