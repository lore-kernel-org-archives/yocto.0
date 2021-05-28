Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web12.7726.1622206553052644904
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 May 2021 05:55:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KfePIYyd;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id 6so2476449pgk.5
        for <yocto@lists.yoctoproject.org>; Fri, 28 May 2021 05:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=e4Ay1v9yvUJxmKgSrXxJPxhFa5++t6tyDhoEtUB2rwY=;
        b=KfePIYydTu/bcbTBIN8Lld5p39BCQ4nL3BD4slu/PGySWVSyKmtRIuRTIg26PzEhqm
         caRU18ZxOWJVNadrrCcB+LUiRyfJUojw3HcjDNf6jyV8GTXlzGNJdxTfJaUfmZ/do3CJ
         Uzth6L0AzOAhpR8imFLkexgNacDz/i48M3rvp1Lp2HGNicC+zXHF5Ie2LBfB2mMrhv+F
         gUtRngx9n+Xuls+lAseYiOc8kRzz3GMaBUQnl4liFkHoIBu34Gs2QjZI8El2s8ttlTVb
         HT4rQDPy04l+eWtTwb+U+5Rr8WVEGNJYHPVGH97uYp0s+t1o3S5FdZRv6a0D9BZKjN+c
         Xu5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=e4Ay1v9yvUJxmKgSrXxJPxhFa5++t6tyDhoEtUB2rwY=;
        b=pIi15KgnCl+0UiLs25qvAOxDhCCJtHAf1mlzxZ+END4emcjYS06ad/saog9BxmORhU
         tl0alJi+asw6NF/RoQ/5UgI76imW+VsGQ/jkjMxec3L0gL12Ni0BqXvwBQgdxseNIQ6O
         VC79MSZqjf2gjyMwpEmvTUySRJOZDhxtSe3za1/BZjGskHwKT9Ipzss+t5gU9+HHoR7A
         itkyIMCn0gGBNb3fjAf/B1Urw//lidA33grnK4ebxkUTxAg7FlltzkSzwLuAGW0rB6um
         TCWyIZAaBnOR+3dw/WC46Z0spwkgYodDgF8ROvlvlFzhZUQMmzRrBEJE/dfezkp8RZTb
         KkBg==
X-Gm-Message-State: AOAM5323bQsflL6/Gw4slbovMVAOyfg3ds0iNrrfdQKZOF2sbRAMoyV+
	Pkbh6B0c7+X+HUr0PO4OQqqNM9SQFdJFP1+jEF8=
X-Google-Smtp-Source: ABdhPJzQSuFS3gbd05FfaxhzNjjW9Asw8LpczglJLJpMnPBOqDsgLWSkZHUinsQ8GX1zJ03I5iQbNAb0pu6D5Cyk43g=
X-Received: by 2002:a05:6a00:1630:b029:2c0:a1eb:d77 with SMTP id
 e16-20020a056a001630b02902c0a1eb0d77mr3753692pfc.81.1622206552284; Fri, 28
 May 2021 05:55:52 -0700 (PDT)
MIME-Version: 1.0
References: <dWBn.1622153050533898469.7UFj@lists.yoctoproject.org>
 <7642946a-9a4b-2799-9db2-1187822ffbcf@gmail.com> <CAHUEwNZPjwy93VOvRLK5DA=pQRyFSK5TA32h_uZgzwdKyQFagQ@mail.gmail.com>
 <CAGAf8Lx_MxnDMVWspVDShzq8uLCtxcSAGqZZoT0Vdsh8YT8cRw@mail.gmail.com> <bb2c2342-d737-84dd-6f43-c4c515fedf23@crashcourse.ca>
In-Reply-To: <bb2c2342-d737-84dd-6f43-c4c515fedf23@crashcourse.ca>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 28 May 2021 14:55:41 +0200
Message-ID: <CAGAf8Lwsnn36EbURP_UKi=x6z1N-by+FBvTjOzr1SL3D5eq1kw@mail.gmail.com>
Subject: Re: [yocto] How to switch yocto INIT_MANAGER from systemd to sysvinit #dunfell
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Swapna Nannapaneni <sayinswapna@gmail.com>, Khem Raj <raj.khem@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

> you don't want the leading space.

I got the idea from reading
https://docs.yoctoproject.org/ref-manual/migration-3.0.html?highlight=init_manager#init-system-selection

But this is exactly why we need some explicit examples. :-)

Zee
_______

On Fri, May 28, 2021 at 2:45 PM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
> On Fri, 28 May 2021, Zoran wrote:
>
> > > Tried setting  INIT_MANAGER  = " sysvinit" in build/conf/local.conf
> >
> > Is it INIT_MANAGER  = " sysvinit" , or INIT_MANAGER  = "sysvinit" (no
> > blank at the beginning)?
> >
> > Thank you,
> > Zee
>
>   you don't want the leading space.
>
> rday
