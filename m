Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.12781.1611775003100720627
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 11:16:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CndU4hBq;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mail.yoctoproject.org (Postfix) with ESMTPS id ED16B38C04B4
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 19:16:42 +0000 (UTC)
Received: by mail-qt1-f181.google.com with SMTP id e15so2251369qte.9
        for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 11:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5qDBYpX1VV/DtrJ4gpAUhkKbfhqS3hptw4FinaT0AtE=;
        b=CndU4hBqXWaUReudbgsdQfEHAHq6OAJquZbySodzo1Aana4pfd4tvn0rTQZMz6ha+N
         5Lm82xvLFIHChACE516JoY8LejrzfdISmvZ16k3RmFwqEXonqvKTQnV+HqBf8I4jbfgx
         GnfORcTktjauRjv2u0DIgCJygtqCQWqVaZp55LjnqgvTqwCUeSXm0BeOHtDSJyuQB6k7
         EljpLoEkOQzS0kZ/q/3XSb5nYyHK1R3/TXcvGkhvpR3nsROn3fnsioTE4uodJ2Y9H9qZ
         /1kyjQ8ViifbPu2+flWLgyXPT4Q4nOHoBLEGqSdEfO09hYxcmcBN8vubEH1K9uYYoQed
         mK9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5qDBYpX1VV/DtrJ4gpAUhkKbfhqS3hptw4FinaT0AtE=;
        b=pn7AJQj66PtKpFYfmiW36aTkRcCcFh6Mbk1tMtGXl4/x0XiZnn3jAoJ2fAjd5BW8ny
         g6130cjH9xPX5OagcJCujm1O+ODfFI++TpMciklCN1tzExFp3xGBdic1nyJvywLa+TV1
         CBZ/j0x44apvoOywXDoBr+ohit/bJQP+0ooEVsXIVHrNSYXSUfZ4EseOA8d2Mnf0pg3j
         MOv+shJ3MmHIs3jnp7b0wmMV49UFAM6l3vGaMEcL4uqBaMyIhqxqAwxHJq9pKXo+t6zq
         FZXr2bGeLvehXELVFCkKwuFtq9Qol7tjSTsvMxwnUIi49zVkN+EkSxf7RpQJrLqIGq1Q
         mAew==
X-Gm-Message-State: AOAM530oMkjbGPvIGIy1c+WIdmJF0rjIDnjJlvrjNatNSVXE5u7aYtlE
	vLzZ4MuiK7rDghuCHydtKrsOclEE2u/fs3BVPCY=
X-Google-Smtp-Source: ABdhPJzSw5FYxkgH6nmU1k08AxVZpIGLc68MLvOFa6diyLpY9GZSgh+4c4rNIAhi/GDwmASZ5rR+ricj02HNqrLbLmo=
X-Received: by 2002:ac8:6f06:: with SMTP id g6mr11103645qtv.80.1611775001943;
 Wed, 27 Jan 2021 11:16:41 -0800 (PST)
MIME-Version: 1.0
References: <10e8c340-6435-6158-5d9f-0d00fb4afb4c.ref@yahoo.com> <10e8c340-6435-6158-5d9f-0d00fb4afb4c@yahoo.com>
In-Reply-To: <10e8c340-6435-6158-5d9f-0d00fb4afb4c@yahoo.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 27 Jan 2021 11:16:15 -0800
Message-ID: <CAMKF1srDLVSprz9cx0h_1eeb4dSF=cxHFw3XwmLw=p1SVuq5WA@mail.gmail.com>
Subject: Re: [yocto] Including binary application as part of the image output
To: Chuck Kamas <chuckkamas@yahoo.com>
Cc: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 27, 2021 at 10:32 AM chuck kamas via
lists.yoctoproject.org <chuckkamas=yahoo.com@lists.yoctoproject.org>
wrote:
>
> Hi all,
>
>
> As part of our image we build our company's application. This
> application becomes part of the image and is executed when the image boots.
>
> My question is how to have the binary image also be available along with
> the image's wic file? Is there a line I can add to a recipe to have it
> copy that image file to the tmp/deploy directory or other appropriate
> directory so that it is available?

you can perhaps make a recipe that packages your binary and then add
it to IMAGE_INSTALL
also look into binconfig.bbclass

if you need more post processing, then perhaps look at using
ROOTFS_POSTPROCESS_COMMAND

>
>
> Thanks!
>
> Chuck
>
>
>
> 
>
