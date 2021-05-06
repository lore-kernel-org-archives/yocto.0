Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3926.1620269989871660765
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 19:59:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uOQz6mu3;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D2E1E38C04AD
	for <yocto@yoctoproject.org>; Thu,  6 May 2021 02:59:48 +0000 (UTC)
Received: by mail-qk1-f178.google.com with SMTP id i67so3717412qkc.4
        for <yocto@yoctoproject.org>; Wed, 05 May 2021 19:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=x6bqvnuNXEElWeyMi2aavJPfATr+LA4seOMEtbD43nE=;
        b=uOQz6mu3AzHU2WBQr6vVn9z7+BeI9FhNyh9oL4LJ4AKfNX5H3XAuJUQ10RdoAnp36t
         Kp6Jpfm4xXHlFs1Yd3hy7JxnXtPUCxxBqH2bpg1qrw95/ZGZAlcLlMm7BUpbkPYb67AX
         Q18rC39m3uY1eezoptSXUfXYE4CJkC0Xs+eom3Sp1pTPOD5Dj8uC8+3eeUoZzQS3pKXb
         24LLBPLaAe5Ws8L1FW5m/HlzMZSBGaZ6C8SV88Lmk902VWKdQIGl08NDf/KxUxgP2Rj9
         9nIwJKew/ik+snskhiK7aKeIHL3KzNBJoQA+8XHyF3xeRFf/Y2TlLwvXgQZX2hzjoLPj
         CN5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=x6bqvnuNXEElWeyMi2aavJPfATr+LA4seOMEtbD43nE=;
        b=tkJOPfSh9vOq4HsCWGOdNeCaWyii49FjH5BX5cC3+XC/ejfs/8BQB7XVy9nCRyOu3b
         EIYW4Rn2goBbsu8nkQ26i3UqJWU5Nfyb6A6sYVkAR/ZUeN5/KIIo+jXcfR5U6X5/WrxH
         qAlGg4U3StDkeW76+SjyOUeDCcpuXDDqmRuEtHOjvSnzAQpx+GkV3hy+bILOhlgIx9Er
         XF6TMcTd3qFX4FBeC/KcJmRn9BY8kWY8gbYw4PmhXhC7apHQUFPQkpZXg2qlnhFBcsDD
         0v9CQ//9PnZTLe57x7avRX2n1LGkIX1liH+DOyyZZ0OL2AF95derr9x/utEjyNWK4g8b
         Yjzg==
X-Gm-Message-State: AOAM532Fi7dweTvUXmJNWhEXAUK3dLvwGHyRp0aVXIVBWvZ7tgxWKv7f
	hsjppRDTS5h/lUH7YmYvGg8WlHkn4ge8voa4snQ=
X-Google-Smtp-Source: ABdhPJzQkzL2jQjdGlQi0VsEnxjf7NPMtyFrWgsMT6q91tbQunKnVL0hpYo/BtFllik+s4V+acj08naQhQh87nKtpZA=
X-Received: by 2002:a05:620a:9c8:: with SMTP id y8mr1902944qky.125.1620269987581;
 Wed, 05 May 2021 19:59:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAB=6tBTGiMBH+g-uy3sr1jKA-j1EkSDt0B+8DLb4_iMSaMax6Q@mail.gmail.com>
 <CADkTA4O47xoqwq5Jxj4b-r1RfyXCt2mMWPvGKOP8mwqWF4LZkg@mail.gmail.com>
In-Reply-To: <CADkTA4O47xoqwq5Jxj4b-r1RfyXCt2mMWPvGKOP8mwqWF4LZkg@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 5 May 2021 19:59:21 -0700
Message-ID: <CAMKF1sp0c7X98PGWqucYv7xTpz-7VQrreWQWadsR35P=KU2a1g@mail.gmail.com>
Subject: Re: [yocto] Recipe Grep'ing
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Chuck Wolber <chuckwolber@gmail.com>, Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, May 5, 2021 at 7:13 PM Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>
> On Wed, May 5, 2021 at 8:42 PM Chuck Wolber <chuckwolber@gmail.com> wrote:
> >
> > I was pondering putting some work in to a fairly large patch set aimed at making recipes easier to grep through, and wanted to get some feedback before I put time and effort into it.
> >
> > I have often found that the following pattern cleanly describes the "what" and the "why" when grep'ing through recipes to search for things:
> >
> > FOO += "item1"
> > FOO += "item2"
> >
> > Whereas this pattern gives us the "what", but not the "why":
> >
> > FOO = "item1 \
> >              item2 \
> >             "
> >
> > After discussing this with Richard Purdie on IRC, I also understand that the latter pattern benefits some forms of build output. In addition, for SRC_URI, the "why" is normally fairly obvious from context clues.
>
> The other issue with large formatting patches, is that they make a
> history "wall".  So when we are debugging and trying to figure why a
> change was made, you always have to jump over the wall (or dig under
> it) to get the real information.
>

right, that's what if we want to do this then it has to be persisted
with otherwise it will end up being one time exercise with all these
losses you described.

> As such, I'm not a fan of changes like this, unless they are coupled
> to some sort of functional change. So I'd be hesitant to take them
> into recipes that I end up holding the bag when things break.
>
> Cheers,
>
> Bruce
>
> >
> > So, is there any interest in accepting a patch set of that nature for Yocto and OE repositories? If so, what variables and situations should be considered "off limits" to a change like that?
> >
> > ..Ch:W..
> >
> >
> > --
> > "Perfection must be reached by degrees; she requires the slow hand of time." - Voltaire
> >
> >
> >
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
> 
>
