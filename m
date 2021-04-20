Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web09.156.1618940141144174751
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 10:35:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AE8XBQGt;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id o21so1166786qtp.7
        for <yocto@lists.yoctoproject.org>; Tue, 20 Apr 2021 10:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=1tkltD/k+nMPfBQKVw8wWAACXd6OchctkMA/DZ6c/Hw=;
        b=AE8XBQGtIFYL7JOYQ+iuX1KkArGDkCIAy8MYw2IxdZyrlC6hIndhc5t03TS8kklN25
         fsKbJfRbhCzcLSBBbgpPSkBdHI/NPbAs/G8OW43UOK/DihSVLU8l6DoGcsPodDYOii+P
         uN4sUKroUYrNDQxi02W9QOB9bWjFX60WO6Evq8jXxqW7aERUtYVH/vCaP5D4pDcCektM
         1W02qbyYBzvx/ao9QrisOLnM6jYfQ9p4TDe1e+suo90Kf8uLNOCltEF8MWK4heydjesP
         0JW9ricL4a8vGcK9vB2jbjSGnNo+a27qkvYrIT0ejuVsFujA4gCi3X6Hlstv8VUjmP6a
         mPlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=1tkltD/k+nMPfBQKVw8wWAACXd6OchctkMA/DZ6c/Hw=;
        b=KVwwI8+gM1H2DYD/Wi9Kvh3d+Zxutq8SED3b0oP5BuzlySAtmaKPkNmpN+LD642M5N
         3Sb37YKka0PK+D9AMVe4fVpqoiUK7Qv5dVKuFE/NV5goBbMSL1YuDWViXbycg0jkxiuA
         nqDBee/tMCYxcH1Q1yV04iDjEybrXryuTNyNJvraMCF1nXdIAvdhJvDAvyuoTLvwYTto
         PgmoPopgERPXNpAMcaQZ2KfbqT/PcTMLuDfWf2k9YtVwS8KKzoOljm8H+w4XTlTYFs/z
         d6hAGKsmQEpznQOyCnUcK+/KDd4epNe/B7erq6/z9pUrKiHXE6V56vTMeqbj3tpa/b9l
         VGAw==
X-Gm-Message-State: AOAM531yHKytri1cAmkLmwgO20jbcVLh8kKQSX7El0hyoUEXMoa0LTkg
	/BnXyHUtV3HrmrPr8LC/xL71eFRwcPc=
X-Google-Smtp-Source: ABdhPJzBYTBpdjTuqR35gu9f6jamcQKb9DF0ginHrMc66jtTi3C6gXdWinry2gf/rbfAjWkiWcIXvQ==
X-Received: by 2002:ac8:5208:: with SMTP id r8mr17928278qtn.206.1618940139635;
        Tue, 20 Apr 2021 10:35:39 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id h7sm11450372qtj.15.2021.04.20.10.35.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 10:35:39 -0700 (PDT)
Date: Tue, 20 Apr 2021 13:35:37 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for April 20, 2021
Message-ID: <20210420173537.GA17644@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for April 20, 2021
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
Trevor Woerner, Stephen Jolley, Armin Kuster, Steve Sakoman, Peter
Kjellerstedt, Alexandre Belloni, Michael Opdenacker, Scott Murray, Jon
Mason, Michael Halstead, Richard Purdie, Bruce Ashfield, Ross Burton, Randy
MacLeod, Saul Wold, Tim Orling, Daiane Angolini

== notes ==
- 3.3 (hardknott) released!!
- 3.1.7 (dunfell) through QA, pending TSC approval
- YP TSC: 3 seats re-elected, 2 seats up for re-election
- master branch open for 3.4 (honister) and things are starting to merge
- new command proposed: bitbake-getvar
- AB issues: 59 (going up)

== general ==
RP: the re-election for OE TSC is coming up in August, but the re-election for
    the YP TSC is in May. a call for candidates will be going out soon
TrevorW: do we want to align the voting with the conference?
RP: probably not


MichaelO: is there a 3.3 celebration?
RP: usually we do it at the conferences, but we’ll have to do it at the
    virtual one this year
MichaelO: i didn’t see anything on lwn
RP: we don’t have a mechanism for this
MichaelO: there are usually release notes
RP: yocto-announce mailing list
TrevorW: release notes?
RP: yes, PaulE put together some notes
TrevorW: is someone putting a release note together?
MichaelO: okay, i’ll put it together and email internally first
RP: advocacy is less that it was, if people can think of places to
    help/advertise that would be great. sometime i publish something in the LF
    newsletter


RP: bitbake-getvar, instead of “bitbake -e | grep”. saves people some
    keystrokes
RP: uses tinfoil, acts as a very good, very small example of how to write a
    small tinfoil tool (e.g. c larson’s bb tool). maybe a way of expanding
    this infrastructure to make it easier to add tools in the future, perhaps
    expandable in layers itself
RP: also perhaps could be used for layer and config setup (e.g. kas,
    combo-layer)
AlexB: sounds great! i often show students “bitbake -e | grep” and
    they’re often surprised and happy to see it
ScottM: +1
RP: it’s in master-next. there are probably a lot of tutorials that will
    need updating after this :-) and there are places in selftest where we do
    “bitbake -e | grep” (it runs it once then builds a dictionary of the
    results to avoid having to run it multiple times throughout the test run)
RossB: it’s similar to bbvars
RP: i’d like to keep it simple, single variable, i don’t want to get too
    much scope creep which makes it more complicated. not meant to solve all
    problems, just solve one elegantly. if we add something to take multiple
    vars then we’d have to return JSON (?) or something else that would be
    machine-parsable
RP: i think a separate command to do multiple vars would be best


PeterK: don't forget to move poky-conf back to master
RP: ah, thanks


Saul: CentOS 8 issues, grrr
RP: i haven’t looked into it
Saul: i think qemu is dying and qmp is trying to read the linux socket and
    getting nothing. maybe i could take out the centos builder for a while
RP: sounds reasonable. if you want to pull one builder out to work on it, that
    would be fine
Saul: i’ll talk to MichaelH about it


Saul: any cmake experts out there?
<crickets>
Saul: i have a nasty cmake + python issue wrt ceph: it doesn’t find the
    core gcc libraries, sysroot being set to /not/exist. i think there’s an
    environment passing issue between cmake and the python
RP: that /not/exist is something *we* hardcode into the compiler to make sure
    sysroot gets set
Bruce: have a look at what we did in libvirt recently. we had a similar issue
    with meson whereby it couldn’t find getent from libc. we had to create a
    patch. meson+cmake couldn’t find getent from libc
RossB: i’ll take a look at your patch Bruce, meson acts strange in some
    ways, but sometimes there’s a way to straighten it out


ScottM: Steve: 3.1.7 this week?
SteveS: up to TSC to approve it
RP: it’s through QA, QA didn’t flag any issues (there was one failure but
    it succeeded on a subsequent build). the TSC meeting is later today, so if
    they approve it’ll be out by tomorrow


Randy: latency monitoring. turned down from 10 to 6 seconds, tuned timeout
    from 5 to 15 seconds. new column in AB console to link to this new data.
    generates graphs of “time to dd 100 kb periodically” to hopefully help
    correlate failures with load. we usually see 3-5 seconds but sometimes 50s
    for unexplained reasons
RP: that’s very interesting. but we still don’t know what the system is
    doing at those times when we see the 20. it’s one thing to know it’s
    happening, it’s another to know why. i’ve noticed that webkit builds
    add a lot of load, also compression adds a lot of load (xz)
Randy: behind on the rust things since i’ve been working on this


RP: speaking of languages, Go also worries me. Go has 2 issues: the fetcher
    is messy and builds are not reproducible. are there any Go experts in our
    community who can help?
TimO: Bruce and I have been struggling over a bunch of things, but it’s not
    fun
Bruce: working on something; i’m currently up to 37 fetches, but it’s not
    just fetching but also a layout issue. if you fetch something to “c/a”
    but Go expects to find it at “a” then it won’t use it
Randy: someone wrote a cargo module for Rust to do something similar (i.e. a
    translation between Rust and bitbake), would that pattern be useful here?
Bruce: probably, hard to know at what point we need to make deep changes vs
    patches on the surface. the “make” infrastructure doesn’t help, too
    many hard-coded paths and options in the Go  “make” files
RP: and that’s only ½ the problem (still have build reproducibility issues)
Bruce: Khem can bump the Go version, but then we need to chase after all these
    fixes


Randy: suricata?
Armin: yes, those are in meta-security now, donated by ARM
Randy: did you use a cargo build
Armin: it was a couple things, had to start with one but then switch over
    partway


TrevorW: is there any update on the “layout of where patches go” work?
RP: you mean “work directory” vs “source directory”?
RP: pretty invasive things, put it aside for now. a change like this will end
    up causing lots of follow-on issues for weeks to come. the cleanup would
    be nice, don’t know if the cost is worth it and would eat up my time for
    a while. although i agree the time would be best now to do it (start of
    new release). i think this is the second time i’ve tried


RP: parallel make job server (another such example of something I’ve looked
    at and think would be nice, but have had to put aside for the time-being)
RP: the todo list isn’t too bad, but it’s something that fell off to the
    side.
RP: i get the feeling that some of the things Randy is trying to track down
    (load on AB servers) might end up being helped by having a parallel job
    server, but we just don’t know
ScottM: is that branch still around. i’m interested in tinkering with it
RP: ignore the branch, just take the commit.
RP: i had hard-coded the fifo to one place (/tmp) on the machine, which means
    every build on that machine is tied together. is that good or bad?
ScottM: is that something you could see being global for all bitbake on the
    machine
RP: as long as all the builds are being run by the same user. probably need to
    create a separate fifo, give it a relevant name, and place it somewhere
    where each user can access it themselves. maybe i should try it on the AB
    and see what blows up
