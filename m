Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web11.34577.1614001453084369698
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 05:44:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=FrtKg6cp;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.176, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f176.google.com with SMTP id q14so58018847ljp.4
        for <yocto@lists.yoctoproject.org>; Mon, 22 Feb 2021 05:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=+YcxbKi5pTFBMXqYMiyEeOKwWF2IP8hGIuYdB2WsOD4=;
        b=FrtKg6cp3zcSlvMItPTNyTNEul7aTbw1o5bpNLMNg3vU8fgjGadY0EKMrZEfb94TX8
         l9HI1DLN1lSap2NZX1ariyFhN/68vkpapwTACv1ePohZtvGORclO08/jZMrkqLQxk327
         DoDGYcLwFR4a8M0PTlF1IlX2OCbTB1dJGE7hdhDz6V5VbbfCkDVENavvOmGC9YmBqaO5
         ExuogWSgMXvsOymM7G//pbRYdktfLBBCUre2BzDl1ncMRHm2MgErkZC9Ng0DnlWsNwG2
         OzUNJF7ZPMXoYd/3Xrj0A5DsVTRofeuEBzIjlRVY2plKLMzG1uaA4CPPXmXVYcSzZHT/
         +9Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=+YcxbKi5pTFBMXqYMiyEeOKwWF2IP8hGIuYdB2WsOD4=;
        b=rDrAv991h8HqYi1xkCypzEombnzUFSqJkijU8uEzt5Y2ljPd6j08gZfkImUFPR9hLI
         cuDccrCyUFJWY3BByp80Twzt9aAFQu8zPwDCQlTFgOcEpBK/Hu9cbNCTrwqznAa1PxqC
         huZQJU4dZ/o61RDjWaUH2IBQo9HW+2wpSRiTR8dHAYVz2zy67+4n+Q76aon4aGRpTlq7
         ktylHjG3pPuoiA7Xpr/Jeumybyd7rlJHh7p2FRav7fuYxevX899VfEHlECElwQODRwiQ
         AD5D4We9cHePZQi4tSDvZDNnaet+VGKUw7zXQyWH/O29ACYCldpSfrCqB4PgMet6VKxa
         TD0A==
X-Gm-Message-State: AOAM531g6W1iay47/lYwpgQAcNzuhVDoqe0lJsXAr653gOhWMgeTGM41
	Pw1uQkQrUlsXwn6vqLZ5bcNm1+XpJmKdnDebWvf+ZA==
X-Google-Smtp-Source: ABdhPJxfuP4aHpKcTiksnlZGqNoo4odVyejn7jrwByGo+ec25xu9HZifPeaRjQVJevDRJuY6DLb8Zp3tsETfwj0ojto=
X-Received: by 2002:a05:6512:11e2:: with SMTP id p2mr13493495lfs.321.1614001451243;
 Mon, 22 Feb 2021 05:44:11 -0800 (PST)
MIME-Version: 1.0
References: <CAEt6Nwqm8w-Bc+kNueCbuZhbDWP_ueycTXDefOJxeA-fq+pb4g@mail.gmail.com>
 <21611.1614000938061206077@lists.yoctoproject.org>
In-Reply-To: <21611.1614000938061206077@lists.yoctoproject.org>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Mon, 22 Feb 2021 14:43:45 +0100
Message-ID: <CAEt6Nwo_x-VgG1kA9Y_yKLZymJQ+qD6W6Tf+Crg4m7UaoV-Cug@mail.gmail.com>
Subject: Re: Private: Re: [yocto] Custom python location on target #python
To: felixn1996@gmail.com, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

(re-adding list as this certainly does not contain sensitive
information - others might add other opinions and hints, as well as my
answer should be available for everyone to find it.)

Am Mo., 22. Feb. 2021 um 14:35 Uhr schrieb <felixn1996@gmail.com>:
>
> On Mon, Feb 22, 2021 at 04:57 AM, Josef Holzmayr wrote:
>
> Whats the reasoning behind this? If its meant to be a work-around for
> "my custom software totally wants it in that location", then you're
> probably better off fixing your custom software to stick to canonical
> paths. If its about partitioning schemes, other techniques might
> apply. If its about being able to upgrade/modify python independently
> from the system, then you probably want some root-in-root or container
> build. But randomly picing a complex package that has system-wide
> implications and saying "I want it here, screw the FHS" is not a good
> idea usually.
>
> Hi
> I am aware that what I am asking for is a bit ugly.
>
> The reason is that I have a small amount of memory at my disposal.  I'm working with a setup with two partitions, a root-fs and an overlayed application file system. None of them has enough space for python.
> Therefore I want to install it on the eMMC, which has plenty of space.
> So instead of /usr which is on the root/app file system, I would install it under /media/<somewhere> on the mounted eMMC.
>
> But maybe there exists a more elegant solution?

I personally would probably go with a build-in-build, and put some
form of application rootfs on the emmc - this could either be a simple
chroot or some more advanced form of container. This avoids nasty
breakages and update problems when the filesystems go out of version
sync. Other techniques might also apply depending on your software
rollout process, like an addtional overlay fs, or a pivot-root with
initrd, or.... it depends. But ripping out random packages and
rearranging them at random locations certainly isn't a good idea. It
already hurts when I think of the mount-and-deploy magic one would
need for this to roll out in production.

My $.02

Greetz
