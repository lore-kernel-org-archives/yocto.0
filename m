Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web10.13101.1613502617690279054
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 11:10:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=geoNlzPv;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id v206so10505064qkb.3
        for <yocto@lists.yoctoproject.org>; Tue, 16 Feb 2021 11:10:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=RlGBPFppz8dHeIUhbc2GVJmSs9JjVD6vX2Lzk/ee2wg=;
        b=geoNlzPvNg9H/Dq3kCVYeshusKbDuMykmo5W810duqUD80nMSxGR0hvp3UFxh+5HEe
         jiYxSKkBKvMF15ZdzyIDr2skJkyeMLajGTxwnyBCSSlhN5dW+TXwiKGOZk1WroISzFuT
         00VGw48z9J9LLRPRrU6/oxKixDTbQilRhOI1VwnsTPKU91iDYHvVkClQhCb82Kbl3JKH
         NQ08WgkHLfg/gAeDNN5FD87JA2nf6m6G34vwnggoCkzM0WHBtmWJTAy1fBSgjlZELKMW
         uPag0Wj00tNapco05tBE+7worwgILoLv2BwqTHjCbexk9GJPt4Lv59DlmhO2Y9xZcDv+
         dwVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=RlGBPFppz8dHeIUhbc2GVJmSs9JjVD6vX2Lzk/ee2wg=;
        b=SH0ouKJixy3PliUYaaOBfxB29DV2o5OMjwwUJvREv+vQ9wX+Dc+XWOaQJIXQ0IzriJ
         9D+KXOpmPtgzAj6KnZhWHgOhtUyCDtwhTdIxzJmTsvyp+XnrwHeNA1pdQ4Fm/R3aDbYp
         qD5Mv+4PBWB9ITYyAEn3C+UdaKu9s/AdPx84X6OSY5Am8LDYu2FS7jL4tLQwphyftMRr
         /O99zFd4zskrvNTPGEPVqk3WURGNPmwSIQ7c8X6kvIaCIGNryvuzcI6mb+iRufrm2/B5
         vyMU179BaDkWJD6BXxHmL8BLlO6iuJWPcGHWP3ZKUuZl0z4yXyXKVLM2S9dgjdzkt138
         9KnA==
X-Gm-Message-State: AOAM530RuyJvlz5SKjJ1DENAHW05kzTwpH2ABGJMi/zvrDiMJ/cFlLix
	DWZWvIwne5hszB9RP1DjU7jultFMHJiwoQ==
X-Google-Smtp-Source: ABdhPJzMn/yP6F2WImy7yIhiVbvCeTEuYOFVixnZvto8ZOHcmfWvHZURPI5yRzb7/m7CZlTS4cKQlw==
X-Received: by 2002:a37:e4c:: with SMTP id 73mr21322759qko.320.1613502616114;
        Tue, 16 Feb 2021 11:10:16 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id u126sm14669655qkc.107.2021.02.16.11.10.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Feb 2021 11:10:15 -0800 (PST)
Date: Tue, 16 Feb 2021 14:10:13 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for Feb 16 2021
Message-ID: <20210216191013.GA36798@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for Feb 16 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Trevor Woerner, Stephen Jolly, John Kaldas, Peter
Kjellerstedt, Jan-Simon Möller, Armin Kuster, Alexandre Belloni, Steve
Sakoman, Mark Morton, Randy MacLeod, Michael Halstead, Scott Murray, Joshua
Watt, Yi Fan Yu, Richard Purdie, Jon Mason, Bruce Ashfield, Tim Orling,
Paul Barker

== notes ==
- 3.2.2 started building
- glibc-2.33 caused build issues in containers
- YP has a reputation that it isn’t reproducible (?), we’re better than
  99% reproducible
- fixed a number of reproducibility issues in many recipes, still some remain
- automatic update helper ran, please fixup any issues before -m3 (start of
  March)
- added umask (helps with reproducibility)
- still have some autobuilder (AB) issues, please take a look

== general ==
RP: lots of churn due to unintative update and extended tarball issue

RP: the state of pseudo is worrying

RP: lots of low-hanging fruit wrt reproducibility issues
https://autobuilder.yocto.io/pub/repro-fail/2021-2-15-rp/rp/
I’ve removed some of the larger ones
Peter: what’s the status of RPM?
JPEW: there’s a fundamental problem with reproducibility wrt RPM
RP: we’re not going to focus on RPM yet
JPEW: you could use ptests and see what happens
RP: reproducibility was originally a project that was started with debs, so
    debs supports reproducibility the best (so far). there’s no good reason
    why RPMs can’t work, but we assume the non-reproducibility issues with
    RPMs has something to do with RPM, and not the build itself

Randy: high priority valgrind bug, traced to glibc upgrade, traced down to
    a select(2) call, could look at reverting a patch or two and see what
    happens
RP: we might need to take it upstream
Randy: we’ll verity whether or not we need to get upstream involved. do you
    want a patch to skip it, or wait
RP: if we had a patch we could move the bug from high priority to med or low

RP: the next high pri bug is ARM libevent. seems to happen more frequently on
    ARM for some reason
JonM: i’ll take a look after the call

Randy: rust: rebasing my patches, build running now, if it works i’ll send
    them to the list.
Randy: looked briefly at fetcher changes (from Andreas), will get to it later
    today or tomorrow (it’s not how the Rust community is doing it, so
    we’ll have to see if that’s okay)

RP: 1804 builder 3 has an issue (missing git user email)
MichaelH: oops, i missed that on IRC. i’ll take a look
RP: there’s a missing git module, wondering why the bring-up didn’t
    notice/install it

Steve: kernel CVEs
Steve: on the weekly CVS reports we whitelist linux-yocto (Bruce applies
    them but they’re not upstream so it gets missed) i disabled that
    whitelisting and found over 60 CVEs just in Dunfell. do we want to
    continue whitelisting them?
Armin: typically kernel CVEs say “every possible version” they almost
    never lock the version down, so i doubt it’s actually 60. creates a lot
    of work because the list isn’t precise and many could be non-issues for
    a specific kernel version. Bruce does keep up-to-date, so he brings in a
    lot of the fixes (from upstream)
Bruce: i agree with Armin
Bruce: if we bring the fixes into our repositories too early, and then
    they’re applied upstream, it causes even more work, so ideally it would
    be preferable to wait until they hit upstream and pull them in that way
RP: i like the feedback we’re getting from the automated CVE messages going
    to the mailing list, but we’re not sure, as a public project, whether we
    should continue whitelisting the kernel-specific ones
AlexB: there’s an overflow issue with some of the older kernels (sub-version
    number going above 255)
Scott: so things like uname might report “wrong” info
Bruce: i don’t have major concerns, as a project the best we can do is
    keeping in sync with upstream (and let the vendor trees do their own
    thing)
RP: we have ~50 reported against master. i think it would be great wrt how
    we’re seen externally to keep up to date with these things
SteveS: as a first step we should probably turn on the visibility
RP: it might be depressing to see the count suddenly jump so high as we turn
    this on
ScottM: maybe report, but keep separate?
RP: maybe SteveS could look at the tooling to see if we could list them
    separately
JonM: maybe report a little this month, some more next, and then more; add
    them gradually?
RP: in any case i think we need to get this list out there; preferably in a
    way that doesn’t tarnish our reputation
SteveS: I can do a one-off to the mailing list and we can talk about it there

Stephen: 3.1.6 should be built next week, do you think dunfell will be ready
    for a build next week?
SteveS: I’d prefer to wait a week or so, i think more pseudo stuff will be
    trickling in
RP: 1st of March is feature freeze for m3, so we either try to slot dunfell in
    now, or after
SteveS: thoughts on pseudo?
RP: older glibcs are in a reasonable state, the problems we’re seeing are
    with 2.33 and uninative. so as long as we stay away from glibc-2.33 i
    think we’ll be fine
SteveS: the other issue are the python3 changes that are rippling through
    meta-oe
RP: hopefully we’ll get through their review. my feeling is that we’ll end
    up merging those, so we should be able to try the build early next week
SteveS: if they pass Armin’s testing, they could be merged in
RP: let’s aim for next week

RP: there are quite a few reproducibility issues on master now, but they seem
    “safe”
SteveS: i’d like to wait on those, and do them after a next build
RP: i’ve traced things down and feel better about a number of them, so i
    think they’re okay
SteveS: okay, we’ll aim for next week

TimO: a cryptography module for python now needs rust to build
TimO: i’ve been playing with qemu images under libvirt, it doesn’t come
    up, but i think it can be solved with the qemu manager. would it be okay
    to add the agent into core, or be a bbappend in meta-virt
RP: dependencies?
TimO: not much
RP: sounds good for core
Saul: point me at it
TimO: it’s in poky-contrib, i’ll point you at it when i'm done

Saul: LTS 2022/2024 are we still targeting “every 2 years” as stated on the
    wiki?
RP: it’s a decision to be made by the YP member companies. the TSC will
    flag this at the next members meeting: 1) when to start next LTS 2) what
    happens to the current LTS at that point? funding will influence those
    decisions. no answer yet
Saul: it’s a ways off, but some would like to be able to plan

TimO: are we still doing a devday?
TrevorW: i’d like to plan something
RP: thanks. i’d like to see something. i’m worried about the hole we have
    in advocacy. the advocacy mailing list is a good place to have that talk.
    make sure to loop in people like Nico, AWaffa, DReyna,
RP: i could find the right people at LF if we need to setup a registration
    (payment)
TimO: i really miss those round-table OED{E|A}Ms that we used to have
TrevorW: it’d be great to have a round-table on a Sato replacement
TimO: also a gui tester (dogtail?)
TrevorW: the big thing will be advertising
RP: LF and Nico can help with that

TimO: when the next OEHH?
TrevorW: next wednesday, feb 24th
