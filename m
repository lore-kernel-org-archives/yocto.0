Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web10.1503.1625025641697530618
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Jun 2021 21:00:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GP763xsF;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id i4so697883plt.12
        for <yocto@lists.yoctoproject.org>; Tue, 29 Jun 2021 21:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=zq9joI9wCPm8Fp6ifp0PULrr/boMe/Byzvb4/1VpdU4=;
        b=GP763xsFOZvW/ch+ka86D0FuXwkehaY8yTDvAO9vn8MHzRCj2HODGzRKfwWyUIrG0E
         NTdhjyV9jf8aRI6oKbXZ0OYyUM7Ih7E+4rOVnXaLWIXIvD8R00q+UZILrgB8K39pathD
         A9MxOeCFpDBMDegF3qLpFIPnZtWjUiyq/7xY/4dj3P8ibhoDI5R8nLHMx0leWZUQCXcM
         1dOzi71SGoFESzOMyCJeW4e7Br1triP1lrqVMWiaBnnsLEAE6CGWC9RYN4z87n2w3SjT
         +l79VBoOq8PB62BNfWqvDgaIzL+DIzqq8BNczNKL639A24OiSiNJF4PXnhry8F4tyWNI
         pntg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=zq9joI9wCPm8Fp6ifp0PULrr/boMe/Byzvb4/1VpdU4=;
        b=FZl0mtit2ZITuxLN3qIxM0po7F5tdfecmiETG9+bo0MONwoQy6G1ukHZYhR/fv2FHT
         flmGldUbPOVEQXH3FuDbKdz9pOyP+ZzZ3PH8lHtCruOzCBSJ9pEKQXZVjKQvh+3TOURA
         iiMkAfb4nKGFD6JnSv+HOzp6NdKqUmsXySxn1VN2ShozAA12qZrZTUK86RZgR8lhsOWE
         2+lFteLzsVPn+2vRVP2frji1pmjQzfb6kPtnNLOm0IBeVRpvFiKpyrEe7CcTQX+d3YpV
         WpDxzz3Ti2qU7n/UkZe6GbNPGZpx2O3MELANFZ95V6PTWx+dKR6s7MuDCo45ZBYUMEKp
         T+3w==
X-Gm-Message-State: AOAM530D8ewVWXqkVoN49QzJOvOw/F7xqniPkir4p6REf1xSWa0WV79u
	4FpC5N6RHLEVhxELSNpS1OgJ6g/OMPoyg2AZUZY=
X-Google-Smtp-Source: ABdhPJxQH7c4ywvk3EIDPIzbxzw/9fyfz5zr9ZcTTuAAaqjblDcJC9KyWkFuZtzW0wcqDl9ISYINQbSRIumhMW9RVXk=
X-Received: by 2002:a17:90a:bd18:: with SMTP id y24mr2372006pjr.83.1625025640990;
 Tue, 29 Jun 2021 21:00:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8Lzvm0rpRMmP47DqucrJh2f+BZgNQeobZG5-dkCjfxitaw@mail.gmail.com>
 <CABKMkPKFKdXHt7AjyNcBOc0gBYK6D4i9WufGt8Co=OTvDdZQyA@mail.gmail.com> <1680FF3BA8F793EE.4271@lists.yoctoproject.org>
In-Reply-To: <1680FF3BA8F793EE.4271@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 30 Jun 2021 06:00:29 +0200
Message-ID: <CAGAf8Lzz=8gOX-Rrp=UkSQo3-0oyRynX0iuaoy7-h-hPFr=Vvw@mail.gmail.com>
Subject: Re: [yocto] Problem with YOCTO Dunfell and host Fedora 33
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Joel Winarske <joel.winarske@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello to everyone,

Mguentner fixed the cmake issue:
https://github.com/mguentner/cannelloni/issues/35

With this patch:
https://github.com/mguentner/cannelloni/commit/125a7c72e4bcbbf580aeb6ee03e=
25ed0540be217

So I also reinstated the old cannelloni recipe with:
https://github.com/ZoranStojsavljevic/meta-socketcan/commit/b79e35425b72ba=
1caf90404a953235a43202e16f

Zee
_______

On Fri, May 21, 2021 at 7:55 AM Zoran via lists.yoctoproject.org
<zoran.stojsavljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hello Joel,
>
> Thank you for the tips. Really helpful, appreciated very much.
>
> I spent some time this morning investigating this issue, and to find
> the culprit.
>
> Here are my findings, which resulted in a cannelloni.bb recipe change
> (according to what you wrote).
>
> The fix submitted is in recipe:
> https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/recipes=
-can/cannelloni/cannelloni.bb
>
> The last cannelloni version which works is:
> https://github.com/mguentner/cannelloni/commit/0bd7e27db35bdef361226882a=
e04205504f7b2f4
>
> The culprit introducing the cmake errors is this one:
> https://github.com/mguentner/cannelloni/commit/d01dd1dc745914d129b1f4da2=
074e282253246af
>
> And, the issue recorded with Maximilian Guentner's cannelloni repo:
> https://github.com/mguentner/cannelloni/issues/35
>
> Thank you again,
> Zoran
> _______
>
> On Thu, May 20, 2021 at 4:48 PM Joel Winarske <joel.winarske@gmail.com> =
wrote:
> >
> > Hi Zoran,
> >
> > Your cannelloni recipe is set to autorev, meaning it's not locked to a=
 commit.  So when something changes upstream you have to manage it.
> >
> > Chances are Canelloni introduced a CMake change which is overwriting (=
opposed to appending) one or more variables required for cross compiling.  =
Perhaps try to cross compile (not a host build) Canelloni by itself without=
 Yocto involved.  Once that's sorted, then reintroduce yocto.
> >
> >
> > Joel
> >
> >
> > On Thu, May 20, 2021, 6:58 AM Zoran <zoran.stojsavljevic@gmail.com> wr=
ote:
> >>
> >> Hello Yocto developers,
> >>
> >> I have few problems running the following self proprietary script fro=
m
> >> one of my public git repos:
> >> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/yocto-set=
up.sh
> >>
> >> I recall that last time I used the script (I used then Fedora 31), th=
e
> >> ./yocto setup dunfell worked seamlessly, did setup the environment,
> >> and upon bitbake -k core-image-minimal completed the tasks without an=
y
> >> problem.
> >>
> >> Now, I am using Fedora 33 (in the meantime I did two Fedora version u=
pgrades).
> >>
> >> The problem is that while compiling the cannelloni package, the
> >> following errors were issued (please, look into the attached file
> >> cmake_problem.txt).
> >>
> >> This cmake problem was introduced after switching from Fedora 31 to F=
edora 33 ?!
> >>
> >> Any clue/idea why this is happening??? What is the cause of the probl=
em?
> >>
> >> Thank you,
> >> Zoran
> >> _______
> >>
> >>
> >>
>
>=20
>
