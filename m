Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC6EC48260
	for <webhook@archiver.kernel.org>; Thu,  8 Feb 2024 13:35:37 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web10.17676.1707399328131559289
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Feb 2024 05:35:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GAhxX5ij;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2cf5917f049so21456461fa.2
        for <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 05:35:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707399326; x=1708004126; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1s1rNS01csEyUp76pxp9gN2lBuv5jw0sAnibnhbcLJk=;
        b=GAhxX5ijd9KvjmmBXwedL984Xi7C96WcxMUY6TKSGV/9OyvKQTAUQPy689pn9fyz0J
         y+X1sJnVgNfwTPS0CHzYy0DoWUA3Tauz51OpWo8zwX7+f1vu4F1EIyApZ8SfdrdzKixs
         1Ken6phtMw2LuAIGMzWELaiI+CTzwM4aTrrkQEyvuVh4Pqigw6KlrITqFd7s9YCAvyFM
         opLHjUfJjaFWkgU93lVOlyx2if8JeoOTX1TmIJlJcNOLz8Urhn/xeKh9ANbyoyzFBEtV
         ZLVHwADF6SkOucIXrTAmzm96mZEOBZBnEp83EvG+j71fYm2utVnabwhU4UBK9Pd5/9eE
         w8RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707399326; x=1708004126;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1s1rNS01csEyUp76pxp9gN2lBuv5jw0sAnibnhbcLJk=;
        b=Qfztbple5cx0A5yiuV7+LBe+oORwSzJuaj9PWBtLFVnxrCEpmyKTJiARyIhwdjdZ2s
         AS1KEisvxF/FFHdr8pFVr9n+ICi9Edw97djSEKyqv7RquoGfjRkXO4J0KY+mBSrVsqbZ
         GsAj4VPAgna85KUEgflfbbkblTj+HIURn2TW0FZrLm1I2fyRc60Bo4otWZ0QLovhHY+5
         uLInu1knUXyJvD1xCpa8HJuOTzRHyg1a6EQCnj1ZlLaIrC5mYtOZDBtTtuvomogtpw3h
         I3R169YbwSBeGFsjqvG4Ahn8EcohJXkcA1WmTaJd2p2zR6bTV91ZAKZJAbuTrGpd7NVV
         9khQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwCKKclyMwyQyasIw7CEzGgz54OwebnaGn9jLEb7f+QjwvpbllPHIHiZY+RFffOQwUaBz2IINQHnpt9aYqPm3TAs4cgJGNyRkAWiM5
X-Gm-Message-State: AOJu0YwKnMfh1NX6lG3YIVMTfkujaMxAvHifSmWa3CLa2GPXwNDPKbIa
	eAxMTrcvAWpgv8MZWkU1FJ/ztp7l0DgVXo9DiTxXkSDf9+cQ6a8LgJeCHX29EKBBYCv44SLfLKt
	LXl95slf1qFNt20J/hyNfZKRSbuQ=
X-Google-Smtp-Source: AGHT+IGKrkJXDODm3nVb9fzHwnKikXdqz4hvqt4v4yUu9RXq5uF3o86VrquzEWR78TSsKkFA0pvRsWwXCqcDiK/mXqM=
X-Received: by 2002:a2e:9ad4:0:b0:2d0:cb23:c719 with SMTP id
 p20-20020a2e9ad4000000b002d0cb23c719mr3539263ljj.13.1707399326073; Thu, 08
 Feb 2024 05:35:26 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
 <17ACA59E7A7FD97B.16230@lists.openembedded.org> <CANNYZj9X5qRSup7i9S=rtRpwo5nCNHp8VJOZAuvu5JzqhLYD_g@mail.gmail.com>
 <f1c9d0f8cbf8ea1972aafac0c29690ca400178d7.camel@linuxfoundation.org>
In-Reply-To: <f1c9d0f8cbf8ea1972aafac0c29690ca400178d7.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 8 Feb 2024 14:35:14 +0100
Message-ID: <CANNYZj8tyOy=z3L=uM9L_R8uP6eZSUkYXm9BwvsU+ERpE9QcZw@mail.gmail.com>
Subject: Re: [OE-core] Core workflow: sstate for all, bblock/bbunlock, tools
 for why is sstate not being reused?
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Joshua Watt <jpewhacker@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 13:35:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62427

On Mon, 5 Feb 2024 at 22:11, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> > - export the hash equivalency database into something human readable,
> > and placed into the bundle, and then import it back when the bundle is
> > unpacked and set up. As far as I understand currently there's no code
> > for this. I'd find it useful in general, as effects of hash
> > equivalency can be tricky to grasp, and being able to look at the
> > database in a human readable format goes a long way towards
> > understanding how it all fits together. There may be other use cases
> > where you'd want to move the content of the database between build
> > machines. I'd like to get Joshua's take on this, did I misunderstand
> > this completely?
>
> You don't misunderstand, this is an issue.
>
> The good news is that the hashes needed will be in
> cache/bb_unihashes.dat. The eSDK code saves and restores that to ensure
> things all work out ok.
>
> It isn't human readable but could be translated easily enough.

Right, I didn't realize bb_unihashes.dat is simply a python pickle,
and can be dumped to stdout with a three-liner script.

What I don't understand is why for each task, that file seems to
contain only a single pair of equivalence, and only matching the last
build. The complete set seems to be in hashserv.db, but I didn't yet
look into the structure of that or whether it's portable to other
locations as a file copy.

So how do the two files interact? Shouldn't we copy over the full
database rather, and have bitbake re-create the cache on the other
side from that?

Alex

