Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web10.33145.1620659683870197136
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 May 2021 08:14:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BbKHoSUP;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id o6-20020a05600c4fc6b029015ec06d5269so2721250wmq.0
        for <yocto@lists.yoctoproject.org>; Mon, 10 May 2021 08:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=ar84iE4nhz5bTudKBORjc8OPFbIFdhO+hmQXKRIOX0k=;
        b=BbKHoSUPraLmNTuGb95uTGOpmG4y9XsTFtQGHjqxZO4lMuib9CXUzLOypNBVR3UbuR
         4X8yIsNh3ZysD1vHRcSynY7rISjszqFzxfRc7T0rjruojFhf5hqV932qEm8o4cOj4b+H
         EwkJRtDYEJ9v+QEiptvxE0zPCGU620gEBpkvc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=ar84iE4nhz5bTudKBORjc8OPFbIFdhO+hmQXKRIOX0k=;
        b=MPt5zDdu+T3CfjkG4CCH1/4kUeiHyrA+1lveit7Xi3MTivwpmAsGijsd6VVsbSRIEz
         9jlIXVOhSrpfeWq90JEqTBaRVxvHC6wbeJtYIo4PBiwNGyW0amtk0b9h32aPFR62AG5X
         0PR73hLrGi4XejNAnXOH4KMRLc6UYA5Ci9oqdnE2ZJ1IXin2AdHdcgvkZNevKpRmy8Ps
         4gVq8tv+wt7L+/iJpbtxR34tqvXNkkhWWDprsToEvlbm+dcDM9SRmEVcLzb8iMKuKNOc
         dZY4yRJPxccxW4HcjVwCMSbgefg7hskb2FOCVuvx+eYaKP3qSJt9oZIVveJvEUwYMBMX
         K9cw==
X-Gm-Message-State: AOAM532XwjeO9267/VnrdBpbzTPjGJzsURjqG6EDZEKbMK/Dql8aSiOb
	A9LHc3qCri5Fdpl4YVJyPm65MtWnZqR2Nw==
X-Google-Smtp-Source: ABdhPJwHH1mbEhgCa9+9YaaJ2B0CXCXw0JxvDAEP5wgPqg6moY5MMLx3hgXOKpFQbp+WxO/SXXLUaA==
X-Received: by 2002:a05:600c:4f48:: with SMTP id m8mr30147830wmq.169.1620659682205;
        Mon, 10 May 2021 08:14:42 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:67a1:e913:59c9:6aa6? ([2001:8b0:aba:5f3c:67a1:e913:59c9:6aa6])
        by smtp.gmail.com with ESMTPSA id j13sm23369407wrw.93.2021.05.10.08.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 08:14:41 -0700 (PDT)
Message-ID: <4be3a7006f265957fadf8f5118acb756691c2f81.camel@linuxfoundation.org>
Subject: Open Source Maintainers - An open letter/request
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: openembedded-architecture
 <openembedded-architecture@lists.openembedded.org>, openembedded-core
 <openembedded-core@lists.openembedded.org>,
 "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Date: Mon, 10 May 2021 16:14:40 +0100
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

TLDR: The project is seen as mature, employers don't prioritise maintaining
things and we're struggling for maintainers and help with day to day work


Open source projects survive, not just through development work and 
contributions of new features but through a whole load of "unglamorous" 
day to day "admin" work. This may be tracking down a regression, 
triaging failing builds, making a release of a component, reviewing a 
patch, documenting something or many other activities.

I love the fact we have active contributions, particularly for new features
but we are continuing to struggle in many of the other areas above. I am
extrememly grateful for the help we do receive with these tasks!

As a project we have automated an absolute ton of things, we can test
changes in ways we could only dream of a few years ago but maintaining
this automation, tracking down regressions and ensuring it all stays working
does have a cost.

I am worried, not just about the core of the project, but the wider layer
ecosystem since "layer maintainer" isn't seen as a particularly interesting
career enabling focus by employers and it seems a lot of this work isn't being 
recognised. Internal business pressures are often continually being
prioritised over this.

The YP+OE ecosystem is becoming more mature and this means we have our 
experienced developers being pulled away to new things and few people
are replacing them so it feels like we're seeing a gradual skills drain/fade.

There are a few things companies can do to help:

a) Publicly acknowledge you use the project. 

I'm often asked where the project is being used but I find it hard to point
at companies using it, or products developed with it. It does help to be able
to point at real users rather than theoretical scenarios. We *know* it is used
in some interesting places but many won't let us say that publicly.

https://wiki.yoctoproject.org/wiki/Project_Users

b) Embrace employee's Open Source contributions, code and otherwise

If companies can find ways to recognise the value of having open source
experts/leaders working for them from a career development and reward 
perspective, that would encourage people to do the important work needed

c) Consider Yocto Project membership

https://www.yoctoproject.org/ecosystem/members/
https://www.yoctoproject.org/join/

We're finding that some infrastructure and roles need to be centrally funded
as the work is important but no one company is willing to commit people to it.
We're only able to to this through project membership which supports things
like the autobuilder, LTS, our build triage process and my own role.

d) Support employees in spending some time on open source projects

I hear quite often that employees get XX% time to spend on open source
projects. I also hear they get pulled onto mission critical product 
deliverables and can't prioritise that other project work. Finding ways
to ensure employees can spend time on open source projects including 
management support would help a lot.

e) Transition roles

If someone has a key role in a project but is moving to new things, help
them find a replacement and allow them time to train/transition to that
new person. Some companies do this really well, I'd call out NI and opkg
maintainership as a particularly good exmaple.



I appreciate these are difficult times, both for individuals and for 
businesses. I'd like to conclude by thanking everyone who does participate
and contribute. Whilst I do want/need to highlight the above (and have been
asked to do so that people have something they can point people at), the 
project is proving to be successful, going to interesting places and making
things possible we can all be proud of!

Cheers,

Richard





