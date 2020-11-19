Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com [209.85.208.195])
 by mx.groups.io with SMTP id smtpd.web08.17280.1605826067407987482
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 14:47:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=goUpwJU1;
 spf=pass (domain: burtonini.com, ip: 209.85.208.195, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f195.google.com with SMTP id l10so8035064lji.4
        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 14:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UxfHSw2mdy93EOqM+CDn7T8H1oWSjCVEbFzadUAQhT8=;
        b=goUpwJU1O3nKEHM9TRO1e/Z9NFHUUXam/ANVIU/CAQdWUrvOVdvZeAUbPXYTZQg0Cd
         t/hf55TjrAtTT06cbzDJL+r7BUE2Ef8XWxu9o4OEOXGjTMteIUcXVkF1wZAgt5hZXzJw
         LJ5cZ7+vZ9mYQu+NANa6ViGjsgo08sWH+siW8aUf5ad7bYpsyNdNnMVVv9XTNWxUNIqx
         ajezYtJNkjXXSNSbm38sz49Kdjhs3xuRR6JzJ3UV18YJpKv75s/sZGHJuyLsKlPmG6Ln
         1j2+eou9pAqEdNnFe2X0FGrbsKESMxoxBxNjVRVDYAx+H/DS3/TnyF3l+IN28A4+MisE
         k1XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UxfHSw2mdy93EOqM+CDn7T8H1oWSjCVEbFzadUAQhT8=;
        b=HgS9gSEbSfPAF4axGjeliJkyH+KIPNcjCscdyUYKfMvr0TlOphF9OAjsf20NrDZu/g
         IFGPdSNZTGg8rtott7lS6SdiE3N4H7CeIpYjbuD9406snZ9XY2rJGzcNp0Ca78rtPWhE
         Z4cxYd4frZEjcHDEFeZZ52mdrmz4bhdM7/g/XyPhah8Wmbmn0oruv54yUkjioUCaGZun
         0HB+YQ0aETV9lJS9IoOI19Xo1WBvvUrPttf/PUSiIdxjRKNZG78ofWdF6iLWYX6MvPTd
         maNzCqB4dN6SqyVcyZx44Bm0dBjgsKYexQ2xS3XSibjCci3RLhLkZeOze2+sH0Px0Qxb
         3NFg==
X-Gm-Message-State: AOAM5329/LwgCkUfJw9/m81gSQQz7GX4CyjtvfvekGi9nqP6Id9d3U4n
	GNv3Fwt0dvLxz2zHis8ldN91+hcmRpF//4ml+f0KjA==
X-Google-Smtp-Source: ABdhPJyuOAXiYNpRagxk9A+is8cxqdHTWVeHSwyMyMeG/9cDq4JgrJ+WAvml0zbM+61O4Rw8q8xK9WRt0Yj7U2gpmUc=
X-Received: by 2002:a2e:9f08:: with SMTP id u8mr6298786ljk.352.1605826065355;
 Thu, 19 Nov 2020 14:47:45 -0800 (PST)
MIME-Version: 1.0
References: <20201116145955.7393-1-ross@burtonini.com> <0958f2d64707ab1f8619d03bfebffe66b3bcaaf3.camel@intel.com>
 <CAAnfSTtcnt+R=VLc=qhKknmzKJnZFA7U0ATdEGQ2Gtcs1EJwzA@mail.gmail.com>
In-Reply-To: <CAAnfSTtcnt+R=VLc=qhKknmzKJnZFA7U0ATdEGQ2Gtcs1EJwzA@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Thu, 19 Nov 2020 22:47:34 +0000
Message-ID: <CAAnfSTtfkcXq=CU4XJ=REm6uhV4rF_3Jp6paV2S9aerWTzLqRQ@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder2 PATCH] config.json: drop redundant meta-kernel mentions
To: "Mittal, Anuj" <anuj.mittal@intel.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

I was wrong. :). The change to the controller has been reverted, and
will be restarted tomorrow if that is okay.

Sorry about that,
Ross

On Thu, 19 Nov 2020 at 15:45, Ross Burton <ross@burtonini.com> wrote:
>
> Yes.  My understanding is that there's separate branches for each
> target?  This is for master and not gatesgarth.
>
> Ross
>
> On Thu, 19 Nov 2020 at 03:32, Mittal, Anuj <anuj.mittal@intel.com> wrote:
> >
> > Hi Ross
> >
> > On Mon, 2020-11-16 at 14:59 +0000, Ross Burton wrote:
> > > From: Ross Burton <ross.burton@arm.com>
> > >
> >
> > For gatesgarth, this is causing:
> >
> > FileNotFoundError: [Errno 2] No such file or directory:
> > '/home/pokybuild/yocto-worker/meta-arm/build/repos/meta-kernel'
> >
> > https://autobuilder.yoctoproject.org/typhoon/#/builders/113/builds/472
> >
> > meta-arm gatesgarth needs meta-kernel?
> >
> > Thanks,
> >
> > Anuj
> >
> > > Signed-off-by: Ross Burton <ross.burton@arm.com>
> > > ---
> > >  config.json | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > >
> > > diff --git a/config.json b/config.json
> > > index 11a2664..c57260a 100644
> > > --- a/config.json
> > > +++ b/config.json
> > > @@ -275,9 +275,8 @@
> > >              "TEMPLATE" : "ltp-qemu"
> > >          },
> > >          "meta-arm" : {
> > > -            "NEEDREPOS" : ["poky", "meta-arm", "meta-kernel"],
> > > +            "NEEDREPOS" : ["poky", "meta-arm"],
> > >              "ADDLAYER" : [
> > > -                "${BUILDDIR}/../meta-kernel",
> > >                  "${BUILDDIR}/../meta-arm/meta-arm-toolchain",
> > >                  "${BUILDDIR}/../meta-arm/meta-arm",
> > >                  "${BUILDDIR}/../meta-arm/meta-arm-bsp"
> > >
> > > 
> > >
> >
