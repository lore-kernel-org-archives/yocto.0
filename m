Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web12.5199.1609920980583666646
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 00:16:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UfBxKI8u;
 spf=pass (domain: gmail.com, ip: 209.85.219.170, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f170.google.com with SMTP id k4so2079097ybp.6
        for <yocto@lists.yoctoproject.org>; Wed, 06 Jan 2021 00:16:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=sQneaesj4y9GPAHliRTVjwxdcj09mSxAY00ff56GNak=;
        b=UfBxKI8uypXqaHCd1To5yyeFdYH23+lrEeV3EUQlt4xOFquf98L1kmXiGbmDGWL6sR
         YTirZfduH39XNGy8GEGxljr0kfPpKem34KnfDQkOt5kl/0AXXLBrO9GCIOAhfKs1CxHl
         HMsqtkLJqM5lIX0mS+HXFEJgNjV4fKClo4kDmf/eeRzw+IQFdz7VhiVOiCajhGUmoYKL
         vUIN34U/1TRYPrq1SRuYC5jMMHGBOPJvQfcC8HSK9qaOZlzyWc8w0Kg3kSyaqZ43ydFe
         dJgNhdsDJOO5ISG0rYDIEvr3JR3a+bVNes0CaiI1YgSJ6CE7HON0pjQ/Fq4hltWRmqkv
         SMRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=sQneaesj4y9GPAHliRTVjwxdcj09mSxAY00ff56GNak=;
        b=NJa5dXhWtWMDOX0qnbAj1kbTqWQGJ2zuHvV4p35AG+5k+BWI2sT1RQz68Y8v5H9KGP
         aDOyArUyLZJWIDdVrB3VqxdZ7+wm0eOqvycNl04/0+rJtftJr8sR8y+3XRiiHSndBN5f
         L/3Umg5XpV09lZ7vxbX6BuRsd+PVfeNPHohgLqDlsB2FfRp89BEHzuzJmjxzP+Lx0+M5
         hZHqUkQkL6MLbITIlucR0Xv6vmJvDD5rdZFZXOYPOsaHKhfsz1wbHw0uXt/0OeYrqYxE
         VUlOCWc5f3hQrnnXiyUKs/zGvDqDvn5vb3O0ZSRV3cf6604rrmwbseOU3E025Uu2b/wb
         IDEw==
X-Gm-Message-State: AOAM530lzIP6GvPbQZ8/wyo+UDs0lC8mjSNmr2aytLHpuL+TJMN2SVEZ
	45mct5puL16hYB+3bKo8yFqVv3Hd4/y8ZXdxUHs=
X-Google-Smtp-Source: ABdhPJyUKa3sXNd/ahz3jyCgLww6lpykXPTI81spE/ppKxK1f3KPBWaiQ+T5iJvLgi4wz/NWBNWqs6lVS5sp2gHG/cA=
X-Received: by 2002:a25:d483:: with SMTP id m125mr5035802ybf.330.1609920979814;
 Wed, 06 Jan 2021 00:16:19 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a25:e705:0:0:0:0:0 with HTTP; Wed, 6 Jan 2021 00:16:19 -0800 (PST)
In-Reply-To: <95248f335ea59edbb8fa0579e0f78d7fd24b71b1.camel@intel.com>
References: <CAA=hcWTML9Dg=yxt5TVw6Z7w35tJA3i6LouFMrVjAy5bo551KA@mail.gmail.com>
 <95248f335ea59edbb8fa0579e0f78d7fd24b71b1.camel@intel.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Wed, 6 Jan 2021 19:16:19 +1100
Message-ID: <CAA=hcWT_1VcVaNHQChDvuDURL3j5hu_g6muF8_tssG4PDhrdkg@mail.gmail.com>
Subject: Re: [yocto] How to select Linux kernel version?
To: "Mittal, Anuj" <anuj.mittal@intel.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Thanks for the response.

> Is the PREFERRED_PROVIDER_virtual/kernel set to linux-yocto? You need
> to set the PREFERRED_VERSION for kernel that you are using ...

Yes, I tried to set both in local.conif or distro, none of works.

> bitbake -e virtual/kernel output should help see how it's being set and
> where.

There was no PREFERRED_PROVIDER_virtual/kernel, nor
PREFERRED_VERSION_linux-yocto setup.

Thank you.

Kind regards,

- j
