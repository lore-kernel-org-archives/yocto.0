Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web11.8264.1614922387742589100
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Mar 2021 21:33:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lr6xKpyq;
 spf=pass (domain: gmail.com, ip: 209.85.160.173, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id s15so922802qtq.0
        for <yocto@lists.yoctoproject.org>; Thu, 04 Mar 2021 21:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=GHlOjgGfYYcoIBkEB8finVROW5Py1TfI2Ae1TNuZogc=;
        b=lr6xKpyq2m8rhC3Iy+bIlUEolMaxq2q7HUOskkBMsmhCBKtl1AsEllqHa2tv0qGi4R
         v61vMa/jmwhJXlkgZcQh4b4lKR9olUaABWg9K1mOWkc+hhjMK42C8g5YSnLtwZBUvTPT
         emHbtyGt9d7ZgUxGihnB/NlSEa0k7pDtE1sBQ2TIznI7foI0REwtq1F2zWJu2Vglp29d
         ZvDVMXOFwjK6Ou3AyKjDKyYGAcjHYkj1w9B1mqQ7ZRg3xN6N7PhA3H0bzR8QzaN0nv0h
         RT4iFOQsPTjS7jBxeQfmEEBbUFaSpVPJyDjNbYv+NmdwRA0kwROh48NvxOpUxtzKsKer
         PaEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=GHlOjgGfYYcoIBkEB8finVROW5Py1TfI2Ae1TNuZogc=;
        b=rjQjaDl9R5Wryjj2x7k9YddSc6LLsuXJf9UrNIJ3thqM7XW0IuFyDdlM6OJK7tnRd9
         EzGT3Jz9UOTTEaZCPnyK3DTdzfYlXzs7+g3o3VFMqO5JItMwvaJwYG97oNmXSxu/2MhB
         0jKOPnhIciQ37NIKOu31j4hXs9TfvVOtZJVm1dqrRpPA7/s6UrcRs39himlOpX1TUfiN
         wE5Hb2SThtyaB5bPB89foV9r16y/7JAWUZTl4oxiKX3dxHvn/N6u7/93YmQYBr1aqHe5
         gy2reIVbjtUMGHLsy/AB8NRc5j7lHUDE4O+bhZzljaxU+zBuQu9cO9wrZ9Oxijk6Sz4Z
         NKAQ==
X-Gm-Message-State: AOAM533HsXlZPpc8H+XfaInZu5bijDLjS6xjcFjYwQNmHAZmxQRdXUmK
	U9qw1l24pY1yPZs6w3yF6W3B1se8JzU=
X-Google-Smtp-Source: ABdhPJy6FjWuYUPLd9VXLNwTm7JaG6Gt1f/6FxkRTQ6UsHPJuPA3P8xGVpxa9LjBrrjZ7AMWfbj3lQ==
X-Received: by 2002:ac8:7089:: with SMTP id y9mr4872902qto.264.1614922386187;
        Thu, 04 Mar 2021 21:33:06 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id z188sm1114093qke.85.2021.03.04.21.33.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Mar 2021 21:33:05 -0800 (PST)
Date: Fri, 5 Mar 2021 00:33:03 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes/Engineering Sync for Mar 2, 2021
Message-ID: <20210305053303.GA5505@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for Mar 2, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolly, Joshua Watt, Peter Kjellerstedt (saur),
Armin Kuster, Scott Murray, Richard Purdie, Michael Halstead, Steve
Sakoman, Paul Eggleton, Jan-Simon Möller, Saul Wold, Steve Sakoman,
Alejandro H, Bruce Ashfied, Tim Orling, Randy MacLeod, Jon Mason, Ross
Burton, Alexandre Belloni

== notes ==
- 3.2.2 and 3.1.6 released last week
- 3.3-m3 due to be built soon
- now in 3.3 feature freeze
- reproducibility improved, exclusion list significantly reduced
- various infrastructure issues (e.g. diffoscope)
- lots of old, stale patches

== general ==
RP: reproducibility: down to about 5 recipes (outside of Go) perf and ovmf
    are holdouts (ovmf has a hard-coded path in it), ruby and meson have
    intermittent issues (depending on build host). ruby is in ruby-docs. there
    are bugzilla entries for these. about 20 of the remaining issues in the
    exclusion list are related to Go. there are some sync issues
Ross: meaning?
RP: there are explicit “sync” calls in the test framework, but there are
    too many, and this adds enormous I/O load which can affect issues when the
    test itself does I/O work
JPEW: running diffoscope on all the output was really slow, if we can
    pre-check the directories and prune them out before, it can speed it up
Ross: i tried diffoscope a while back and gave up after 5 hours
JPEW: what version?
Ross: really old
JPEW: lots of improvements, lots and lots, so just pip install the latest and
    it should help
RP: found performance issues and upstream happily accepted them
JPEW: if there are 1000’s of files that are different it will just give up
    after a while
RP: i was able to get diffocope to give some good results before it gave up
    and that was helpful. sometimes it is able to complete, but then the
    resulting HTML is huge. it takes a _long_ time for my browser to load :-/
RP: the good news is the AB is producing output in a timely manner

RP: we’re in feature freeze for 3.3, lots of stuff in master-next that i
    don’t know what to do with
RP: rust isn’t in yet
Randy: still working on the bugs (a dnf issue)
Scott: if it doesn’t get in, does it block us on python3-cryptography?
Randy: yes
RP: i don’t feel like it’s ready yet. things have been rushed in in the
    past with not-so-great results, i think we’ll step back on this one and
    wait for it to be more stable, more tested. it should definitely get in
    for the next cycle but i’m leaning towards not doing it for this release
(various): agreement on waiting
Randy: there’s an issue with the SDK related to dynamic linking, and
    automating the rust compiler test cases

RP: are there any other things that need to go into 3.3? ross: debugd?
Ross: i think the debugd stuff is in master-next
RP: i think there’s some stuff related to docs that needs to be done but we
    can hold off on that and fix it up later
Scott: i think PaulB has some stuff he’s trying to get in (read-only hash
    equiv, read-only pr)
RP: i think i’ll wait for -m4 for that one. he started with really bad code,
    so i expect it’ll take a lot of work/testing before it’s ready
RP: i’m working on making do-install become an sstate task, but getting
    weird issues
RP: i did some testing on libuuid, but it blew up
PaulE: okay, i’ll poke Luka today to see what’s the status
RP: i think there’s a lurking sstate management issue, but haven’t proved
    or disproved yet
PaulE: we’re not absolutely desperate for it, we can wait a release, don’t
    want to cause pain
RP: sstate manifests not behaving, it’s supposed to get cleaned out, but
    if there’s an overlap it seems to complain. at that point things get
    cleaned up and the next build will succeed (which is probably worse)

PeterK: recipe parsing times seems to have increased significantly compared to
    gatesgarth and dunfell
Randy: numbers?
PeterK: with all our layers included in the build:
    45s dunfell
    48s gatesgarth
    1:38 master
RP: (looks at the AB at some metrics graphs (performance worker) to see if
    he can see the issue) hmm.. there is definitely a noticeable jump in the
    stats. hopefully easy to bisect (gives commit numbers between which the
    issue jumped).
Randy: how do we translate between the data on the X-axis?
RP: that’s commits in the poky repository

Randy: any plans for the next release?
RP: just want to get through this one first
RP: i think focusing on the I/O sync issue would be great. like to see that
    one sorted out

Bruce: just want to make sure that anyone doing Go stuff outside of the tree,
    make sure to do world builds because some fundamental things changed that
    you’ll need to fix. i think a lot of them are fetching things in the
    background
RP: Go is quite nasty in the sense that it wants to be built in a specific
    path and once that path is chosen that’s the place it has to be built
PeterK: i think there’s a way to set the build-id to 0 which is causing the
    issue
RP: side-effects?
PeterK: we’ll have to see. bug number?
RP: 14270
