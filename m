Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.7628.1622810226018423654
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Jun 2021 05:37:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EJdyhr2w;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: bruce.ashfield@gmail.com)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 95F5E38C066A
	for <yocto@yoctoproject.org>; Fri,  4 Jun 2021 12:37:05 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id b11so10969124edy.4
        for <yocto@yoctoproject.org>; Fri, 04 Jun 2021 05:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nPW6ErzimBMptuHI0t3pzgczqzs7OTYKMfpW1mfh+Ec=;
        b=EJdyhr2wImpKoE5IdE+pJmc9hvsk5ODNkqm0u32qQzGO9ZNj99K4ci6F7VSWRrnvY7
         2vzaExnMBrIYNDDy4fTfndbWD+WiAKFtOSyrkByYVZ+JqcGzZxevHvptR/2Oq7Fg6oUu
         rRG49+fO2fH8lCilUjSHrqwSYgEB3xF3Sa82xBMrrlUR24aAUYMM0SKM8Mlgpugbuvbg
         R/+On7/d8p+ReuIkwdSwF0uzgsiQTNuh8NpbDCcIIwXXO2o52P/iXRv0j1AnsPPX+fTR
         OjZWZRWwQ99cSxuAXMP0/Pi2tdk8RhaIxUIK4/XqNYdLwq0xAwv/LfYLuBLjBQ4Hcscr
         gLHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nPW6ErzimBMptuHI0t3pzgczqzs7OTYKMfpW1mfh+Ec=;
        b=N4Ks0ISgcZbTtDGTGJJW35wh1iD32YL9L6kjUYKblcA5UOfXVXEslfGvZv5I/rnYki
         6rIYrqxMO9XeDVP3AFmpEwCjeD/IVCjGzLGbrz4zpGqibultpPDr/SD3YYT1Hh2zeUQK
         mbX04SDctgVZDbrehBh48KLuCrpVcRkOIj9nNTL/LQ6QsjsLss5vhe3+PhXTE5E0buBx
         T/2FXs4Y1AeCCyNMdVJbCHpKbhOtiCmlTPmC5Yf9MClWCcoNKSidf1dY95Msb02GuZhO
         I84sQg3yXjTqMMlpjLceDQfaLoRY2bArMKeYsVHCQTzd79dedflo8I4qbiA0ZAtbK2M0
         g5iw==
X-Gm-Message-State: AOAM530TTPzKElbUgfHrg8VqC7gYwuCBwv8jbArwOGyJFuuAjxqatCAC
	rmT+YnrcJHEO3082/Ycc98iDr9FiPUPuha9h9kAvi1bxH+ECUw==
X-Google-Smtp-Source: ABdhPJz7FZYgk4CN3Vhqn/Y/A0tLmOqoDqO796cvMCDfU+As+Y50RQX0vWlwDrPrtu0F4R+3Fat/FgHdzd8nyYri0mc=
X-Received: by 2002:a05:6402:35d4:: with SMTP id z20mr4425894edc.164.1622810223934;
 Fri, 04 Jun 2021 05:37:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210604030619.35679-1-kai.kang@windriver.com>
 <CADkTA4MrxoynTeBfnXsyH+YSX+c2MDo9PtdcgYDJqDS1cQ2u=g@mail.gmail.com>
 <8a264bd7-49f4-1672-55b6-e97be9556ccd@windriver.com> <CADkTA4NLc6OHOjPrhvEyCp=s15JHZK4yRkU1EoRD=W-Pg3ApbA@mail.gmail.com>
In-Reply-To: <CADkTA4NLc6OHOjPrhvEyCp=s15JHZK4yRkU1EoRD=W-Pg3ApbA@mail.gmail.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Fri, 4 Jun 2021 08:36:52 -0400
Message-ID: <CADkTA4M-emRApny+m7_hMJ2FuNj=Z7W3zr1wP4TviAzo8Dsixg@mail.gmail.com>
Subject: Re: [meta-realtime][PATCH] layer.conf: set LAYERSERIES_COMPAT with honister
To: Kai <kai.kang@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, Jun 4, 2021 at 8:27 AM Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>
> On Thu, Jun 3, 2021 at 11:35 PM Kai <kai.kang@windriver.com> wrote:
> >
> > On 6/4/21 11:22 AM, Bruce Ashfield wrote:
> > > On Thu, Jun 3, 2021 at 11:06 PM <kai.kang@windriver.com> wrote:
> > >> From: Kai Kang <kai.kang@windriver.com>
> > >>
> > >> Replace hardknott with honister in layer.conf which aligns with
> > >> oe-core.
> > >>
> > > I had added this back in April, but apparently didn't push the change.
> > >
> > > I also noticed that I've been updating the wrong branch with compatibility.
> > >
> > > That should all be fixed now.
> >
> > Hi Bruce,
> >
> > Thanks. I have seen your commits.
> >
> > But 3 items in LAYERSERIES_COMPAT_realtime will cause layer index show
> > warning:
> >
> >    WARNING: YPCompatibleVersion.name: dunfell gatesgarth hardknott:
> > length 28 exceeds maximum (25), truncating
> >
> > Could we only keep the latest LAYERSERIES_CORENAMES (honister) in branch
> > master, please?
>
> Nope. It is compatible with those releases, so they need to stay. I
> see no valid reason to be limited to a certain number of characters.
>
> >
> > Or it set in oe-core's layer.conf:
> >
> > LAYERSERIES_CORENAMES = "hardknott honister"
> >
> > we just align with it to keep the latest 2, please?
>
> That is just as arbitrary, I'll keep it as-is.

I took a quick look, is this warning coming from the layer index ?
That would be important information to convey when sending changes
like this.

That being said, it is a longer fix to get that warning changed, and
I'd rather not break the index, so I dropped to only the last two
releases.

But I do recommend that the layer index be changed (if that is the
cause of the warning), since we shouldn't be adapting to the index ..
it should be adapting to layers.

Bruce

>
> Bruce
>
> >
> > Regards,
> > Kai
> >
> > >
> > > Bruce
> > >
> > >> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> > >> ---
> > >>   conf/layer.conf | 2 +-
> > >>   1 file changed, 1 insertion(+), 1 deletion(-)
> > >>
> > >> diff --git a/conf/layer.conf b/conf/layer.conf
> > >> index 007f578..8ae67ba 100644
> > >> --- a/conf/layer.conf
> > >> +++ b/conf/layer.conf
> > >> @@ -15,6 +15,6 @@ BBFILE_PRIORITY_realtime = "5"
> > >>   # This should only be incremented on significant changes that will
> > >>   # cause compatibility issues with other layers
> > >>   LAYERVERSION_realtime = "1"
> > >> -LAYERSERIES_COMPAT_realtime = "hardknott"
> > >> +LAYERSERIES_COMPAT_realtime = "honister"
> > >>   LAYERDEPENDS_realtime = "core openembedded-layer"
> > >>   LAYERRECOMMENDS_realtime = "meta-realtime-dl (= 3.2)"
> > >> --
> > >> 2.17.1
> > >>
> > >
> >
> > --
> > Kai Kang
> > Wind River Linux
> >
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
