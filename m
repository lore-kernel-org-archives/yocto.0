Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BE30C83F25
	for <webhook@archiver.kernel.org>; Mon, 21 Jul 2025 18:38:55 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web10.49206.1753123125783550016
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Jul 2025 11:38:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NHD/ob/s;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-700c7e4c048so74971776d6.3
        for <yocto@lists.yoctoproject.org>; Mon, 21 Jul 2025 11:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753123125; x=1753727925; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XGBEDv/KqDVmxv/d8UNVhpeCemXpiBRQ+9Lk5w0FORY=;
        b=NHD/ob/s/0bz8KRTpFCs5In+a4hDob8zghyZkH6LJT9FKjcDKglX3tFESFRcKe7k8r
         VQdFJxHFul5Cv2btHK4ymwvX5E0xPsLbUS+zFTLNpviSpT8+GfjXKA9E6wyCs54LihrX
         1oDURA0c9BzLDDyIZb2GhDv4rHiFeXlsidf2Z69L/XA8ChhtgKV9BvoO6kWyGV8fkY7p
         ZZGPjFX7RSxK2TNybtVVybgIk0w7tEv5nPN7BMZlNFedsptRngpiob3pgJ97ItikYS1u
         mgMvL7LmIIAD7F+wupqXv0qmCn5MHU5neDSYPVrbUdpwchpRt6Q0Eg0pcAhkuMpKNlCL
         h6iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753123125; x=1753727925;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XGBEDv/KqDVmxv/d8UNVhpeCemXpiBRQ+9Lk5w0FORY=;
        b=mFRGHlFQTQJ8/4Pbef++a4vqirCko5qvbvt174co/xNe2wLmth3ncw93EfaLlEciee
         JUIr0XHf3G3mDSmHwq0Zw8mSumUfjwxbWKTXtLMbVEDspwDHIXv6uMxmLWR0GYleQmIC
         7zcix17jRsU8BD8ImBevmXh+9s7hkpZgzZKOYni1YLQROj+8amoHXVsHppHyKtApTVal
         OSRZ6wJULCBYSKoO4GgjRTMHqTu0z6Xa3gkBuP3eN+ba3Gg3bnyZVEnBd2sL9A/l69e5
         /qYo16AQsySU7WYxMHdPftSjqRHzjtnHKewhx3+CAQTl1ANWvRmY02LGaCrHkZiN+vtW
         3Lyw==
X-Gm-Message-State: AOJu0YzENajySbEeshavQ4fq+lDGp2ErJ3D81G7Nf3TulSfDxk7FgcXQ
	iDa7VJ9O2c8Jx8ryiofdpei2TqePSJuR04CnqAWjpoyrsh61FlMB8+aI+ZWGCauaw3yD5qhGevD
	zTsFw5tLg+XgWgUFGgCAtHYjs8u05qSWOUg==
X-Gm-Gg: ASbGncuoacg6+w8xu00iUqoxNAW0WRncR6MVz68LnsqOCmQoU+tMmwfxziHju73u5Xv
	FTarESyxJ9FGY6hWNZf89ArcxrA2/LYmBPH2ipzZ/rtemTzNepBkZRCF3bXa0STTjHHMIud4eNk
	clnML0IG54AWgURi7HkWLPZ4HjfSNQBt0mIb3K4vY8QSc8o+NumwJThYLJi8OYEF6mW8iEG+8Qb
	ZjOGA==
X-Google-Smtp-Source: AGHT+IF9KzU96H9B2I2nBijSpxrQzeZAzqS4S8yYmmvS80ifieOQgiqmYmvsp3MxBJ9KYh68Tv2e60uipTF78TZQVWU=
X-Received: by 2002:a05:6214:411e:b0:6fa:ce21:cad with SMTP id
 6a1803df08f44-7051a043b75mr190446936d6.18.1753123124514; Mon, 21 Jul 2025
 11:38:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb_mX+D24LjOozpm=m_Y=5AhHSX=5OtNdbNHWg99mcuFNw@mail.gmail.com>
 <CANNYZj9R79Um9BvKmZmOrCZLnVaDk3cfO1KHM8bu54mu3F-68Q@mail.gmail.com>
 <c5c7b6cb0ede0893d9c760ebeaaef042c248fcc1.camel@linuxfoundation.org>
 <CANNYZj8r4KOxDO6Z6cCN50ADRiAzBhSx=8rVZfY7ZvWPHdz4EQ@mail.gmail.com> <a37d9f86a948a4b5b63146ddbaf1ac62f3754b69.camel@linuxfoundation.org>
In-Reply-To: <a37d9f86a948a4b5b63146ddbaf1ac62f3754b69.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 21 Jul 2025 20:38:32 +0200
X-Gm-Features: Ac12FXzGf22zbLvvU_mELQjwj4mwKdwyMnWgyvGWX0ChMte-HAR6gzs2QrjhSiE
Message-ID: <CANNYZj9hOzn+P2dEN_yAxKOdru711idpb74kVGWndhSf7gBi0Q@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 1 July. 2025 (WW26)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Jul 2025 18:38:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65695

On Mon, 21 Jul 2025 at 15:41, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> > This will look much neater and readable as a tree where nested
> > configurations add details to the parent (e.g. adding a BSP layer and
> > picking a particular machine from it). I think that's a rather common
> > use case.
>
> It can be summarised a bit more succinctly i.e.:
>
> distro: ['distro/poky', 'distro/poky-altcfg', 'distro/poky-tiny']
> machine: ['machine/qemux86-64', 'machine/qemuarm64', 'machine/qemuriscv64']
>
> which is why I'm thinking we should perhaps work with this in terms of
> fragments/config selection.

So the above would create a kind of 'config generator' that would
allow any combination of the entries from the two lists?

I'm ok with that, but I would generalize the keyword for such lists to
something like 'fragments-choose-one-of', as the values are just
fragment names and do not require special treatment. It would then
also easily extend to other choose-one-of things like toolchain/clang,
init/systemd, or libc/musl.

> > (I know the tool currently offers no help in discovering its own
> > settings).
>
> No, I mean something different.
>
> In order to speed up builds and reduce network usage, the autobuilder
> has a cache of commonly used git repos such as poky, bitbake and some
> other metadata layers. When cloning, it will first use those cached
> repos, then just do a final pull from upstream, just to ensure
> everything is up to date.
>
> Those cache directories are updated by a cron job. I'd like a way of
> telling bitbake-setup to use such a cache to speed up checkouts and
> reduce network usage.
>
> This feature doesn't need to be that user visible, just available for
> the CI setups to configure. The code for this is in yocto-autobuilder-
> helper.

But bitbake-setup is using bitbake fetcher for network operations,
e.g. fetching and unpacking layers. And as far as I see the bitbake
fetcher provides exactly same download cache function as this custom
mechanism. So you could configure bitbake-setup (with the command I
mentioned in the previous email) to use DL_DIR that is shared via nfs
between all workers and bitbake-setup instances (or even is the same
as autobuilder's global DL_DIR for recipe fetching), and then it will
not touch the network at all if the needed revision is already in
cache, or do a quick incremental git fetch if it isn't (or revision is
floating like master-next or other branch name).

> I'm not convinced anyone will ever really want to configure "all", it
> isn't what users generally want to do.

I'd want to use it if I need to locally run builds for all products of
some company, and there aren't many specified in the config. It's an
option, no one is forced into it.

> I suspect what we need is a single base default configuration and a
> prompt saying "run XXX" to configure fragments X or Y.
>
> We then allow init to take a list of fragments to configure? That would
> mean:
>
> bitbake-setup init poky "machine/qemux86-64 distro/poky-tiny"
>
> would work and we have a way to add new things to the commandline
> relatively easily.

Yes, this should work, as long as the fragments on command line are
all from the choose-one-of lists in the config file.

bitbake-setup should then make a record of what fragments came from
the base config, and what were hand-picked (this probably matters in
status/update operations, and in general should be preserved).

Cheers,
Alex

