Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web12.41.1626218933518829972
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jul 2021 16:28:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ognLkPbA;
 spf=pass (domain: gmail.com, ip: 209.85.160.171, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f171.google.com with SMTP id z25so527057qto.12
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jul 2021 16:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=KZ842sKCdifvwwrOxv4W/ORZ84hPDp64637EQfVgeH4=;
        b=ognLkPbAehqv9g1QTUdwVbym3iN13JMSbb79A/gBgx+W1z4q83iglTGaNcbHuEnwSi
         V1oZTQ46V2DI1sK0rebvHXhbJbpusGa5yq6K2L4TmNCBdsIW4t9ql3u2rYWTwOcaUvDP
         r9PJnWQruZkynZA5V7dkSf6WCcXLMBWjdoWKi0iLI/HZjXtfV3cgs2A2zsUoV6as349T
         z0HsdcJPTWJwsT+jjYEHyxruksphLQKZlvDcqifp5HtseEY1aKlWtibtui4sR4BD3Ju0
         S/qrj0VNuX8mdcl+VS8gDPyMiu/azK1aIgw+ECiN9nPQAt0hDgGjPrrYHYNPyE1pAwt3
         L8HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=KZ842sKCdifvwwrOxv4W/ORZ84hPDp64637EQfVgeH4=;
        b=eii7vfdNmWAWbxVeUCCIEci24ifsf8Rp0C7df9+6NDqFQPzcrJ/W87y2fVxUKA/JTU
         x68QuHxfpou7R1n5oQzL6iZtawsiNSkPtbkNEouctDuY2xuLXyF3o+GU+1nBr1btYRPm
         H+sb9YOwBF11U1d/iosKoEM2QqWsXUbOlTnh8w5OdsWS9WII9D7ZAoJkoJIf1DifgGZF
         o3bTaUdbFKVcH2yQIKcDv2ofJevX3VYRSZUrpBdO1HLT5GBuRdcKkUJdMkKsddQNoUI9
         Y/ibvBdr3JqQJuHWKudrEYFZKyuKh37GpVcv/3E70AFGwvcDv7FT13Yc0WYXOD9bxGEF
         vc4g==
X-Gm-Message-State: AOAM5339sZcJql71H+fh0b/eJL76Nd27q5QGBS0ClGrJb+mDI34L6NUw
	DxalLWsh0I6PEaUSp8bUIZ4TiGFMhnuZxg==
X-Google-Smtp-Source: ABdhPJwUzIlT7T3P6zGwC2cyqxnBG1SitBWhlEJSC3NOkdQ5U00G8Rjoyj0B2o8q5oNlyTQwWKtZxg==
X-Received: by 2002:aed:3131:: with SMTP id 46mr6482509qtg.253.1626218932199;
        Tue, 13 Jul 2021 16:28:52 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id 67sm177156qkm.134.2021.07.13.16.28.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 16:28:51 -0700 (PDT)
Date: Tue, 13 Jul 2021 19:28:49 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for July 13, 2021
Message-ID: <20210713232849.GA36039@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for July 13, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner
Stephen Jolley
Scott Murray
Joshua Watt
Peter Kjellerstedt
Michael Halstead
Jasper Orschulko
Steve Sakoman
Tony Tascioglu
Trevor Gamblin
Saul Wold
Armin Kuster
Randy MacLeod
Richard Purdie
Angolini
Ross Burton
Bruce Ashfield

== project status ==
- an eSDK issue has been resolved and this should resolve a number of eSDK
    bugs
- the prserv rewrite is still pending on resolving the issues with python
    asyncio
- continuing to see AB-INT improvements
- multiconfig needs simpler test cases to reproduce issues

== discussion ==
RP: it was a good week for AB improvements! ptests are growing in number


RP: we are lacking official maintainers for various subsystems. there are a
    number of unofficial ones (e.g. Bruce - kernels, Khem - toolchains, etc)
    but nothing official. we have a “bus” problem.
Randy: people can adopt packages, but i’m curious about an outline of what
    you think is lacking
RP: pseudo, devtool, extensible sdk, eclipse plugin (maybe not), recipetool,
    a backup maintainer for bitbake, test suites, QA frameworks, reporting
    system…
Randy: it could be a question of corporate mandate for some
RP: i’ll be raising this with the members
TrevorW: in one case there was a problem with a certain subsystem that had
    been going on for a long time with no signs of life from the “active
    maintainer”. after a period of time i decided i would get involved
    and step forward and say i’d take it over. then suddenly the AWOL
    maintainer shows up, declares the subsystem has a maintainer and no change
    in maintainership is needed. in another case i found what i thought was
    a bug in an unmaintained subsystem, worked on a fix/patch but when i
    submitted it, the previous maintainer (who had stepped down at this point)
    spoke up to say there was no bug, pointed out that my “fix” didn’t
    preserve the existing behaviour (which i felt was broken, so of course it
    didn’t maintain it) therefore my patch shouldn’t go in. so we have
    subsystems whose active maintainers aren’t heard from for long periods
    but then show up once someone steps forward to take over, and we have
    other subsystems where previous maintainers who have given up their roles
    are still controlling the subsystem. if i were to maintain a subsystem, i
    would expect some sort of control over the subsystem i was maintaining.
    For example with U-Boot a person agrees to maintain, for example, an SoC
    so Tom gives them full control over the code related to that SoC. they
    don’t wake up the next day to find a whole bunch of SoC-specific patches
    have been merged by the benevolent dictator while they were sleeping and
    then have to deal with the consequences. The same happens in the kernel:
    people are given an area to maintain and they do so.
RP: a maintainer doesn’t get to make all decisions. for example: recently
    i wanted to make a change to bitbake but was shot down, so even the
    benevelent dictator can be ruled down ;-) there’s no free choice. being
    a maintainer isn’t a binary switch, you don’t become a maintainer
    then suddenly get full control of some part of the project and get to
    make any decisions you want. another example: a kernel submaintainer
    isn’t absolute either, when i maintained a kernel subsystem sometimes
    you win some discussions and sometimes you lose some. one has to work into
    a maintainer role, not just take it over. and it’s good to retain a
    connection to a former maintainer for continuance.
TrevorW: having code change “underneath the maintainer” can get
    frustrating
RP: we will never have a system whereby i will only grab a patch after
    maintainer sign-off. the maintainer leaves for a 2 week vacation and the
    patch queue comes to a halt for that subsystem, that’s not right
TrevorW: having more distributed maintainership might require fundamental
    changes to how the project is managed (e.g. how we do releases). some
    other projects with more distributed maintainership will have times when
    things get added (-rc1, -rc2) with integration windows and during that
    time it’s up to maintainers to do their own things with the patches.
    with our project (yocto) patches that show up on the mailing list today
    are added to next and even master in huge batches and run on the AB. so I
    don’t see what the role of a maintainer would be in that case if patches
    are being moved about without their intervention
Scott: yocto is different because we’re dealing with the timelines of lots
    of sub projects so it might not fit into easy merge windows like it does
    for individual projects (-rc1, -rc2 etc merge windows)
RP: getting patches in quickly helps keep people engaged. how would people
    feel if they submitted a patch then 3 weeks later got a reply saying
    “your patch failed on the AB, please re-spin”?
TrevorW: if you submitted a patch for the linux kernel today it would show
    up… 3 (?) releases from now (provided it was “immediately”
    accepted)? so that would be the same as other projects
Randy: we do have maintainers for every layer and we have Bruce and Khem, but
    there is a gap
RP: wrt pseudo, i still haven’t merged things to master, so i’ve held off
    because the original maintainer doesn’t like some of my changes. it’s
    a difficult balancing act
Randy: TrevorW would you still be interested in taking over pseudo
TrevorW: I think i’d aim for devtool instead, i think pseudo is
    “complicated” (not from a technical point of view, but from a social
    standpoint)
RP: the problem with pseudo is that anyone taking it over would most likely
    start over and solve the problem in a completely different way. there are
    a lot of newer kernel features that we would use instead
JPEW: i would rather have a devtool maintainer than a pseudo maintainer. as a
    project we strongly push people towards using devtool on a daily basis, i
    would prefer to see that subproject have an active maintainer


Randy: we’re a week away from -m2, anyone have anything else to discuss?
Randy: i’m hoping to update things i’m working on.
RP: there are some things that are broken in sato (icons not generated
    correctly) so i’m looking forward to those updates (icons depends on
    librsvg, which depends on rust)
Ross: maybe we should revert now until the fix is ready?
RP: if you know which bits to reverse then go ahead
Ross: oh… i think the reverse is already in
RP: okay, maybe there’s something else that needs revert. every week the AUH
    reports not being able to move forward on this
Scott: i have a work tree setup for read-only PR server. so i’m hoping to be
    able to take that over at some point
RP: ping me if you need help, i can help with historical context
JPEW: i can help too, with some technical issues as well
RP: MichaelH is probably not excited about the webserver stuff
JPEW: where is it running
MH: google compute
JPEW: do we have a kubernetes cluster
MH: no
RP: we would like to share hash equiv on a read-only port, which might give MH
    a heart-attack ;-)
MH: currently we’re running on a google computer node, but based on it’s
    resources, we could move it to something cheaper
Randy: JPEW: do you need a kubernetes cluster?
JPEW: no. i brought it up because it might be a way to load balance the
    demand, but that would require a re-write on some of the internals of the
    hash equiv server (e.g. move to a full, separate SQL database for example)


MH: btw, irc logs now being saved again


JPEW: my sstate patch is now ready
RP: does it use compression?
JPEW: originally yes, but then i noticed that it makes sstate not
    reproducible, so i dropped it
RP: why? that shouldn’t be the case?
JPEW: it wouldn’t if it were single thread compression, but the way zstd
    does parallel compression makes it give different results based on the
    compression factor
PR: we use parallel compression for a lot of other stuff and i’ve never seen
    such an issue
JPEW: i’ll do more investigation. i think there might be an option to pass
    to make it reproducible even under parallel compression
RP: yes, that sounds right
JPEW: also if we’re going to use zstd and pzstd they require those tools to
    be available in the host
RP: cmdline (i.e. not libraries)?
JPEW: yes, so we can include it in the buildtools tarball
RP: yes and we can detect it in the host easily
JPEW: okay, i will work up the patch
RP: you can send the patch as-is now and we can add compression later


Scott: any updates to “make jobserver”
TrevorG: are you referring to the patch based on some changes RP made a couple
    years back
Scott: yes
TrevorG: i don’t think that patch is doing much for us. i didn’t find
    anything conclusive to say that patch is helping. we moved to another
    approach (passing a “-l” option to ninja to limit parallel). we’ve
    run a couple builds and collected some data, but we don’t have any
    results to publish yet. i have a couple hundred log files to look at to
    see if we’re on the right track. on the surface i think we’ve already
    seen a couple instances of things taking more parallel than they should
    (despite our changes) so we still have more things to dig into
