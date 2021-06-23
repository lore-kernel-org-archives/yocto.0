Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web10.2083.1624414949611104221
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Jun 2021 19:22:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AMxl7tIv;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id f5so652321qvu.8
        for <yocto@lists.yoctoproject.org>; Tue, 22 Jun 2021 19:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=2C36OWO/vUN5tCwWygHwAHpi2Kh/WbOaMSmHayuKDDc=;
        b=AMxl7tIvf9sP6b/vSn8hgyBz0BvE1aUNbcVx+FqdamtTb5foTIQXBPSIJEmry4pq9y
         xwcGaa1yHZ68ii4iMVYtgYEB8YAZCpJdV2aCYFLSMwbA6QNh7YtSBxdj3G6dOlpQs7L3
         lUzvTS+TGYDmhDgkp/SWbVL20ToNyEaIn1rpTMR7MhJUapG8T5h/whM+OOP4109XnEWu
         LQSfP5enXpkpRFSe4xQ+WDKyqe5SIXXIbASPhreybL7UINrKwcVwceXf2irowSKnxS0y
         ncwYvn9e7H/ZPSyR8PcNcHAVhQGp2lMd4EmDJw/Mzq1J8HMpT4ektJE/R7Z/u07OOzQp
         VMiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=2C36OWO/vUN5tCwWygHwAHpi2Kh/WbOaMSmHayuKDDc=;
        b=IWINTRgzPFO0vKdzhTdmfFJkL9CvfLqjV6QRN/+3osc5JGg+d8C+07IKkRIOGQ4yuz
         hS3EDmPd9XE4T78AOIExHi5xtQGJ/ggwYKFoPJlUkdgxACv+QAaIK1GPtiRyDN9NEChK
         p8ySSZa3qwr41DfkwXa2IqG98/SLbEfV/MpRFoPqsBqJiBtpssXiHuDPsfdZF7JtmdVU
         w9mQiQhdA8ZZW0d4owyFqQxFufYel5UJ/fd6jnWT9P6NkFRrTkIkThABIWyo+IcVFeMj
         31W/+xJ1n2BuCcN6So0wuLGpxHs1whnzjaHXzOTHdw7LH/ILJnTnJj5EIEEfbqr8Zz3q
         1s4g==
X-Gm-Message-State: AOAM530JjoXpTA7NDvcDVPHQLqHsxKQGFKHtF5qNUqJ06J0MEbQwmnYA
	Wiyl5F2rPJx5IL1VQdB7hOFQA1GPFJrwXA==
X-Google-Smtp-Source: ABdhPJxmh+wpeA36HLslsdFKEYMzTpJciWy5kDdzwSpk1m2n7bY0PxgUp8fCyjHDLGqMaE2evZBpHw==
X-Received: by 2002:a05:6214:caa:: with SMTP id s10mr2181216qvs.0.1624414948171;
        Tue, 22 Jun 2021 19:22:28 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id x7sm14680568qke.62.2021.06.22.19.22.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jun 2021 19:22:27 -0700 (PDT)
Date: Tue, 22 Jun 2021 22:22:25 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for June 22, 2021
Message-ID: <20210623022225.GA21921@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for June 22, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Michael Halstead, Paul Barker, Richard
Purdie, Scott Murray, Steve Sakoman, Tony Tascioglu, Trevor Gamblin,
Alejandro Hernandez, Alexandre Belloni, Jan-Simon Möller, Randy MacLeod

== notes ==
- 3.4 m1 (honister) through QA, couple issue found, in review by TSC to decide
    on release
- 3.1.9 (dunfell) currently being build then sent to QA
- thanks to PaulG for tracking down null pointer in cgroups mount code (and
    others) that have led to solving some AB hangs
- the rcu dump AB vm hangs are still occurring
- 2 new manual sections: reproducible builds, and YP compatible
- multiconfig changes continue to cause issues
- still lots of AB-INT issues, we’re working on trying to define the load
    pattern that causes these issues

== general ==
RP: special thanks to Paul Gortmaker for finding the null pointer issue to fix
    the LTP builds


PaulB: still working on the pr-server changes. my changes work on my setup but
    don’t seem to do well on the AB. if i enable parallelism in my builds
    then the oom-killer gets busy. it’s annoying that the output from a test
    is buffered until the test is finished, so if a test hangs then i can’t
    find out which one is hanging. it looks like we’ll have to dig into
    async-io or python parallelism to see if there’s something wrong there
    or at least figure out how to get more output before a test finishes
RP: did you look at the trace output i found
PaulB: yes, but not exactly sure what i’m looking at
RP: if bitbake server starts one of the servers, then it’s responsible for
    taking it out when it shuts down. so they run individually, but there is
    some sharing. that traceback suggests to me that it’s trying to shut down
    the pr server at shutdown time but not succeeding. sometimes the sqlite
    database takes time to sync to disk for example (especially when there
    is high io) but bitbake ends up blocked. it looks like some contention
    between the parse threads and the locks. when doing python parallel there
    are 2 systems and we have to make sure to not mix the two.
PaulB: in one case it looks like one of the comm sockets is already closed,
    but the server is waiting for it to close again, but i would think we’d
    get the same traceback every time
RP: maybe it’s stuck somewhere where it shouldn’t be, which makes it skip
    some error/exit handling. or maybe add more debug code
PaulB: yes, i think adding timeouts to every wait/callback to see which ones
    are timing out
RP: can python give you a dump of what’s in every waitstate?
PaulB: not sure, i’ll have to look at what python provides. bitbake isn’t
    what’s telling prserv to exit on the cluster, but it is on my builds
RP: that seems unlikely
PaulB: i can’t generate the same conditions locally as what we’re seeing
    on the AB. because of thread contention there seems to be, perhaps, a
    resource exhaustion that i can’t reproduce
RP: put a “sleep 5” in the shutdown path in the prserv. it would cause
    hashserve to exist longer than bitbake
PaulB: or backout the use of multiprocessing, keep the new json rpc system.
    but do a more traditional fork() to start the process up
RP: i suspect we did the fork() for a reason
PaulB: multiprocessing didn’t exist back then
RP: it did, but it was broken. i sent a cooker daemon log which should show
    what was running at the time. so we should be able to reverse engineer
    what was going on at that time. i’m getting good at reading those, so i
    can probably read them and tell you what tests were running at the time
PaulB: if we could just run that one test
RP: i would run just the prserv selftest and put that sleep in there. i’m
    convinced it’s one of them
PaulB: i’m afraid i’m going to have to hand this off to someone else.
    i’ll give one more push but then i’m out of ideas
RP: okay. it’d be good to get that in because i’m looking forward to it


TrevorW: move to SPDX license identifiers
RP: we have
TrevorW: classes and ptests yes, but not recipes and other places of oecore
RP: any place where we’re writing python we have. it’s a nice cleanup
    thing, we’ve been embracing it. we’ve made some of the changes.
    we’ve done it with code. the problem with recipes is that if we put that
    at the top of the license it’ll get confused with the LICENCE field. so
    we’re not quite sure what to do in that case
PaulB: i've been using a linting tool that checks for these identifiers.
    again, the problem of what license to put on the recipe and for patches
    etc (https://reuse.software/spec)
RP: licenses in patches in something to think about and would make upstreaming
    easier. we’ve done the low hanging fruit but need more thought for other
    cases. there’s also a standard form for copyright headers too
PaulB: yes, there’s been an update to the copyright format as well
RP: YP now has attained silver status for core infrastructure in LF. to get to
    gold we need copyright on all files and many of our recipes don’t
ScottM: if there’s a statement at the top or the repo doesn’t that help
RP: i don’t think it accounts for that. and then we have to decide if these
    are oe contributors or yocto contributors. so i left it at that. if anyone
    wants to move this forward i’m definitely interested. there are some
    questions we need to answer. our code is good at having copyright, but the
    problem is with recipes
RP: there are a couple things we need to get gold status: 2-factor auth for
    git pushes, some https issues (best practices changed), and licensing


TrevorG: working on the job server. create a dir in tmp to create the fifo,
    but not seeing any difference in performance. i’m not sure kea is the
    right way to go
RP: it was deleting the fifo
TrevorG: yes, at the end of the day it’s using the one that’s tied to the
    user process
RP: that’s the correct way to do it. if it already exists then it should
    get an EXISTS error and just go ahead and user it. as long as it’s not
    deleting it
TrevorG: i’ve probably left something out, so i’ll look through it and see
RP: it was a POC i had written, but i can't remember how much testing it got.
    these rcu issues seem to be related to a peak-load issue, so it’d be
    nice to dig in and get to the core of the issue
TrevorG: tl;dr: no definitive results yet
Randy: make has the ability to look at the system load and use that to decide
    whether or not to add more load, is there a reason we’re not considering
    that
RP: good question. we’ve talked about it before, but i can't remember why we
    decided not to go that route


RP: any updates on the rcu things AlexB? we had another one over the weekend
AlexB: right now i don’t have anything to say because i believe this
    is something that is stuck in userspace. so i’m debugging, but
    unfortunately the kernel we’re using doesn’t have debugging enabled,
    so i want to build another kernel with debugging enabled so we can test
    with debugging enabled. maybe we can carry a patch for the qemu kernels
    on the AB which will enable more debugging. we’re also missing a few
    important symbols that will help us see more. so i don't think these core
    dump are important as-is.
RP: which debug symbols are you missing? our dumps have a lot of things
    enabled
AlexB: debuginfo. there’s the risk that a new kernel will change behaviour
    but we should try
RP: because we’re so reproducible, we should be able to debug easier. would
    a complete kernel build help
AlexB: config?
RP: x86-64 musl. we should change the qmp code to run the commands that we
    found
AlexB: yes. i’m carrying the 2nd qmp socket patch (instead of going through
    the close)
RP: it’d be nice to always have this
AlexB: how do we detect the hang
RP: there are timeouts, so if we hit the timeouts then we assume there’s a
    hang
AlexB: we do that before killing…
RP: yes. if you have notes about how to set this up with gdb i’d like to try
    replicating it
AlexB: okay. i was hoping this was a problem in the kernel and that the answer
    would be right there. we’ve also seen the load of qemu going to 300 to
    400 then 300 then 400.
RP: it’s like something is waiting for something else to happen
AlexB: you straced it
RP: yes, while pinging it. and we could see the straces going into the ping
AlexB: yes, which means the kernel is still alive, but the rcu is saying that
    the kernel is not alive, so something is confused. something seems to be
    waiting for something to happen that might never happen
Randy: so no progress on the rcu stalls?
RP: yes. we’ve made progress at poking qemu, and we have this core dump, but
    no insight into what is causing it
Randy: has anyone tried to reproduce it? i’ve got a busy system and i’ve
    run stress-ng
RP: i haven’t tried that.
Randy: where does it happen
RP: ubuntu 18.04
AlexB: but maybe that’s because that’s what most of our AB is running?
RP: that’s the info we have. if we can reproduce it then that would be
    wonderful since that would make it easier to debug. making qmp better is
    worth it in any case.


Randy: what about the kernel change PaulG made. i’d like to hammer on it
RP: i’ve done some hammering and haven’t seen any issues yet
Randy: i’ll do some hammering tonight so we can add some stats
RP: we’ve see one arm AB issue reading a message in /proc, but we’ve only
    seen it once
Randy: we don’t have any arm builders. what are you using?
RP: ampere (something) and a huawei (something). not sure what the trigger is;
    no idea how to reproduce. it’s a hanging read(), but you can still ssh
    into the system. we may end up disabling the test


PaulB: back to copyright headers. i’ve pasted the output of a run i’ve
    just done looking for licenses. there’s probably some low-hanging fruit
    there and some false positives.
