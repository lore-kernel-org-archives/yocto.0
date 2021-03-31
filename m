Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web08.7377.1617200724990275882
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Mar 2021 07:25:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=h/p/7+mC;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id z10so19446174qkz.13
        for <yocto@lists.yoctoproject.org>; Wed, 31 Mar 2021 07:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=ERSH3NukNmhWH+RDay2uW1OBJnxyyDaCGCTqzoRlHOM=;
        b=h/p/7+mCYRuucWKooLFQ10CwXq1fgCot6kpCZS/Bp2NnuO6elhRPbdvLMwIXxM/d5e
         XfOFS+iMr99DVcTEgrlMHI6cJTBWpRqScwgp+ru0Q1nO0Fm6JWsxo5TpyRt0EMhXLnYo
         ueA48q8ojLyLm9BnoNuWbYzMBMi1psozUGSn8lK6Q11/5L/TG9qPkVRyJxxYHvr/FauE
         ql10eYAC1BG57DKaHE9onePBi/ZER/O2YNF9j6MbZybbhm2pKUmbKMiIyPNMo62xAE1P
         UjARx3fMsNUtSxfiG1pP9GcQHCspdIusltAkZ2wTlIOBbY/yQ+wLHEdl0dLvAscKtBgN
         akVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=ERSH3NukNmhWH+RDay2uW1OBJnxyyDaCGCTqzoRlHOM=;
        b=rfEzDxeVwXR7Pw0qBUinYo1gIXN4EJMd/NFHednV0EGGEMGNX2fjbudYsNBlpnuB7s
         DmjMR2vTYJ8aAKW0iMu8q0tZ449du3W0llHhGzodsO8yMkuuvgnvttJs/l2THUcasqsh
         0MuAl1Hk3JLYgGCEIjiELpZp4vOM4ztQk3uNQI7Tm6dOf2e8YTU1nGFdrN1VBELqfr4G
         wmkaPupvh7Nnw4pC52oONnqSq8sU8nlvjLJGHgBp31mG72OMQl7nBfmL9eFQSFdw5uwl
         3AUtvt0aIkSCLzfkLSjrSvhwBOGH39n18gTStSNNiF/q8eHTVVz584pcIGxk5sMzSmGh
         e/Ew==
X-Gm-Message-State: AOAM530jRUmHEaVwHmPlqDPtZhJ7b7VuEoFWE/kZ0+12cBBeWLGYDkK9
	jgVpVhYVkF9i/I7p66sFuY4XBdKaErI=
X-Google-Smtp-Source: ABdhPJzlLW78qMeGePY1BtMA/2dqEQrkOQF6uVFjUBcuWrLLI7Zl48Arz70X7JZzdFgMGA8rnGa20g==
X-Received: by 2002:a37:d17:: with SMTP id 23mr3265300qkn.191.1617200723440;
        Wed, 31 Mar 2021 07:25:23 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id z11sm1528732qkg.52.2021.03.31.07.25.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 07:25:22 -0700 (PDT)
Date: Wed, 31 Mar 2021 10:25:20 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for Mar 30, 2021
Message-ID: <20210331142520.GA36347@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for March 30, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Armin Kuster, Richard Purdie, Randy
MacLeod, Jan-Simon Möller, Trevor Gamblin, Tim Orling, Michael Halstead,
Paul Barker, Jon Mason, Joshua Watt, Steven Sakoman, Saul Wold, Scott
Murray, Khem Raj, Peter Kjellerstedt (saur), Ross Burton, Michael
Opdenacker

== notes ==
- 3.2-m3 released
- -m4 being built this week, no more update patches

== general ==
Randy: got info collection thingy working on AB thanks to help from SS and
    integrated into results
RP: have you had a chance to look at my theory
Randy: not yet
RP: io-nice doesn’t change async write (I think AlexK pointed this out). we
    do nice levels for all processes and io-nice for things that write, it’s
    possible that this is where we’re hitting the io block. we might want to
    try doing some builds under qemu (then we can enforce more nice levels) as
    a means of investigating this issue


RP: the valgrind stuff seems to be testing well in master-next, but i will
    defer those to -m4
RP: the -m4 build date is, technically, monday, anything else to include?
Randy: lttng modules?


Khem: i have gcc-11 patches, probably not for -m4, but if the AB has cycles
    can i send them up?
RP: on the one hand i’d prefer to not do multiple things at the same time,
    on the other hand i can’t stop people from sending new features
Khem: i can hold off a bit. i could send an RFC. yocto project has already
    submitted gcc-11 patches and i’m looking to expand the testing on it
RP: any issues for -native recipes?
Khem: i’ve found a bunch already and upstreamed them, any that weren’t
    accepted in the upstream project have been put into oe-core


Peter: what about the covered/not-covered (on runqueue) issue
RP: i have drafted a patch and is in master-next. it doesn’t appear to break
    anything, but proving it fixes things is hard. have you seen the problem
    after adding that patch?
Peter: no
SS: i had seen it on 3 builds, and haven’t seen them again either
RP: trying to reproduce an exact same build (wrt sstate, runqueues, etc) is
    hard, so it’s hard to know if we’ve solved it


Khem: in the past we’ve seen issues with bitbake running forever due to
    “make -l” issue. so we removed it. but we still see long builds with
    qemarm
Randy: how much longer?
Khem: (guessing) 30%
Randy: qemuarm64 too?
Khem: no, just qemuarm. same number of CPUs, same underlying machine
Jon: qemuarmv5 as well?
Khem: no
Jon: maybe it’s a qemuarm hardfloat issue. i’ll try to reproduce it
Khem: i’m building lots of stuff, not just the basics. mostly doing world
    builds, so maybe it’s a particular package
<various>: we can give it a try
RP: maybe by dropping the -l you’ve introduced something else (e.g. swapping)
Khem: but no other qemu’s are affected. most builds finish in 10 hours,
    but qemuarm gets killed after 13 hours (due to a timeout) which is why i
    notice it (because it gets killed)
RP: it would be interesting to look at the build stats data then compare build
    times recipe-to-recipe
Randy: is there a bug filed?
Khem: not yet, i can file a tracking bug


TimO: Ross asked me about splitting meta-python out to standalone layer (from
    meta-openembedded). would allow us to use dynamic layers. might help with
    ptest coverage. it might might other workflows possible (i.e. move it
    to gitlab and use their things). some have offered strong opinions that
    it’s just splitting for splitting sake
RP: i think splitting out would be good. there’s lots of burnout and it
    would be great to spread the load a bit more (instead of making one person
    responsible for all meta-oe)
TrevorG: having to share the support with the rest of meta-oe is hard
TimO: Khem had asked us to move to a PR mechanism
JPEW: this subset feels like the best one to be pulled out (as a test)
TimO: true, meta-perl might be a good candidate too. in any case i would start
    with dunfell, but nothing before that
Khem: have you considered this from the users point of view. obviously we’re
    thinking more of the maintenance point of view but let’s not forget to
    seek user input
TimO: obviously it’s going to impact users, they’ll need to change URIs
    and bblayers
PaulB: just make sure the layer index gets updated and we could leave a stub
    behind that points the user to the change
RP: (same)
Khem: i also think it would help if these layers have separate mailing list.
    it’s hard for users to know where to send patches (especially poky). so
    instead of using mete-oe as a kitchen sink
TimO: i’ve always wished for a separate mailing list. i’ve had to do lots
    of filtering but it doesn’t catch everything
Khem: good to bring to TSC and community to get input
TimO: it’s fairly quick to split this out. mechanics aren’t a problem
Armin: looking at layers that depend on meta-python, do you think they would
    change to dynamic layers? meta-networking and meta-multimedia depend on
    meta-python, so splitting it out would require pulling it in for many
    use-cases
RP: i wouldn't get too worried about the details, everything could be
    solved, let’s not worry about all possibilities, when only some might
    come to pass. i think more layers is good, maybe it opens up the ability
    to use the AB for some of this stuff (as stuff gets smaller)
Randy: so the reasons for are:
    1. burden on maintainers
    2. quality and test coverage
    ?
TimO: also simplification (if you want some python you don’t need all of
    meta-oe)
RP: i see dependency creep in external layers (since you have to pull in
    meta-oe for meta-python then we might as well pull in all these other
    things too that we’re already getting in meta-oe)
Randy: do we want to see everything in meta-oe split up, or other splits in
    oe-core?
RP: case by case, there’s pros and cons
Randy: what about incremental transition vs a full change-over
TimO: i want to make sure all the ptests are in place first, and there’s the
    question of review
Khem: why can’t we add ptests now? (i.e. in meta-oe)
TimO: i’d *like* to add more ptests, but doesn’t mean we will/should
Khem: propose it and see what the feedback is. people are making products with
    this and we should make sure to move forward in a way the impacts them in
    a way they’re happy with
TimO: 10 people will provide 20 opinions
RP: we can do a POC and move forward
TimO: we’ve talked about it so much over the years and we never agree on
    trying a change, maybe people can’t see the benefit until they actually
    try it
Randy: could this live on git.yoctoproject.org
TimO: maybe git.openembedded.org instead
Randy: would you track bugs on YP bugzilla
RP: where to host is irrelevant, but there are larger issues (such as better
    AB usage, maintainer question, burnout, mailing lists)
Khem: lots of people listed as maintainers of individual packages, but little
    actual maintainer help. how many maintainers actually review and help?
RP: the same problem exists in oe-core. there are some that are active, but in
    the end it’s usually AlexK that does the upgrades
TimO: it could be an issue of timing, sometime you don’t get to it in a
    day and someone else does it. with unlimited resources we would use yp
    bugzilla, but there are consequences to the members
Randy: do you want more layers removed too?
Khem: yes, that would be great. i’m not maintainer by choice, then i could
    sign up to maintain what matters to me
TrevorG: if we do it now with meta-python, then it lets us know if we should
    go ahead and do it with others too
RP: yes, good experiment and we can roll it back. meta-python looks like it
    would be a good test
TimO: i have tools that make it easy to do, and then easy to roll back. and
    the tools are not just meta-python-specific, they could be used for any
    sub-layer


TrevorW: there is a Yocto Project related virtual conference being planned:
    https://www.yoctoproject.org/yocto-project-virtual-summit-2021/
TrevorW: the CfP is now open:
    https://pretalx.com/yocto-project-summit-2021/cfp
