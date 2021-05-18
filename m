Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web09.3431.1621375027987441685
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 May 2021 14:57:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ivlZj86z;
 spf=pass (domain: gmail.com, ip: 209.85.160.176, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f176.google.com with SMTP id c10so8699493qtx.10
        for <yocto@lists.yoctoproject.org>; Tue, 18 May 2021 14:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=kTAaFq0WY+lnK02nR7B0pKAWqwncUfvMO4LY0qyiiEs=;
        b=ivlZj86zcQf4vxjjMkw/n1PxhDyN9Iy5XiNCh5fWeGqAu+f/B/PCanVaeKAKFXBAAv
         yq9J4oKSbYMS0cCZYBwx39cl4OHQSoKBjU3UwB1OJYJ3ficcPxipmCL7HDfMOOWIX5D2
         SVS9ZUYfkFVbQvNC3QVDra2V1poAl4xDuYsUl0N98ylhgCFU9hlGQND2pmjmGfdDClC9
         se2462LWvlc67VOByTmjlSDSmaMs7/7donFB96NyArr6Ab+6nFhz7uipLFI/ui1VFvWh
         lPuTFxE82Vlgg4QHQimnBMLuM76J2l3A0vmkPXCf2tdtsIn4km6lqQ4UWvgq4Xj6V0fy
         vU/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=kTAaFq0WY+lnK02nR7B0pKAWqwncUfvMO4LY0qyiiEs=;
        b=NW1+JcONjQh1Qxfkiln7So+lQS72saxcsk544kQ6NITQrXvan7DTOmP3fG3FDsr61R
         +Em1F6Cnw94Qo3CstrVvurO0A3zWsAbk+3hI96w7sni8orHhBkPuDr8ZxrKuTpHAM6Zr
         h/d1eGUFSZXCDhb1w5DrLnNthjTGhB+0+EsgKL3SqROoKpx5vFyw9sGFEwm8GDltfA2b
         b/ZBgwilw09vII4N6/CwzZ7gOTPlS32bVFR37RvZvUUT1lvmhhLLHdDj/QMgQ/ssFyXY
         v5ZPqtz0U2P32hfeeiMixEfh15G0/is1m3+U/AMgUnq3xWHj2YjsxSU99OPvcCRc84D4
         FPeQ==
X-Gm-Message-State: AOAM531SE2BsW8BgkQsCCr3N4mj7z4++7QwyxF+nFVxjOidrvX/xi79x
	ZEJACfJ80dkAVDrq4ZFYcc4RgnemS4PwgQ==
X-Google-Smtp-Source: ABdhPJzO/7FrMocvo4QBnYiCHjMMQKhxYlM0ZmdTq9tDtqSo/2CUyskBJXL4QrVXE5gAm4e9X0fZEg==
X-Received: by 2002:ac8:5313:: with SMTP id t19mr7407494qtn.190.1621375026381;
        Tue, 18 May 2021 14:57:06 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id y13sm13646432qkj.84.2021.05.18.14.57.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 14:57:05 -0700 (PDT)
Date: Tue, 18 May 2021 17:57:04 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for May 18, 2021
Message-ID: <20210518215704.GA6325@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for May 18, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== announcements ==
The upcoming Yocto Project Summit is taking place May 25-26 2021
details: https://www.yoctoproject.org/yocto-project-virtual-summit-2021/
registration: https://www.cvent.com/d/yjq4dr/4W?ct=868bfddd-ca91-46bb-aaa5-62d2b61b2501

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Peter Kjellerstedt, Steve Sakoman, Joshua
Watt, Scott Murray, Michael Halstead, Ross Burton, Randy MacLeod, Tim
Orling, Jon Mason, Jan-Simon Möller, Alexandre Belloni, Bruce Ashfield,
Richard Purdie, Trevor Gamblin, Tony Tascioglu, Alejandro H

== notes ==
- 3.2.4 was released (gatesgarth), this is the last 3.2.x release before
    community support
- 3.3.1 is in QA (hardknott)
- round of AUH updates being added now
- Anuj not available, RP acting as maintainer for hardknott
- huge drop in CVEs against master
- multiconfig issues in bitbake
- smp enabled on qemu arm/x86 and switched to newer MACHINE for x86
- OOM issue tracked to glibc
- bitbake heartbeat events causing bitbake to hang, patch pending
- sstate bug tracked down (thanks JaMa), fix merged
- enabled more resource control

== general ==
RP: the bitbake heartbeat issues seems to be cause by additional logging that
    was added


RP: mips/ppc/arm glibc usermode testing seems to cause an OOM issues (it was
    found to be using 83GB and up)
Ross: that’s a lot of memory for a glibc test
RP: appears to loop infinitely, even if glibc exits, it leaves things behind
    that eat up memory. there are some tests that segfault in malloc(), seeing
    12GB of memory being used, we might have to get rid of them until we can
    figure it out. this seems unloved, if nobody fixes this we'll pull it out
Ross: glibc tests running inside qemu-user?
Ross: what about downgrading qemu
RP: the tests are things we supply (system mode and user mode) x86 is fast
    enough (thanks to kvm) that they can run okay, but off architectures
    struggle
Ross: hopefully we’ll just find some tests to disable (if they’re not
    important enough)
RP: i’ve identified 4 tests specifically (e.g. pthread timed locked loop)
Ross: be interesting to run on real hardware to see if there’s an actual
    leak in qemu or an issue with the test
RP: maybe we can add a resource constraint so qemu dies and doesn’t take the
    whole system down with it instead
Ross: we can look at it from an arm point of view
RP: this is an oe-selftest, so not run on arm
RP: rpm and deb compression not covered, and we know rpm (for example) is
    using all available threads (because it uses liblzma directly instead of
    xz) so our constraints aren’t trickling down to tools like this. we need
    to look to see if there are other places and examples of this happening


RP: open letter about challenges (maintainers, resources, contributions to
    day-to-day running of an open source project). was written because people
    have asked me to. let me know if you know of anyone wanting to follow up.
    for example, it would be nice to know who is using the project (and list
    it publicly). spread the word.

    see: https://lists.openembedded.org/g/openembedded-architecture/topic/open_source_maintainers_an/82722442


ScottM: multiconfig issues on hardknott? any details? about to start some
    dunfell stuff
RP: i don’t think some things have been backported to dunfell, a fix was
    added to master but it didn’t fix the problem. looked at it last week
    but got dragged away by other things.
JPEW: we use multiconfig a lot, i’ll take a look at it
RP: instead of a deferred list that is continuously updated, i want it to
    calculate things once (the rehash list), so take a look at what’s in
    master-next. it shouldn’t be too hard to pull back into dunfell
JPEW: we use dunfell at work, so it shouldn't be too hard to test. i can test
    master-next at home
RP: the master-next patch should apply to dunfell quite easily
RP: i’m worried about multiconfig
RP: we’ve improved the sstate cleanups quite a bit, tmp cleanliness is
    quite good (hardknott) but people are writing recipes that don’t care
    if data is machine-specific, this causes multiconfig to blow up. people
    are writing bad recipes and then complaining when their bad recipes blow
    things up
JPEW: how to tell if recipe is bad? can we automate something?
RP: no, not easily
JPEW: the problem happens when all multiconfigs share the same tmp directory?
RP: yes. writing a test would be hard, it would have to go into oe not bitbake
JPEW: curious to know how many people are using multiconfig and using
    multiconfig with tmp directories
RP: according to irc, many
Ross: i think there are lots of people using multiconfig too soon, multiconfig
    is overkill for them, and then they end up abusing the tmp dirctory
JPEW: because multiconfig uses a common tmp directory by default?
Ross: yes
AlejandroH: i submitted doc fix to recommend people use separate tmp dirs when
    using multiconfig
JPEW: i will be talking about it next week in my hands-on class at the YP
    Summit
RP: to Ross’s point, too many people are now turning to multiconfig to build
    completely separate builds for multiple separate machines. this ignores
    how the build works, historically
ScottM: sstate stamps are not machine-specific
RP: exactly. i think we have to figure out how to detect it, but not sure
TrevorW: do we want to steer people away from using multiconfig to build
    unrelated images for unrelated machines?
RP: i don’t think we can, i think this is what people have been wanting, so
    we need to make sure people are doing it right.
JPEW: on the stamp files, would it be possible (expedient) to run bitbake in
    a way that all it does is generate the stamp files for all tasks? then
    maybe we could run bitbake to generate all these stamps and then look for
    overlaps?
RP: that’s what deferred tasks are. where it sees sstate stamp files that
    overlap it will do one first, then look at the other overlapping ones.
    ideally doing one first will put stuff into sstate that the others can
    then use. so it does do these checks. the problem is that when there are
    mistakes in the recipes these tasks don’t actually have anything to do
    with each other:
    1. hashes are identical or not (deferred tasks)
    2. checks for stamp overlaps (don’t run 2 tasks with the same hash)
TimO: that explains why i’m not seeing issues because i always build with
    separate tmp dirs. we can use shared download dir and shared sstate dirs,
    but it’s only with shared tmp dirs?
RP: yes. but you will be seeing deferred tasks, they just won’t interfere
    with each other if you’re using separate tmp dirs
AlejandroH: i test dunfell multiconfig but haven’t seen it (because i too
    use separate tmp dirs for each build)
JPEW: in theory we should be able to use the same tmp dir, we just have to do
    it right
RP: actually, in my testing i have been using separate tmp dirs, but i’m
    still seeing issues. so i don’t think separate tmp dirs is completely
    related. qemu cross wrapper script was building it twice and the license
    was the same but causes a rehash event for one of the builds, this is
    what starts the problems. so the cause is: deferred builds, multiconfig,
    reusing hashes


TrevorW: cancel next week’s call due to YP Summit?
RP: (gathers consensus) agreed


RP: software bill of materials, SBOM (in the US) we don’t have one
    currently, but we could do something similar following the model of the
    license SPDX. this could really put our project in the limelight
Randy: i think Saul has looked into this
TrevorW: i’ll add it to the OEDVM list
JPEW: we have a tool internally that does something like this, if Saul is
    working on it then i’d like to be looped in
RP: meta-doubleopen seems to be doing something like this:
    https://github.com/doubleopen-project/meta-doubleopen
    https://lists.yoctoproject.org/g/yocto/topic/vs_vs_yocto_make/82910309
    we don’t need multiple solutions, we need something simple and be able to
    say we have it, then build on it
JPEW: do you do that at WR?
RP: the tool i linked does SPDX
PeterK: easy as long as it’s open source, the closed code we bring in gets
    harder
TrevorW: isn’t this what we get with buildhistory?
RP: yes, apart from the spdx format
JPEW: since we’re building everything, we have all the data
RP: i’m sure there will be lots of corner cases, but we need to say “we do
    this”
JPEW: json format in version 2
RP: and we can translate accordingly (xls, rdf, yaml, json, xml)
RP: let’s use the licensing email list to discuss this
