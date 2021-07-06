Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web08.8358.1625587270790073702
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Jul 2021 09:01:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bTMowNEN;
 spf=pass (domain: gmail.com, ip: 209.85.160.182, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f182.google.com with SMTP id h11so11825254qtp.5
        for <yocto@lists.yoctoproject.org>; Tue, 06 Jul 2021 09:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=Ol0K3Pg2MUxXC/XEylg5wrRMde2mqhj7nNO/OXH6UGM=;
        b=bTMowNEN/+Inz1HIQ5hFpqMaUwlFfuHlKW7P6RSzDjy9nWtcZI1A/WLIaCgDIajAz8
         uGRkfnt+6rEycvTjAgxaFzMObPzQUzN77WA/1BU1cpu5xkk33QlIW6P4fpNlvmE2/aCG
         6L4mSHQ7C7+ziIaUMRa5iBvryrVwlmzYAixuZyy304sVb+KGAdZQIHc3nanw6Lmi4uwH
         34+xNk3bKwuFSywLXpVoX7vUCRqDGXXlSC3sGp0d2d3b7iPPjwGfTF6Wo930PSFaiayN
         xq/OjwZKHnDgyRW32MdMM1DCdZfBLzxesNe107q8RRbdEL2kqYDk3fGIB9EN6NsR7EX3
         QX2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=Ol0K3Pg2MUxXC/XEylg5wrRMde2mqhj7nNO/OXH6UGM=;
        b=P/uH4n2zlx7xO+FHl8VY29zWj4NgJ8Kss3hCROaTk57trfBb5hEDyOA/yFuRatV076
         Kkv6OYTE7IN4A4/ls1jFpYWXEA5YKEACR8AjDzXm0BgIHM4C86pJjni8aZFUU+0V76fi
         ApUd68cObfcjgFS8A7qySH2sDdzd7b/J37tOIC33Ox90BlRODJn2ERWr9H6/JtHduNty
         F7ikje3Ew6bgcvgfCjJInpXc7vwNnVBduZUMuPbZE6LYyqKEYF3ZVLLyDMhSYl98lUi4
         nOfNMvw3EZJwf1pnip57Gsdu9cuvbOo/0I8LGZshR5WzgU0xdC5mLKBFN6nywRTJXXp/
         PY3w==
X-Gm-Message-State: AOAM530J7x4MPjFjxxPux5NKV5p1f17ppmWmfzcbaA0OiuY9RLCA+82D
	Z1lxjuxtoFPz+38F/8BXcnWwRKFvFHkblg==
X-Google-Smtp-Source: ABdhPJxrQDZUCkHKcghXLd+wrJRZXBThKTLyDd45IkhJ2dIcHkfVACgx84KaIoJIYCgqzpNYzP4hhg==
X-Received: by 2002:ac8:4888:: with SMTP id i8mr17331055qtq.166.1625587269436;
        Tue, 06 Jul 2021 09:01:09 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id s8sm5568689qtw.10.2021.07.06.09.01.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jul 2021 09:01:08 -0700 (PDT)
Date: Tue, 6 Jul 2021 12:01:06 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for July 6, 2021
Message-ID: <20210706160106.GA17144@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for July 6, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Armin Kuster, Tony Tascioglu, Trevor
Gamblin, Steve Sakoman, Joshua Watt, Jan-Simon Möller, Richard Purdie,
Ross Burton, Scott Murray, Michael Halstead, Philip Ballister, Alexandre
Belloni, Bruce Ashfield, Stephane Desneux, Saul Wold, Tim Orling

== notes ==
- 3.1.9 (dunfell) released
- prserv rewrite pending on issues with python asyncio
- Bootin has been taking over patch testing/queuing work
- AB-INT issues: 50% of open issues are in ptest
- rootfs license race issue is now reproducible (14123)
- multiconfig changes still causing issues and need simpler test cases

== general ==
RP: there are a couple patches on the list to solve a couple more issues. e.g.
    a license issue from dunfell. ptest bugs are making up a larger fraction
    of the open bugs


SJolly: Ross is now the top bug owner (displacing RP)
Ross: w00T!
RP: i’ve been making an effort to not pick up bugs by default, which means
    more and more bugs are being left unassigned. so please look through and
    take some on


AlexB: with ptest we’re seeing a couple issues that fall into a couple
    categories (ssh disconnect, bitbake server timeout, ...)
RP: the bitbake timeout appears after a git timeout. with ssh timeouts are you
    still seeing them after fixing <other issue>
AlexB: yes
RP: that’s more worrying. we should create bug reports and we need kernel
    logs. my guess is ssh timeouts indicate something has crashed in the
    (qemu) kernel.
AlexB: yes, it happens after a 4 minute timeout, which seems suspicious
RP: we need to save off the logs/env to correlate. it’s hard to debug
    afterwards once the build directory goes away. for example: ltt-ng tools
    shows a subprocess exit code of -7, but it’s not capturing the fact
    it’s signal 7 (sigbus) and not a return value from exit code (bash adds
    128 to a subprocess exit value)
Ross: if it’s minus then it’s a signal


Armin: signoffs: people have started signing off on commits, shouldn’t we
    be using a “reviewed-by” or “tested-by” instead? should we add a
    “tested-by-AB” tag (like the kernel is doing)
AlexB: i’m just taking the patches and throwing them at the AB. i could add
    tested-by
Armin: technically, everything RP takes is tested by the AB. when you look at
    other projects, these tags give more “ooph” to the commit (funding,
    shows there is a process in place, ...)
RP: i think tested-by is strong wording, just because something goes through
    AB doesn’t guarantee “working” or that it doesn’t break something.
    also multiple versions of patches causes issues too: if v1 is tested,
    then there’s a v2 that get’s accepted, do we have to test again? what
    if someone adds a “tested-by” tag later, do we have to go back to
    inject these tags into the workflow? adding these tags might overload our
    processes. not keen to take on the extra work implied by these tags
AlexB: it doesn’t have to be difficult to do. it would mostly have to be
    automated (to add tags)
TimO: the patchwork we have is a fork of the freedesktop one from a long time
    ago. we don’t have anyone dedicated to updating it. it would be nice to
    get patchwork updated. i see value in having these extra tags, but i can
    see what RP is saying (that our existing infrastructure might not be up to
    the task)
RP: wrt tested-by, it’s too vague, what exactly was tested? arm? arm64?
    mips? … i’m not sure a tested-by tag is useful. at a minimum it would
    have to be clear what was tested
TimO: i’ve seen cases where i test one thing, but it fails on some platform
    i wasn’t considering
RP: ideally it would be better to just simply state in the commit message what
    was tested
SS: i agree. since everything goes through the AB, i don’t think that these
    tags add value. i prefer a commit message
RP: i think Armin’s point was to add pr value and i see that point but i’m
    not sure
TimO: what’s the status of patchtest?
RP: MichaelH? what’s the status of a new instance of patchwork?
MichaelH: i think we got a few steps in but it was abandoned. it’s nowhere
    at all at this point. it would have to be restarted. there’s someone
    here at LF that’s interested in setting up a lore instance
RP: i think we were going to look at lore anyway, but isn’t that tangential
    to patchwork?
MichaelH: Konstantin was going to set that up here and it has a bunch of tools
    that can help
TimO: the lore thing can adds our ability to use the b4 tool
RP: okay Michael, it sounds like this is in your queue for the next while
TimO: i’m very interested Michael, if you need a tester ping me
RP: if someone could get something working that would allow me to work on the
    cmdline locally and doing the tests that would get run on AB that would be
    great


Armin: any news on rust?
RP: i believe Randy’s working on it, but he’s not on this call


Bruce: we have a 5.13 -dev upstream bbclass. simply set PREFERRED_VERSION
    to 5.13% for a bit-for-bit upstream kernel with linux-yocto. there are
    comments about multilib, but the kernel doesn’t do multilib, so is there
    anything else i should be testing before sending this up
RP: -dev upstream breaks for native and multilib, but the kernel doesn’t use
    multilib so i think you’re fine. i think Ross looked into it a bit
Bruce: okay, i don’t think there’s anything else to test
RP: what about a -bare 
Bruce: i was working on a new kernel type called upstream but then noticed i
    was duplicating -dev so i used that and it worked fine. 10 years ago i had
    wanted -tiny, -rt, and -dev all in one recipe, but we broke it out into
    multiple recipes instead
RP: if you have multiple kernel versions then users can see actual recipes
    for each kernel version for each flavour. it makes it clearer to users
    what’s available
Bruce: i don’t want to add to the test matrix. but we could just have a new
    test for this “mode” (which is really just a different KBRANCH)
RP: we could tweak the AB to add a couple tests for this case. it’d be nice
    to have more of this in the manual.
Bruce: i want to move more of the metadata around (e.g. in .inc files), so
    this recipe would end up being really tiny (just a different source rev
    and branch, and everything else stays the same)
RP: didn’t someone start writing something for the manual?
JPEW: i had started writing something, but then realized it was bigger than i
    was expecting so i set it aside
RP: please make it available so we can take a look at it
Bruce: 5.13 has been too easy so far, so maybe we get more of this sort of
    stuff in
RP: maybe you can take a look at the (non-reproducible) perf kernel header
    issue (there was a case where 5.10 headers were used with a 5.13 build and
    we’re not sure how that happened)
Bruce: i ran out of ideas to get it to reproduce locally
RP: this is just libc sanitizers. oddly it was the build from sstate that was
    wrong (a 2nd build) not the original build
JPEW: i did send my kernel doc patch on Oct 20th
Bruce: leave that with me and i’ll finish it off
