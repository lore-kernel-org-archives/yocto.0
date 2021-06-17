Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web10.1881.1623945996561513938
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Jun 2021 09:06:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hmVUwLn0;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id l3so1965339qvl.0
        for <yocto@lists.yoctoproject.org>; Thu, 17 Jun 2021 09:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=FjSuZC6TMs4wKDLQR7iqX5Whfhp/JXWq1vf1X4WBIcU=;
        b=hmVUwLn0KsJLXKeSoMe00btQ8S7JUPly8qsC7/trvEOwQ/V1hlNdT98bLk12RD89ur
         fAd9SKnoKETB+Um3QYmmn6K4VJcw+9DTFNbAUKvrtJ/LZCgyh699+UTegWEU6dz+4shy
         erqEImpdVLopBahS106d7v3/Ol2UGXCd8hkzPRjCA7LJc/xaPXMxQgwH1prp8H2Kklsp
         r3KAvJ3AC7opmtm8G7pmpSSwpqoyTOpg5vszZjmQMirljBY/hMP+IyuMWCudqQkGRUeC
         zmA0t4GajoneYnF7vuyzK8/VTmOiGSYvFw++e2NY8bSHFcswpZ822JU3lBlt/jruCdHQ
         7krg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=FjSuZC6TMs4wKDLQR7iqX5Whfhp/JXWq1vf1X4WBIcU=;
        b=X2qlSXqUytAbEegKyJXVEMxnICiYpWWFgU6tw5FTLGKjcGKPWkC77lCziXAl8KlOrA
         p7yUIa4X616g6NXC7Y1/3HYGLD21mdgxEFoGwfWpi0V18VUg6yWJmP9X6RDI5xJXtB4z
         sLz3kpUmAof+YPjH8VJiQSfucHsR7z9RPb0VlZCAmAw4fhtpB1o9bfN3uLQjDfEQ1m+R
         n7lZgNEKXkc61/3rZifDKwX6ieuFjgyNlJ11ZiR4Lbor5DtggZ7mMENumzp/aYF9z/9p
         1yWHdlQ+dCLpSpXPMLKM9Bs5N+r3DuzID1+MIDSLobj5+RDwk1liwmztxUlDIeKr6NyE
         6Kpg==
X-Gm-Message-State: AOAM531SQBHl2GXnuK8FpvOoSYtb8/sRD4gfTPwZ6JrgfT2vRLA0Pjwd
	ypsd4+NtFYXMoWGMl7aWoDAjvH73A3W4Gw==
X-Google-Smtp-Source: ABdhPJzSNl9I6L//llm2XlKqxgt4YKiSKfi/1lpohCrN5OI4HpcEnk57KEn7LclxMjBzdrgqWXE2Bg==
X-Received: by 2002:a0c:aa13:: with SMTP id d19mr537003qvb.3.1623945995309;
        Thu, 17 Jun 2021 09:06:35 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id e10sm1942430qkg.18.2021.06.17.09.06.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jun 2021 09:06:34 -0700 (PDT)
Date: Thu, 17 Jun 2021 12:06:32 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for June 15 2021
Message-ID: <20210617160632.GA10184@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for June 15 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Jan-Simon Möller, Steve Sakoman, Randy
MacLeod, Joshua Watt (JPEW), Michael Opdenacker, Peter Kjellesrstedt,
Richard Purdie, Tim Orling, Tony Tascioglu, Trevor Gamblin, Denys
Dmytriyenko, Bruce Ashfield, Michael Halstead, Ross Burton, Saul Wold

== notes ==
- 3.4 m1 built and in QA (honister)
- m1 unblocked, we thought it was caused by kernel stuff, but it’s going to
    take longer
- still working on AB-INT centos8 issue
- multiconfig issues continue, need simpler test cases
- ongoing discussion of potential new bitbake assignment operator (see
    architecture mailing list)
- pr-serv updates from PaulB are revealing issues with shutdown, hanging
    threads, etc
- uptick in CVEs (up to 17, was down to 4 at one point) thanks to RossB for
    help (please join in)

== general ==
TimO: i was looking at one of the CVEs for dunfell, there was a collision in the patch that we’re working on


Randy: Tony, did you send the email regarding ffmpeg
Tony: not yet, but i sent the 2nd part of valgrind fixes
Randy: there are many CVEs out for ffmpeg that Tony is looking at


TrevorG: we’re using kia as the test package, looking at how the job server
    works, collecting data. if you run with X jobs but add the debug flag it
    spits out messages about needing a token
Randy: 2 builds, both building kia, we should see a difference in the amount
    of time taken but we’re not seeing that
TrevorG: working on gathering more data
Randy: do you want the patch today
RP: seems to be confusion over the results so lets sort that out. we’ve
    been looking at how make does its job server stuff and we’re looking to
    integrating it into our builds (it sets up pipes and writes tokens to the
    pipe and the sub builders read a token, work on stuff, then put the token
    back)
RP: hopefully this helps with the AB-INT issues, and if we can solve the
    kernel stuff wrt AB-INT then we’ll be in a good position


Randy: can we disable sstate generation?
RP: not that simple, sstate does a bunch of stuff, recipe-specific sysroots,
    for example, so some parts of the sstate generation have to be used
    regardless, the only bit you can disable is the final creation of the
    sstate object, or we could zero out the final function call. what would
    blow up if we did? don’t know, won’t look into it. i wont be accepting
    patches for that. the gains you think you might see won’t be worth it
Randy: okay, i’ll look into it. if it’s less than 1 or 2% then i won’t
    care. my use-case is that we clean up everything after each build, so why
    create it in the first place
RP: you’ll see problems with multiconfig and in other places, and i’m not
    convinced it’s worth the pain
JPEW: doesn’t he also have to disable siginfodata generating?
RP: probably, this is why i don’t want to go there


JPEW: been working on SPDX stuff. we have our own view of the world and
    that’s what we need to include in the SPDX.
RP: i think we’re going to see more announcements soon (external tools etc)
JPEW: we are going to the plugfest in 2 weeks
RP: but you’ve missed the deadline
JPEW: i submitted one
RP: (needs to follow up)
JPEW: maybe i didn’t put it in the right place. i’ll double-check.
RP: i’ll give you Kate’s email and coordinate with her. getting involved
    would be good
JPEW: looking at making meta-doubleopen better integrated into oe-core
RP: it feels like a lot of patches and hacks, which worries me
JPEW: a lot of it was making it do sstate properly. the big thing is the
    archiving of the sources which i think will make use of your sources
    changes. the changes to oe-core were minimal (debug sources)
RP: if we could pipe that through lz4 and compress it
JPEW: we could just add it as a host package (dependency)
RP: that would be simpler than doing it through python APIs
JPEW: agreed
RP: maybe we could save off base hash
MichaelO: why lz4?
JPEW: it’s the fastest of the ones we’ve looked at for this type of data.
    zstd is more configurable, but lz4 is just pinned to be fast
MichaelO: if speed matters then i agree lz4 is the fastest
RP: we’ve looked at a couple and had better compression with some others,
    but lz4 always ended up being the fastest. we even looked at having
    bitbake start the next task before finishing the compression, but that
    didn’t work out
JPEW: i think zstd has parallel compressing so we could use multiple threads.
    and with configurability we can change between size and speed
RP: with the testing i did i also found gz worked well in some cases. i’m
    open to any ideas here if there’s data to support it. i’m not sure
    what’s in centos7, but we use buildtools tarball anyway
MichaelO: i can do some testing, were is it set?
RP: it’s not parameterized, but look in the sstate bbclass and do a
    search+replace of tgz, then do a test and compare size and time
JPEW: we use pigz if it’s available
RP: right. it’s smart enough to start with gz and then use pigz if available
JPEW: i think zstd has the same, there’s pzstd for the parallel version


JPEW: compressed package data, debuginfo, do you want it debuginfo or do
    you want to be able to put other things in there, or replicate what’s in
    the package data
RP: i assume you’re going to create a new file
JPEW: yes
RP: then let’s have an api that says “this file has this data in it”
Ross: is it time to consider a package data v2 (e.g. with compressed json)
    because i was looking at adding more info into package data too and it was
    bad
Saul: it could be configurable. it could be packagedata but all in one file
RP: the “configurable” thing is problematic. a 2nd build with a different
    config won’t be able to reuse sstate info. but adding debuginfo is large
    (hence compression). i can see what Ross would like because internally
    using that information to regenerate its own internal state is quite fast
Saul: sorry, i meant what’s output could be configurable
RP: but what JPEW wants is adding to the packagedata. there’s the top-level
    file but there’s also data in the runtime directory and the two are
    linked. i’m fine with moving it to json (or some other format) but we
    need to make sure we can access the subsets so it doesn’t become 1 huge
    json file, but a file with sets. i’m thinking out loud (these might not
    work). it goes into sstate as individual entries but then gets splattered
    like a sysroot. the nice thing is it is lockless, but with individual
    files maybe locking becomes an issue? although with package data being
    recipe-specific it might avoid any issues.
JPEW: then there’s the hard links too
RP: it only hardlinks to things it depends on
JPEW: knowing what we need from the packagedata is the first step
RP: some of that is obsolete because of recipe-specific sysroots
RP: what do people think of making a hardlink of the sources? the downside is
    having hardlinked directory trees that take a long time to delete.
JPEW: how are we deleting them?
RP: we’ve tried a couple things, but they’re all slow because fs people
    don’t care about that usecase
JPEW: are you thinking of moving the place where we checkout to in order to
    make cleanup easier?
RP: there are a number of reasons, currently there is no simple place to point
    to to find the sources for a build (think devtool)
JPEW: the archiver is very configurable, would you save off the copy before or
    after do_configure?
RP: good question. i think we might have to ask people what they want. it
    would depend on what their legal departments might think. are there any
    preferences?
Randy: we’ve gone back and forth, but i think we save off the patched ones
    now
RP: i do have patches for playing with saving off the sources, and they do
    produce a build, but as soon as you touch it with devtool (for example) it
    explodes, so if anyone wants to play with it they are available
