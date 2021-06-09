Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web11.8211.1623247626148906063
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Jun 2021 07:07:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y1Nhkiff;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id c10so10086967qvo.9
        for <yocto@lists.yoctoproject.org>; Wed, 09 Jun 2021 07:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=236w38WvmPLpXWsAD73dZJ8JJpTZOijBeykbjIvuC/E=;
        b=Y1NhkiffTA92wgBdC/gGISRC5x6LKeluxZSQFbFIIQBqoygbypEPB8v7ncI+6cka1j
         V/j+wI0T1jku6OfeH4s9/fH8nffvqKd5XufVoFY/fMKG6uIG8Ur/ovPSH+S/l+WIQEti
         EHKLRdbrwCanKO/mhXVzF+VHQJATBQzVZMtnRxQKPlE4Qthou9eTaWEJ5HHCFb0+FFcX
         y3Dn3vUhGjqk3OjvafQH24DItKvlbKCOPN50iXFMj4fD0cgzGp80CFqiqbPeSpUYMS/N
         evrZk5JCXcvKMkpI4ZiAtDjIH6Yx5RtdJNOck9RcmovTqBO/R7CfbUhaJnlSbfC8iuMR
         EN7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=236w38WvmPLpXWsAD73dZJ8JJpTZOijBeykbjIvuC/E=;
        b=N0ntHR7Gs6DeGPIfjKAnaRMrdRdnS97hqThHpMypAnlPXhka+bieTFnKmCrVMNAV+r
         AIFl/X+lrVSQfuT4tUYpriKy5Zo9QG3xLbnoX+y1MSUIajMRj0Zf9KqhPIqgqNzwFgd3
         lLFnEPXpxEM735MSqASl2wT90OG4llhaMgxq2sx+4bRPr4rE/q+nXN1r9kCj/1B5odC6
         oUbcMKmj7MqZejCav4mHE7qRPaSndQsLvZEW75ZJKXRsrXn0iEEQSfYDosxsSLAQBXVp
         dBpq2Q7dY26SGQm4+AWwQzsOQ0EJXwlCVGwqJgVcGWKwcz4UfGKvZyNSPJZpgf4bc7zW
         QhbA==
X-Gm-Message-State: AOAM532zWUw1sXFbC775lxSG4meJdaL3e5aRPn/DevBEZnoeShFYcyW/
	kdN1PQAhe/rDQz1mIhXrmxyNTit1/i1Txg==
X-Google-Smtp-Source: ABdhPJwTVwpYF9slstJAGgihqFXAz3gahXLKrlwIT3Q8cWiV7z9WGvPAydLWF1dmwBltBxn9Kufx/A==
X-Received: by 2002:ad4:4dcb:: with SMTP id cw11mr5907547qvb.54.1623247624551;
        Wed, 09 Jun 2021 07:07:04 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id a128sm99512qkd.76.2021.06.09.07.07.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jun 2021 07:07:03 -0700 (PDT)
Date: Wed, 9 Jun 2021 10:07:02 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for June 8, 2021
Message-ID: <20210609140701.GA28424@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for June 8, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Armin Kuster, Steve Sakoman, Tony
Tascioglu, Peter Kjellerstedt, Saul Wold, Bruce Ashfield, Jon Mason,
Richard Purdie, Michael Halstead, Joshua Watt, Jan-Simon Möller, Randy
MacLeod, Tim Orling, angolini, Ross Burton, sakib.sajal@WR

== notes ==
- 3.4 m1 due to build this week (honister)
- 3.1.8 released (dunfell)
- possible AB-INT cause identified (aufs patches in linux-yocto) 3.4 m1 to be
    held pending
- another AB-INT caused by kernel upgrade on centos8, also affects 3.4 m1
- existing multiconfig patches seem to fix some things but break others;
    multiconfig needs simpler test cases
- record high levels of AB-INT issues

== general ==
RP: what to do about the AB-INT blockers?


Bruce: i’m preparing a new check of aufs to see if i can find any
    problematic issues. we also saw things with 5.12 as well, which has
    completely different code in aufs, so i’m not 100% sure we’ve found
    the problem. but i’m preparing a new series which we can submit for
    testing to see where it goes
RP: the centos8 issues causes any build to have failures. this is an
    intermittent issue, so it’s not easy to pin down to specific things,
    just educated guessing. ideally we’d not be blocking m1
Bruce: 5.12 is no longer the shiny new thing, so i’ll be bringing in 5.13
    soon-ish. so i question blocking m1
RP: something is destabilizing the AB, but the AB is more stable when using
    base rather than standard/base
Bruce: i could revert the aufs thing so we can move forward with m1
RP: my priority is to stabilize the AB
Bruce: it appears that there are upstream problems with the -stable backports
    (specifically we’ve seen a partial preempt_rt backport patch) so there
    are issues all around. for example the aufs maintainer maintains his own
    per-release branches for patches which we pull in, but it’s possible
    there are problems there
RP: this is not the only thing blocking m1 (we’re not stuck waiting for you)
    but hopefully it gets resolved by the time the other problem is fixed
RP: there’s also an lttng issue which I’ve sent


RP: centos8
MichaelH: there is a script that Khem gave us and AlexK was looking at running
    it to find out the problem. we needed to install more packages to get the
    script working. other options are to run a different kernel on centos8
    machines (instead of the default)
RP: is there much risk in downgrading the kernel back to before the last
    maintenance?
MichaelH: no
RP: we have 2 centos8 workers. let’s downgrade the kernel on one and leave
    the other as-is so we can test against both setups. that way both machines
    will be running a RedHat kernel, one will just be older
MichaelH: there were other things updated last friday other than the kernel,
    so the issue could be something else (it was a BIG update)
RP: it looked like a syscall problem, so let’s start there and consider
    other things if that doesn’t solve the issue


PeterK: tagging (from last week)
MichaelH: we decided prior to 3.3 to use old style, and new yocto version
    number and branch name tag in 3.4 (honister) and after
RP: dunfell remains unchanged, hardknott tweaked slightly


Randy: i don’t see any reports, so whoever is running swat…
Randy: valgrind updates
Randy: progress on make-job-server, cmake based builds are interfering
RP: qemuarm building is failing with valgrind issues in ptest
Randy: arm? or arm64?
RP: arm64, we only test arm64 in ptest
Randy: if make-job-server works we’ll need to do something similar for ninja
RP: if you have a patch that controls make and cmake then that’s a start.
    i’d like to get that into the infrastructure with just that
Randy: np


Randy: do we have an understanding of how busy machines are? is the AB busy on
    weekends?
RP: i usually schedule things in my nights. on weekends regular builds are
    turned into full builds. on top of that you have builds from AlexK, kernel
    builds from Bruce, and dunfell builds from Steve. we can’t run it 100%
    because it does need “healing time”


JPEW: i’ve been looking at SBOM
Ross: i’m curious
JPEW: started with meta-doubleopen, generates mostly valid SBOM, submitted a
    couple patches so they would pass the validator. i think we’re sending
    someone to the plugfest. the layer needs some cleanup work, some of it
    would integrate better into the core. the SBOMs are *HUGE*, 500MB for
    core-image-minimal (!!)
RP: we don’t have to do this for SBOM, so for core i think we only need to
    look at more basic functionality. i like the feature of examining the
    final binaries and working backwards to figuring out which source files
    were part of the build, but that could be somewhere outside the SBOM
JPEW: i looked at some of the license mapping things
RP: isn’t there already a function that does that
JPEW: looked but didn’t find
RP: i think it’s spread all over and should be consolidated into a separate
    function
JPEW: generate the different components with different tasks for a given
    recipe. they create a “package” for the recipe itself, but then
    “package” for each package generated by the build. so you end up
    with n+1 packages for each recipe, then you need to define all the
    relationships, so there are multiple tasks fiddling with one SPDX file
RP: why not just one
JPEW: 1. there’s a recipe identifier step (which is separate than actually
    generating SPDXes) 2. package post function for produced packages 3. runs
    after 1 and 2 and replicates what the archiver is doing (figures out what
    files went into recipe) and mostly does the relationships
JPEW: not everything has a packaging step so there’s a step that has to be
    done at the very end to make sure everything in the image has
    been accounted for
RP: if there’s no do-package then it’s not going into the image
Ross: we have pieces of firmware that just drop things into deploy
RP: there are 3 ways to get something into the image: 1. packages 2. do deploy
    3. images
JPEW: we could have an image in an image, so we’d need this post step anyway
RP: how do we produce the SPDX file and pull it into the image
JPEW: it gets complicated
RP: can we supplement package data with extra things? we could put more data
    into packagedata which could make some of these other things easier
JPEW: this could get rid of the post-processing step. they were tripping over
    a number of things that could be made easier to having the metadata setup
    with this information (expecting to do SBOMs)
JPEW: we can’t know the package data post mortem
RP: there is a call we can make, then all this info is correct again
JPEW: ah! that would help it not be spread across these 3 tasks
TimO: reminds me of what i was encountering while doing the perl-dep work
    earlier. the problem i found is that i could only see the files if i was
    just building them, i wouldn’t see them when pulling from sstate
RP: there’s 2 directories: 1 package data for currently building thing 2.
    package data for all its predecessors. you’re probably interested in 2,
    but are looking in 1


TimO: played with Ross’s maynard branch. gives you a gnome desktop on
    weston. but has AGL stuff in it and future support is unknown.
TimO: so i don’t see any strong contenders. i don’t think we want sway or
    wrlroots. i don’t think ivi shell is what we want
JPEW: no because everything has to be written in ivi-shell
TimO: that’s what i thought
JPEW: phosh, but dependencies
TimO: this would require lots of stuff brought into core, which is
    questionable and i don’t want to maintain any of our own forks
JPEW: i agree
TimO: i think AGL is going to be looking at flutter, but i don’t think that
    makes sense for us
J-S: yes, there is some traction to running flutter, but not sure if that’s
    a good fit for us. ideal is to run something purely upstream
RP: i think we should just maintain the status-quo a bit longer to see if the
    dust settles. there’s lot’s of churn out there
TimO: even if we were even able to port matchbox to weston, would we even want
    that as a reference desktop?
Ross: *if* it were maintained, then a maintained solution would be better
    than an unmaintained on. but if we have to maintain it ourselves then the
    decision is not as easy
RP: matchbox is good on small screens
TimO: most lightweight stuff i know is x11-based
Ross: matchbox isn’t the prettiest, but it is good for what it does
JPEW: phones and tablets
TimO: phones, tables, and kiosks
RP: how big is the gnome stuff
Ross: quite big
JPEW: lots of silly dependencies in phosh, e.g. lots of jSON descriptions for
    mutter things even if you’re not running mutter on the target. so this
    ends up pulling gnome desktop and lots of gtkwebkit things
RP: but we already have gtkwebkit in core, and the silly dependencies seem
    fixable. Ross have you looked at phosh?
Ross: no
JPEW: gnome desktop 3, network manager, pollkit-systemd, gnome shell g
    settings
RP: systemd dependency. does it work?
JPEW: it builds but the graphics didn’t come up. i think librsvg is too old
RP: i think our librsvg stuff is broken because of rust
