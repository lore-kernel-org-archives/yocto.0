Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
 by mx.groups.io with SMTP id smtpd.web12.12356.1624990607419150265
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Jun 2021 11:16:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=J9yFG2rz;
 spf=pass (domain: gmail.com, ip: 209.85.166.178, mailfrom: twoerner@gmail.com)
Received: by mail-il1-f178.google.com with SMTP id g3so110227ilj.7
        for <yocto@lists.yoctoproject.org>; Tue, 29 Jun 2021 11:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=SPjdvLfaXJaAjD9pKUcvqWKO9UFMWrTOG7AzpJ+PUtM=;
        b=J9yFG2rzuX+K6eaucwMIzMgbuoXIKzMSgp+WckL4izm313RCp4cm8wm2uwS1T2HNH4
         +g9L3LPq4jCCX2B3nGk/Gn1qYq4qgfJw2TNonfUjm1rhJB70rzQ+LcBXB9G4rlhPGpY2
         e4CaRPhh1ObaeuuoVAoL3ffzLiMOBonqiiDbiVKpC8V2bHWcc4CjDQ3MhS7wiMkxCC5R
         7cguOVRMeGHZJobOKeSBdkJm9xxegzuUq1dh0ImTaSVoN5/DPY6Egge9KHwBqno/I0Zs
         pwxFIQyo5PsGQ417zZW/ocDz5U5AMqXbTQWW2rcffw2nM7Um4wudx8UAYzFHoVwGAiCO
         6MPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=SPjdvLfaXJaAjD9pKUcvqWKO9UFMWrTOG7AzpJ+PUtM=;
        b=mssdqMzaSf7d2heUHkK0jLSNakJStUwJ0D02NztNxIFh+oHQWbNSM9jG9id1ZmSOrd
         TLLSysSztkE34OeWOMvYtjHbJhQvS7FI9mNCm3Zize/XSpptNE6fX3oDrW3Tb/kUj/cU
         zPApGOGdXCwFFnJnjVqGIzRM0OZbRxET/MBya5ez7uRbmddsHxNXnn01iVIKmxI38Fs0
         Bgxu767rcmaNyxur2FHCM+WP4FK64JieU7mu0VpGRet2BJt5tGP1t8ADvlBBVaUWAvdp
         rhoBnDa44wUaOT1i1areDAbeAnU131Z1sNkuyQd733nwgaahDyWG/yEZDjnOyPqagbnc
         T/sA==
X-Gm-Message-State: AOAM533R3bkAH8e3zIqRNYRq1vnNi8oe9t38asCeO3VqypdWFn37E1Cx
	ZWFohyl2LDID+hRJ1EE2qfnD+P55KQC/7Q==
X-Google-Smtp-Source: ABdhPJwjvv5G5tn6NTM8mOtfDWKWaZWLM0tKmebrl7FCynvvDCqvyPf89lYqFuQoBI/jxl5Vp2HAZw==
X-Received: by 2002:a92:b003:: with SMTP id x3mr5596628ilh.93.1624990606199;
        Tue, 29 Jun 2021 11:16:46 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id o12sm8583029ilf.13.2021.06.29.11.16.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jun 2021 11:16:45 -0700 (PDT)
Date: Tue, 29 Jun 2021 14:16:43 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for June 29 2021
Message-ID: <20210629181643.GA571@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for June 29 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Steve Sakoman, Joshua Watt, Jon Mason, Tony
Tascioglu, Richard Purdie, Scott Murray, Armin Kuster, Paul Barker, Tim
Orling, Alejandro H, Bruce Ashfield, Randy MacLeod, Denys Dmytriyenko

== notes ==
- 3.1.9 (dunfell) through QA awaiting release approval, no blockers
- 3.4 m1 (honister) released
- identified an RCU stall hang that’s been causing some of our AB-INT issues. closed a couple of AB-INT bugs as a result, but found some more
- prserv rewrite using asyncio is stuck on AB hangs when tested on larger scale
- ARM-specific ltp hang issue (bug 14460, https://bugzilla.yoctoproject.org/show_bug.cgi?id=14460)
- multiconfig needs simpler test cases
- about 50% of AB issues are ptest-related

== general ==
RP: the RCU fix is awesome, significantly fixed AB-INT issues


PaulB: (summary) prserv code updated to asycio, it works for me on my home
    machine, but then we see failures when that code is run on the AB. bitbake
    hangs, probably in the shutdown path. i have been able to reproduce it
    at home. works with python3.6 but seems to fail with python3.8 (from
    buildtools). we’re using asyncio and multiprocessing in various modules
    and it’s unclear how well they play together. there might be issues wrt
    to which system gets initiated first and when forking occurs
JPEW: buildtools tarball only?
PaulB: i need to check the matrix of what’s running native vs what’s from
    the buildtools
JPEW: you’re mixing asyncio and multiprocessing?
PaulB: yes
JPEW: doesn’t that do a fork/exec itself? just to be clear: you’re
    init’ing asyncio first, then forking?
PaulB: yes, that’s what other parts of the code are doing too. maybe we
    should fork first, then call start_tcp_server(), then start the asyncio?
JPEW: server or client?
PaulB: server, but that’s in bitbake. there’s no clear docs on how these
    things would work together
JPEW: the AB uses hash equiv server but it’s running on its own, so i’m
    not sure what code paths are used
PaulB: yes, RP and i discussed that and we know that code path is not being
    used
JPEW: so what happens? what are you seeing?
PaulB: it gets so far through the test suite then the bitbake server stops.
    we see the keepalive messages but no other output. RP got stuff installed
    and did some dumps. it looks to be prserver-export functionality related.
    bitbake is finished and is run successfully, but stalled in tring to
    shutdown bitbake 
RP: for example in one case we saw 57 zombie threads, the 58th is stuck in
    a client side asyncio call to prserv. we tried killing the prserv, so
    we’re not sure if it’s hung. then we found it waiting on the socket
    (which was already closed)
PaulB: and if we sent sigint to the process, it’s not waiting
RP: we had backtrace issues which we’ve fixed. but there’s this hang. some
    tests failed early with python3.8, but then an oeselftest failed. one of
    the parsers was stuck in this prserv call
PaulB: we should take a look through prserv.bbclass to see what’s also done.
    we could look at the args used and check for parse completed events
RP: hashserv vs prserv: hashserv is called in its own context but prserv is
    called from within the parser threads
PaulB: yes, back to the issue of the init-vs-fork timing
JPEW: i would expect that’s an issue. have them init in each thread. are
    they threads or processes?
RP: can’t remember. i think processes, but not sure
JPEW: that seems something to try. i would guess setting up asyncio then
    forking wouldn’t work over that boundary. so have each parser thread
    setup their asyncio separately
PaulB: we can run builds quite happily. the build works, but then when i try
    the prserv-export that’s where it falls over
RP: in the parse thread
PaulB: it’s also queried in do_package, and that seems fine
JPEW: i think asyncio in python is an abstraction around some OS primitive,
    but it’s configurable so it’s possible the one being put in the
    buildtools tarballs (from wherever it’s being built) isn’t properly
    setup for the actual machine on which it’s run. if we could dump the
    config then we’lll probably see that it’s not using the proper backend
PaulB: i think there’s just a linux one and a windows one
JPEW: okay, maybe it’s something else
RP: i think the async init is key
PaulB: i think asyncio has a good reputation of working. on stackoverflow
    there are other instances/questions of people mixing asyncio with threads
    and none of them have definitive answers. so there must be caveats that
    the docs don’t address. most users of asyncio are basing their entire
    software on it, whereas we’re just using it in one piece and mixing it
    with everything else. we have some good leads here, i’ll do a writeup
    and send my latest patches (there’s a new read-only patch)
RP: JPEW if you could look at the patches, specifically the shutdown paths
    that would be great. has anyone else expressed interest?
ScottM: I’ll be taking a look, as part of AGL. it’s on my short list


PaulB: there’s a patch series that Khem has forwarded, python linter fixes,
    i think we need more discussion on it. ideally we should be testing this
    with every commit, otherwise we end up with these massive linter patches
    that mess up the repo history
JPEW: i’m a big fan of automatic linters/formatters, but it has to be
    automated
TimO: me too. not sure how it’ll work for a large group like this
PaulB: having these flag days is really bad for breaking “git blame” etc
RP: bad implications for LTS. some changes i like, some i’m less keen on
PaulB: if there’s some agreement, then we could add a linter config file to
    the project so we’re all using the same thing
RP: we are running the pylint stuff on the AB, i’m blanking on where the
    config file is
Bruce: i usually do that
RP: we do some of this stuff in oe-core (pylint script) but was only
    configured to show errors, but nobody is even looking at those now
Bruce: i looked at the github link, this is a “throw oever the wall”
    patch. there isn’t going to be any updates (“i only do github pull
    requests, could you please forward this to the list”)
TrevorW: do we have a checkpatch.sh script?
RP: we had something, but nobody is considering/using it
TrevorW: if the patch doesn’t pass, it doesn’t get applied. so it should
    be up to the submitter to fix
PaulB: the check tools we have aren’t easy to run locally
RP: it should be. if we had something would someone maintain it?
TrevorW: i tried a long time ago to create such a tool but there are
    significant differences between (for example) the formatting between YP
    and OE so how can a tool be created?
RP: yes there are some conflicts, but there is also a lot of agreement, so
    let’s focus on the agreed-upon things first. i think the only issue is
    tabs vs spaces
TrevorW: i think there was also an ordering issue
RP: yes, but ordering is not irrelevant. changing the order can change the
    behaviour, so we can’t enforce ordering
Armin: there is an ordering styleguide
TimO: some linters are too aggressive


RP: JPEW: how did the SBOM plugfest go?
JPEW: it went well. gave us an idea of how compatible we are. i don’t think
    we’re too far off. i think there’s another one coming up. i think
    they’re going to be a plugfest every 3 months or so until momentum goes
    down. i’ll go to the next one. i have some patches, we are compatible
    but there are some things we can change. it was interesting to see the
    issues of the community at large. but we’re lucky because we have all
    the data (whereas other projects don’t, necessarily) i believe one of
    our outstanding issues is that license strings need a sync, but that’s
    for another time. i think our mappings might be bad.
RP: i’d be interested in a list of the ones that aren’t valid
JPEW: i can track that down


RP: i liked the compression patch series, it failed in testing but i think a
    small tweak will fix it


TrevorW: tomorrow is the OEHH
https://www.openembedded.org/wiki/Happy_Hours


Bruce: we’re starting to shape up for -m2. 5.13 kernels added. 5.4 dropped
    from master but will send rev updates for dunfell for 5.4
RP: so just as we got 5.10 working, we’ll drop it
Bruce: we’ve been testing with -dev a lot (ARM64 needs awk). i think we’ll
    add 5.13, then let all 3 sit there for a while, then drop 5.10. 5.13 has
    been tested a lot more than most


TrevorW: has there been a resolution wrt to the new operator discussion?
RP: no. i think there are more invasive things that need to be done with some
    existing operators.
TrevorW: so the new operator is a go? it’s going in?
RP: not sure yet, more experiments needed
ScottM: at the end of the day we’re talking about 1 person’s issue with 1
    BSP. is this a generic issue to warrant such a move?
RP: i think many people have hit it, but worked around it. so i think there is
    an architectural problem that needs a wider discussion
ScottM: i think there’s more value in the changes to += and _append than
    adding a new operator
RP: i think we need both. that’s why i’ve deferred. i need to do more
    experiments
ScottM: could we do a flag day, or a carry-over for say 1 year. do we have a
    process for that
RP: we don’t have a process, the TSC would have to come up with a plan for
    it. it would be specific for this case
