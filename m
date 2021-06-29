Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web08.6854.1624967548446608171
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Jun 2021 04:52:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bRRAXPSN;
 spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id t3so9363292edt.12
        for <yocto@lists.yoctoproject.org>; Tue, 29 Jun 2021 04:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Uz3BDL0F9U3M0rAoTekSqVW4B6Ir/08VX1PC61RvuVY=;
        b=bRRAXPSNwMHyGHVOYWjPTze3EqrTR/KveFb9VJiZ3gdiECEkyqMqGswxvohut95li2
         lGDeikN3SJn6YGGI4DyIi5YKlQIOCXl/lDgA4yoNfUl0eYnGGPVYf7O3WJ8jiZm2wRZD
         gwgdtswgvtpgQz3HSUhq0/AH0QX7JOwa6rQ87aj31gePharOGoLdPf/Eyd+yIEYmSOJz
         TNFA+PrfUBqKetbiY8FHenh2WCpp255vsARvzBaqCJkN93joKFpOGXl7mU6VaHUdbCe+
         5ZhBZ2Q78yHa1ihAfJXKeEh2lLIdirwFzJTmdXsldw+vO+vEGKDgzKYedC1o6bGqW+I8
         K+XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Uz3BDL0F9U3M0rAoTekSqVW4B6Ir/08VX1PC61RvuVY=;
        b=Poa5RZnIIGz7I4FYGT+JEbCVLkn7l6pZy5S82vITzyNhkJeAWMile1jxTpucA8cjkp
         u9sPwXCF6K4r4/3xjw44UrdHREff4Mi2vcPbNIHzCH8vQ7ZZlKtMEDf7ATtflX4DkrYd
         2tKKhIKt/xLqpWKAv0+BF0Z/h0/i9WXM1ZxHbPHfTTD9UPSCqXxDAJZ+WCol+zDmwgRa
         w5mNnqQM2Tu8Ofdsan2iHr1lV5jDZ062mDcDDvRSc0IGxg02IIDM3nW+EP/+h9ON9N2z
         JnpJnwWP+lRXlSE62rCIIONoG9hw61oH3mY67lJKKWKLCK5OmWvlkYlcDifiSVIbagYl
         fi7Q==
X-Gm-Message-State: AOAM531Z0Ii4X6cGtQTmojFxH1vf+g9Ez1cSWMfKrETEM5W6BouyZqK/
	j/D4qC1HG2RsJfCzmIL3SAMe7Y4Cb5V43SpCASU=
X-Google-Smtp-Source: ABdhPJwT52gGmdUnevo7PY3Jn1GBUAECTem1RDmxru9peHmXTWu3bQloYn0UMMhMRr74XSlAzfC8/otu5lyo3Xu5PC0=
X-Received: by 2002:aa7:c4c5:: with SMTP id p5mr40763171edr.352.1624967546748;
 Tue, 29 Jun 2021 04:52:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAEyb4nEiwzVnrqHGob-ioo0iwT+NNA_uCXFMejoYfAdnnQpH5A@mail.gmail.com>
 <68074a59-650c-c02a-b05b-855b43171c50@theyoctojester.info>
In-Reply-To: <68074a59-650c-c02a-b05b-855b43171c50@theyoctojester.info>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Tue, 29 Jun 2021 07:52:15 -0400
Message-ID: <CADkTA4OOQsav7WJCQ5Nt6mWJzK_Ouf6yJazWe1JaS8i8wQ0S8g@mail.gmail.com>
Subject: Re: [yocto] Would COMPATIBLE_IMAGE make sense?
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Jun 29, 2021 at 2:41 AM Josef Holzmayr
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

I was also going to suggest distros.

And also, if the concern really is about builds reusing downloads,
etc, then by all means configure those different distro builds to
share download and sstate directories.

Bruce

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


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
