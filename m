Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web10.84.1600184864341259849
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Sep 2020 08:47:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=g0z9xZF4;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id n133so4651923qkn.11
        for <yocto@lists.yoctoproject.org>; Tue, 15 Sep 2020 08:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=sc0G0k6h6VKyEdDGurM/N0+nbvsVjPm3we3Wu9OSdGM=;
        b=g0z9xZF4cdRlJ6xx/lINEScC2pRmuwuEXh+Y7vkiSBsPlG9XqIn9CH0JDjqV7YeBAP
         1M01F4q97SkP7/6am9Ge+XwMZUfpCMl4YqHj4SDWWFOSyDqGDCAGsSz4XPunhRqs3Dqs
         BtvU9vnK/65LNYdUDWsOyIV6vQjweC9mD40iQux4tiSl1KDUKyRWm769jvCZjR5Mnoa4
         XY0df/d8MduwzTglE4lxebnABVfMxWNNoxpTIkM70jgShvrFKHtahHq69c4fAmW253I0
         FNhS9eL4+n1WGh9C7c8rWHtG3t8OeUoA+TIZbLe2UQKQkFDMavHqkbLOdCWvbKr74KAQ
         GO1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=sc0G0k6h6VKyEdDGurM/N0+nbvsVjPm3we3Wu9OSdGM=;
        b=ZFnNEyWtIc8/M1w5DVIi17X4qA+bspbhdPzFcyGb0O0Bt8CUblndPDHLuLoZF3uY8t
         r3Lplvf7tuxE0b5p38oifeqrey/CPhNT7yXerJ9FhjWuwXtXnajDinsBxPYEztPoB5pM
         CNXzXG5QvsinhUHuyWBItmUk3lO75MkFxQgBj5QwOQeEKGOjozUYJnGhaVRM2y0t17eu
         7RriAaO9Dwx6DOXqiES9tVPKE4U7YrtzwIxjTgoCqBF+Qqslev8QDiPIYbNXROVY9aT5
         XpXYVOW4YiXCYkkTcEWns5bem7fCC5++1Z3iCG7gfiY7RgQeatjdL3lo7++a0MlmsEzs
         MCRw==
X-Gm-Message-State: AOAM530jk+U7noPQuqvlPSjJi0XAuzYgLLLBSUSeBqUKz4Ayml7EjqAb
	Kgu7k3dWF4hUCzylYlf8rGT/zRhlUro=
X-Google-Smtp-Source: ABdhPJw+kRBPhtbAW/qEh0MW+BBI6nqb2nM+KPcKKI5hCS+nU7mahuHNhtqBTMCLheKM7d6lhU5zZg==
X-Received: by 2002:a37:a548:: with SMTP id o69mr18968554qke.113.1600184862343;
        Tue, 15 Sep 2020 08:47:42 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id m97sm3597788qte.55.2020.09.15.08.47.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 08:47:41 -0700 (PDT)
Date: Tue, 15 Sep 2020 11:47:39 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for September 15, 2020
Message-ID: <20200915154739.GA19543@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for September 15, 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, David Reyna, Saul Wold, Richard Purdie, Tim Orling,
Randy MacLeod, Joshua Watt, Jan-Simon Möller, Michael Halstead, Paul
Barker, Mark Morton, Steve Sakoman, Bruce Ashfield, Trevor Gamblin, Mark
Asselstine, Stacy Gaikovaia

== notes ==
- closed m3, hasn’t built yet (in freeze) waiting for docs
- good progress on the docs, past point-of-no-return
- there appear to be 3 AB issues:
    - qemu-mips issue
        - limited to 256MB of memory, systemd needs more
        - Armin tried raising it, but caused other issues (will revert)
    - weird networking dropout issue when qemu testing
        - was it caused by something in the image?
        - or caused by qemu, kernel, etc?
        - need to detect this issue and report on if anything else is dead
        - seen on x86, arm and mips
        - intermittent
    - occasional bitbake timeout
        - bitbake says it can’t connect to the server
        - due to sync thread in bitbake, 90 second+ disk stalls (apparently)
          while writing logs, there’s a 60[s] timeout limit
        - devtool doesn’t do re-nice’ing, might be related
- parsing issue seems to be solved (thanks for help from jpew)

== general ==

Randy: bitbake timeout is to add nice to devtool or to not block?
RP: thread is there to allow cache to be written out while allowing bitbake
    to do other things, we could just increase timeout on UI, or have bitbake
    write the cache directly
JPEW: it’s during client shutdown?
RP: yes, when a given client is done using bitbake, the sync should already be
    happening at that time, we need to make sure the sync is done, if not it
    will wait on sync completion
RP: it’s a high bug for m3, but will probably push to m4, won’t hold up m3

RP: lots of unassigned bugs in 3.2 if anyone has time

Randy: you listed off a bunch of AB issues, have we seen any improvements
RP: yes, there have been cleanups in various areas that help expose these
    issues
Randy: is it an issue of overloading?
RP: i think this is a consequence of heavy automated testing. sure we could
    half the number of workers or increase timeouts. or maybe we have bitbake
    act differently on the AB than the way it would normally. we could
    implement some pinging infrastructure so the UI can know that bitbake
    hasn’t died
Timo: is this an NFS issue, or just a general I/O issue
RP: don’t have enough data to say, but feels like an I/O issue
Timo: how will devtool do io-nice?
RP: tinfoil execution
RP: appears to happen when bitbake is extracting kernel source, devtool is
    probably using external source, so we’ll probably need to wrap the
    extraction of the source code with io-nice

JPEW: i’m still working on multiprocessing things (still multiprocessing,
    but not using the python multiprocessing module), maybe not for m4, but do
    we still want to keep looking at?
RP: i’d like to look at the code before deciding
JPEW: i’ll clean it up some more

Randy: rust, people looking to get it into 3.3, i need to push the patches
    somewhere, would be happy to have help.
RP: i think AlexK is interested. keep him in the loop (he has a great track
    record with gnarly problems)

PaulB: doing research for my talk next week at Linaro Connect for license
    compliance. wrt rust, whether it can use build offline etc. will be
    looking at dunfell and master and try to find answers in the next week or
    so
Randy: sounds good, there’s currently no major differences between what
    i’m working on and what’s in meta-rust
PaulB: we need to be able to generate source tarballs, handle being behind
    corporate firewalls, offline builds. i want to investigate this wrt rust,
    golang, and nodejs
RP: it’d be great if this were done as a set of automated tests that could
    be added to the project
PaulB: don’t know that all the test code is available, some of the builds
    would be big, but can look into it

PaulB: also want to mention outreachy that Paul has worked on and mention it
    in my talk

RP: wrt people interested in rust. maybe try Yann or Leon

David: call for papers for YP Summit is open
Randy: 6 days until deadline?
David: yes
Randy: next Monday
Timo: Christopher Clarke and I will be doing virtualization (rehashed and
    expanded)

Randy: i’d like to introduce Stacy, working at WR as a co-op for this term
RP: and there’s already a patch in
Stacy: and hopefully another and another!
(various): welcome! ☺
