Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDB85C27C53
	for <webhook@archiver.kernel.org>; Wed, 12 Jun 2024 17:20:55 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web10.237.1718212847973957302
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jun 2024 10:20:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=AjYscn3Z;
 spf=pass (domain: konsulko.com, ip: 209.85.222.180, mailfrom: scott.murray@konsulko.com)
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-7955aaf8006so2519085a.1
        for <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 10:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1718212847; x=1718817647; darn=lists.yoctoproject.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=GOpWKWramxyQEFew99hsoysEj+5IYupi6XK3/qGo8po=;
        b=AjYscn3ZtVUkQ0j/HYCvjeDA11oJb2+91WymD+il+27K37iWIQUNuhzbTZfB96+zjJ
         Grbtn5k1SOz1dHAKmh7WNSPTobTuqZ4XOS4M8db2yD1rXVUWHsGCfuoaja7SV0T3r6Yr
         JanOupoawwuKvZ7gBGgNKzQvNJQjkbDWUyB+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718212847; x=1718817647;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GOpWKWramxyQEFew99hsoysEj+5IYupi6XK3/qGo8po=;
        b=rmVPemn0huW5BR4sPYGMP0PDt3xLHhBJiqnP0yYP23jTaJDPj2a+9NP0cbwQXqkT5O
         VIuMo/0D9UNPCVH+IgKYbUssaRK5mPj+ayzpeRlrPFuP0GpPGWH4ya4GUjPc8b1enFKZ
         Afl7mdqm5A71zZkOhrQG6jcoAUd5MuLyvCpWHk1nnWl4D0vjDLwrOUawGRqJXGklp67v
         bYQj5po2PqiNhMCj2ia0pwbR46rknULhYWKE0afPvAciYYXNoO6GnSkFPIMs5QT5/Bo8
         KH/FLB4tbLZLndTORLkrKBt13x1s+rgmntgGnsaSLA+8IV5iaOydidX+31HXoZdXSDai
         6BEw==
X-Gm-Message-State: AOJu0YzfnV7isFM1b4n3zOIDF9NR/nJXjX2OgII+WicHiO8Hq4LDC+JP
	4fKH7mfbnN4Bm/goHw3/gUMt8wveViSL9t/GRj8MkfE0Yu97WkSlcO9XUTDDGOdptMrp+Iiym1V
	/
X-Google-Smtp-Source: AGHT+IHkLLF9cgqqfFyFE1wRSfg1+dFFwiAOO9mRj3dnSlRV36WZHm5p30m+OzVzXxzkE11H3FFvvQ==
X-Received: by 2002:a05:620a:3913:b0:794:f1d8:2798 with SMTP id af79cd13be357-797f61680edmr278018385a.43.1718212846613;
        Wed, 12 Jun 2024 10:20:46 -0700 (PDT)
Received: from godzilla (107-179-213-3.cpe.teksavvy.com. [107.179.213.3])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-795332e1cddsm612655485a.132.2024.06.12.10.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 10:20:46 -0700 (PDT)
Date: Wed, 12 Jun 2024 13:20:45 -0400 (EDT)
From: Scott Murray <scott.murray@konsulko.com>
To: Steve Sakoman <steve@sakoman.com>
cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [yocto-autobuilder-helper] config-json: use master branch
 for meta-agl
In-Reply-To: <CAOSpxdYUbOAh+gAu3cUN+U0TxoO87iDot+i7DrUw0TfoiGCPTQ@mail.gmail.com>
Message-ID: <b9a9b8d6-6dd0-23f6-a5a5-2b16e8bb00e0@konsulko.com>
References: <cover.1718202342.git.steve@sakoman.com> <e9bb457701c3b1878bf236e2b13cf4d17fd5c9c8.1718202342.git.steve@sakoman.com> <c304afdf-e085-d81d-c317-4d89d5823571@konsulko.com> <CAOSpxdYUbOAh+gAu3cUN+U0TxoO87iDot+i7DrUw0TfoiGCPTQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="-1463811583-1206277869-1718212846=:4206"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 17:20:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63336

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---1463811583-1206277869-1718212846=:4206
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Wed, 12 Jun 2024, Steve Sakoman wrote:

> On Wed, Jun 12, 2024 at 8:30 AM Scott Murray <scott.murray@konsulko.com> wrote:
> >
> > On Wed, 12 Jun 2024, Steve Sakoman via lists.yoctoproject.org wrote:
> >
> > > scarthgap is no longer supported on next branch
> > >
> > > Signed-off-by: Steve Sakoman <steve@sakoman.com>
> > > ---
> > >  config.json | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/config.json b/config.json
> > > index fbf2e6c..2089fa9 100644
> > > --- a/config.json
> > > +++ b/config.json
> > > @@ -1853,7 +1853,7 @@
> > >          },
> > >          "meta-agl": {
> > >              "url" : "https://git.automotivelinux.org/AGL/meta-agl",
> > > -            "branch" : "next",
> > > +            "branch" : "master",
> > >              "revision" : "HEAD",
> > >              "no-layer-add" : true
> > >          },
> >
> > Is this patch missing a "[scarthgap]"?  I ask because it makes sense for
> > the yocto-autobuilder-helper scarthgap branch, but master AB will need to
> > keep using meta-agl's next branch.
>
> Yes, indeed, I did forget the [scarthgap] tag.  Sorry about that!

No worries. Thanks for fixing up the config.

Scott
---1463811583-1206277869-1718212846=:4206--

