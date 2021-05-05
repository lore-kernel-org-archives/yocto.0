Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.8676.1620223896156813528
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 07:11:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XI14FsXn;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: zoran.stojsavljevic@gmail.com)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	by mail.yoctoproject.org (Postfix) with ESMTPS id BB43638C04D7
	for <yocto@yoctoproject.org>; Wed,  5 May 2021 14:11:34 +0000 (UTC)
Received: by mail-pg1-f182.google.com with SMTP id z16so1924013pga.1
        for <yocto@yoctoproject.org>; Wed, 05 May 2021 07:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jC/zGLRGIrnCN1TLFnU24mAkHtURhBksbD/7eviGOAM=;
        b=XI14FsXn6UqZNGMpDhAEfgAUkaHp7sgguwchHwPnpfh/Tqz94t/joRPquRtX8de4c4
         2CYzK8GjHqEfIZKP0dDNZDj8SN8Bciycj+/T6nZfkwUUxytWZUK/3Jsn4VlXr6KNXNUF
         kuni+vEbwoEjsahoGz07LVNZMmllEC8EnfmapqLmGmufqcifX5IumBcbvrKq0MkV0lgB
         T44mnJX6tjLi7niMGL2kY86gYgnnDHIEchKhJ1OrzUiHPji4scpGl5OVGagkHB41Au3w
         PbgzI27OxzAMVkdMqCw2aPyF27Gfa8PK4VF4esApzumJACmsoS4sE7xx9ynY8TFuNZCY
         dsqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jC/zGLRGIrnCN1TLFnU24mAkHtURhBksbD/7eviGOAM=;
        b=qBpb/Npp/ocilSDLohxr8JQx2ROQh9Tlv2e5CaasyX50RkwYHBG+Wk/q42OAvgKPaV
         n3HVkCAisb4bhXSxQcuvwhfedoiMxgCMc8TE5g8/3JireUiB115gTvJHrx8IFY/zvtNO
         4ctkeKyfSjyGBX2Rk7jluA7gl8WtA5bn7EYkE7LSmizDIw+etmAkXlD+GHu4NwVwSqtw
         v8SdqiaZgxMZvG9WMiSrPKe8oZCJGhOhF/qmiIwNmgppyGGGRSqp282XPoa5S5hJwi80
         wg2N12lq4qUC9b4Q++wqvwupGt1w59p6OZJ7QxEwJ+ttpZhpuSNHRbDnx3RPWYkpilaH
         jzEw==
X-Gm-Message-State: AOAM530aV2eVgFuHE4m9yOIl/iEKY0PMm4wO0WLE3rFo3rhIh7QErGMe
	B9I/uAMDderXBWN0I3rinR+Q0hR/ezUurTdUYXE=
X-Google-Smtp-Source: ABdhPJzztpn/WmbpanfklUfM0nuACgZIvKPBXB+gdfc9MYP84a5RLHQJsVekb6HeFVtLKoObn00nMdzXSmF5Sg0sTS4=
X-Received: by 2002:a62:6142:0:b029:28e:b072:6b7 with SMTP id
 v63-20020a6261420000b029028eb07206b7mr12772739pfb.65.1620223893754; Wed, 05
 May 2021 07:11:33 -0700 (PDT)
MIME-Version: 1.0
References: <168601d740f4$44e42800$ceac7800$@gmail.com> <CANNYZj-agAhiswr-8qpsQPQ=hP0Orv5zdLtAEEqcVGTTjhWyPw@mail.gmail.com>
 <5a4091d0cb7b20f7d41e33b67fb5b7502b2e58b4.camel@linuxfoundation.org>
In-Reply-To: <5a4091d0cb7b20f7d41e33b67fb5b7502b2e58b4.camel@linuxfoundation.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 5 May 2021 16:11:22 +0200
Message-ID: <CAGAf8Lw+LevkJNa6mNkhEsC__YHhFKiA=XyG656Xnp=KC5Sa7w@mail.gmail.com>
Subject: Re: [OE-core] [yocto] Yocto Project Status WW18`21
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, Stephen Jolley <sjolley.yp.pm@gmail.com>, 
	Yocto discussion list <yocto@yoctoproject.org>, OE-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

> We have discussed extending it but we currently only have the funding
> for the originally planned 2 years.

Really/echt??? Why? ;)

Zoran
_______

On Wed, May 5, 2021 at 12:33 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Tue, 2021-05-04 at 18:38 +0200, Alexander Kanavin wrote:
> > On Tue, 4 May 2021 at 16:46, Stephen Jolley <sjolley.yp.pm@gmail.com> wrote:
> > > We are pleased to announce that our April 2022 release (potentially 3.5) will
> > > be the next LTS as per our original two year schedule. If there are features
> > > desired in the next LTS, now is the time to get them submitted and stabilized
> > > ready.
> > >
> >
> > What will happen to the current LTS at that point? Will support be cut off,
> > will there be a transition window, or is it currently undefined?
>
> We have discussed extending it but we currently only have the funding for the
> originally planned 2 years. Discussions are continuing but since we do all
> agree that the next LTS will start then, we decided to at least let people
> plan against that.
>
> Unless funding/support is secured, dunfell would move to community support
> if anyone were willing to step up, or become EOL and replaced by the new LTS.
> There would likely be some period of overlap of a few months to transition.
>
> There is also concern about pressuring wider community layers for longer support
> cycles which is something we need to think about.
>
> Cheers,
>
> Richard
>
>
> 
>
