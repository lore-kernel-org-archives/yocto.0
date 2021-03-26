Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web09.3292.1616791434518912020
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 13:43:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oAFE1/qR;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id a11so5224240qto.2
        for <yocto@lists.yoctoproject.org>; Fri, 26 Mar 2021 13:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=7SNFqH78uzn7EP2lAtB5Ulv1liS313p0XwUiMYKUbqw=;
        b=oAFE1/qRI5z8FFi6JnZCIN84ZVtZzt1RCpXVsUqKEkceIwAfe+ShpOl1fWSA51uBK/
         bFl7qIxqHf/KpEtRcUABexePnrwClVu4Y41LR8iMTOoiaz1MJOEz801fUHyt6YnY/kOz
         t3Irvm/FvAlP+4ybF7sIFL30fd2+H8keJV3jGSWTN2ZIddx55huI9ZrBjl1GSmkIheWc
         U02qWnDhjMxXqY7aDJVE9u87sEvc2EED/QlHyJQL/jNvbJLpDzVpBXlcUJ3yLYWHNFzf
         QWm+tJOWKpQoNkgQ9nsS7v/Ko6O/Z3yDYOPFdYzXeK0WMvzX4tsegSDfM+8eCJSFtVry
         epFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=7SNFqH78uzn7EP2lAtB5Ulv1liS313p0XwUiMYKUbqw=;
        b=S3H2NGTtV4nWSw0ZEYCVjdoa/YHnQHuilQsu7NhA4J2EIWngL/VJNPGOkE6C4uzVeU
         mzOJpe7YqiJbpljEzMbZGSy8603TS5ibFSEzzjc24TuHrw+NHBh2UB9HRDgjG+0+7GlJ
         TzbXQUrhWsMzilDsSXaASruWrlhqCuTflP1XYexK8NlbrurfLP+bapGehzUIClwFCnfo
         QrZPlBYvJFIQAoIwtMHWxGhyezfr4+oz9eixKCowh1z4fFE4FQVajSCM9rpfMcEPLctM
         baLo0moCvDOEcK6TF8at8XJAA2FmoH5pbFfnruI+QrZwvPou3xpBAAe7xogwH1is54CR
         FSnQ==
X-Gm-Message-State: AOAM5303U9my0ap/0PIMWAQVho6lSdO0BWH8ug7D9G9DuZzfhRZeKNsb
	z0bK2IRTI15PitkCx28ZJwd6hWa00uU=
X-Google-Smtp-Source: ABdhPJx9z9PhfxfyNl9EfTbhOwFGWjdzq8Ey7iQ4QhRStgptpHtM0YC0xrG3oBiVBj61LeYk5q/t3g==
X-Received: by 2002:ac8:7a69:: with SMTP id w9mr13797787qtt.60.1616791433087;
        Fri, 26 Mar 2021 13:43:53 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id p5sm7741108qkj.35.2021.03.26.13.43.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 13:43:52 -0700 (PDT)
Date: Fri, 26 Mar 2021 16:43:50 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for March 23, 2021
Message-ID: <20210326204350.GA26379@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for March 23, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Armin Kuster, Michael Opdenacker, Joshua
Watt (JPEW), Saul Wold, Jan-Simon Möller, Scott Murray, Richard Purdie,
Alexandre Belloni, Randy MacLeod, Steve Sakoman, Tim Orling, Trevor
Gamblin, Bruce Ashfield, Michael Halstead, Peter Kjellerstedt (saur), Paul
Barker

== notes ==
- 3.3-m3 rc1 had issue with beaglebone, rc2 to be built as soon as it’s fixed
- layer compatibility bumped to hardknott
- a bunch of version updates were taken (based on guidance from TSC)
- sstate task output before build stats (master-next)
- still lots of “pending” patches which appear to be stale
- still lots of AB-INT issues

== general ==
AlexB: is the stale sstate thing optional? maybe useful cache might be lost
RP: it’s not removing it from cache, it’s removing it if installed in
    build directory. see util-linux patch for an example of when/why (the
    old util-linux was split into: util-linux-uuid and util-linux). the new
    packages have overlapping files that depend on each other. the cache
    wasn’t cleaned until -uuid was run which lead to stale data. so this was
    proposed as a fix for issues such as this
<various>: sounds like a good change
RP: i’m pretty sure it’s not going to cause issues, but we’re still
    leaving it in master-next for the time-being. i’m happy with how fast it
    runs and my initial testing seems to indicate there aren’t any follow-on
    problems. it’s running on the AB. master-next will become -rc2


RP: TimO: any perl updates? I saw some perl patches on the list and was hoping
    for your input
TimO: sorry, haven’t seen the patch
RP: it’s in master-next right now, looks like just a SRC_URI change for now
TimO: i’ve been working on fixing this sort of issue at a higher level.
    i’m working on the perl-deps issue, but i don’t want to hold up the
    release


TimO: i’ve also been working on recipe-tool for perl modules. currently lost
    down a rabbit hole of elastic-search (i.e. the backend for cpan)
ScottM: that goes beyond just using cpan?
TimO: yes, i want to search the cpan for dependencies myself while working on
    automated dependency tracking
RP: doing it in self-contained steps is recommended


Randy: anyone heard from Kevin wrt beaglebone blocking -m3
RP: a patch was sent last night, looks like a wic issue (dosutils)
Randy: are you building -rc2 now, or waiting for valgrind
RP: i think i’m going to skip valgrind now. -rc2 already has a lot of
    patches (more than usual) so i think we’ll try to cut it off
Randy: one of the things a new valgrind brings is something related to
    debuginfod, which might be interesting
RP: yes, given the outreachy project. but given valgrind’s history and
    issues we’ve had in the past, i’d rather wait for a new release before
    pulling that in, we’re too late now


RP: Randy, any news on AB load issue
Randy: none. still under investigation. maybe tomorrow? we have an in-house
    setup that we’re working with
RP: TrevorG do you have a question for MichaelH?
TrevorG: wondering about updates to AB, automated? manual?
MichaelH: for the workers i do them manually. I do some tests to start on each
    of them, then start the update manually. we could do something at startup
    to look for updates automatically
TrevorG: it works for me with CentOS and Fedora
MichaelH: there are differences between the versions of systemd, so we’re
    not sure of the update scripts will work across all workers yet
TrevorG: we just want to make sure that our internal AB setup is as close as
    possible to the “real” AB setup


RP: after we started the AB after some maintenance the connection to the
    swapbot was lost (the connection wasn’t initialized properly at
    startup). i noticed this on Monday and re-init the connection, so it’s
    working now, but there seems to be something amiss
MichaelH: okay. we’ll need to add this to the maintenance routine and make
    sure that’s working
AlexB: last week was quite quiet, least number of failures i’ve seen recently
RP: probably 2 reasons:
    1. we’re reaching a release milestone, so less invasive changes lately
    2. fewer changes in the earliest pieces (e.g. gcc patches) leads to more
       sstate reuse and tends to cause fewer issues overall
SteveS: it was nice getting builds done fast this week


ScottM: docs status update
RP: MichaelO from Bootlin is on today’s call, and will be helping out with
    the docs going forward taking over some of the work Scott Rifenbark used
    to do. Nico gave it a good push and MarkM had been working on it, but
    it’ll be nice to get some fresh eyes on it.


MichaelO: any plans to support clang
RP: it’s there, but not in core (yet?)
MichaelO: maybe something good to document?
RP: hard to say because it’s not in core. we might have to re-evaluate these
    sorts of things (pick specific examples of not-in-core things to document)


Randy: should we consider removing MIPS (now that MIPS has joined RISC-V)
RP: existing hardware isn’t going to disappear, and we do still have members
    using it. but we could re-focus our testing away from it moving forward.
    e.g. just move to qemu only testing and remove the actual MIPS hardware
    being supported (edge router)
PaulB: should we move it out of core into meta-mips (?)
RP: there isn’t much there, so probably not worth moving out (i.e. a couple
    machines and some compiler tunings)
PaulB: well, mostly about reducing the test matrix size
RP: i’d like to keep the optics that it is supported, if we cut it out, i
    don’t like the message it might send to the embedded community. but we
    don’t have to test *everything* that’s in oe-core
PaulB: each machine in oe-core expands to all sorts of builds and build tests
    (e.g. reproducibility, ptests, etc…)
RP: there already are areas that aren’t extensively tested across all of
    oe-core (e.g. musl)
Armin: ppc64 is in oe-core, but not tested as much as others
RP: we’ve been reducing our coverage, we are in control of the test matrix


RP: if anyone knows any RISC-V companies, we’d like to get some of them
    interested in becoming members. i’d really like to add RISC-V as part
    of our matrix, but that would be hard if it doesn’t have a source of
    funding


TimO: thinking about 5.12 kernel (in rc4 now)
RP: -m3 is delayed and late, so expect -m4 to be very short. if the kernel is
    still at only -rc4 then we’re probably still weeks away until a final
    kernel release. so i doubt they’ll align in time
