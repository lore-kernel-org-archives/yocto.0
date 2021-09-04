Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web08.6326.1630718204541412555
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Sep 2021 18:16:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=B7Hf3VG7;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id l24so763518qtj.4
        for <yocto@lists.yoctoproject.org>; Fri, 03 Sep 2021 18:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=HqVFI1fBAItpDD88wWcIf/pixxSMfyrrHPGhe0G+XPE=;
        b=B7Hf3VG7Wi1xIFtxR2cn1/Vg6z8g3H/kV8q2ay88aBNOTZkDiDKog7/mx9diuBXqHW
         mHBUABHljE7+4UvInrAyYRsOKMwJF39cDBFdAoeDjshO40wqpPj2oFpg/snVSQBZJmv1
         ZL5s+a1Y3Ye/X64SWZulPTdjU2pEtRxPZMh+xKBXRbxD15cGwvEzDELyYTdTlfSX9DxZ
         tJ4QUV2BLiCXy6oiTr09zkvFqO+AERe+hfET1XHAzDZaimH4XrXLAmPe7zHSfWa813hD
         MDodSqozwTeJbTrwJhhlR0OpcN4kRg79Mewu5PeD51pi8woacl8WDBa9imqK+Nxw2WNL
         A0Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=HqVFI1fBAItpDD88wWcIf/pixxSMfyrrHPGhe0G+XPE=;
        b=AMFn5DSYvNw9oZjvUhKyLP3Olr4mvuBp5ydMpICqxnHoLI2ycsGGahV6rAe1/IBHhw
         SV0wztaywWlyD35t1H5B5Pl+GAuMxuMk3fPD21bEZbwn64aD41V21yA3bdo9dnM3/f5E
         f1r7sNJJ4sqCcJsTpEWD88OPl2qCAsFmKJmQntVT51lw/Jzr/o5/sr8bhVYNC5WyUy6w
         N5ZanC5Oc+cQVFX0NTULmVR2zEjmj+5M9Kd1V/Lq5LZlF21hwLvc7/ANve306eq1tS6c
         7o5DH8skAcJHH5FugDtODtQ0YGeIfDngcRv+OcrVWUQ5JfkmhhgpoydWUzWj67icnGF2
         1E/A==
X-Gm-Message-State: AOAM533W31NccT/GjgICxU02TKL9WpqsSD5SFXFQ6W1K6/Qfxx9OmPeI
	QJpXbFly59k4FQy8RmdhmouS/nE5UghfBw==
X-Google-Smtp-Source: ABdhPJx8YTlOVYeJ5c6icW9UkLnVX0YH1xQxq9846CYo0EAv5fKGg+qOVg7b4HMVFDvbb3QHZe8Trw==
X-Received: by 2002:ac8:6bcc:: with SMTP id b12mr1666766qtt.243.1630718202691;
        Fri, 03 Sep 2021 18:16:42 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id d68sm740830qke.19.2021.09.03.18.16.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 18:16:41 -0700 (PDT)
Date: Fri, 3 Sep 2021 21:16:40 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for August 24, 2021
Message-ID: <20210904011640.GA24817@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for August 24, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Peter Kjellerstedt, Randy MacLeod, Armin
Kuster, Jan-Simon Möller, Joshua Watt, Richard Elberger, Scott Murray,
Steve Sakoman, Richard Purdie, Saul Wold, Tim Orling, Alejandro Hernandez,
Bruce Ashfield, Denys Dmytriyenko, Jon Mason, Ross Burton, Trevor Gamblin

== project status ==
- now in feature freeze for 3.4 (honister)
- read-only prserv and switch to asyncio merged
- rust merge is problematic (issues with uninative), will need to be fixed in
    next day or two to make it into 3.4
- glibc 2.34 causes significant issues for pseudo, this will get worse as more
    host distros upgrade
- tune file refactorization merged
- still hoping to get some sbom stuff into 3.4

== discussion ==
RP: we’re now at feature freeze

RP: the asycio stuff is finally working, thanks Scott

RP: the news isn’t so good with rust - there’s some weird uninative issue
    (something to do with the linker relocations that we do). we were seeing
    issues on debian 8, but it looks like we can reproduce that issue by
    using the buildtools’ extended tarball as the compiler, which also
    provides its own libc, which them seems to cause the problems. i could
    get rid of the relocations that uninative causes, but at a cost of it not
    working with the eSDK, but i decided to ignore that. but even if we do
    that there’s always the relocation issue with the buildtools tarball
    which we can’t avoid. for a while i could reproduce reliably, but then
    it stopped and i can’t reproduce anymore
Randy: i tried reproducing but couldn't. my impression is that the rust
    community is happy with meta-rust and use it for specific use-cases but
    they don’t go beyond that very much (and therefore aren’t seeing
    issues). even if we fixed the things you call blockers, i’d still call
    it beta quality for or-core if we merge it. do you want to merge it now
    (as beta quality) or wait for the next window?
RP: there’s no winning scenario. if we merge it then i’m signing myself
    up to maintain and fix it (esp before release). on the other hand if we
    push it out then we’ll be in feature freeze and nobody will pay any
    attention to it until later, then other things will bump its priority
    down. i can see that there are some open issues dating back to 2016, that
    obviously nobody cares much about, so pushing it out isn’t going to
    change anything.
Randy: not having rust in is holding back a bunch of things, but i,
    relatively, don’t know rust very well and without the rust community’s
    help i don’t know how to move this forward. ideally someone with rust
    experience could step up; maybe ARM?
Ross: we’d like to see it in core, we’re using it but with meta-rust so
    we’re happy with it so far. my preference would be to hone it and push
    it early in the next release cycle
Randy: schedules are dancing around, so we’ll try to get things moving along

RP: the pseudo glibc problem has me scared. any distro that upgrades to
    glibc 2.34 (natively) will break. we have a ticking timebomb, and it was
    discovered by our toolchain testing (thanks Ross)
RP: we make interesting assumptions with unintave and pseudo. we end up with
    host tools that are linked, potentially, against a newer glibc, therefore
    pseudo has to run as an LD_PRELOAD against multiple libc versions, so if
    it links against a newer one but then has to run against an older one it
    breaks with symbol location problems. we’ve had these issues before, and
    we’ve implemented various fixes. libpseudo only links against libdl and
    libpthread and we can’t get rid of those things (libdl because that’s
    how it works (fundamentally loading libraries dynamically), and threads
    because of the mutex that we use for locking). the release can’t go out
    if, when people upgrade their host systems, it’s going to break; badly.
    we’ve tried every technique that we’ve tried before and then some. in
    2.34 all the symbols are merged back into the main library, so there are
    no libpthread symbols, it’s all part of libc.so. in the past we’ve
    been able to link against uninative 2.33 (libdl and libpthread) and then
    link pseudo-native against those binaries. thereby force-linking against
    older versions using the newer glibc headers (which is horrible). what
    worries me is i’m basically the only one paying attention; i don’t
    even have anyone to bounce ideas off of or talk to about it. so we have a
    solution, it is horrendous, but it’s the only thing we’ve got right
    now. so if there’s anyone who knows about weak linking or strong linking
    or mutex locks without pthreads i’d like to talk to them.
JEPW: would you be opposed to making the direct kernel call to do the locking?
    that would bypass pthreads
RP: i’m not adverse to it, you mean the futex calls?
JPEW: yes
RP:  i’m not opposed, but i don’t think it’s as simple as making direct
    calls to the kernel. i read up on it but decided implementing our own
    locks wasn’t quite the direction i wanted to take. the number of ways to
    get this wrong is… interesting. 
JPEW: i know the futex call does a million things, and that’s one of the
    problems with it. i wonder if it would be possible to look at the pthreads
    mutex code and copy the parts that deal with futex?
RP: i did think of doing that; just distilling the pthreads code into what
    we need. we just need a very simple lock so it might be possible. may be
    something we need to look at
PeterK: wouldn’t you still need to link against libdl
RP: yes, but the scary stuff that goes on is in pthreads (headers and
    declarations). the libdl stuff is 3 function calls that are plain; no
    dependencies, no crazy symbols, etc. long term, ideally, we’d get rid of
    the libpthread dependency, then libdl should be comparatively simpler
TrevorW: i could take a stab at it, i’ve done dynamic library things before:
    loading a library, looking for a symbol, doing one thing or another based
    on whether it’s found
RP: it’s more complicated than that. what they’ve done in libc is
    there’s now a libdl with weak globbing symbols that redirect the
    previous symbols back to libc, so you only get a libc linkage. i haven’t
    worked out how you’d force it to link to the libdl (which you have to
    do if you run against an older binary). specifying versions is one thing
    (easy to do), specifying the library… there’s no way to specify
    the library, it’s hard-coded at link time… as far as i can tell.
    the other viable solution (instead of the current one which is to use
    an older libc and force the link) my other plan was to create a dummy
    binary to link against that would put the symbols in the right place. so
    we could just take the linker and generate a specially-crafted binary,
    and then use it in the linking process to force libpseudo to look in the
    correct form. however i realized that it was probably easier just for
    testing purposes to download the glibc 2.33 binaries, rather than try to
    create a specially-crafted one. so another thing to potentially look at
    (besides those pre-built 2.33) would be a binary that would do the right
    things. then we could do it as part of the build process. so that could be
    something to look at
TrevorW: my first step would be to reduce the problem to a simple test case
RP: generating a simple test case isn’t so much the issue, it’s
    the fact it only breaks when you have a build within a build.
    but creating a test case would be easy. there is a bugzilla:
    https://bugzilla.yoctoproject.org/show_bug.cgi?id=14521 longer term,
    getting rid of the pthread dependency would be helpful then the libdl
    thing would be relatively simple.

RP: i’ve talked about the things i know about which are gating m3, is there
    anything i don’t know about or haven’t mentioned
JPEW: sbom stuff. it’s pretty hands-off, the only thing it touches that
    might affect anyone is the package data extended.
RP: we should try that
JPEW: is everyone okay with it (Saul and Ross) has anyone had a look at it. is
    it ready to go in (i know there still are things to add)
Ross: looks good to me, the only thing i would mention is the path that’s
    used, but there’s a fix for that
JPEW: yep
Ross: i haven’t run selftest myself, but i don’t think there’s any
    massive problem with what’s there now
Saul: i agree with Ross, there is one thing, but we can work around it, so
    i’m okay with it going in
RP: Anuj and myself have started and killed loads so quickly recently that the
    AB is keeling over because it can’t delete things fast enough, so it’s
    running out of space
SS: i think i’ve been contributing to that as well this week
JPEW: is it a matter of “rm -fr” being slow
RP: actually when we delete we actually move stuff to a junk area then do the
    actual deletion at idle, but there hasn’t been enough idle lately, so
    it’s running out of disk space
Randy: is this something that TrevorG should look at? i.e. I/O load too high
    meaning builds won’t take place
RP: not sure how we’d go about solving it
TrevorG: i could look at it once i’m done my current stuff
RP: maybe adding a task that runs early in a build that would block the start
    of new builds until a certain amount of resources are available
TrevorG: sounds good

JonM: with the last mesa update (2 days ago), anything that doesn’t have
    hard float on arm won’t compile. i don’t know if we’re going to need
    to have that as a requirement. it tries to do neon regardless of anything
    else
RP: is it something they did intentionally, or by mistake?
JonM: according to the mesa build logs, they were trying to speed up their
    build times by using neon instructions. this isn’t a problem even if
    you you have semi-modern arm hardware. anything with cortex is going to
    have hard float but we’re blowing up on the armv5 stuff because it’s
    ancient and we’re intentionally using it for the soft-float
RP: is there something in mesa that we can configure to disable this
JonM: don’t think so, it looks like it’s just checking for arm and then
    going ahead and doing it
RP: maybe Ross has a friend or two who we could ask. perhaps ask upstream why
    the change was and if we couldn’t at least configure it
TrevorW: curiously enough i do know of at least 1 armv5 soc that does have
    hard float (or vfp at least) because it is optional. but the vast majority
    of them don’t do hard float. i’m wondering about the pi 0’s and the
    pi 1’s, i believe those are armv6.
JonM: the qemu that we’re using has hard float natively
TrevorW: so you’re saying the pi’s shouldn’t be affected?
JonM: probably not. although it would be affected if you had one of those but
    purposefully disabled hard float. you could configure yourself into a hole
RP: we should figure out if they did this intentionally or not, because it is
    easy to do things like this unintentionally

RP: the tune updates seemed to have gone well
TrevorW: speaking of tunes i did run into one that doesn’t seem happy
    (mips32r2el-24kc)
JonM: i could take a look at it

RP: speaking of older platforms, we’re seeing an issue with serial port
    emulation on qemuppc that is causing lots of problems. paulg is looking
    at it. hopefully we can get a band-aid that will keep the AB happy. i do
    wonder how many people are using ppc, but everytime i try to remove it i
    get lots of pushback. it does show the project is multiplatform

PeterK: i did the conversion to the new override syntax the other day, we
    now have a brand new syntax that is used for real overrides and wannabe
    overrides (e.g. FILES:${PN} and RDEPENDS:). these look like real overrides
    but they aren’t. ${PN} has to be first, but with real overrides the
    order doesn't matter. also you can’t say the :append has to be first 
    because it has to come after the override-wannabe
RP: i can see what you’re saying because the ordering is important. it’s
    not fair to call them wannabe overrides because the code does treat them
    as overrides
PeterK: but they, technically, don’t use the override mechanism, so you
    can’t change the order of them
RP: you can, it’s just that they get appended to the overrides variable in
    a limited context. e.g. when it’s writing the pn-package it will have
    ${PN} in overrides, when it’s writing the pn-debug it will put the ${PN}
    in overrides. so they are used as overrides.
PeterK: yea, but there are a lot of places where you do things like
    getvar_foo:${PN} to get these variables
RP: right. it is a compromise. going forward into the future when you do a
    getvar_files:${PN}, behind the scenes we put ${PN} in overrides then
    fetch that variable. in the future we can get creative and use this
    more effectively. i can’t promise you what the future will look like,
    but, code-wise, we had painted ourselves into a corner and we had to do
    something. so i don’t think they should be considered wannabe-overrides,
    they are overrides they’re just used in a slightly different context
    to say “machine override”. i know what you mean about the :append
    being a little bit tricky because i have seen a couple cases where some
    code was using the alternative format you alluded to which doesn’t
    quite make sense, but sorta does. the nice thing is we can at least now
    detect this which gives us more options going forward. this opens up the
    possibility to be more creative in the future, but it’s not like i have
    a concrete plan yet going forward. in my spare time i have been looking
    into the bitbake code, there’s a huge override data variable bitbake
    uses globally and it was hard to tell what was a variable and what was an
    override (e.g. SRC_URI). so we can move things from global scope to local
    scope which will give us a cleaner syntax and make things faster. as a
    worse case, even if there was no parsing advantages, it would at least
    make the syntax cleaner, which i think is a huge win.
TrevorW: any plans to do the corner cases, e.g. layer.conf. these might not be
    overrides in the code, technically, but conceptually they are overrides
RP: i do have a branch where i played with this (making layer.conf variables
    overrides). there are some interesting side effects. yes, they do look
    like overrides, but they aren’t ever used as overrides, which is why
    they weren’t converted, and there would be problems if some of them were
    converted because of the way they get used. the nice thing is that it is
    a very specific namespace. the : change was huge and global, but this is
    localized so it might not be too bad. maybe in the next release. there
    are things to do with collections and things that perhaps could go away.
    nobody today knows what a collection is, it’s only something you’d
    know if you used bitbake 12 years ago.

SteveS: there are some updates we’re still waiting for on the AB restart
RP: there are patches to swapbot that need to be applied as well. remind
    MichaelH. it’ll happen as part of the regular maintenance

JPEW: did you want to enable spdx output on the AB?
RP: we should at least have some tests for it
JPEW: there are a couple knobs to balance the time it takes to generate it vs
    the amount of stuff you’re generating
RP: we should at least have something somewhere exercising those
TimO: recipetool/devtool don’t know about the spdx license identifier so
    they failed to pick up the right license for a couple things i was looking
    at recently
RP: please open a bug

TimO: OEHH tomorrow!

RP: there’s a patch on the list, involving changes to glibc testing that
    concerns me. there has always been a dilemma regarding glibc’s testing:
    whether to include as a ptest or run with its own test runner? in other
    words, run it as a special case. and we already have a handful of special
    cases: binutils, gcc, and glibc. they’re big and unwieldy and aren’t
    easy to turn into ptests therefore we did run them standalone. the patch
    enables turning it into a ptest. so we now have the options of running
    it under system emulation using NFS, user-mode emulation, or using
    ptests. i’m worried it enables too many options where we have too many
    half-working solutions.
Randy: for people who are concerned about the integrity of the toolchains it
    sounds like a good idea; more options sounds good
RP: options are good to a point, but if you have two things doing,
    effectively, the same thing, then that can be problematic
Randy: is there a way to run the current glibc tests on a target?
RP: yes, not easy to setup, but can be done (give it an IP address etc)
Randy: maybe give it to the doc person (MO)
RP: there might be other higher priority things for docs right now
TrevorW: are the 2 sets of tests orthogonal?
RP: exact same tests, just run different ways

Denys: OEHH tomorrow, Asia-Pacific, 9pm UTC

Randy: do we have a test suite for self-hosted builds?
RP: Ross’s tests for buildtools is close to that
Randy: how do i find that? do you have a keyword?
RP: the way you would run it is: bitbake buildtools-extended-tarball -c
    testsdk
Ross: it only builds libc, as it depends on how much of the builds works
RP: it’s the closest thing we have, it could be easily extended

Denys: nomination period for OE TSC ends of today

TrevorW: Joshua: was you video posted?
JPEW: not yet, i think it should be soon
Ross: what i read said it should be soon
RP: something else i heard today says it would be soon, if not today. it was a
    good presentation, thanks Joshua
