Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web12.5059.1580816747779685651
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Feb 2020 03:45:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FZjbuycM;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: marek.belisko@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id v28so19423357edw.12
        for <yocto@lists.yoctoproject.org>; Tue, 04 Feb 2020 03:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4Ej+QTJUVIkpxeYz/l2LWvJgSXjaeMHuX863061277Y=;
        b=FZjbuycMjSnnyOyEIIQZ9Jv06/4LWGXvkZzVohMqrIFoy6So04PzbAd4NmvOgFgMir
         EvdJDoN96oVJ1m2xJsNl7WLLY/2ue6UJjvYsOH1rI+j14DZyPe4GH+Vw+IKO8cSZ9iVd
         69LAV5R2uc8HXVr7XGaXfMUWsEi36XBsWIAcUi0+hHibT9AjJV4yns53OIEr9u5il50i
         O6dcToLc9dC5qQFtbA6k7FbOdwWOmosPCjWIh8JgvZVGMOcvPZqTs6TP0+RWuqkxQoFr
         wovPoPSZt8HUtLNiP8c4azjrbcs5kCW2nnowCY8asxtFjDcJq0uNouQ7JQ6I8ZALAdMS
         el/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4Ej+QTJUVIkpxeYz/l2LWvJgSXjaeMHuX863061277Y=;
        b=lwQ23BA/uvRasw2filrJ82zLUl96CIHy0TyXE2x95KDqb/+imObRC81jLkjgRea07E
         BhNG/oqSSf+tr8UTVDdgtunQJffVm2fevxyo8j3gy37DOQAwu0ZjjWdEDy7J4ZIHQNE/
         qZmzvDRHuBYfJLE8MXmYzowoTvhOeAvH5bcBUJsP3XZpzSyZu5hQVzAOvHDRpE4yl7at
         xHTeD4HSUx0x/CMSvxk22u3PerNvcekNPt5oG7IucPEYkhedZgV36SZVED2CxClwA4nS
         RfBh2TACzVyuWYwC0HPIqkBelSa5aGbSWf0lcOvmGv05mrfRD2e0JnTtaDTrAH+Cy5IG
         cxpg==
X-Gm-Message-State: APjAAAVGHaLU63O2s8KJis4y80hYRW/qguW4oQJ+3UZ2Fd2zxgzoP4In
	aNJ9TRB8WT5gxsksOA+hqqfEf6UZGn3Gh9XLKGg=
X-Google-Smtp-Source: APXvYqygri44vSQZJAnAxjTGlpmYaD1PrczKVGnmWA+Ix8bdzpmsJUOeaQszXW2VyjgM+maz6iFTlVAD7vYL1ztWiNI=
X-Received: by 2002:a17:906:d8b3:: with SMTP id qc19mr26002442ejb.110.1580816746186;
 Tue, 04 Feb 2020 03:45:46 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWQVh1JoDSL7f2yXbpWBkGZkwDU=dqPxRF8Ojq_YnRoOfw@mail.gmail.com>
 <CAAfyv36q3v0jLJU7yi-9Jjnx_hfNkH-+z9X+B9ebN87rYcqEzA@mail.gmail.com>
 <CAA=hcWR6iDJ-fZrVtfiuQsM1U5q9VCW4b62qj-AJoRfp2Qo92Q@mail.gmail.com> <15F0304E147F53BD.2867@lists.yoctoproject.org>
In-Reply-To: <15F0304E147F53BD.2867@lists.yoctoproject.org>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Tue, 4 Feb 2020 12:45:35 +0100
Message-ID: <CAAfyv37OF2uz5mhB21XJ+NB6_69VkA2huzovsP3NTjA3hjimoA@mail.gmail.com>
Subject: Re: [yocto] Which package for nandbiterrs?
To: JA <marek.belisko@gmail.com>
Cc: JH <jupiter.hce@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Tue, Feb 4, 2020 at 12:43 PM Marek Belisko via
Lists.Yoctoproject.Org
<marek.belisko=gmail.com@lists.yoctoproject.org> wrote:
>
> On Tue, Feb 4, 2020 at 12:22 PM JH <jupiter.hce@gmail.com> wrote:
> >
> > On 2/4/20, Belisko Marek <marek.belisko@gmail.com> wrote:
> > > On Tue, Feb 4, 2020 at 12:09 PM JH <jupiter.hce@gmail.com> wrote:
> > >>
> > >> Hi,
> > >>
> > >> I built the image in thud to include following MTD receipts:
> > >>
> > >> mtd-utils
> > >> mtd-utils-ubifs
> > >> mtd-utils-tests
> > >>
> > >> But the nandbiterrs is still missing, which package for nandbiterrs?
> > > Are you referring to this one:
> > > https://elixir.bootlin.com/linux/latest/source/drivers/mtd/tests/nandbiterrs.c
> > > Then it's in kernel (not sure if tests are build though).
> >
> > I think so, I have enabled CONFIG_MTD_TESTS=y, it still does not have
> > nandbiterrs. I built it with kernel 4.19.75, did you mean the that
> > build could not include that test file?
> Well did you check build directory if it was really build (check
> .config)? Or better try to build as module and install kernel-modules
> and then you can modprobe it.
Looking at code did you supply kernel arguments for test module:
https://elixir.bootlin.com/linux/latest/source/drivers/mtd/tests/nandbiterrs.c#L42
> >
> > Thanks marek,
> >
> > - jh
>
> BR,
>
> marek
> 

marek
