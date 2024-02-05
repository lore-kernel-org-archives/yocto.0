Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97194C4828D
	for <webhook@archiver.kernel.org>; Mon,  5 Feb 2024 20:35:40 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web11.4855.1707165331357749298
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Feb 2024 12:35:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KjXtboUJ;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d051fb89fbso1045221fa.2
        for <yocto@lists.yoctoproject.org>; Mon, 05 Feb 2024 12:35:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707165329; x=1707770129; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Gm76o5vthT4ZCVmp/KfOXOmEVDRfwkOOhA3UihTLN9Y=;
        b=KjXtboUJsoOuZO/m5W/X4tX41yFCgY3rxph+EtMnQoEamvOSmi71zGywnvtt4cMc8w
         hTD4K5a3+qnQtt3jPMpIItrUxlR/yuR0+Xx0SiX5+oP7wajAHREL8x0O2EY7IxgVUSRo
         /h/IfK7Hqk/tyEXACiQ8NhB1kyaC6OJ0lTzqmralqw6uJhoqAZG6GLS6HZL1JxV6RIjl
         M4YTEFFVkhxdihUTXiuse0mv/l/utnJPs1/4yp9g41bFaeg96vNKJIFW5x9MZ1aSoxYP
         ReLFrgFhGGVriH4sRtbysgJQZ2eAUENpbzez0lpJbE7+Vd8DznUubl0Va1MwXcnPY6a6
         /gcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707165329; x=1707770129;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gm76o5vthT4ZCVmp/KfOXOmEVDRfwkOOhA3UihTLN9Y=;
        b=JXHeQvVxjYxfkbFl8aMIutgU5epX3B/p+Jwn7En2T1nqRFIQVSFzpIMW1BnmNgHSVD
         3AZ4+BCjyOdQuWxJQP7peC3r+cFKqM6HiMtsfnvKq9TBUWbFcFlqcM2Vt2JwtZgYxahj
         hJZsn0PByQoC5iULxgZnwSSwchh7aTTN8O286awXASgyp17/YQARX3mp4iXSufhqxx8v
         HYL1Sq4hwHSCcFQouyMluGZVJ0Rt59utlVsxdy9Gmcwxt0Vsz6VLl5RLlexYLBdeNyrK
         dqAkpj2S9PG773i481+KsR42mFXV2l+oCqc9h2SrChNVBRLKDdpKzCyQtU3cv+YLmUNx
         ws1w==
X-Gm-Message-State: AOJu0YxL1ki3VDX5yFw2/efewOvCIZoVMFtB2jyHfRpyUE5KtowQnfej
	SVyhUIvk6fj3t5rsHfdb62AKWBMnlEkSVrVh6dTwHpY7auLBymB6cp+bP0YLfcT+BXgyY4qa6rM
	p5oBhLHYs1yXhzx+ZUFw/U7Z1laQ=
X-Google-Smtp-Source: AGHT+IFgGl+Utbyz9OwZpCfAb2e2IMKtmU4I2+srvDZ1MCW1/BOgP04uFtgT8zB7zMAMPoHmqgxH5UT6R7iQXj6ZoIc=
X-Received: by 2002:a2e:9113:0:b0:2d0:9e95:68e9 with SMTP id
 m19-20020a2e9113000000b002d09e9568e9mr563527ljg.11.1707165329172; Mon, 05 Feb
 2024 12:35:29 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com> <17ACA59E7A7FD97B.16230@lists.openembedded.org>
In-Reply-To: <17ACA59E7A7FD97B.16230@lists.openembedded.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 5 Feb 2024 21:35:16 +0100
Message-ID: <CANNYZj9X5qRSup7i9S=rtRpwo5nCNHp8VJOZAuvu5JzqhLYD_g@mail.gmail.com>
Subject: Re: [OE-core] Core workflow: sstate for all, bblock/bbunlock, tools
 for why is sstate not being reused?
To: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, Joshua Watt <jpewhacker@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Feb 2024 20:35:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62396

On Mon, 22 Jan 2024 at 11:47, Alexander Kanavin via
lists.openembedded.org <alex.kanavin=gmail.com@lists.openembedded.org>
wrote:
> 3. Build replicator tool.
>
> I've written a proof of concept:
> https://git.yoctoproject.org/poky-contrib/commit/?h=akanavin/sstate-for-all
>
> There was positive feedback for the idea, so next I'll add tests and
> submit it as a proper patch aiming for inclusion.

I started working on bringing this to level suitable for proper
submission, but quickly ran into two issues:

1. The bundle should include a local copy of all the layers so it can
be unpacked and set up entirely offline (and not by re-fetching all
the layers like in the proof of concept). This functionality is
available in the esdk task, but needs to be provided in plain yocto
builds as well. The plan is to add a 'local-copy' plugin to
'bitbake-layers create-layers-setup' that would utilize existing code.

2. Something that didn't occur to me until now: simply copying over
sstate to another location doesn't guarantee that it's going to be
used, if that sstate needs to be discovered via hash equivalency
database. There are two options here:

- lock down sstate signatures to what is available (esdks take this
route, and get away with it because of restricted devtool-only
functionality and hidden layers that never change)

- export the hash equivalency database into something human readable,
and placed into the bundle, and then import it back when the bundle is
unpacked and set up. As far as I understand currently there's no code
for this. I'd find it useful in general, as effects of hash
equivalency can be tricky to grasp, and being able to look at the
database in a human readable format goes a long way towards
understanding how it all fits together. There may be other use cases
where you'd want to move the content of the database between build
machines. I'd like to get Joshua's take on this, did I misunderstand
this completely?

Alex

