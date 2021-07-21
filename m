Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web08.19.1626879713986818760
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jul 2021 08:01:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QFYqbLuW;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id a80so2310724qkg.11
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jul 2021 08:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=ZaJQilP4nT7CL9sXGei1C273qHHDjtHrHwmocE4cDPA=;
        b=QFYqbLuWBm9L9O1zf9LaVIxC6gC8HbkNVy/+t+a/uyPyHynAus7XMSrC2MRseJlz24
         BllnQGpzBKmALhQ5xVPwgnnc8PYApFbUFzMTXBtY5cFFywR0y77ho6t8TRe2SFkekT+y
         +y2ajasAK31byTPCkVBdOX9UBh01Gtyj+GFU0yY+ssWTIEeX+m4vNVKbQBWAof2deYAG
         FoQtP+Up9qALrAtg6vPTKLrRsenn+ojchCrfU9Wf8sHxEXpKyRRGbeNzfJ7RbvLSihRr
         JI/87wyc7hfg1i+iFLQCQCc5TZyN+QTZVWvAPStkwUXZXQMYoHk3bgJEocltcSInclNC
         pIpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=ZaJQilP4nT7CL9sXGei1C273qHHDjtHrHwmocE4cDPA=;
        b=iEd0UgTLfB6Wv1jZWAxhha3aLX2lGzanNMKoGtGRHVOzB7QHO4eBYx6oPuzqsn3Y2r
         esA2YvBYrNryvUihukiwqubyPlWwZH0HdSUhdDh0O/5vug36Hfgd63fiv80VU2Ajwl2G
         NRf9APv+IgJZ8dmYOLbtu398x72W//LxFapzB1yrtWLma9NCQs0FjxlzFlCYSEcJNs4x
         +Cs6RT8+BXoF2qeXWJETKFTppfNtwQmGCd13/FpO/Q87+x7OWxQNemwrt21vhjkoTKs8
         WhdhhE2ZIOmpGcGnn98VX2BmWPAI5eFCYzdLAW742RNv5ABEvOVvq+p6L61BDtWVH4Kg
         e/WQ==
X-Gm-Message-State: AOAM5311x9O/LThTHyzc9dgaWHaBP9MRhQmQNyJZOyDoCbptCbrZrNZE
	hz/lJOXAfRs9HAOxnCOGi0/F0hp9WiZ0qg==
X-Google-Smtp-Source: ABdhPJxv7IvI6kHuNOAawbHl1o70tXwEhIxSigdGNSKKsKCGcoIDd3Hp0dbu6+unA64eHKyG5uVvTw==
X-Received: by 2002:a05:620a:e0d:: with SMTP id y13mr35363442qkm.14.1626879712591;
        Wed, 21 Jul 2021 08:01:52 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id l29sm5302860qtn.8.2021.07.21.08.01.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jul 2021 08:01:52 -0700 (PDT)
Date: Wed, 21 Jul 2021 11:01:50 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for July 20, 2021
Message-ID: <20210721150150.GA37492@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for July 20, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner
Stephen Jolley
Armin Kuster
Jan-Simon Möller
Joshua Watt
Steve Sakoman
Trevor Gamblin
Scott Murray
Randy MacLeod
Richard Purdie
Martin Jansa (JaMa)
Michael Halstead
Bruce Ashfiled
Tony Tascioglu
Ross Burton
Alexandre Belloni
Paul Barker
Denys Dmytriyenko

== project status ==
- -m2 to be built this week (after pzstd included in buildtools tarball)
- 3.3.2 (hardknott) to QA after -m2 build
- proposal to add lz4c, zstd, and pzstd as required host commands
- architectural discussion on a change to the override syntax
- prserv still waiting on python asyncio issues
- AB-INT issues around ptest
- simpler test cases still required for multiconfig to resolve issues

== discussion ==
RP: syntax changes. we’re limited by not knowing definitively what and
    what isn’t an override. leads to lots of caching and extra resources.
    it would help speed things up. there are issues around backwards
    compatibility, but it shouldn’t be a problem. the new character was
    illegal previously (no clash). so with the backwards compatibility solved
    it should be clear sailing (famous last words)
ScottM: sgtm, i like the syntax
RP: “feels” right, and it helps massively inside bitbake. how old would we
    have to go back
ScottM: dunfell
RP: so if we backport this to dunfell then AGL should be helped
ScottM + J-SM: yes. we’d have to wait for a bunch of BSPs to adopt too
ScottM: can we mix and match old and new syntax?
RP: yes
ScottM: then we should be okay. AGL will be a good test case
JPEW: mix and match now, then make it required in the future?
RP: discussion ongoing
TrevorW: we started discussions on override syntax at OEDEM 2015, glad to see
    it coming in
RP: my instinct is to bring it in quickly rather than have a long overlap. it
    is used a lot in image filesystem code, also in tune features, qemu. the
    package code relies heavily on the override syntax (package data). the tsc
    generally thinks we should move forward. how long to wait before moving
    forward?
AlexB: not too long. definitely before next lts and a little before
RP: which means now is a good time
PaulB: great idea. how about -m2? before or after?
RP: wanted -m2 last week, need new buildtools tarball, tempted to do it before
    -m2
PaulB: ship it! (lol)
JPEW: at this point we’re just talking about converting the metadata?
RP: yes.
RP: tempted to do it for -m2.
RP: steve?
SS: sounds good, good idea to backport
RP: see discussion on oe-architecture

RP: Ross is proposing a function for bitbake-utils (layer_path()) for a layers
    path to be extracted. why not a bblayersdir variable. core has this, sort
    of. but maybe other layers could use this too. if you start encoding
    paths like this, they get into the signatures (sigs depend on locations)
    so path has to be in hash whitelisting variable. but path ends up in
    signature file (for debugging). maybe have “add layer” like “add
    task” that takes care of this. patches are on mailing list. we could
    drop bbcollections variable that would be nice to drop (historic, predates
    layers). it’d be nice to simplify some of the variables used in bitbake.
    we force the priority to 5 (for no reason)
JPEW: priority levels has always been confusing
RP: this could make this go away
Denys: and there’s recipe priority
RP: and preferred, etc…
JPEW: and recipe priority only holds inside a layer
RP: one of the big issues with python2 → python3 was this sort of thing
JPEW: this could be easily backwards compatible?
RP: yes
PaulB: sounds like the right direction. layer.conf has always been confusing
    (copy this boilerplate and it’ll work, don’t ask how) moving this into
    bitbake would make it easier for users
Ross: i like getting rid of layer priority since this is a cause of lots
    of issues since it works one day then stops a while later (after
    bblayers.conf changes)
RP: behind the scenes bitbake does ugly stuff expanding layer dirs etc. so
    this would get rid of that ugly code
ScottM: also backported to dunfell?
RP: more nervous backporting something like this
JPEW: probably wouldn’t be able to backport forcing the priority
PaulB: it’d be nice to have a branch of a layer support dunfell, hardknott,
    and master all at the same time (without changes), but it probably won’t
    be too hard
JPEW: yes, we do that too, and we go back a lot further. it’s possible
RP: i don’t want to block Ross’s patch and i think this would be good

ScottM: read-only prserv. moving the syncio loop creation. ran oe-selftest a
    couple times. i don’t think it’s helping, still seeing failures with
    the patches (and not without). i’ll need to double-check to make sure
    these aren’t intermittent issues. do we want this feature bad enough
    that doing it without the unification of the async-rpc code with the hash
    equivalency is required? could we push that out to next release and just
    do more minor tweaks for read-only mode for this release?
RP: i’m now worried about hash-equiv server as well. we run one on the
    server but i think there’s gremlins there
JPEW: ScottM ping me on it, i think it should work, i’d like to help
ScottM: yea, i think it should work too. i think there’s a race in the
    shutdown code. with enough load i think we’re running into something.
    but i think it’s in the shutdown and solvable. i’m pretty sure i can
    run enough load locally to mimic the behaviour of the AB.
RP: when i originally worked on this and we scaled AB, i had to do crazy load
    tests. AB finds these failures
ScottM: was seeing loadavg of 800-900 on my local machine. it looked like
    bitbake had shutdown during the build at one point. so it seems to match
    the AB failures
PaulB: sounds like the failures i was seeing
ScottM: unfortunately the server tests don’t ever see these. they have to be
    run on the whole build with a loaded build machine. so i think we should
    do some for -m2 and then work on the rest for future releases/builds
RP: i’m not up-to-date on the asyncio stuff, but i've analyzed lots of
    failures with bitbake shutdowns so i think i can help too
PaulB: i’ve moved off, but i’m happy to review patches or help brainstorm

ScottM: would it be possible to do a build on the AB with the auto-start
    hash-equiv to see how that goes?
RP: if we put something into helper then we could try that
ScottM: we would lose some performance
JPEW: it would be a “throw-away” build
ScottM: okay, i’d like to try it to see how that would work
RP: AlexB can you set that up?
AlexB: sure
ScottB: bbhashserv = auto
RP: okay, do that and let scott know which build it is that’s got that
    setting

ScottM: elc/yps?
TrevorW: working on it. we’ll do something, most likely a copy of the last
    one but probably 3-days

PaulB: anyone looked at Deny’s email? (adding 5.10 kernel to dunfell)
ScottM: we’d really like to do it for AGL
J-SM: many customers have already done it so it’d be nice to do it in one place
Denys: kernel has a new lts every year, and dunfell is over a year old. this
    is something coming from YP members requests. thanks for reviews. the next
    yocto lts would have the same issue
PaulB: reminds me of hardware enablement kernels from ubuntu, in other words,
    seems common among linux distros with long-term lts releases that last
    longer than 1 year (i.e. kernel lts time frames)
Randy: sounds like this is a good and requested thing. are there any
    downsides? effects on userspace?
Denys: userspace would be 5.4 but kernel would be 5.10. if we switch userspace
    to 5.10 then everything has to rebuild (toolchain, glibc, which leads to
    everything rebuilding)
RP: i think the goal is to not change the toolchain. the impact shouldn’t be
    on SS (libc-headers causes toolchain updates). thanks Denys for getting
    the ball rolling
Denys: i’d like to move it away from github and bring it under
    git.yoctoproject.org
PaulB: the repos on git.yp.org are organized by headings, so maybe have a
    heading for dunfell mixin layers
RP: sounds like something the tsc should think about
Denys: anyone want to do a mixin layer for gcc? gcc10 for dunfell? (i.e. a
    newer toolchain)
<crickets>
Randy: sounds like a “no”. what’s the motivation?
Denys: some vendors would like to stay on dunfell (less work than moving to
    master) but also test and build against newer tools
PaulB: newer toolchains always generate new warnings, errors… which leads to
    lots of patches required everywhere. lots of effort to update to a newer
    toolchain
Denys: true. like with all the -fcommon stuff
Randy: so vendors would have to wait for next lts and/or work towards master
PaulB: if dunfell gets extended for another 2 years then a newer u-boot mixin
    layer would be useful (and we might as well make that public). but only if
    dunfell is extended
Denys: to be clear: my understanding is that all these individual updates
    should be done with individual mixin layers, not all done in one layer?
PaulB: yes, kernel, u-boot, are relatively self-contained, so should be able
    to do as separate mixin layers

SS: any process/timeline for making that decision (dunfell extended?)
RP: comes down to funding. we’ve asked the members, but they haven’t
    decided yet. i’m advocating for it and would like to see it
