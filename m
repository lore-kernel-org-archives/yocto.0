Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
 by mx.groups.io with SMTP id smtpd.web11.3121.1602616026869163356
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Oct 2020 12:07:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VasfMJ4M;
 spf=pass (domain: gmail.com, ip: 209.85.166.51, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f51.google.com with SMTP id g7so798972iov.13
        for <yocto@lists.yoctoproject.org>; Tue, 13 Oct 2020 12:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=9usxfVnTfPJDYucxDavMNVKCiiYS63g48ixG1ptmIw8=;
        b=VasfMJ4M9HyYqzoFyb5Cav3KKLmA8hOrQadMxy2pOMGpsD+z8pjv5nhPT9fSMi6lGP
         eveWY5Yroweo6ShWxiBYV251vMVTVcrxziaPaOwnud7YVi7mT4cPa/sc6e9UTrhhnfkB
         PUCk6ya/Azwdsoe4xEF0qYSzRGOKf0TnTaOv/BNubuO/7KBdOS0kH5wwgnLgy6v6TBVo
         M1qpTN9XHFiYRSc9J9rVveNjUQwmf7a5LvJRlaSoYAxzHCGnZGEmJ9JBskAWToLEmUke
         IHab88/Afwbhq1DAZvu9EOJ7Q9IDYRwc7mu0aIoKnWKaiXaHHWHlk1S2mNx0MHBP1tsV
         2EBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=9usxfVnTfPJDYucxDavMNVKCiiYS63g48ixG1ptmIw8=;
        b=ALEmPHXO3FZykx2crXbSFah24S61i9s4dLOiSeRwYccfHNtP4W31uQqyeoLImvRRYL
         SA/E3E3xNOM9mCR9Z5o5B7lgy18dOgWfg4qqL9yp4IglreX9bEkjGt2hjdK2VAl3ECLR
         fxSEJ6rT4wPbLrtIbhewOUkwxqNI1YfvECSXM7fQo0Kr+SF6+M+VMo4VoE1dPQ0ATPPV
         +a4iS/PZ1l/eqKBCpI+3VU15Y6qFg8f9bDCddlb4gI7OdCqPQ78ShEYyf3yPunu9oCSa
         /Eh6sGcLke+Rjd7O6XzeZarYyK9grAcU8w/w0dCjWRyN+UkNFZ8oVSR083DfsZRwKXPg
         Ns1A==
X-Gm-Message-State: AOAM530dYd0adPD8nF30/sAds7LUaEZrX7BFW5JdOlmOm+iEf87nO8Pq
	e6WJC6EuTDfnQ2oi9YqH3MvOweZDUe0b8Q==
X-Google-Smtp-Source: ABdhPJxAnSQ8VwbCiJozv8zQ1x8wCkkyT8fN4r0EQcYMPHUerp4uk16PAnH1w1moN7DYRKfkIag1vA==
X-Received: by 2002:a6b:9046:: with SMTP id s67mr251698iod.8.1602616025445;
        Tue, 13 Oct 2020 12:07:05 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id v84sm819544ila.85.2020.10.13.12.07.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2020 12:07:04 -0700 (PDT)
Date: Tue, 13 Oct 2020 15:07:01 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for October 13, 2020
Message-ID: <20201013190701.GA2286@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for October 13, 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolly, Saul Wold, Armin Kuster, Jan-Simon Möller,
Joshua Watt, Sakib Sajal, Steve Sakoman, Scott Murray, Randy MacLeod, David
Reyna, Richard Purdie, Stacy Gaikoviaia, Jon Mason, Michael Halstead, Tim
Orling, Ross Burton, Bruce Ashfield, Alejandro H, Paul Barker, Trevor
Gamblin

== notes ==
- 3.1.3 has been released
- 1 week overdue for M4 (3 bugs to clear (buildtools, toaster, init script))
- major pseudo changes merged
- thanks for Victor for changes on qemu-mips
- 3.3 planning has started (see google doc https://docs.google.com/document/d/1IHiE0NU0XspDocgxZeLQ_W7o-yr0nVeBjbqImQUtH5A)

== general ==
RP: pseudo much improved, if you find issues going forward please report them,
    hopefully just edge cases left

RP: 3 outstanding bugs for m4 (Tim working on toaster, Ross working on
    buildtools, Armin on init scripts)

Randy: WR will be doing a bunch of builds on the new pseudo tonight
RP: AB is all green!

RP: curious behaviour on the AB. one build fully succeeds, next build (no
    changes) has failures (bitbake timeouts in tinfoil), starting a new build
    again (again no changes) succeeds. were there any NAS issues that might
    explain this?
Michael: not that I know of, nor outages this past weekend. was it
    infrastructure-based, or maybe timeouts accessing remote repositories?
RP: it should have been all in cache.
Ross: it’s like a gremlin jumped in, broke all the builds, then left
RP: okay, gremlins it is

RP: what’s up with the buildtools issues?
Ross: I’m not fond of exposing more variables to the build than are
    absolutely necessary
RP: (fyi: this is the ssl variables needed to be exposed issue)

RP: Armin, Tim, any updates?
Armin: still working through the init scripts, making sure they all run
Tim: there are a lot of steps of what calling what, not sure how/when cooker
    data gets populated
RP: yes, and changes that were made are affecting this
Tim: some part assumes the data is already there
RP: all but 2 tasks populate the cooker data, which
    seemed wasteful, so i changed command.py (see link:
    http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=0bcc00ac517bdb9a80353
    97fcac0a402fe1aad13)
RP: there were race issues, this fixed the race issues
Tim: the code that stopped working didn’t have any try-catch around it, so
    it probably wasn’t a robust design to begin. the issue is bitbake, it
    just showed up in toaster (i.e. don’t think it’s a django issue for
    example)
RP: there is a bit of pressure
Tim: been busy with Yocto Summit preparation, but that’s going well, so i
    should have time for this now

JPEW: want to talk about new stuff for 3.3?
RP: mostly 3.2 stuff that haven’t gotten around to
RP: there’s a recursive variable parsing thing that I’ve put your name
    against tentatively (JPEW)
JPEW: yes, i can take a look
RP: changing AB to split up logging more, i think that should be done this
    time
RP: i like some of the performance graph things I’ve done lately (i.e.
    buildstats) maybe that should get in
Tim: i’m working with a data science major (outreachy) to look at this…
Saul: whoa! we also have a data science major working with Rob Wooley to do
    some performance graph things, we need to sync up!
RP: i’m glad to let people work independently on this, we’ve had people
    look at this in the past but not get anywhere. sure, have them collaborate
    but not if it stalls the process/progress
Tim: i think the collaboration could be good to make sure nobody goes down
    dead alleys (relational DB, django, ORM, etc) we should use the same DB as
    KernelCI (graphana), just trying to read in the data (5GB!!) is difficult
Tracy: not sure if this helps, but there’s also Apache Casandra that could
    be worth exploring (linear performance)
RP: there’s no right answer, tools depend on approach
Saul: what, RP, are you most interested in?
RP: performance metrics
Saul: which?
RP: parsing time, build time, size tests, test results regressions (overall
    count and which regress) by commit ranges
Saul: we’re looking at overall build time and bottleneck issues (stalling on
    I/O, etc)
RP: we’re stalling on ./configure, 40%: half is autoreconf and half is
    ./configure execution, but neither are things we want to cache. would be
    great to go through the m4 base code and delete anything that’s old
Ross: i have been looking at this
RP: you can do that on the AB, if you run it with build perf it will give you
    the numbers
Scott: now that hash equivalence has been in for a while, is it helping?
RP: definitely a win, helps with some changes, but not others (i.e. change to
    a base task, it can’t tell if it needs to run everything or not e.g.
    do_compile in base class), it’s been a big win for the AB (but can’t
    prove it, just a feeling)
Randy: going back to 40% in ./configure, trimming scripts that are run, would
    using dash save a few percent?
RP: no. i don’t think the shell would make any difference. there was a test
    done and bash was shown to be faster, if anything. cutting out m4 macros
    will save on, for example, macro expansion with all the crazy things that
    expansion does. my conjecture is that if we remove stuff from the m4
    macros for things we don’t care about, that should save a lot of time.
    if we deleted a lot of the tests and just pasted in the results that
    should also make it faster.
Randy: how do you feel about diverging from upstream?
RP: depends on if we can maintain it
Scott: if autoreconf was a separate task that could be cached, would that be a
    win?
RP: i’ve wondered about it… don’t know. you could cache it using sstate,
    it would have minimal dependencies, hard to tell which files that would
    change would need to re-trigger
Scott: equivalency would be based on what it needs
RP: yes, but rerunning is a nightmare
Scott: isn’t sstate after do_patch?
RP: no
Scott: ah
RP: lots if disk space overhead otherwise. i was looking at this recently
(for something else) but couldn’t figure it out, maybe we should revisit
it for 3.3

Randy: Ross, you were working on getting stuff to work with any toolchain?
Ross: meta-clang has interesting classes that allow one to swap in any
    toolchain for arbitrary packages. this is something that core should be
    able to do so that anyone can switch between any toolchain from anywhere
    for any packages

RP: Victor contributed his qemu-mips patches upstream and it looks like
    they’re going to take it so we won’t have to carry the patches anymore

JPEW: i’ll be working on two issues: 1) have an upstream server to pull
    hashes from, perhaps read-only. 2) replacing multiprocessing in cooker
RP: there is an outstanding bug where if someone does Ctrl-C on a build that
    is using git AUTOREV there seems to be an issue. maybe there’s a way to
    test this?
JPEW: yes, we can switch all to AUTOREV easily to stress test this path
    (multiprocessing). what’s the bug #?
RP: 14034
RP: we fixed the things we were able to reproduce, but no the AUTOREV issue
JPEW: i can take a look
RP: thanks

Randy: any way to avoid ptest dependency creep?
RP: lots of tests have dependencies on perl, bash, gcc, etc. 
RP: see link
    https://autobuilder.yocto.io/pub/non-release/20201012-6/testresults/buildperf-ubuntu1604/perf-ubuntu1604_master_20201012150127_0c0b236b4c.html of
    performance metrics. you’ll see a nice drop-off, that’s due to changes
    from Ross
Randy: what about getting rid of perl-modules?
RP: yes, which then pulled in a whole bunch of stuff. so yes there’s creep,
    if we can remove them, it does show noticeable improvements
Ross: 30 minute improvement on my build machine. e.g. ptest was building gcc
    for the target! takes way too long
RP: builds a target qemu for every architecture for any one build, perhaps
    something like that could be target-specific. Ross sees a larger
    improvement than the AB due to parallelism. a smaller machine with fewer
    cores will get bottlenecked on this by a larger percentage. anyway,
    that’s why these charts are so important.

RP: there are a couple OSVs on the call, there seem to be a lot of CVEs
    against Dunfell, is there anything we can do about it. i’m guessing
    there must be patches out there
Randy: WR isn’t on Dunfell, we’re on Zeus and we send those upstream
RP: are you going to align with Dunfell
Randy: probably not
Alejandro: it’s something i’ve been trying to find time to do
Tim: the emails, the “new” ones are newly found ones this week? and
    “removed” are ones we’ve fixed?
Steve: in theory yes. sometimes a “new” has an old date, sometime the
    affected version is all wildcards, so hard to know
Ross: i went through some of those wildcards wrt qemu and removed a bunch of
    them due to narrowing down the version
Tim: i think we have some people looking at this
RP: it would be great if we coordinated. if everyone took 1 a week and looked
    at it, and it was coordinated, that would make a huge improvement
Tim: should we auto-create bugzillas?
RP: no, we should not be auto-creating anything in bugzilla
Randy: how do we divide up the work?
RP: wiki? don’t need bugzilla for it. if you have a curated list you can put
    it into bugzilla, that would be fine. but auto-creating bugzillas would be
    carnage
Scott: are we particularly interested in qemu ones more than others?
Steve: i’d like to see CVE fixes for anything that runs on the target
Scott: seems like many/most are for qemu
Steve: and some native ones too

Stephen: over time, thanks!
