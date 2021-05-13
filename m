Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web11.727.1620923379204182382
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 May 2021 09:29:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jSRYiGjO;
 spf=pass (domain: gmail.com, ip: 209.85.160.182, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f182.google.com with SMTP id t20so15874807qtx.8
        for <yocto@lists.yoctoproject.org>; Thu, 13 May 2021 09:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=C8GYT/TSlyPiPuo24HBY4hpmaZQjAtQo2gjJs31aHkc=;
        b=jSRYiGjOV2vfNqAOZ/XqIGciLvlXtzRO61r9gSVfgRLQ90vy7YntTDqzpOsClT5B82
         vLPJaio5wjD/nBDwJ5TwrIvzf6aRLPVNxbv6hTBcvfQ1DjhkNpufHsGaFeKl6eeK8kfo
         IYwVkzltxov7ujmT2Vkgw+S/jdXWlYNr8QM7adRbbg5zC3XoqpLeqXG3xmZkXZpaChgk
         8wAeRol74lAvZE37NK0WN07ScuFz2HOXAQeov4z6XG23tyqsoHGU/+iF5SfzyyHxIfff
         UaTxWXrR9xyBbJQhRBt4V5U2EU8Lx5iwGmTdHGysBhWw16NCWnkqm3gagAvKHOfUzvbe
         qk2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=C8GYT/TSlyPiPuo24HBY4hpmaZQjAtQo2gjJs31aHkc=;
        b=YJEffL4ZgPxsguwFYOhtiRCdeWZ2LR/S2TQUFxuPg1snA2SaQ0Trl1haGYRiWcAC1X
         /QNA7uC0n6Zwj4czEOUFunnIjNYMYSISY3MJ9AabrxeV/Qo/Jxo8zoCkT/60fV6HNdgI
         85CY33wCk2S6BTgNqw/vjYsSrC3dO3SsyhprcBFSIASz49OE0Fc77Qtwdd6oMTNBao/J
         sOVDkFI18qUlcwK7d1BikcIOfrWChS8QRNhz/Rl6YI/isILvIeZjs+wx4fW/K1S4X5PN
         ocb8+kzxQ84G9sotHUglM2xmt0dZqEdG95386z3Ndzj8dgdMzY2ObgfbK6h+rNisAyvv
         PRzQ==
X-Gm-Message-State: AOAM533ZkhAAU6z3sz4JrTOWhHFbg3/e2iUg7YQ2nCE5FwEwilPRiyNo
	cJx3OOs/6QBBDE9QJ05ZW0CeHwzGRKU=
X-Google-Smtp-Source: ABdhPJx6dbuAZJFmzw2q79b7kQbpa8SbPj98dDGcfCULbQgoEWzcPbUzKIBtlliu4IPZZ5WW15Fp0g==
X-Received: by 2002:ac8:57c5:: with SMTP id w5mr32808328qta.166.1620923377773;
        Thu, 13 May 2021 09:29:37 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id r5sm2632154qtp.75.2021.05.13.09.29.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 09:29:37 -0700 (PDT)
Date: Thu, 13 May 2021 12:29:35 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for May 11, 2021
Message-ID: <20210513162935.GA22951@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for May 11, 2021
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
Trevor Woerner, Stephen Jolley, Armin Kuster, Scott Murray, Joshua Watt,
Randy MacLeod, Bruce Ashfield, Tony Tascioglu (WR intern), Trevor Gamblin,
Steve Sakoman, Alexander Belloni, Michael Halstead, Paul Barker, Ross
Burton, Tim Orling, Saul Wold, Jere Viikari, Alejandro H

== notes ==
- 3.2.4 in QA, out in a couple days (this will be the final 3.2 release,
  aka gatesgarth)
- significant patches going into master, lots of version updates (thanks
  AlexK)
- multiconfig changes in bitbake cause challenges
- some CVEs showed up that could use help
- smp for various qemu machines added/enabled
- should we consider a different default qemu emulation (for arm?)
- serial IRQ handling issues with qemu-ppc
- gnome switched from gtk to ??

== general ==
AlexB: I’ve been looking into some of the intermittent AB issues, i believe
    a couple of them can be closed now. there appear to be a lot of duplicates
    (same issue, different manifestations)
Randy: good to hear, how many issues?
AlexB: we can look at them in the bug triage meeting. i’m guessing it’s
    getting better. there are very few that happen regularly, and many others
    happen only once. maybe 4 or 5 race conditions that are infrequent. the
    improtant ones are qemu not working properly and the io load issue(s).
    i’d like to get some graphs to visualize. there are issues related to
    running out of memory, so maybe the solution is to not run so many things
    at once
Randy: we used to use top to analyse what’s going on, but it’s tedious.
    instead we can look at the tail of the cooker log that gives more
    information, but is missing the total view of what’s going on at a given
    time slice. we need a list of bitbake tasks and where to find their cooker
    logs. once we have that the next step is to figure out who is doing all
    the I/O. we’ve been looking at a tool called iotop, but i don’t think
    that’s what we want.
RP: iotop is probably what we want, but requires root priv


RP: x86 cpu machine arguments in qemu
RP: i think all these RCU stalls we’re seeing is due to the cpu emulation
    we’re using (which is very old) when we enabled SMP it caused everything
    to fall over the edge and fail everywhere. maybe the qemu process is
    locked up, rather than the system being overloaded
Randy: interesting theory
RP: i have a patch in master-next to upgrade to ivy-bridge qemu emulation. i
    guess we’ll see what happens
AlexB: i don’t think it’ll solve all issues. we’ve seen RCU stalls on
    other qemu machines, not just x86 (mips, arm64, arm)
RP: i thought it was just x86
AlexB: i have the list, i can confirm that we’ve seen rcu stalls on qemuarm
    at least
RP: maybe there’s a pattern where the logs stop, then we get the rcu stall
    kicking in. it could be we have 2 issues which are interfering with each
    other. i’m not ready to give up on the theory yet
AlexB: it’s probably still useful to do regardless
RP: yes, i think we need to do it anyway. it won’t solve the ptest failures
    on qemuarm, for example, but might help with others
Ross: the qemu person i talked with said that on a heavily loaded
    system you'd expect some level of rcu stalls
RP: but should rcu stalls take out qemu?
Bruce: it should recover
AlexB: i’m not sure that’s a kernel thing that would kill it
JPEW: is it possible that because there’s too many rcu stalls that we end up
    running out of memory
Bruce: we could turn rcu off and see if it recovers
RP: we should check if it recovers, or if it’s hanging. there might be 2
    patterns here. this morning there was a lockup but there was no stack
    trace
JPEW: is there a way to force the kernel to process all rcu’s?
??: i think that’s what it’s doing
AlexB: it’s the rcu stall detection. the cpu has been stalled for too long.
    it’s not an issue with rcu itself, it’s just that rcu is what’s
    noticed that the cpu has stopped responding
Randy: so ideally it would be nice to detect this ourselves and shed load
    before the stalls happen
JPEW: tweak stall detection time?
??: takes about 80 seconds
AlexB: 20 seconds i think
JPEW: 21 seconds, according to docs. looks like it can be set on kernel
    cmdline
Randy: heavily loaded system for cpu and io, tweaking the params isn’t going
    to fix the issue
RP: it might help guide the debugging, might get more info turning on smp


Randy: been talking with TrevorG about job server. might get started next week


Randy: Saul are you getting back to qemu machine protocol
Saul: looking at it
Randy: how do you test it
Saul: don’t have a strong hold on it yet
RP: there is a hanging qemu on the AB, and it should have had the qmp patches
    applied. so in theory there’s one there that we might be able to
    interrogate
Saul: could you point me at it again?
RP: qemu-x86-64 on the AB, it should still be running


TW: topic ideas for OEDVM
PaulB: is there a way to just join the developer’s meeting without attending
    the whole conference?


Armin: lgtm.com bitbake/yp is listed there. i sent in some patches to improve
    the metrics
Armin: see https://lgtm.com/projects/g/openembedded/bitbake?mode=list
Armin: 31 errors, 80 warnings, 234 recommendations (currently)
ScottM: maybe we could do a checkpatch type thing for python linting
Armin: there is an integration with github, but requires corporate github
AlexB: should we open newcomer bugs?
Armin: we could, it tells you exactly where the problem is and what to do
ScottM: we don’t have tests, so fixes could end up breaking more things
AlexB: maybe we need test cases for bitbake/toaster/etc


Randy: our build quality is amazing! currently 0.2% build failures (mostly
    running out of memory)
