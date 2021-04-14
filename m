Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web10.16223.1618419160978920064
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 09:52:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=A9rI9UQ9;
 spf=pass (domain: gmail.com, ip: 209.85.160.169, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id 1so15968589qtb.0
        for <yocto@lists.yoctoproject.org>; Wed, 14 Apr 2021 09:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=VpsgFJXCZCnI0ThJhtzRQSszJOgtTUpuKkrHH3g0CtM=;
        b=A9rI9UQ9xN6bi7XXru3KMu5ldTjgFmQ0p9wyeEggjaLbp0hB6nWg4u54JuNV2XJuLa
         nBclvp2SYqlGWL2Sde+4o1zDorOwUs7bl3mDP0fT1B4Wfv80KnNTNpGWeGk9HOeo9N2v
         Pv53i9UBgV6RObFOk3FrCLbApVne/20wwO7/6vRbfRReV7cwdfsCbDIkNPkdl7Q91GKK
         LKKpH3rBPaR09zzOHB0ovC3auevNLkcpQ8jPQC89icXzJWrosWA2FtXTeW7HBDXMmVoq
         vjohmTfKtKzjJQSIR4KAJouhncCllpO0s2yL3CDSw+D5Suk80LPk59afv61veckG3JNu
         vaJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=VpsgFJXCZCnI0ThJhtzRQSszJOgtTUpuKkrHH3g0CtM=;
        b=YsF4o5YY/3FRFuuxklVJuG/A3UDOSTi5EKMK0hv9SGUcY2XdpCjHuPCfeMgEIiTblj
         WbqFmU97bN9uKp1F1ZIuB71A7dlvDtxkbiVtgfLTPLtydVGVXupgndk2t7qUjHKy+qP8
         zW5cTCrk/MNP6rvAPXgKTgi2BJBItTBlHZwjAAqbUJXs0r2BODM8wXB9Te/khMTgE9tF
         sFZiPdq5jvtdjY6e3SZvz7jJHosjW2ZhEFbc7wHrApj0IApT1gzTtoXvpoP3Gelc5CDv
         OX3mNmBh5Tq/IMTsWWuLeFJFEWinJoTvuesJ8LfzqHjhEESzNiMHZOAiHyBxvW+U8gcB
         YbkQ==
X-Gm-Message-State: AOAM531arMHBTF/SpADEi446qDa5VqakYPMMMo+FE88oFYbVXrUyqICU
	ocMBSME57kjwq+b2xmf/3pgxtch8uDU=
X-Google-Smtp-Source: ABdhPJz95nyURLaA1+ZIYe1WxVb8+J7TCvtvm0c+eItoGvML//Su5d8daebHQAvJZ8eVkhmr+nQFSg==
X-Received: by 2002:ac8:5745:: with SMTP id 5mr36074685qtx.252.1618419159476;
        Wed, 14 Apr 2021 09:52:39 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id i2sm1009088qkn.29.2021.04.14.09.52.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 09:52:38 -0700 (PDT)
Date: Wed, 14 Apr 2021 12:52:37 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for April 13, 2021
Message-ID: <20210414165237.GA22412@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for April 13, 2021
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
Trevor Woerner, Stephen Jolley, Alexandre Belloni, Jere Viikari, Richard
Purdie, Scott Murray, Peter Kjellerstedt, Armin Kuster, Saul Wold, Steve
Sakoman, Randy MacLeod, Trevor Gamblin, Ross Burton, Bruce Ashfield, Paul
Barker, sakib.sajal@WR, Tim Orling, Joshua Watt, Alejandro H

== notes ==
- 3.3-rc2 had a clean QA, waiting on TSC approval and release notes update
- 3.3-rc1 was abandoned due to build issue
- 3.1.7 building as we speak
- prserv rework and git fetcher work underway

== general ==
RP: relatively quiet week, couple of issues here and there bitbake setscene
    (covered vs not-covered)
Ross: interesting cycle, lots of good work
RP: agreed, community effort
RP: i think the next release won’t be as quiet, there are a number of things
    that we need to shake up


Randy: Sakib and I have some filters enabled to capture stats when AB issues
    occur. ready to be enabled. tested locally but our cluster isn’t pushed
    as hard as the real AB


JPEW: next release in Oct?
RP: yes, see report sent by S Jolley
JPEW: then the release after that is the LTS?
RP: yes, Spring 2022.
RP: however, we need to get buy-in from members. the first was an experiment,
    it seems good
JPEW: LTS works for me. seems like lots of BSP vendors focused on LTS which
    made it easy to build across a large range of MACHINEs
Randy: yocto LTS or kernel LTS?
JPEW: yocto LTS, we’re stuck with vendor kernels for the most part
RP: informal survey wrt LTS: general feeling that it was liked among member
    companies
RP: can we “prove” the value of LTS with data? perhaps CVE fixes?
Saul: lots of problems collecting data (e.g. we don’t even know how people
    are using it)
AlexB: premirrors for poky?
RP: true, but there are guidelines wrt the use of that data
RP: to be a true comparison we’d have to compare LTS to a non-LTS, but
    non-LTS don’t occur over the same time-span, so a comparison might be
    hard. maybe CVE commits
SS: I do have data since June of CVE adds/removes etc. but the data can get
    confusing
RP: what if we looked at the data wrt each point release
SS: it’s possible, it’ll take time. we could also try to increase the
    number of dot releases


TrevorW: i don’t think Dunfell is y2038 safe
AlexB: i *know* it’s not safe, need kernel and glibc
TrevorW: okay, is this something that we’re going to worry about for dunfell
RP: i’ve been getting private emails on this topic (not sure why they’re
    private) so it is something we should look at. i recommend we start a wiki
    page. some people say we need a 5.10 kernel to be compatible
AlexB: i think 5.5 is good enough
PaulB: i think some people are saying 5.10 because it is an LTS kernel (?)
AlexB: time_t from 32 to 64 bits
JPEW: should be easy to test in qemu
AlexB: there are lots of places that need fixing, lots and lots just in
    oe-core, nevermind meta-oe
RP: we can break the ABI in our builds
TrevorW: is this something we want to do in dunfell
RP: if there are easy fixes okay, but probably not in the context of dunfell.
    i’m happy to see dunfell fixed, but a wholesale kernel upgrade might be
    out of scope
AlexB: the 5.4 kernel is probably fine, the biggest issue is the glibc, and i
    doubt it’ll get backported


TimO: python parsing
RP: there are some classes that are python nightmares. parsing in
    bitbake context has a lot of overhead whereas parsing outside of
    bitbake reduces the memory overhead. so there are pros and cons.
    package.bbclass and patch.bbclass and a lot of the code in utils needs to
    be moved/re-arranged. there might be compatibility issues, the question is
    how to balance compatibility vs cleanup


Randy: we’ve seen issues where VMs with 46GB run out of memory. some people
    say it’s an underlying issue with cmake or meson. but is this an
    underlying issue, or is it something bitbake should handle?
RP: tricky question. it’s hard to tell how much load a job is going to
    generate. shared job pool between make and bbthreads might be a viable way
    to improve things. but there are limits to what bitbake can do. throttling
    down the number of thread used by, for example, c++ builds or webkit are
    useful. perhaps a global include file that puts limits
JPEW: it’d be nice to specify parallel make without having to specify the
    “-j”, makes it clumsy to update in a script when you have to keep
    parsing out the -j and then putting it back in again
RP: probably need a 2nd variable. parallel-make is really old, regressing
    gracefully is the trick
Randy: handling things like ninja is hard
JPEW: ninja is meant to be simple
RossB: i think there’s a samurai update to ninja that has more options
JPEW: there is an open issue to add job server support to ninja
RP: which sounds like they don’t want to
ScottM: there was a patch suggested, which was rejected. we could add it
    ourselves, but then we’d have to support it
RP: i wonder if samurai supports it
RossB: not quite, but there are bits and pieces, so maybe they’d take the
    patch
RP: maybe check bugzilla, i’m sure i documented this somewhere


TimO: ptest output consistency. switching output formats might be too late,
    there are already so many tools etc. would that be a true statement?
RP: we can *add* a new output format, just don’t throw away the old ones. it
    would have to be opt-in but we don’t want a flag day
