Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web09.13077.1617825787243384055
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Apr 2021 13:03:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=f2POV/vV;
 spf=pass (domain: gmail.com, ip: 209.85.222.181, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f181.google.com with SMTP id z10so20028141qkz.13
        for <yocto@lists.yoctoproject.org>; Wed, 07 Apr 2021 13:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=45hgXHW/30ab2f9M0qhdCTrS6DE2AiaH2cm+Ochjcrs=;
        b=f2POV/vV/gH2gwXMgyEFS0wp9HO6JLPf27wQIAcNxkqkRRikt1TCgTgRZYYS0r9hmy
         CVflXKhsRVVbjNE5y/zYOsmv1zFbS2Ow94GrVjgZ1M8qlv0zjofz4Xx+55axVh3hFOm8
         YsCHNUGBAoA9on5JmOWtHzjdBzqiBiTK0qLfAuZJaIcFe7vDPzWFqanjJ4rd7SLzdtwr
         SxHqgFPWLvG2TsGh9JL4EmyZ8RjV4G1JeQDtb0KRv2PHn/rwKxvBTIdZIyRzDaoznT/n
         DtD/lOKuL6NMo4kkayttQFI3MVRlzEmNzpLVNzqlQkDZoYD0q2E0WbkFO3dXNmGBOWJT
         D82A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=45hgXHW/30ab2f9M0qhdCTrS6DE2AiaH2cm+Ochjcrs=;
        b=qKdOmKPArtYRYB/dVaB/GxRuzezw/fotcIqfRdEly5wXx1qyy4HfPEsjd+xVgpbEED
         ETjpeFE06komLEghXJmZFtm0VEL8IZcLDAXH7kFIJdXDI0QuDn5RJ1rdqN+xoGC8No+I
         3jGdN6xIOyRXWPaw/ZFNHMUXTSq2Wo0WLtioXhyg68g1EEgjuL+BErzYK2b6j+yLpVai
         SXJG4TKRA+t6yqQ4/iYC1485ebwdRzhF2HeLmNoCg4yjSp6QBC72VblZlBGfhtNfprev
         s/5FAl/A6sf6TP3y6kOD1qXDsnLwYM4N0dIZIx7DrCtPH5x5nLAJg0z/MYFS+Nf4/BOf
         ycew==
X-Gm-Message-State: AOAM530OTEZ5klN8LAVmjczmchw+cpdXd4VrmBHh7x+uWxpXXdtD0mCK
	L1Sp1Fbh379i3qXRerzvb6qX3WHOr34=
X-Google-Smtp-Source: ABdhPJyj6qK+Rwj27Y8FdqwMS/L/CE2D1S/BzOYP41159An9WuTRwgHwV0vITovqUdJjGBQyy/0NUw==
X-Received: by 2002:a05:620a:15e1:: with SMTP id p1mr4847524qkm.33.1617825785677;
        Wed, 07 Apr 2021 13:03:05 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id i78sm19098460qke.46.2021.04.07.13.03.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 13:03:05 -0700 (PDT)
Date: Wed, 7 Apr 2021 16:03:03 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for April 6, 2021
Message-ID: <20210407200303.GA28458@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for April 6, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== announcements ==
The upcoming Yocto Project Summit is taking place May 25-26 2021
details: https://www.yoctoproject.org/yocto-project-virtual-summit-2021/
CfP: https://pretalx.com/yocto-project-summit-2021/cfp
registration: https://www.cvent.com/d/yjq4dr/4W?ct=868bfddd-ca91-46bb-aaa5-62d2b61b2501

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Richard Purdie, Steve Sakoman, Peter
Kjellerstedt, Armin Kuster, Scott Murray, Michael Halstead, Bruce Ashfield,
Saul Wold, Joshua Watt, Jon Mason, Jan-Simon Möller, Randy MacLeod, Paul
Barker, Denys Dmytriyenko, Rob Wolley, sakib.sajal@windriver, Tim Orling,
Ross Burton, Philip Ballister, Daiane Angolini, Trevor Gamblin, Alejandro H

== notes ==
- close to building 3.3-rc1
    - still need changelog, migration guide, release notes, etc
- released 3.2.3
    - change to allow qemu to run from tmpfs
    - can’t use cgroups
- lots of version upgrades, need to wait for 3.4
- ~50 intermittent AB issues
- planning doc available for 3.4

== general ==
RP: still thinking about what to do with docs for 3.3, still need to wait on
    changelog, migration, release notes before we can release


RP: lots of I/O copying the qemu images before starting up the tests, causing
    some of the timeouts, therefore the move to running from tmpfs


Bruce: there are some perf-tests things missing from master-next
RP: oops, missed it


SteveS: is the tmpfs something we want to backport to dunfell
RP: ultimately yes. low risk. but give it time on the AB first before merging.
    should be a nice simple change


StephenJ: we were supposed to do a 3.1.7 last week but there wasn’t anything
    for it
SteveS: i didn’t want to get in the way of master releases. there is another
    bitbake change that i’d like to get in too, but we can do that anytime
StephenJ: we’ll want it behind the master release, but it should come out
    sometime this month. i also have 3.1.8, 3.1.9, and 3.1.10 in the planning
    docs, as milestones
RP: we’ll get 3.3 build, then we can do the next 3.1.y after that


PaulB: prserv modernization (async-io json-rpc startup/shutdown readonly-mode)
    i’ve now got all that done, oe-selftest is passing, bitbake self-test
    is passing. still have another day of tidying up. should it be sent as an
    RFC?
RP: it’s good timing. i think it’s 3.4 material and it’s a good time to
    put it out there (see 3.4 planning doc).
RP: PaulG also put out some patches to make the fetcher more efficient
    regarding kernel fetching which also sounds like 3.4 material. master-next
    is where i’m putting 3.4 things for now.
PaulB: i think they’re all bitbake patches, and there’s one oe-core patch.
    for the RFC i’ll just send it all together and we can split them up later
JPEW: can you CC me please
PaulB: np


Randy: memory-resident bitbake as the default?
RP: i’d like to see it, but depends on whether we can get all the bugs
    worked out before. the blocker was that enabling it for oe-selftest causes
    carnage. we need to figure out why, it shouldn’t cause any issues, but
    it does. once we can get oe-selftest working then i’m game for enabling
    it by default and simply fixing anything that comes up. this change
    retrofits bitbake to do something it wasn’t designed to do. there’s
    some assumption somewhere that’s being violated that we don’t know
RP: the tmpfs change i just made is a good example of showing you how to
    change every test
TrevorG: re doc change, i submitted a v2 (thanks MichaelO for review) and
    added instructions. i think we want something added to the -dev manual?
RP: yes, we now have a doc person and we want to cover the AB in the test
    manual. the test manual we currently have is just a start, mostly
    pointers, but i’d like to see it expanded
TimO: i’d like to add a ptest for python or ptest for perl section too to
    the test manual


RP: re AB-int. can we list out what’s in the I/O queue that the kernel is
    processing? i’m guessing not (security reasons) but it would be great if
    it could. in the past we’ve listed out processes that are occurring when
    failures occur; that allowed us to identify an issue with building webkit,
    but there’s only so much a process listing will give us and there are
    other stats we should look at at failure time
Randy: yes, we’ve looked at a bunch of stuff, but most of them need root
    permissions
RP: if the tools are standard then we can give access to those tools to the
    poky builder user
RP: with more tooling we’ll probably see a lot of these qemu startup issues
    and we’ll probably also see lots of bitbake timeout (60s no response)
    issues. iow, a large set of issues, i’m hoping, will condense down to a
    handful of issues. there was also a libgomp issue that JPEW was seeing,
    but even after that fix we’re still seeing the AB-int issues


TimO: patchwork. have we looked at upgrading to a newer version
MichaelH: i’m trying to get a -dev version working, i’d like to pull you
    in (TimO) to help if you’re available
TimO: yes, that’d be great
RP: MichaelH is setting up a -dev instance of patchwork to see if we can get a
    bunch of things working (i.e. integrate with AB, integrate with testing,
    etc) to see if this is viable
TimO: my analysis (from last year) was that the ozlabs one was really old, but
    the freedesktop.org patchwork version is better
MichaelH: and in the past year it looks like the ozlabs one has pulled in all
    the things from fd.o and is now, in fact, ahead of the ozlabs one. so
    that’s the one that i’ve been working with (i.e. ozlabs)
RP: i think the new system is a lot easier to work with, it seems easier to
    pull patches in


ScottM: (to Armin) moving libseccomp to meta-oe. maybe we should move it right
    to oe-core?
Armin: it can go anywhere. Khem had an issue with it.
TimO: i think there are some things in meta-virt that need it
ScottM: i have some customers that need it, i always enable it, i used it with
    systemd
Bruce: i debugged a k3s issue for ~3 months that turned out to be a libseccomp
    issue, so it seems “needed” in most virt setups
RP: we need to be known as being able to support virtualization and handling
    these sorts of issues for our users, so i’m open to taking it in oe-core
<Armin agrees to prepare a patch for oe-core>
RP: i can take something like that in master-next for now, even though master
    isn’t open yet for new things. there are a bunch of things that we need
    to consider moving to oe-core (this (seccomp), rust, etc) so now’s a
    good time to have these discussions
PaulB: i’m for it, i’ve bumped up against some issues that could use these
    things


Bruce: there are some virt recipes that try to download things in do_compile,
    and that’s not a good thing
ScottM: there was a presentation doing this at the last conference
PaulB: maybe we should think about disabling network access during compile?


Armin: rustc in a devshell? mine always segfaults
Randy: depends on the args passed to rustc. can’t remember off the top of my
    head.
Armin: segfault with stackX. sounds like the file issue like we were having
    with pseudo. version 7 is going to need clang, so i want to get this done
    first.


TimO: there’s talk of using rust for device drivers in the kernel, anyone
    using any or planning on using any?
Randy: probably in upcoming kernels
TimO: we’ll need to figure out how to do that
Randy: we’ll have to figure that out when the time comes


RP: any other 3.4 issues?
TimO: recipetool for perl (which i’m working on). also ptest/pytest plugin
    to make ptest output generic and consistent
RossB: another discussion to talk about changing the ptest output? it’d be
    nice to migrate to a more structured, common format
TimO: <agree>
RP: i think this could be something that is added piece-meal, it doesn’t
    have to be invasive, or all-or-nothing
Saul: i’m hoping to get the qmp stuff figured out for 3.4


RP: ptest-runner, anibal found and fixed some issues which i’ve pulled into
    the next build. i don’t think they’ll cause anything to blow up
Randy: fixes in ptest-runner are pretty important
RP: i also upgraded diffoscope since it was causing hangs. they release every
    week, so the release numbers increase rapidly, but the changes are small


TimO: RossB and i talked about upgrading matchbox to wayland, but i doubt
    that’ll land for 3.4
RP: there are lots of changes in this area
ScottM: i’m interested too. maybe use libwayland
TimO: yes, that’s what we were thinking
RP: it’s a good time to start planning and thinking about it, maybe 3.4 or
    3.5
JPEW: i looked at posh (phone gnome shell) advantage is that it can run any
    gnome application unmodified, but it does need a lot of dependencies
TrevorG: i was looking at that too recently and thought it was good. i looked
    at a competitor that didn’t do as well
JPEW: you need everything to build gnome-3 but then don't end up building
    gnome 3 ;-)
