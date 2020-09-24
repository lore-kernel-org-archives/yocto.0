Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web12.2512.1600989548522341448
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Sep 2020 16:19:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CXLoSbid;
 spf=pass (domain: gmail.com, ip: 209.85.160.171, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f171.google.com with SMTP id a4so552185qth.0
        for <yocto@lists.yoctoproject.org>; Thu, 24 Sep 2020 16:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=sE8UHJ5zQVb+JgnIBZwdEyCvxbUNUrxvy8jrri++zMM=;
        b=CXLoSbid0lsDHgvylwyvn2fqnmYA9I2idCDCAZYrxMkJVajQBCInf3vxWEFN5IHd6t
         HsGSMzHdQIrI6WrSbrMUAWs9cytTFBvVsamJeJd4+RA+5FbcybYOx5wthYxOPLppyCew
         mrGxRbcUo7mMCZd1t8o2zevJmAjUt/x68HrzrwEqtTxi4qijyHjcQy47gvtOXFt1hsez
         uiaUm3I+QF0gH8LOIjw9pWsDX1f6/ZyrlTGlHvsS1ZC9XDoHN7yEXjpd7m7zbhYDXIdm
         DwqZDDKU15RFETrhXzVQlnTS6ZNJq7K2TeporPq1qR4+P/SBPxF03+QTE4Mcz6t3HKrX
         8nYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=sE8UHJ5zQVb+JgnIBZwdEyCvxbUNUrxvy8jrri++zMM=;
        b=OsDT+3A9C2vCuyvpD07R7lZGzKuUxQ0WICiEKEatBH3ZA2JjrZ1EvCFeWJ4PVNCZb7
         HXeiaZAcDZiQlJbpXaBGVF1Ym4HPktSj2/X0zlSZSOrek6mUDOkUDNVaklUjeicE55YW
         c5CesQocZwvq7Ln9TeGydQu0h7HMqn5oEe2cdbqY23gQ3g4XxTBcv9UJoJwD+fy9ffxU
         ry6Z+eE+46UJ0A/5WyA3XzMzomz2K355Yo8Zg5fblBGi/QQZ1nKfcEFDxqp0vHWhyYnp
         jy+0GwRyJ4PdRtY9IR6wXDLHoiPxCtRlmiQ/pGCc+FiPbcTXXEtscoGRXevp52suXeHy
         eHDg==
X-Gm-Message-State: AOAM532O+COPujS+R8i/vkP7SQjesZU3uMr0VcocCN4WeOh8ttiXb2fO
	ux+4Z/XLZyx0XjyrwPchWUcDhA+c71caPA==
X-Google-Smtp-Source: ABdhPJy9cNa1aVr10g3Rvp8Wzsvg7Yun2Mdgi58XvFjrIrOG8DmtX8aKWh3gXl1VILK0O8l7IttY6Q==
X-Received: by 2002:ac8:12c4:: with SMTP id b4mr1746990qtj.224.1600989547139;
        Thu, 24 Sep 2020 16:19:07 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id g19sm636623qka.84.2020.09.24.16.19.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 16:19:06 -0700 (PDT)
Date: Thu, 24 Sep 2020 19:19:03 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for September 22, 2020
Message-ID: <20200924231903.GA39706@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for September 22, 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Armin Kuster, Stephen Jolly, Martin Jansa (JaMa), Richard
Purdie, Joshua Watt (JPEW), Steve Sakoman (SS), Mark Morton, Michael
Halstead, David Reyna, Saul Wold, Paul Barker, Scott Murray, Jon Mason,
Randy MacLeod, Bruce Ashfield, Alejandro H, Tim Orling (Timo)

== notes ==
- m3-rc1 build and ran, qa found issues (beaglebone fails to boot) therefore
    an -rc2 will be built
- 3.1.3 will be built soon
- sphinx transition has merged (docs.yoctoproject.org)
- one of the AB timeout issues identified and patch sent
- other AB issues to work on

== general ==
RP: beaglebone issues, ptest issues, please take a look

RP: believe we found why there are stalls on I/O (journal writing), tweaks
    made, hope they help (thanks Michael)
RP: but there are still other AB issues (e.g. --x bit not set, caused by sudo
    re-used inodes)
RP: this is blocking next build, not sure if they’re caused by master-next


RP: sphinx updates merged, it’s just the start, there are lots of URL issues
    and lots of out-dated content that could use an update
Randy: is this documented somewhere (the workflow)?
RP: the README has been updated
RP: ignore the xml files, make changes to the rst files

RP: (to Michael) how close are we to getting auto-updates to the website
Michael: very close, just need an update to the new process
RP: would be great to not need manual intervention to update the docs
Michael: who would need to know of any failures other than me?
RP: the docs email list

PaulB: follow-up on last week’s rust discussion
PaulB: the license stuff looks good, what’s in meta-rust looks good, it
    provides a fetcher (i.e. crates) that feeds that to bitbake. lots of stuff
    that works (e.g. BB_NO_NETWORK).
PaulB: one limitation is that licenses of fetched dependencies are not fetched
PaulB: the crate-fetcher should be moved into bitbake itself, it just uses https as expected, so shouldn’t be too hard
RP: sounds good!
PaulB: after seeing npm nightmares, rust looks good!
PaulB: we need a story for handling licenses of dependencies
Randy: can we not just list all the licences for each one?
PaulB: the cargo-bitbake tool should be able to simply recurse through the
    dependencies
PaulB: the cargo-bitbake tool is written in rust (as opposed to python3)

RP: on the licensing email list there was a question about licensing. there
    are packages with sprawling dependencies and although the top-level
    license is listed the licenses of the dependencies are not
PaulB: there is a tool (scancode-tk class in meta-spdxscanner) that can go
    through a repository to look for license text (and itemize them). it’s a
    very time-consuming process; core-image-minimal adds 23 hours to a 1 hour
    build
RP: when we scan for debug symbols it tells us what’s included in the binary
PaulB: scancode-tk uses the fetching and patching to examine, examining only
    the debug symbols would cut down the time
RP: in any case the question on the licensing mailing list needs a reply. do
    we add to do_license?
PaulB: i don’t think it can ever be “complete”
RP: true, but maybe there are holes that can be easily filled
Armin: would ptest-check come into play too?
RP: those can be under a different license
Armin: what i mean is, sometimes enabling ptests causes other things to be
    downloaded and used, would those be included? would those be considered
    part of the package license compliance list
RP: since it’s downloaded but not shipped, i don’t think so, i think it
    should be a runtime issue
(various): qt5, chromium, wayland, etc
RP: sounds like there’s work here to do and things to investigate

RP: are we going to get the rust fetcher into bitbake?
Randy: working on other stuff at the moment, but was going to get “hello
    world” working, then focus on packaging, then later a “hello
    crazy-world” (i.e. a larger rust program)
RP: makes sense to break it up into logical chunks. sounds like working on the
    fetcher and having fetcher tests would be nice
Randy: PaulB does that sound good?
RP: I need to poke the meta-rust maintainers and see what they think/involve
    them
Randy: they didn’t seem super interested in participating when i poked them
    a while back
PaulB: but yes, working on the fetcher sounds like a good area to work on.
    it’s fairly self-contained. needs test cases. should be able to pull it
    in without the rest of meta-rust
Randy: does it make sense to do the toolchain alone then librsvg
PaulB: where is librsvg? (librsvg needs rust to build now)
Randy: oe-core
Armin: in meta-security there is a newer package that i haven’t brought in
    because it needs rust, so it could be a good test case
PaulB: rust has really fast releases, how do we want to handle that amongst
    the various branches?
PaulB: with python it makes sense to write a recipe for each and every
    library/dependency that is used, but rust works differently, it doesn’t
    work in the way of needing to build dependencies then building the main
    app itself. in rust we just need a recipe for the app, and the rest gets
    handled
Randy: (divides work up between himself and PaulB, going forward)

Stephen: there will be a new invite to this meeting and the bug triage meeting
    on the mailing list, the new links will have an embedded password

RP: anything on stable front that we need to talk about
SS: not really. when we do the latest pull we’ll need to start a new build
RP: centos 7 perf?

RP: Bruce: x86 backtrace?
Bruce: had a quick look, no ideas yet, will look at it later today
RP: it’s a weird one and it worries me: a corrupt return pointer? maybe a
    tool issue
Bruce: we can’t blame system load on this one
RP: it looks like corruption
