Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3345.1620801907564012425
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 23:45:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=q95d/B/m;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: chuckwolber@gmail.com)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 18D7338C06F7
	for <yocto@yoctoproject.org>; Wed, 12 May 2021 06:45:06 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id s20so12005814plr.13
        for <yocto@yoctoproject.org>; Tue, 11 May 2021 23:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=I43HF6g1I81UlxgBiKLIGg9051LLNgIM2a45CBu/RxM=;
        b=q95d/B/mDsSk2qV7/fTu3wGLv1V+SicyLGuYNlK2sxsEcvlNx97Mfk5KXWdu2/kJim
         itJxlk5ITnwfHw7sNzQeC/pfvCWfnlIr/V3VW1Vl1bH+QQVt3pe3TnzUpK0XA9ayarq6
         L8s/hqsohHdsVQQIX4IFcmsCeRqpqn+CsMDsD4F2yxanFZBuKlFYackPwKsShc0lEFea
         eyHi0DhLKTVf0UEUsW1ohU6SANW+/OeVtfuNdj6B5eZJg3Lyg42CmplNuxsc/Hj7l0gQ
         bQ0S62+5l2HaMp6Es06ktJ9xKM2fK/QcVBlYKKlg7QFhO/iWvX4NrPyRVGFAJ2SSCJ8F
         ja1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=I43HF6g1I81UlxgBiKLIGg9051LLNgIM2a45CBu/RxM=;
        b=nHGTjQGyVc0bGIzuJL4HJsHPlXDSUb5z8UXpfkpupWSYLqzXifjMcjWuIESnZOgVAp
         zKcZ3UEBTWVm38fb5imoB+5iacb7vxr1mnR1pnLNEyBWDfj4sFrinmGgq1IvzIkG09lO
         u6v3FQSii9/mKJ6wHmzB1A7GxBoXiboI/ZfwbRSPdH/l4CqGhzZRMbZsotXFfFDWGOmd
         FAV0/13gKS54jc4mfzxY2dFJv84yuri9wWd9aM3eezX1WkUiz0cvAMZahpzt0kOMBvvC
         jQQR9zfr8fr/dS1KgMOsK0gG70HOKB9MDpPU3zXnzszBotwkmmQSe2B0/gqzL/557IIH
         uH7w==
X-Gm-Message-State: AOAM5326s/dXFPOzFVaa7OUeWOVWLZ4uxitrA//JCvq8pKjOtr4nRROh
	WnpPkBVnNkSuFbsUh0fYoWfv5ewplRwE7w5wZVM=
X-Google-Smtp-Source: ABdhPJznHG2H5js6d8zaySFvA9qJ8OUodYuKmC/2tNqJTObqOKXenHPOfbbWJRpOEXdIdCT2I3LwH6hMoHXvLS7P80s=
X-Received: by 2002:a17:902:b082:b029:ed:93dc:e6f9 with SMTP id
 p2-20020a170902b082b02900ed93dce6f9mr33163468plr.16.1620801905233; Tue, 11
 May 2021 23:45:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAB=6tBTGiMBH+g-uy3sr1jKA-j1EkSDt0B+8DLb4_iMSaMax6Q@mail.gmail.com>
 <55052749-a440-214d-84b7-4b3e5923ee72@gmail.com> <e49949bfa2083a76e9c0c977e0b64828362e8446.camel@redrectangle.org>
In-Reply-To: <e49949bfa2083a76e9c0c977e0b64828362e8446.camel@redrectangle.org>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Tue, 11 May 2021 23:44:53 -0700
Message-ID: <CAB=6tBQzX67fcZ1SJnL-81nBWNoxKk7NfwNC7gHgSqy4TrJOkQ@mail.gmail.com>
Subject: Re: [yocto] Recipe Grep'ing
To: Robert Joslyn <robert.joslyn@redrectangle.org>
Cc: Khem Raj <raj.khem@gmail.com>, Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Sat, May 8, 2021 at 6:25 PM Robert Joslyn
<robert.joslyn@redrectangle.org> wrote:

> There is the oe-stylize.py script that attempts to format recipes
> according to the style guide:
> https://git.openembedded.org/meta-openembedded/tree/contrib/oe-stylize.py
>
> Last time I played with it, I was a bit disappointed with some of the
> changes it makes, some of which are different than what devtool does.
> When I need to introduce new developers to bitbake, I'd love to be able
> to hand them oe-stylize or something similar and just tell them to run
> it before committing to make sure everything is formatted consistently.
>
> I've had updating oe-stylize.py on my TODO list for a while, but more
> important things always come up.

Given what I have seen so far, I am wondering if that is the right
place to start.

To summarize:

There appears to be general agreement that the idea is a good one, but a large
patch wall is considered rather objectionable by at least Bruce Ashfield.

Khem Raj brought up a good point that a big change like the one I am proposing
needs some sort of tooling to make sure we do not regress.

And the above reply from Robert Joslyn has me wondering if there is already
something in place to do the linting Khem Raj is referring to, or if
oe-stylize.py
would form the basis for such a tool if we added it to an automated system.

So taking a step back, does it make sense to update the guidance on the
styleguide (https://www.openembedded.org/wiki/Styleguide) page first?

If so, I would be happy to make the updates. I requested an account,
but I got an
error - "Error sending mail: Unknown error in PHP's mail() function."

..Ch:W..

-- 
"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire
