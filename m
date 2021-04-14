Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web10.7966.1618370088599006376
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 20:14:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IzE1+I6h;
 spf=pass (domain: gmail.com, ip: 209.85.160.177, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id t11so5901743qtr.8
        for <yocto@lists.yoctoproject.org>; Tue, 13 Apr 2021 20:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IzcUJY6xhI4HaPZLRxilzsG0LvB2u9kgUKkfU7ay6Gk=;
        b=IzE1+I6huLTWG9qlMS2txsFuTF4Pq82OYbFgpW4NQ9D4xnNufKWs9IG7d+1ZCiYqZk
         NIOjMph/3nnKy61t1VnlsRKo8FUBawTaXmhHfHPX/ZmkNn0Jt6Utd0CsphGupIJXTIUF
         LxGbPI8MxyquUbRaA/dcFVO1kpUFz/6EsAvfk8wNY1cmcX/Udt5KFqbp9O8yxjeMtLB6
         wuk5i+78bu88P0gstqSKQrPB6NRXD0M6Kf3bsI1d2Tf2Ee9F+/IUCRJrWNUfTZhfUvd1
         Sc+Xc1QDLhaNMusma0p9Xf8+Fb7FvD6palSYvNAMXEJOBnzvULetjNtdEeGH1qAMThfe
         tizQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IzcUJY6xhI4HaPZLRxilzsG0LvB2u9kgUKkfU7ay6Gk=;
        b=WBghJV3/T+QWYCQMIVtVpgpVMCzxlDLgL96OE9PXjlT5em7mYDyYie3dhhSG/Quw2E
         8e6HavsExVA8nxIolwdPfk87RfFTFJfBJae5uCJx7A3e9Oz3rwj7binDx+SIEV9AbqHR
         +Ybgga3DXiNPCB3lBohJyFUrnu9yE20fheaoEO4P48LwR03cjBZOWQcWZAi6R4jHguxG
         MwYVCJHvdDztzcXXBpfV7FMMYtfBPgpezL9esiuLzRvlJFcQB7uxZEa/NQbIifgFQM86
         B9LROaN8iQoQYsSWjJr65LkI7szkC34SYEoXOUPe4KXQy+c31LHESdlLd402n+YRMJ6q
         lDSg==
X-Gm-Message-State: AOAM533/enb2yXRS8gF/rsqrws9nydmzHHpreCKmD2p6m93KCC5a9IXp
	6V96i6QXdYpZU9QwNpCGFwhR2FiVoORe8DY1014=
X-Google-Smtp-Source: ABdhPJwmtcx74LhsIXmMEeVPA8jzwNsqhvuWtDO1mnz9RB2KTv5KJ2080pAd+4qJgkQ1hKxSYMqGDD6qpAqKJYiOTWs=
X-Received: by 2002:ac8:7ef9:: with SMTP id r25mr23333364qtc.369.1618370087704;
 Tue, 13 Apr 2021 20:14:47 -0700 (PDT)
MIME-Version: 1.0
References: <s4v495$bak$1@ciao.gmane.io> <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
 <d8ab0231-717d-69e4-e6f9-739b9a08bd29@gmail.com> <CANNYZj_K-zpP-iTQMh5YA58dhBV88wLP-PouXS5KrHjybfsy-g@mail.gmail.com>
 <14207c27-7f5e-9a13-d8e8-28dbb0e7ea7b@gmail.com> <CANNYZj8MtLM5KdUqMsqhiVMHTnmj4VMoSf3XnCLvSns8grpmmA@mail.gmail.com>
 <0c8c0d85-c3e0-41d5-1a0b-2d121302439a@windriver.com>
In-Reply-To: <0c8c0d85-c3e0-41d5-1a0b-2d121302439a@windriver.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 13 Apr 2021 20:14:19 -0700
Message-ID: <CAMKF1sq6AKTpi-WDUbAJhBzSgnMgMxr7S3+k2gUeKWJo7enrAw@mail.gmail.com>
Subject: Re: [yocto] bitbake controlling memory use
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, Gmane Admin <gley-yocto@m.gmane-mx.org>, 
	"Li, Changqing" <changqing.li@windriver.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, Ross Burton <ross@burtonini.com>, 
	Joshua Watt <JPEWhacker@gmail.com>, Trevor Woerner <twoerner@gmail.com>, yocto@lists.yoctoproject.org, 
	yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org, 
	yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X@public.gmane.org, 
	Ferry Toth <fntoth-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Type: text/plain; charset="UTF-8"

I use

BUILDHISTORY_COMMIT_forcevariable = "1"
PARALLEL_MAKE = "-j 11"
BB_NUMBER_THREADS = "11"
INHERIT += "rm_work"
XZ_DEFAULTS = "--threads=8"

On Tue, Apr 13, 2021 at 6:15 PM Randy MacLeod
<randy.macleod@windriver.com> wrote:
>
> On 2021-04-11 12:19 p.m., Alexander Kanavin wrote:
> > make already has -l option for limiting new instances if load average is
> > too high, so it's only natural to add a RAM limiter too.
> >
> >    -l [N], --load-average[=N], --max-load[=N]
> >                                Don't start multiple jobs unless load is
> > below N.
> >
> > In any case, patches welcome :)
>
> During today's Yocto technical call (1),
> we talked about approaches to limiting the system load and avoiding
> swap and/or OOM events. Here's what (little!) i recall from the
> discussion, 9 busy hours later.
>
> In the short run, instead of independently maintaining changes to
> configurations to limit parallelism or xz memory usage, etc, we
> could develop an optional common include file where such limits
> are shared across the community.
>
> In the longer run, changes to how bitbake schedules work may be needed.
>
> Richard says that there was a make/build server idea and maybe even a
> patch from a while ago. It may be in one of his poky-contrib branches.
> I took a few minutes to look but nothing popped up. A set of keywords to
> search for might help me find it.
>
> Someone mentioned that while ninja has not been open to accepting any
> patches that would complicate and potentially slow down builds, there
> is a fork of ninja calls 'samurai' that does seem to be open to some
> improvements that we could benefit from.
>
> It was also suggested that  there were existing defects in the YP BZ (2)
> but I didn't find any earlier and it's too late in my day to start
> looking now! If no one replies with a relevant BZ ID, I'll create one.
>
> I'm sure I missed some things that were mentioned but Trevor Woerner
> sometimes takes notes so I'll check on them once / if they are sent out.
>
> ../Randy
>
>
> 1) https://www.yoctoproject.org/public-virtual-meetings/
>
> 2) https://bugzilla.yoctoproject.org/
>
> >
> > Alex
> >
> > On Sun, 11 Apr 2021 at 18:08, Gmane Admin <gley-yocto@m.gmane-mx.org
> > <mailto:gley-yocto@m.gmane-mx.org>> wrote:
> >
> >     Op 11-04-2021 om 17:55 schreef Alexander Kanavin:
> >      > On Sun, 11 Apr 2021 at 17:49, Gmane Admin
> >     <gley-yocto@m.gmane-mx.org <mailto:gley-yocto@m.gmane-mx.org>
> >      > <mailto:gley-yocto@m.gmane-mx.org
> >     <mailto:gley-yocto@m.gmane-mx.org>>> wrote:
> >      >
> >      >     Yes, and make project doesn't care, because make is called
> >     with -j
> >      >     16 so
> >      >     that is what it does.
> >      >
> >      >     So here's my pitch: bitbake can stop processes spawned by
> >     make, because
> >      >     it knows that it started make on 4 recipies, each with -j 16. The
> >      >     individual makes don't know about each other.
> >      >
> >      >
> >      > And neither they should. They can simply abstain from spawning new
> >      > compilers if used RAM is, say, at 90% total. Then bitbake does
> >     not have
> >      > to get involved in babysitting those makes.
> >      >
> >      > Alex
> >     Bitbake does a lot of babysitting anyway :-) And is pretty good at
> >     it too.
> >
> >     To me, fixing make et al. is more work and less effective then adding a
> >     feature to bitbake. The only way to know how much memory the compiler
> >     will use for each spawned compiler is to let it run. And then it's
> >     too late.
> >
> >     This memory issue is all over our eco system and nobody cares (kernel,
> >     make etc.) The only thing moving is systemd's oom killer will arrive
> >     and
> >     start killing processes. So that will just stop our builds from
> >     completing.
> >
> >     Yeah, I prefer a babysitter over a child murderer :-)
> >
> >     Ferry
> >
> >
> >
> >
> >
> >
> >
> >
>
>
> --
> # Randy MacLeod
> # Wind River Linux
>
> 
>
