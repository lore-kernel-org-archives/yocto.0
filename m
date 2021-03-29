Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web09.21281.1617023560631299692
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Mar 2021 06:12:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=X13RA4j1;
 spf=pass (domain: burtonini.com, ip: 209.85.128.43, mailfrom: ross@burtonini.com)
Received: by mail-wm1-f43.google.com with SMTP id f22-20020a7bc8d60000b029010c024a1407so8516055wml.2
        for <yocto@lists.yoctoproject.org>; Mon, 29 Mar 2021 06:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pOyv9kAXP2GJPrpHCV6P25OkQDOEzmeDtX3pA1Lh0uI=;
        b=X13RA4j1ixGzF43f740NhwyvHHDu4uo4fFcsHafqu3epALAKklZ5nn/HZJ1Mv44bm0
         ei/onLYMP2XIwAZm2dSv7AtHhA+K6InSpZyZvpienHi6rfSLF5Z2296Fz5kT0DjmPLjr
         I/plYGiTDdtD5GcQjvavqNLl1RxlyLlOyRNHMFk2wMLYkdoSss6Okci8OgFIdXW3Nkda
         eDkV0AurWqzZdExO6MBPloTCXo1uasbpZrPXbApZqbp/BQwLiG4JnY8Ol9948jRl+j7E
         wB6KxI5JgcCzQnPJP8ccbiw4o5fn9OrJphe1Lxxv1sNn7hyX6Dm1BJwkgaHtQOu6jvbY
         JtUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pOyv9kAXP2GJPrpHCV6P25OkQDOEzmeDtX3pA1Lh0uI=;
        b=hrHBpl8oZ/OmG5U70HqGOJ4WFsKoHpMg6Gs/4lwB5Y66eUOCLsXXqZ02rfMvfaGp48
         CqQHFMMhucM4uGCEWWm9F+MH0u2quvxit1hazr9VbWfkFnFsYiWe04s3HjlKp54h0Eep
         u4VthMfwTpfNQpyI635vChtMxnuUjZEeamYgzkTks8gVoRN41kLkRbyP9R28YQUXEllO
         oZmWXD7lyQjeDMAPVbaS0bxOKl9Hz+V/Ic0YrU1NHW/Q2su/kVrIksjn+cV4AF0D8UCR
         KGXNc0ep9OLPeKu+vpZTnvEZRUoxbfrrncskXaEAxCKH6t2Fz9hQNy5jk63sctJ5RVLX
         G3sg==
X-Gm-Message-State: AOAM533rK+k1LP/r51SYsjW6dVdFuNF9/SXaP5K54oy2m+HFPM86NQ5s
	Gh0LkPFeVjAiGr9fnxx33dphMMLnDVCWwWZxOzeaoQ==
X-Google-Smtp-Source: ABdhPJwNu5RWn0Kn1MUd8lWFwQbI69za5Jj1ieVkY7KljL1GgarLss+Mmnw+DoxiLuNRUKyBw4nsc4z/tSIVVsa7ZLY=
X-Received: by 2002:a7b:c5c8:: with SMTP id n8mr24597102wmk.63.1617023558973;
 Mon, 29 Mar 2021 06:12:38 -0700 (PDT)
MIME-Version: 1.0
References: <PR0P264MB08898494F1A6B32CA311BCCFE17E9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
In-Reply-To: <PR0P264MB08898494F1A6B32CA311BCCFE17E9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
From: "Ross Burton" <ross@burtonini.com>
Date: Mon, 29 Mar 2021 13:12:28 +0000
Message-ID: <CAAnfSTtvC49XGtE4ebucXvO7RNSiAknyz1yre4O3JqDHZ5cm2g@mail.gmail.com>
Subject: Re: [yocto] Package indexes for package feeds, ipk and rpm
To: keydi <krzysztof.dudziak@thalesgroup.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

That's just how RPM and opkg work, Yocto can't control or alter that.

Ross

On Mon, 29 Mar 2021 at 10:36, keydi <krzysztof.dudziak@thalesgroup.com> wrote:
>
> Regarding package feed packages index I learned one difference between rpm and ipk.
> For ipk plain-text files named Packages are generated and placed to architecture-subdirectories in tmp/deploy/ipk tree.
> For rpm I see just one file named Packages, it is a binary file yet located in one image arch-subdir within tmp/deploy/rpm tree.
>
> Is this difference the result how Poky/OE handles both
> or rather coming already from package management systems?
>
> I wonder also how could the chances be to have Packages files in RPM in same form
> as for IPK - plain-text yet provided for each architecture build artifacts sub-tree?
>
> 
>
