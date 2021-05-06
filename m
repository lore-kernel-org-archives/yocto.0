Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.3445.1620267179523343683
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 19:12:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=niM/qGeY;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: bruce.ashfield@gmail.com)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B979F38C04AD
	for <yocto@yoctoproject.org>; Thu,  6 May 2021 02:12:58 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id n2so5891931ejy.7
        for <yocto@yoctoproject.org>; Wed, 05 May 2021 19:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6/nLIRZe+t3+IOC1FfQ5lbdVTWEpXvxB/DFWSAkKQOg=;
        b=niM/qGeYoU0wdClWkXVHsaQFIz/qDarXA1WwhgWTqRFWnbkoEvf0Pnnq239ExK9O7i
         dprZLJNLvCZkjg1yarbuc3gw7v5CNq6yRjQoatwxWfjsfqoPymlM6MKjrtsv8yS2kxah
         16IVn5TaGJI3jen5hYE8o0CyfQ4XAPvDcwUvkbMPnwWSLJCz2rkT1l2oqc+HYpSqqKyQ
         GfU3KeumviJGB4TR2WocRuGhJhpMXGTSAebm1l80fTFGSZgB5deUROrYOHLsYee3z8Uq
         iOLJXUYuor27zHHD3F26AxSdf60IO9GdQ3wV8ulAS0HZ//6FsRXHQGDv57UxLP8aNTBF
         YCEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6/nLIRZe+t3+IOC1FfQ5lbdVTWEpXvxB/DFWSAkKQOg=;
        b=JUjBURHVldQASY+XPKiiFgICmI5SKPi7uPI/PVV1ci+PWkZwop92sE0GcANoMXbjXg
         O6iSl7X6zV7Djipmghkc6Z7PupJ5UzL9iK8kQN8UUTfeobk2Guc9MQod1UvSqPe2sSOg
         KwPCs3UnZudN84MmL5zNThDwWQVKG/NJS22viFN8qKqc9arB8NZS1zegiAgKTfe7QLbd
         a2awnQBruuAOVEVvE3SkDioCnTfZdfbKaqQ2QuNUdC15KoxSXTYH9AL0WqrIv0q6LLkP
         fdluaL1cQxRwvYvvnxsLPU+CQjzdLcMshRtH6y0OstcDZEZKcGaMtTp642dhrxPSEF+Q
         Mdmg==
X-Gm-Message-State: AOAM531j7vNNoehjHX7X0JY6SQssqF1GDVWgufMSmBHd9YzTpa196l3I
	cdFgwhX7d3LVb16FdWfkQn2TGi3fVKwz7cvsGgM1SGf8kV8=
X-Google-Smtp-Source: ABdhPJzaiJ6UxZgEYXa3Zvf/Ki9ftbTmXk/hwJUj7PO1Y7FZyYjzm2hzwymas45gCKIiXbJ0sPpVLCL3PE3oof59nqo=
X-Received: by 2002:a17:906:fb8e:: with SMTP id lr14mr1780502ejb.357.1620267177182;
 Wed, 05 May 2021 19:12:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAB=6tBTGiMBH+g-uy3sr1jKA-j1EkSDt0B+8DLb4_iMSaMax6Q@mail.gmail.com>
In-Reply-To: <CAB=6tBTGiMBH+g-uy3sr1jKA-j1EkSDt0B+8DLb4_iMSaMax6Q@mail.gmail.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Wed, 5 May 2021 22:12:46 -0400
Message-ID: <CADkTA4O47xoqwq5Jxj4b-r1RfyXCt2mMWPvGKOP8mwqWF4LZkg@mail.gmail.com>
Subject: Re: [yocto] Recipe Grep'ing
To: Chuck Wolber <chuckwolber@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, May 5, 2021 at 8:42 PM Chuck Wolber <chuckwolber@gmail.com> wrote:
>
> I was pondering putting some work in to a fairly large patch set aimed at making recipes easier to grep through, and wanted to get some feedback before I put time and effort into it.
>
> I have often found that the following pattern cleanly describes the "what" and the "why" when grep'ing through recipes to search for things:
>
> FOO += "item1"
> FOO += "item2"
>
> Whereas this pattern gives us the "what", but not the "why":
>
> FOO = "item1 \
>              item2 \
>             "
>
> After discussing this with Richard Purdie on IRC, I also understand that the latter pattern benefits some forms of build output. In addition, for SRC_URI, the "why" is normally fairly obvious from context clues.

The other issue with large formatting patches, is that they make a
history "wall".  So when we are debugging and trying to figure why a
change was made, you always have to jump over the wall (or dig under
it) to get the real information.

As such, I'm not a fan of changes like this, unless they are coupled
to some sort of functional change. So I'd be hesitant to take them
into recipes that I end up holding the bag when things break.

Cheers,

Bruce

>
> So, is there any interest in accepting a patch set of that nature for Yocto and OE repositories? If so, what variables and situations should be considered "off limits" to a change like that?
>
> ..Ch:W..
>
>
> --
> "Perfection must be reached by degrees; she requires the slow hand of time." - Voltaire
>
> 
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
