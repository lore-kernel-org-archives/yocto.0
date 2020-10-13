Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
 by mx.groups.io with SMTP id smtpd.web11.3463.1602616798384270099
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Oct 2020 12:19:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mta0StFl;
 spf=pass (domain: gmail.com, ip: 209.85.166.42, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f42.google.com with SMTP id d20so939933iop.10
        for <yocto@lists.yoctoproject.org>; Tue, 13 Oct 2020 12:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=V7zZfjIX0tKkGtmK8Nz36oHFIJzf5TYLiro/52VgELM=;
        b=Mta0StFldYU3tIo11HLLtDjcYZARwZBEv/xx0+yqyx7X/F1wwkiUKZh/rYgQmD47wO
         6dnRxYwuF/aaNR70LXZ5xpXY9rIKZw28AxArIDs23h+u4RlaOprjdWh114pnTKzrIyTT
         GquDdNRw/nTRKHa2L7eso3a5IkRw1vWzU78Vu2xujq8kBEkryBEiK6PUgdI3lfX5hkWT
         uz87wRqrPJxhhqOzdp9uSWhUEOXMyMu1W7vNYOnKiFH+MpV5RrsjhRpqB3AD552zbwJR
         ruZ1dZD9dG8LScVUjdnKEHAjxR+EbJPU0GBz3HZ81khfQb+LPAyt7GGXgDE6B8XxpNy+
         O2oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=V7zZfjIX0tKkGtmK8Nz36oHFIJzf5TYLiro/52VgELM=;
        b=CmcYJ+yicV0UZfQZj5pX3E0N0rrCj7+hF7gTgz3icahhAbOwzhGatNHWZybNel/P2N
         k6WBiNMVl+9T0RFsiSg1GZRydF5TDr/qN2mGj3g1GKi9gk7LmcsFO+lVKaYmhPMm+jvZ
         HFHcEWvPJmry83NC8Qyc1Ov7k1falZGqowsBOUDWIiZuZU+bEZKbTnZASU3E0ZOZgMFe
         87RtcQJRzUV8gzOMy0bT/CocegoakD2Eg2qFdPBM37WG3uYz5gcu1fbMkPz0lFLRGUL+
         DtTSM6TBGAWY/6zxKXRUg76xj3Oa4rJtpof8/wlSmOntzqToft22KNen6D75KBH61MlH
         JqfA==
X-Gm-Message-State: AOAM531kcmgGXGT9lK+mzH24jxjCKevIKZzP8cAQLhXnMl24uBfCGS6F
	MXk43K6uN2OZKkaG7Fgq9gMKJhkLoOETMw==
X-Google-Smtp-Source: ABdhPJxtoMVLKmVteXBzc93Fj2mtPcAGXzig5v/q3mRmvxa5CzwHuNHyivo3LRO6HiVg+yVFcmmr5Q==
X-Received: by 2002:a6b:651a:: with SMTP id z26mr286406iob.186.1602616797058;
        Tue, 13 Oct 2020 12:19:57 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id j3sm648803ilc.25.2020.10.13.12.19.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2020 12:19:56 -0700 (PDT)
Date: Tue, 13 Oct 2020 15:19:54 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for October 6, 2020
Message-ID: <20201013191953.GA8639@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for October 6, 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolly, Armin Kuster, Josef Holzmayr, Richard
Purdie, Joshua Watt, Trevor Gamblin, Steve Sakoman, Paul Barker, Saul
Wold, Stacy Gaikovaia, Rob Woolley, Randy MacLeod, Michael Halstead, Jon
Mason, Ross Burton, Jan-Simon Möller, Mark Hatle, Scott Murray, Vikram
Subramanian, Tim Orling, Denys Dmytriyenko, Bruce Ashfield, Christopher
Larson, Martin Jansa (JaMa)

== notes ==
- m3-rc2 released
- well into m4
- 3.1.3 out of QA (in review by TSC)
- ready for m4, won’t be built until pseudo cleared up
- large number of intermittent AB issues

== general ==
RP: 3.1.3 has a ptest regression in perl, but it was due to the test, not
    perl. some tests need fixing for 3.1.4
SS: it was a problem with the count of the number of tests

RP: we’re a little behind schedule for m4, but we need to get pseudo under
    control

RP: if you create files in a pseudo context (LD_PRELOAD) e.g. do_package_qa,
    do_install, etc if you create a file in that context but then delete it
    outside that context but then go back into pseudo and try to manipulate
    the file pseudo gets confused (it assumes if it has the same inode then
    it’s the same file)
RP: one solution is to add path filtering so that pseudo will ignore certain
    files in certain paths (e.g. sysroot native). the more paths we filter
    out from the pseudo database the less likely we’ll trip over inode
    issues. pseudo needs to be unloaded when qemu is run (since they don’t
    get along). we generally don’t want the files that end up in the deploy
    folder to be under pseudo, but the tasks that do that (put files in the
    deploy folder) need to run under pseudo. there’s also the issue of hard
    linking: sometimes there’s a file under pseudo’s control but then a
    hard link is made to it so now pseudo needs to know that this other path
    is the same file as this other thing it knows about.
RP: right now we’ve added code so that pseudo aborts should it find an
    inconsistency. so before releasing:
    - do we add path filtering: i think yes
    - do we have pseudo abort if it finds inconsistencies: ??
MarkH: could we do an insane_skip?
RP: just to be clear, the abort doesn’t happen consistently in all cases,
    they hit randomly. i added code to do a sanity check on the db and it
    found stuff, but it’s not practical to run sanity tests during a live
    build. a human can look at the issues and know “this is sane, this one
    isn’t” but coding it isn’t easy
MarkH: we should have clear documentation, because layers are going to hit it
    for sure
RP: agreed
RP: i was hoping these fixes would improve the builds (time, space) but it
    only seems to affect space
Josef: is this a new issue?
RP: problem has been there for years. i can point to bugs 3-4 years ago that
    had weird permission changes that couldn’t be explained. now i can see
    this behaviour was the cause. it’s probably been in the pseudo code from
    the start. why are we seeing it now? because the AB is so extremely busy
    and i was lucky to catch it once that made it easy to track down. also
    recipe-specific sysroots exacerbates the issue, making it potentially
    occur more often now.
Josef: then we should focus on fixing
RP: agreed. and we need to think of LTS too
Josef: any idea on how bad the issue is? is it 1 in 100? 1/1000? 1/10000???
RP: don’t know. the new code, working with sqlite package, brings the number
    of db entries down from 10,000 to 500. so that means that there were all
    those extra entries that could be causing issues. all that extra was stuff
    that was installed but then later deleted (but the db not cleaned up).
    much less likely to see issue if you’re using a clean build every time
    rather than reusing the same build area over and over
PaulB: are there legitimate cases where we need to delete something from a
    non-pseudo task that was put in place under pseudo?
RP: yes sysroot-native
PaulB: is the abort patch available?
RP: all in master-next
MarkH: fyi i’ve been running that code and haven’t seen an issue
Randy: layers?
MarkH: meta-browser, meta-xilinx, poky, meta-oe
JS-M: i back ported it to dunfell and ran it against AGL, zero hits so far
Randy: i’m surprised we’re not seeing it “in the field”
RP: i’m not, it’s a core issue, which layers and how many layers
    shouldn’t affect it
RP: for eg. there was an sstate test that would fail, but it only ever failed
    on one specific worker. turned out to be a cache invalidation issue
    (sstate cache). pseudo’s ignore paths, which included the cache, should
    have ignore it but weren’t

RP: anyway, please test

Randy: a week or two until release?
RP: sooner than later
S: rc1?
RP: m4-rc1. probably not before next week
PaulB: i’d rather see aborts than silent failures
RP: it’ll annoy people that the aborts are not deterministic
JS-M: can we print an error that’ll help the user
RP: it’ll be hard to convey the problem when an abort happens

Randy: i can offer a large system for helping
JS-M: i can offer a large system too
Randy: any other tests we can do to try to repeat?
Randy: is inode reuse policy done by FS or pseudo?
RP: FS. there might be different policies and figuring them out

TW: if this issue has been there potentially from the beginning, is it
    possible there are bad images in the field? images that were built years
    ago, in production, that might have a bad permission in some file that's
    almost never used, but could fail if that file is accessed?
RP: yes
TW: does the file path size of the build area affect this? conversely, could
    shorter paths help avoid the issue?
RP: longer paths will cause slower builds, but not breaking. path comparison
    is fast, but not an issue. might need to switch to an allow list rather
    than a deny list, but MarkH has warned against that approach

RP: i’ve had more ideas about improving build speed
PaulB: do we know when we’re going to talk about features for the next
    release?
RP: not planned yet, we don’t have a lot of people working on new features
    (like we used to) so if nobody has the time to add new things, there’s
    little point to talk about what we’d like
Randy: should we talk about it in this call? should it only be for the 1st
    call of the month?

Saul: i looked at the qemu monitor issue. i’m trying to use the qemu monitor
    which gives us visibility into at the state of memory/network/etc qemu. RP
    suggested we might be able to use the monitor, which often uses the same
    connection as the serial/console switching between them by a Ctrl key. i
    was able to get the qemu-montior away from the serial console, interract
    with it via netcat/telnet in order to access the selftest.
RP: what are you seeing?
Saul: i’m using qemu-runner to try to connect to the monitor, but it hangs.
    so if someone has better knowledge of python select()/poll() it might
    help. i’m select()/poll() on the socket, but it never completes.
JPEW: i can help
RP: share the code :-)

Timo: toaster-container still failing, trying to instrument the code to find
    out why/where? just getting a bb-unhandled, which isn’t helpful
RP: do you have the cooker log?
Timo: yes, but it looks clean. it’s the toaster-ui log that shows the failure
RP: these are caused by changes i made in bitbake, technically this should be
    a release blocker

Saul: is TOPDIR whitelisted, or magically removed elsewhere?
RP: whitelisted from what? sstate-hash
Saul: but it’s not in the whitelist itself? it’s magically done
RP: it shouldn’t be magic
RP: we exclude TMPDIR, so maybe it falls under that

JPEW: parsing improvements?
RP: PSEUDO_IGNORE_PATHS which has other stuff in it e.g. BUILDHISTORY_DIR.
    i had been trying to keep BUILDHISTORY_DIR out. the vardeps excludes
    aren’t working properly, i noticed all variables were being recursed
    indefinately. i think that at parse time it can get away with only going
    1-deep, at build time we need to parse indefinitely, but it would speed
    up the parsing step. it is a large job at parse time because at parse
    time it’s looking at everything, at build time we only look at stuff
    relevant to that task. There’s a chance we’re already relying on this
    behaviour, which would make it harder to change.

TW: MACHINE_EXTRA_RRECOMMENDS is not included in core-image-full-cmdline, is
    that okay?
RP: i stumbled across this earlier, there was an explanation
PaulB: probably not included packagegroup-core-base
RP: yes, there was a reason, can’t quite remember
