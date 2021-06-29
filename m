Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.6916.1624967097358265278
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Jun 2021 04:44:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=m03MkLPG;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: erik.boto@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id a15so31084793lfr.6
        for <yocto@lists.yoctoproject.org>; Tue, 29 Jun 2021 04:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BO7VVwHwI8g09mHYkL8n8Ia6jyVtOwtR+IQMCxGWN7w=;
        b=m03MkLPGT6rwDWkx1FTbcR4rn+9Z+s+U2ipGdbtt0jQAt16a0lClxIlv41IIDaNFAg
         HnuvTDJgR7sVNS4xECIGHCVdCtvAwzoufFmM+agS0WovYjdZFZMBrAL7bmUlcJDqPtc8
         Aki3TBsuII+q/ttU/ABeEMBy5OFgu/wZFUjkN7aFFTnUItBd58wpB2eFYI8i8fgOZG+m
         e4+dRLz6cJ5DapYr14lVj9vj+ijqa+1wFdXtB6XXKemzuvzZLKaGZFcoufCxx25PCsRy
         REC3uYZcHES6hEIAqDZT5JWT9SvcUXlucoopLJIx3FZ45vCCRnBge9PB5JxLqNGQsFYe
         6iCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BO7VVwHwI8g09mHYkL8n8Ia6jyVtOwtR+IQMCxGWN7w=;
        b=sa/3joYdbFsRjjMhICTCQNh4h9j9bdpcbD0kzDLy+oVQlW93TT7bpRLE5u5f9FGWPV
         nesXGuBIgb3P8RFfvaOWa390/c1rSPmtDFyfxNDFiLSXYTfgPbjjaZ64FMuthUdeLhwK
         kU4bkzqnY3RPDNZ8Y6kj2BppawrbEK2XOMQeV1IOIPJCUflUAjVadCGVOeL3jpsagY76
         WlR8BVxUE6A1FVhCsOKcRaXQzkqcInD0HTIREw09rw3VFfns1/EJRiiesZfn5WtQunGd
         iY3Eg6teE4E01RWMoAov4N+evmM4pRtSd3qcnuG7Cuvtwdg51XpzGi5mnkWMgv9BZOVA
         2OAA==
X-Gm-Message-State: AOAM531wq64Rx4A0CMN2xB55tzes//xsW0QkVcVoFFb1G5RLj438JHNV
	s56hCdzG3QU0XOZ5ddlJRuDe9uQUJujahw8+Xjw=
X-Google-Smtp-Source: ABdhPJy2wuO9mOWdxqq1T0h7ZbHyIfWzYZiQKWg2cUypvDDRdz95ZgzyzKHnGVx3GrRc9F49XZcXjvR1zuzhbvL4ntQ=
X-Received: by 2002:a05:6512:22c5:: with SMTP id g5mr22899278lfu.476.1624967095172;
 Tue, 29 Jun 2021 04:44:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAEyb4nEiwzVnrqHGob-ioo0iwT+NNA_uCXFMejoYfAdnnQpH5A@mail.gmail.com>
 <68074a59-650c-c02a-b05b-855b43171c50@theyoctojester.info>
In-Reply-To: <68074a59-650c-c02a-b05b-855b43171c50@theyoctojester.info>
From: "Erik Boto" <erik.boto@gmail.com>
Date: Tue, 29 Jun 2021 13:44:44 +0200
Message-ID: <CALNvYWMShkznDFnjT1m4s0vfX-VTWjzzW_5Sm+iQOEJA+c7ZdA@mail.gmail.com>
Subject: Re: [yocto] Would COMPATIBLE_IMAGE make sense?
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Tue, Jun 29, 2021 at 8:41 AM Josef Holzmayr
<jester@theyoctojester.info> wrote:
>
> Howdy!
>
> Am 29.06.2021 um 01:28 schrieb Jonas Vautherin:
> > I was thinking about my issue described here [1], and discovered the
> > variables called COMPATIBLE_MACHINE and COMPATIBLE_HOST, which "you can
> > use to stop recipes from being built for machines (/hosts) with which
> > the recipes are not compatible". And so I wondered if it would make
> > sense to add COMPATIBLE_IMAGE, for a similar purpose.
> >
> > Let me explain my issue: I define different images in different layers
> > (say `first-project-image` and `second-project-image`), and in each of
> > those layers I create `.bbappends` to configure some packages. Typically
> > `hostapd` is used by both images, but with a different config file.
> >
> > The thing is that when I run `bitbake first-project-image`, because
> > `second-project-image` is part of my bblayers.conf, then the
> > hostapd_%.bbappend from `second-project-image` is used and may have an
> > impact on `first-project-image`, which I don't want. I really want this
> > bbappend to only affect the image `second-project-image`.
> >
> > One way I can see to deal with that is to realize that
> > `first-project-image` and `second-project-image` are two different
> > projects, and build them from two different BUILDDIRs. The thing I don't
> > like here is that all the packages are therefore downloaded and built
> > twice, which seems like a loss of time and space.
> >
> > That's where I thought about COMPATIBLE_IMAGE. In the hostapd_%.bbappend
> > of `first-project-image`, I would set "COMPATIBLE_IMAGE =
> > 'first-project-image'", and similarly for "COMPATIBLE_IMAGE =
> > 'second-project-image'". So that I could still share a BUILDDIR between
> > different projects.
>
> Yocto chant #1 applies: "Recipe data is local, configuration data is
> global." Means: the recipe does not see at all which image it is being
> built for. So it also can't react to it - you can't check a variable
> against something you do not even see.
>
> > How bad of an idea is that?
>
> It just doesn't work. If that counts as "bad" is left for you to decide :)
>
> What you actually might use is using different DISTROs for the images,
> because that actually what they mean to do: you change the ABI/API of
> the image. And you can also define a base DISTRO and COMPATIBLE_DISTRO
> derivatives, so its all there already. It just cannot be triggered from
> the image, because, well.. see first pragraph of the answer.

I agree with everything Josef said, but just wanted to add that if
it's just different
configurations needed for different images it might be easier to just
put the configs
into separate packages and install the right package in the respective image.

So configuration for first-project-image goes into <somepackage>-foo, and the
config for second-project-image goes into <somepackage>-bar. Then the image
would add the correct configuration package.

This only works for the simple cases, and if you really need to change the way
a package is built the DISTRO way is better.

Erik

>
> Greetz
>
> > Thanks in advance,
> > Jonas
> >
> > [1]: https://stackoverflow.com/questions/68167244/image-specific-layers
> > <https://stackoverflow.com/questions/68167244/image-specific-layers>
> >
> >
> >
> >
>
> 
>
