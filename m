Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com [209.85.167.68])
 by mx.groups.io with SMTP id smtpd.web09.11091.1605800762558970205
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 07:46:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=t1B7jHJn;
 spf=pass (domain: burtonini.com, ip: 209.85.167.68, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f68.google.com with SMTP id z21so8859902lfe.12
        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 07:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YU3iqYT/g/DDxfcam7s5d2qqZdcxC0e10BKH3i6cKQk=;
        b=t1B7jHJnFVQ6nONY6T9bJ/YkKbNO6g9sAp/oXdq/ZXB9vCjMdJdi9Akj+3wSy9M77x
         +B3yRqORfamOytzIsXPg10SW9R5J/v8jKHQ3X3GzjYcLhrrP7pIkEI29O4eWlH8UbrzS
         XvTV6tOrNl1apHD3St3yVEQ5uQA6JhcogQ/yZpD5gjgmrV+/SEzSAXhMwF4ICGK3UzoX
         5Pmd5TJGZlWkIBRh+1nre5rYHZZFFwTepVkzKq/LrTjYYowC0nQc+wfBFmHmUdGl3tpH
         LucgodQQTmJ4ZnFpSudBmazwnfEouQV1HmuChWHKHQSIHXWbBf72/9Uz4eEdkR5Zt5fP
         sCBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YU3iqYT/g/DDxfcam7s5d2qqZdcxC0e10BKH3i6cKQk=;
        b=S52gTEPTE4s6SwhVCmYEuniW8d/NKfn+O0vDcEeYW23s7vyQOfcdhbfC0xxOuFig5G
         0TE7UXl5axfv9fc6n5a8eSCOoTWCuRuQMZgRuFh6mdUjYCOm9SDWobZX36Q7LPZJ2DF5
         9Vwl0a0/BFYpmuYPmcLrQSKef0RKR50at2geOPI2YNoF6GZqnV28E99/sCgsW1PRjLnb
         TAdWYGkIE1C3UTNY/Spfo0GMVKKn12+8pO+ZaHRLqFPfsrYFqZ7TJ05ZhbBVQ7pNUhGm
         munqOWfY9Eyq/BNZwOb55VW2umzccKEjuaqec4IDUUe+AKza7lFdH2zZj9NUuWcAGNJS
         yJUw==
X-Gm-Message-State: AOAM532YPh58eVeAKsvJIi2ZmDOcmh/VBXmWLtOZvjLj8aUgMm6s69kb
	QZ2azeaUUpmx6gmHu0LWzJ4NLK5LsHtlE2IGlnVRzQ==
X-Google-Smtp-Source: ABdhPJwvN0CCauzq/aFJFFKbl1TU/+8j5YCgmi5+8FQUk4AY/6wpCuJt2Co4T+bWZAYiSxiQJdNqre4j7oducEPR6rY=
X-Received: by 2002:ac2:5dcb:: with SMTP id x11mr6438356lfq.44.1605800760591;
 Thu, 19 Nov 2020 07:46:00 -0800 (PST)
MIME-Version: 1.0
References: <20201116145955.7393-1-ross@burtonini.com> <0958f2d64707ab1f8619d03bfebffe66b3bcaaf3.camel@intel.com>
In-Reply-To: <0958f2d64707ab1f8619d03bfebffe66b3bcaaf3.camel@intel.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Thu, 19 Nov 2020 15:45:49 +0000
Message-ID: <CAAnfSTtcnt+R=VLc=qhKknmzKJnZFA7U0ATdEGQ2Gtcs1EJwzA@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder2 PATCH] config.json: drop redundant meta-kernel mentions
To: "Mittal, Anuj" <anuj.mittal@intel.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Yes.  My understanding is that there's separate branches for each
target?  This is for master and not gatesgarth.

Ross

On Thu, 19 Nov 2020 at 03:32, Mittal, Anuj <anuj.mittal@intel.com> wrote:
>
> Hi Ross
>
> On Mon, 2020-11-16 at 14:59 +0000, Ross Burton wrote:
> > From: Ross Burton <ross.burton@arm.com>
> >
>
> For gatesgarth, this is causing:
>
> FileNotFoundError: [Errno 2] No such file or directory:
> '/home/pokybuild/yocto-worker/meta-arm/build/repos/meta-kernel'
>
> https://autobuilder.yoctoproject.org/typhoon/#/builders/113/builds/472
>
> meta-arm gatesgarth needs meta-kernel?
>
> Thanks,
>
> Anuj
>
> > Signed-off-by: Ross Burton <ross.burton@arm.com>
> > ---
> >  config.json | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/config.json b/config.json
> > index 11a2664..c57260a 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -275,9 +275,8 @@
> >              "TEMPLATE" : "ltp-qemu"
> >          },
> >          "meta-arm" : {
> > -            "NEEDREPOS" : ["poky", "meta-arm", "meta-kernel"],
> > +            "NEEDREPOS" : ["poky", "meta-arm"],
> >              "ADDLAYER" : [
> > -                "${BUILDDIR}/../meta-kernel",
> >                  "${BUILDDIR}/../meta-arm/meta-arm-toolchain",
> >                  "${BUILDDIR}/../meta-arm/meta-arm",
> >                  "${BUILDDIR}/../meta-arm/meta-arm-bsp"
> >
> > 
> >
>
