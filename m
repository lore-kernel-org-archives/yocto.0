Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web12.12020.1614262987654916234
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Feb 2021 06:23:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o020DdYz;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id n28so4211972qkk.4
        for <yocto@lists.yoctoproject.org>; Thu, 25 Feb 2021 06:23:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=3dn/zp0LZfrBBWgiEDfUXNWASctBzDuQ6vEdvfQDHrU=;
        b=o020DdYzCvXWvpzikqIIpJj6H+ly+MS5+2frEBA54+cIaVotp/DnSBqKgl3zZMx0oO
         Asx2rQjey/0XO/wpa0mWwSejkrI6dRTNaZoP6I0Dw3OLZ8hPZi0EaVQEnnw9Tth7trf4
         YLpntWX7VkEBnq06mcW0iCCCH0qKI4sBGWchsmoLIhE8bATbqB6ZkV3jakbXFIArc+eu
         jrk07JVOf5iqo7ahAXqu/fqc3hhz3DhFUGmjXLVWXyEyayzhB7MjweBatIT/+ToIFPiK
         3tKq46dlSZdjDn3OBSRJygZB/zc9/M1otVCkLsWu1GUYAoZDiwF6Dx+KcdqHHL6ffxs0
         htQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=3dn/zp0LZfrBBWgiEDfUXNWASctBzDuQ6vEdvfQDHrU=;
        b=cZ9ML/z7wWG7vPxsnPRTv983QGFj1dbTHKR//z4dhMBzkWQjc37fz0mb3FrSNwm6JP
         L7w0Nra0MZnSKGGe1+6RByknCDlSkpyDcQNcqWWkMp611WrnJ6HqiZileQax63RLfrh3
         RxeP95VnJ9dFx/5zQCbMARnokxetg+Ww8+dF8r1H4mX39jsqfdUofQop1rYu5Uf7Ycnb
         wPHcXcudmy0F39I1klsGgix9D8ZhuZRZ07ed1S/lO8fRaStNt8k1sHVgUUtN/dSag+WG
         LX8o17RxfYWDri1oCVDIhYjVMo26L84HzW2cpgeBMQ+43plF33Byu8W1NMSpr+HOffbk
         q2fA==
X-Gm-Message-State: AOAM532FHqWtsizuur3oc+LQpK7iFKefde7RWQ/Ny5z2hi7rhnP+p9p9
	rmsj37kOWNEOHPQl3xAj6fFvXSQX4jM=
X-Google-Smtp-Source: ABdhPJx7pjwpb+uLXu9bXfWiulWEP7BKFkiLJzJ6PgnAt8M+JXI1esaJ1mp+Nk4XNLC0SHy2pogc7w==
X-Received: by 2002:a05:620a:22f7:: with SMTP id p23mr2740446qki.435.1614262985848;
        Thu, 25 Feb 2021 06:23:05 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id 16sm3450506qtp.38.2021.02.25.06.23.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 06:23:05 -0800 (PST)
Date: Thu, 25 Feb 2021 09:23:03 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes/Engineering Sync for Feb 23, 2021
Message-ID: <20210225142303.GA26834@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for Feb 23, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Scott Murray, Armin Kuster, Michael
Halstead, Steve Sakoman, Richard Purdie, Randy MacLeod, Saul Wold, Jon
Mason, Joshua Watt, Paul Barker, Tim Orling, Mark Morton, John Kaldas,
Alejandro H, Ross Burton

== notes ==
- 3.2.2 passed QA clean, awaiting final approval from TSC
- 3.1.6 built and in QA
- 1 week before -m3 should be built (feature freeze for 3.3)
- adding RPM to reproducibility, still needs some work
- recipe maintainers: please review the patches we’re carrying (push
  upstream as many as possible)
- glibc 2.33 issue should be resolved with latest pseudo
- AUH patches are now merged or queued, few of the failures handled
- AB issue list is at record high (not good)

== general ==
RP: can’t get stable test results out of AB on master


RP: would be nice to get RPM reproducibility issues ironed out, but there are
    some epoch issues to work through which messes up diffoscope
RP: was surprised to see how bad the interactive response is on the cmdline on
    the builders. it seems like an I/O bottleneck
Randy: mostly I/O to SSDs?
RP: i believe so
RP: it was immediately after a build had been started. so it could be related
    to downloads or sstate fetching. how much sstate did you expect that build
    to be reusing?
SteveS: version bumps to conman, kernel… yea that could lead to a lot of
    rebuilds
Michael: we’ve been optimizing for throughput for a while. on some other
    build systems we leave some overhead available for cmdline interactivity.
    should we start to do that with the YP AB?
RP: i think it would have to be backed off by a significant amount to get that
    breathing space. so maybe yes, but we’d have to look at it to see what
    to backoff and by how much. looking through the build i see that 77% was
    pulled from sstate (therefore pulling data off the NAS, then extracting
    it).
Randy: and that’s not coordinated at all, if there are 100 items, then 100
    threads?
RP: but limited by BB_THREADS
JPEW: run by buildbot? maybe we could use cgroups?
RP: i don’t think it’s CPU bound, the CPU was 50% idle when the cmdline
    was very slow
MichaelH: sometimes we see that when the system isn’t healthy, i wonder if
    it’s isolated to specific machines?
RP: on the CentOS machine, a command took over 5 minutes to complete. then
    tried debian, same thing. then logged into the fedora machine and was
    able to do stuff. but it didn’t seem isolated to any machines, it
    seemed localized in time (i.e. right after a build had been started),
    then dropped off. so i feel that it might be related to the initial build
    startup, probably related to sstate pulling/extraction
Randy: could also limit I/O using cgroups
RP: we do use IOnice for parts of the build (2.1 and 2.7)
Michael: translation: class 2 priority 1; class 2 priority 7
Alejandro: are these sharing any hardware
RP: they’re all connected to the NAS
Michael: and they’re 100% dedicated to this work
RP: i don’t think this is a network bottleneck, i think this is sstate extraction
JPEW: maybe a different compression algorithm? gzip is notoriously slow
RP: wouldn’t that make it worse?
JPEW: does each AB have their own mirror
RP: it’s all done over NFS
JPEW: network bandwidth should be lower than local unzipping/extraction bandwidth?
Alejandro: could we try different I/O scheduling?
RP: don’t know

RP: had a look at patches. 1,300 patches in oe-core, ~600 in pending the rest
    are submitted or not appropriate. some of these are 10 years or older,
    do we still need them? i sent 2 upstream and was told it wasn’t needed
    anymore (problem fixed in other ways). there’s also one in valgrind that
    looks similar (different fix upstream) and not needed.
Ross: if some people could try to do 1 a day that would be a huge help
RP: lots of patches related to reproducibility
JPEW: the big issue with perf is that it uses bison (which needs patches)

PaulB: read-only mode for PR server. i’ve been working on it, but it’s 1
    big patch. there’s code to handle daemonizing and forking which in hash
    server is using the python mutli-processing. we also want to use the
    same RPC mechanisms that python is using. are those good lines along which
    to break the patches down?
RP: that sounds perfect
PaulB: it was easier to bash on it all together, then go back and break it up
    into digestible chunks
RP: it’s 10 year old code, so i’m not surprised
PaulB: i’ve broken out a part that uses JSON RPC, then use that for the
    server
RP: sounds good to me
JPEW: me too
RP: scaling that code under python2 was a challenge. glad to see this moving
    forward

RP: Randy posted rust patch set. felt it couldn’t be merged in this form
    (too many patches)
Randy: do you want the history squashed?
RP: that was my feeling
Randy: i’ve been working on it bit by bit as stuff happens upstream which
    leads to lots of little commits. but i can reorg by logical group and
    squash the log
RP: yes. in one case there were lots of commits to the rust version, then in
    the end you end up with 2
Randy: someone from MS worked on getting the sdk stuff working
RP: given that next Monday is the feature freeze, let’s get the patched out
    sooner, and worry about the sdk later
Randy: ok. last remaining issue is the pre-fetcher but i don’t know much
    about it. looked at PaulB’s patches
PaulB: there are 3 methods floating around, i’ve focused on one of them that
    i like
1. doing the download ahead of time in do_fetch()
2. let rust-bin do the downloads itself in do_compile() which i don’t like
3. haven’t looked at the last one yet
PaulB: i like 1 because it asks rust to output a cargo which the fetcher can
    then act on
Randy: doesn’t rely on crates?
PaulB: i think it relies on crates for things that it can’t resolve. however
    Andreas’ approach relies on getting bitbake to understand cargo-toml
    file, not sure if that’s a good approach
Randy: are there any lessons with Go that we can use?
Scott: Bruce would be a good one to talk to
PaulB: my understanding with Go is that the code tends to all be placed
    together in the git repository, so the fetch side is a little simpler
Randy: so given the approach we’re using is there anything that needs to be
    added
PaulB: it needs testing
Randy: i have a team working on testing the rust compiler itself. they can
    successfully execute 2/3 of the tests now (of which 99.9% pass). i have
    a reproducibility test for rust hello world, but it takes a long time to
    run. any tests you’re thinking of?
PaulB: fetcher tests. if you have a “crate://” in a URL, just making sure
    it gets translated correctly to make sure it doesn’t bitrot
Randy: is that an -m3 or -m4 activity
RP: if we’ll get it in -m4 for sure we can wait until then. in oe-core
    we’d want some sort of hello world (make sure compiler works and we can
    run the binaries)
Randy: we have that already
RP: both for cross-compiling and target. then reproducibility tests. i’m
    happy to build them up, as long as there’s a roadmap. for -m3 i think we
    should get the baseline rust set and the crate fetcher
PaulB: crate fetcher overrides the wget fetcher and makes sure everything gets
    put in the right place. so it just needs a couple test cases; a map of
    inputs to outputs. i’ll resubmit the patch and include a list of tests
    that we need to add
RP: if someone could reply to Andreas and let him know what’s going on and
    why we’re going in a slightly different direction than the work he’s
    submitted
PaulB: the fundamental unit is the recipe. devtool is the place for some of
    the functionality not bitbake
Randy: building rust hello world works for all glibc qemu targets but some
    breakage with musl (risc-v and powerpc) i think Khem is working on the
    risc-v one. will that hold things up?
RP: no
PaulB: i have some slightly larger rust packages (larger than hello world)
    that i think will test things a little more thoroughly, e.g. ripgrep
Randy: we’re testing that one already. should we add it to oe-core?
RP: it would be good to have something in oe-core to do testing
Randy: i think hello world would be good enough for oe-core and leave larger
    tests for other layers
PaulB: there are rust things in oe-core (librsvg, etc) so i think oe-core will
    have good test things already in them without having to add recipes just
    for testing’s sake
Randy: things also seem to work well on ARM builders
Ross: yes, things are on-target

TrevorW: started work on 2021 YP conference. conversation moved to
    conferences@lists.yoctoproject.org if you want to follow along or help

RP: fetch, workdir, can’t clean up workdir, config changes but can’t
    cleanup. maybe we should fetch to a special dir and then just symlink
PaulB: would it be recipe-specific
RP: yes, it would be under $WORKDIR
PaulB: would make the archiver easier
TimO: there are a number of Go modules that don’t cleanup properly so maybe
    this would help
ScottM: there are lots recipes that do post-processing on files in $WORKDIR
    before moving them to the artifacts directory, so there could be breakage
    there
PaulB: can we do it first thing next release
RP: we’ll give it a try and see
TrevorW: i think a lot of BSP layers will be affected
RP: i think there’s a lot of chance a lot of things (not just BSPs) will be
    affected
ScottM: there are some BSP things that will be affected, but in AGL we’re
    doing a lot of $WORKDIR manipulations that aren’t necessarily BSP
    related as well
(several): overall it sounds like a good idea and a good cleanup to try
