Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web10.7615.1630730772584288684
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Sep 2021 21:46:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BZY7wSgz;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id ew6so891182qvb.5
        for <yocto@lists.yoctoproject.org>; Fri, 03 Sep 2021 21:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=1ZkgPmmq7Y9TdkBo3jyt0GNwMNqiLq0rmUYafzDZ0hg=;
        b=BZY7wSgzHs3LNgSUYDEZVrRmFX7GDx6jgdJUg1RtLFcK2xCh4kWrTG5/fGcOwbmxb5
         0X6EcXHAHoxDRyV+tdbx3awdgBNyqO/jcq5AGDzUQ5p9axGahf3WfBtZM6zRW63lQZI7
         IvXvdy095g7QFxsdoY3OHhhhyzzbBOqU4wcMOf11ldZPUg9kU+HV/lCH7RLuRuzU73sf
         snrFgdn/FFoUyMvM8VU/Nktmm2NSK9r4VibMQhHOFbI4bdlt6caI8Pa5a2rT2VPK9E3u
         pV+V9yFtl1XaGuGwJ7QrSOEJTulnswCnN9O1ZBetizfpgg+2r9QX2ZyGBzn+d7ixPjB2
         +SCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=1ZkgPmmq7Y9TdkBo3jyt0GNwMNqiLq0rmUYafzDZ0hg=;
        b=DDgsVor592BA6JauR1RDUJWwUJqZ47ydUSo0xwCurYZRcUXFk+5PcTxWpz1is8bCKm
         CwjCKpjCLomh60UBibbE4tpnao/ZmnYpAWO5erztes9WlBVAsM+ttvouVHrGCoa9YzWO
         kUiekIeK+dCP+UtJzxtGET67BgtuHcv211m5HX3BOjmqrUiefftHZj10iefWAQdWRCzo
         qtQO0SyA1DhSRpn4oGz8c+o7Z/liV4QUMUCtCMheyzA2+FkAN7T7nR/ySafCVCJ6nzo1
         FsRGUWDKgSDGT9tDue3uL2EjcwKgRlvqTvq4vPMVCp9TBmpd35pu+GCxpEk6j7H4MLLI
         DjsQ==
X-Gm-Message-State: AOAM531z3PSb0za07Y+MqsWUE7SVdEF6+i/SSE1SpsM94Rz6wymwdQ8v
	ztqSa8ifep9/pEy0EpiW7gGtA2hh6FyFkw==
X-Google-Smtp-Source: ABdhPJzGQHPnLG2OIzgp7z4uCp7OCCK4ql3sS6qrjG1yBRU5987b5IUgoyJag7W+ydHXW9hUIzYuaA==
X-Received: by 2002:a0c:e104:: with SMTP id w4mr2453768qvk.28.1630730770789;
        Fri, 03 Sep 2021 21:46:10 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id t24sm1014297qkg.28.2021.09.03.21.46.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 21:46:09 -0700 (PDT)
Date: Sat, 4 Sep 2021 00:46:07 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for August 31, 2021
Message-ID: <20210904044607.GA32247@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for August 31, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Richard Purdie, Saul Wold, Trevor Gamblin,
Scott Murray, Richard Elberger, Peter Kjellerstedt, Michael Opdenacker,
Joshua Watt, Randy MacLeod, Jon Mason, Armin Kuster, Michael Halstead, Ross
Burton, Jan-Simon Möller, Tim Orling, Alejandro Hernandez, Bruce Ashfield

== project status ==
- feature freeze for 3.4 (honister)
- there are a number of issues holding up an -m3 build:
  - rust was merged into oe-core but then a problem was found with
    cargo-native on centos7
  - a kernel issue regarding kernel module versioning changed
- a pseudo fix went in for the glibc 2.34 problem, but isn’t the most
    ideal way (binary shim) to solve the problem, investigation into other
    approaches would be good
- the glibc 2.34 upgrade introduced a bug with docker and the clone3 syscall
    which now returns EPERM instead of ENOSYS. this is an upstream problem,
    but we’ll probably need a local patch until this is resolved

== discussion ==
RP: -m3 not built yet, waiting on stuff, e.g. there’s a glibc issue with
    docker (probably an issue with docker, but we’ll probably need to
    carry a patch) which probably means a new uninative release as well
    unfortunately, there’s a kernel issue with newly added full version
    strings but there is a patch so it’ll need testing, and there’s a rust
    issue on centos7
Randy: i’ll take a look at the rust thing, i didn’t realize it was
    blocking -m3, i was looking at upgrading librsvg and the things that
    depend on it
RP: librsvg is important, but thanks
Randy: i was hoping for a smooth upgrade and that i’ve have something for
    you today, but there were some problems, so i think it’ll have to wait
    until the next release.
RP: were the problems with rust, or rsvg?
Randy: rsvg builds, but gstreamer-bad (or something) has a configuration
    issue, so that’s where i left it

RP: there’s pressure to get a hardknott build in, but we’ll wait until we
    get the openssl fix in. so whether there’ll be a new hardknott release
    or it’ll be -m3 i’m not sure. i’m hoping it’ll be -m3 but we’ll
    see how things go with builds
SJ: i’ll update the schedule
RP: there’s a little bit of pressure there because of the overrides changes
    and i think people are anxious for a hardknott release so we’ll try to
    fit one in. i’m told there is QA time available.

Ross: what’s the state of the sbom work?
JPEW: Saul found a bug with packaging native recipes, i need a way to figure
    out how to skip reading the subpackage metadata when there’s no packages
    actually created. i haven’t figured out a good way to do that other
    than: if it inherits class native? seems a bit kludgy, but i can do that 
Ross: that’s probably the easiest way
JPEW: we can skip the step where we read in the package variables and try to
    create all the packages if it inherits from native. i already had the
    check in to say “if there’s nothing actually packaged, skip creating
    the package spdx files and i thought that was sufficient, but apparently
    it’s not as you have to disregard all things related to packaging in
    native recipes, not just whether it created packages or not. so we can do
    that fairly simply, i think, after that, as far as i’m aware, it’s
    ready to go. it generates a bunch of warnings because of licensing things.
    we’re validating the licenses against the spdx license list so that we
    generate a valid spdx license and most of the warnings are if the user
    specifies “BSD” instead of BSD-2/3/4 clause. so i’ve been slowly
    fixing those
Ross: i thought that was fixed. i thought we had code to rationalize the
    license terms to spdx names?
JPEW: we do, but just “BSD”, by itself, is not a valid spdx license
    string. so i’ve gone in and changed a bunch of recipes where it was
    obvious that it was a BSD 2/3/4 clause. there is support in spdx for
    including your own custom licenses, but i don’t have that in yet. we
    could pull the generic license text from the paths that we have, so for
    any license string that we don’t recognize as spdx we could go and put
    our own. but i don’t have the working yet; the code to find a generic
    licence file is… “intense” so i wasn’t up for dissecting it
    right now. so for now it just adds a placeholder license and issues a
    warning. but the vast majority of them are the “BSD” thing needing
    to specify the 2/3/4 clause. other than that i think it’s ready to go.
    unfortunately, until they’re all fixed we’ll get warnings on the AB,
    but we could put it in and maybe not turn it on
RP: or we could just test a smaller subset
JPEW: i’m just only doing core-image-minimal and core-image-base now
RP: oh
JPEW: if you did world i think you’d get, thousands of errors 
Saul: i’ve been playing with world builds and meta-openembedded as well;
    there’s a lot of issues
JPEW: like i said, we could just include the generic license text, but those
    BSD ones are almost assuredly wrong because they’re not going to match
    the generic BSD license we have
Ross: the generic one we ship is 3-clause so we could just tell it that
    “BSD” means 3-clause?
JPEW: from what i’ve seen that’s not correct often enough
Ross: okay… and we are trying to generate correct data
JPEW: in the long run we should eliminate the bare BSD license. we should just
    force people to specify the clause correctly. there are also a bunch of
    one-off licensing things, not sure what to do about that
RP: there was an effort a while back to get rid of the generic BSD stuff, and
    that went so far but it sounds like it hasn’t gone far enough. we should
    go through and we should rationalize those. in spdx i think there’s a
    way to do an external license? an additional license that is not spdx?
JPEW: yes, if we encounter a license that doesn’t have an spdx mapping
    then we put a placeholder that is an external license but it’s still
    “wrong”. but what we could do is search through the license search
    path and pick out the generic license file the corresponds with that and
    put that in there. and then that would cover all those unknown licenses
    (e.g. bzip2 1.0.4). so it’ll know it can put that in as an external
    reference. however i would rather not do that until all the BSD ones are
    handled. it’ll eliminate the warning but then all these BSD ones would
    be silently wrong
RP: i’m thinking about having something we can actually merge
JPEW: i think we can merge what we have, it will generate some warnings and
    people should go fixup the licenses
RP: i’d like to get rid of the warnings before we merge it. if we allow
    one warning on the AB, then it breeds quietly and then suddenly lots of
    warnings get ignored
JPEW: i could comment out the warning. it does still generate the placeholder,
    it’s just not a very good placeholder; it literally says: “this is a
    BSD license”
RP: i think the spdx people would be interested in having a list of the
    licenses required to create a basic linux system that aren’t in their
    system
JPEW: the spdx spec does say that putting in a placeholder like that is okay,
    the warning is just nice to let you know where you have to fix things up
RP: i think having the warning commented out for getting it merged at this
    point is desirable at this point
JPEW: ok
PR: i saw Saul’s patches for native packages. what we’ve tried in the
    past, and is only half complete, is rather than zeroing out the packages
    field what we tried to do was preserve the packages field and then just do
    detection on whether native was being inherited or not. sometimes there is
    dependency information that is hidden in the RDEPENDS fields, and in order
    to know which RDEPENDS fields to lookup we need the PACKAGES variable.
    and in the native case if you zero out the PACKAGES variable then you no
    longer know which packages that that thing might be producing to know
    which variables to go query. the overrides changes might help clarify. but
    the intent was to stop destroying the PACKAGES variable so we could use it
    in more places
JPEW: if detecting whether or not it “inherits native” is the way to go
    then i’m happy to go with that

TrevorW: there were further replies to your email about the pseudo problem on
    the libc-help mailing list. one suggestion was to use ptrace, another was
    to use seccomp, yet another was to use the newer seccomp notify mechanism.
    also crOS does something similar to pseudo but uses lddtree.
RP: the seccomp notify is interesting, but there is some small print in the
    man page of particular note: we can’t write data back to the process,
    so while you can do all this cool stuff in the supervisory process, we
    can only change return value, but not the return data. we can poke into
    the process’s memory to read things but there’s all sorts of locking
    constraints. you have to be very careful how you read the data because
    you have to make sure that the process didn’t disappear while you were
    halfway through reading from its memory. so because of that you could
    never write data back to the process. pseudo is modifying data because it
    wants to fake the file permissions and therefore it would have to write
    data back and change the return data and i don’t think that would be
    viable. so i don’t think the new module would work. i’m not familiar
    with the existing seccomp stuff to know whether a module like that would
    be able to do the intercept and be able to do the writing. i don’t think
    doing this for every linux syscall (and all their quirks) is easier than
    doing it for every libc call (and all their quirks). we’ll just end up
    replacing one set of problems with another
JPEW: i suspect the advantage of doing it at the syscall lever would be that
    you’d catch things that don’t use the standard C library, e.g. Rust
RP: totally. there are advantages yes. you would catch things that are
    statically linked (and don’t have dynamic library support) so yes
    there are some advantages do doing that. whether it’s enough of an
    advantage… the jury’s still out; not sure. ptrace would be far too
    slow for what we need
TrevorW: what about if we used musl instead of glibc?
RP: that would give us a whole load of headaches because we would end up
    writing an entire intercept library. all of these libraries are linked
    against glibc, therefore pseudo links against glibc and intercepts glibc
    syscalls. it would be interesting to see whether musl has a pthread
    implementation that is simpler than glibc so it would let us statically
    link it into libpseudo
TrevorW: then maybe the versioning problem wouldn’t be there?
RP: no, there are some problems it would solve, but there are some problems it
    would create. libpseudo is a glibc intercept library, as built. because
    it’s intercepting things on a glibc system. if you put musl in there
    you’ll then having it linking against 2 different C libraries. which
    means you’ll have the .start and .end sections from 2 different C
    libraries involved. you can’t replace glibc with musl, you would have to
    have both
Scott: with pseudo we’re intercepting things from the host side as well as
    in the sysroot, correct? so the problem is on both sides because the host
    tools are getting intercepted
RP: it doesn’t matter that the target it because the host tools are linked
    against glibc and are dynamic
Scott: does the buildtools tarball cover everything we need from the host?
RP: no, probably 90%, but not everything
Scott: would it help if it did cover everything, then we could say always
    glibc 2.34 and not have the mismatch
RP: not sure. we don’t build our own git for example, and we do the same
    for a couple others. we do 2 levels of build tools because we do the
    basic one, then we do the one which has gcc and some of the “heavier”
    stuff in. so at the moment we do have a split-level approach. regardless,
    people could add to the host tools and bypass the thing, and it would have
    to work regardless. unless we mandate that we only ever build using our
    tools, but that feels like a backwards step
Scott: down the road, the problem goes away once everything is glibc 2.34?
RP: there are things like centos7 that hang around for a long time
Scott: and i’ve seen customer who play around with host tools, so it would
    be problematic for sure
RP: it’s an interesting idea. you’re getting to the point where you’re
    mandating the host environment, which i get nervous about. might as well
    use a container or force everyone to use docker (lol)
Scott: down the road we could use pseudo with user-id name-spacing but at that
    point we might as well use a full container
RP: it would be nice if those features were available in such a way that we
    could actually use them for this. so far i haven’t seen anything that we
    could use, but so far everything always needs privilege
Scott: it’s coming along, but not there yet
JPEW: podman might be a possibility, but it struggles with the number of file
    descriptors that it can open
RP: the seccomp interface was designed by someone with a specific use-case,
    i can’t help wonder if we couldn’t get a kernel interface designed
    that would work for us. our requirements aren’t that high. and there are
    other users of this sort of use-case (e.g. fakeroot) that might benefit as
    well
Scott: if you use BPF there might be a whole bunch of people interested
RP: …and write it in Rust (lol)
TrevorW: it’s a coin toss
RP: sometimes the act of putting together the proposal and getting feedback;
    it might not fly on the first attempt, but you would learn enough to make
    a second attempt fly. that would be the long shot, but perhaps worth it;
    it’s not out of this world and we’ve used fakeroot technology for most
    of that time in one form or another
JPEW: according to the seccomp man page regarding seccomp notify, and i think
    what it’s saying about the writing is you can’t know if you’re
    writing back to the target’s process’s memory space that it hasn’t
    interrupted the syscall for the thing you’re writing. and thus you’re
    corrupting something
RP: yes, basically you can’t use that to write the data back. and i
    couldn’t spot any other mechanism that was making that available either.
    the kernel should know, but perhaps the supervisor can’t know. i don’t
    think a supervisor module could work, but i was curious about seccomp
    itself, with the filtering, but i don’t think the program itself can
    make its own library calls
JPEW: the supervisor seems quite limited; it’s just for blocking system
    calls?
RP: yes, it just modifies return codes. we already have a model in pseudo
    where everything gets serialized and stuffed over a socket to the actual
    pseudo database. we’re mostly there with our code, it’s just a
    question of whether seccomp can get us the rest of the way. i suspect with
    seccomp having a security focus has a different set of constraints. what
    we want might be counter to what a security mechanism might work.

Randy: we’re still finding edge cases with the overrides thing. it would be
    nice to document the rationale for why this was done as a flag day instead
    of a warning period?
RP: what would you warn on?
Randy: i’d like to document the reasoning
RP: the reason for the change is because bitbake could never tell what was an
    override and what isn’t. so there was no way to tell where that colon
    should or shouldn’t be. take SRC_URI, would you like a warning that the
    underscore in SRC_URI may or may not be an override. that one is obvious,
    but there are a number that aren’t. have you looked at the migration
    guide?
Randy: no, i didn’t check that
RP: we did try to document it. we did find a quirk in bitbake that sometimes
    because of the order of processing various configs/layers, it would
    produce nicer error messages for some things but not for others. it would
    have been nice if all the warning/error messages would be uniform and
    clear, but they’re not

TimO: what’s the status of Rust on the centos7 worker?
RP: cargo-native fails to build with a glibc symbol mismatch error that looks
    a lot like the uninative issues. the interesting thing is that centos7 is
    using the buildtools tarball, so it does look like a bad interaction with
    the buildtools tarball. but this doesn’t seem to happen anywhere else
    we’re using the buildtools tarball (including my own local worker). so
    there’s something odd the centos7 machine is doing that the others are
    not. it looks like there’s something in the centos7 environment that’s
    letting it use the wrong linker. because buildtools should be using its
    own linker, and the host paths are all pointing at the buildtools linker.
    and the buildtools compiler should know how to use the buildtools linker.
    but something is escaping that somehow, but i’m struggling to prove
    what’s going on. but i think we need to investigate this to understand
    what’s going on to make sure it’s not going to affect other systems in
    some weird way.

RP: we were having some issue with dunfell with meta-aws (yocto check layer),
    there was a patch that was supposed to be on the AB but wasn’t. but we
    got the patch in and it looks like everything is okay now
RE: awesome, thank you
