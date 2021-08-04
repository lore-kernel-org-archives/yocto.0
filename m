Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web11.12727.1628099696515482769
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 10:54:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nL3ZAf7T;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id js7so1507671qvb.4
        for <yocto@lists.yoctoproject.org>; Wed, 04 Aug 2021 10:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=zKHAnKxhfh/2KF0hIIYqZ5fJvuM+1HZQ88ojGJvFEfg=;
        b=nL3ZAf7TxHvLFgYWAtc88OdSMHG2u8n5girEOuNVwuBfWrtraYz1YivZc04VRT0S7P
         Psut4xjdGAzwhrBQqoC8t7lpTfkn3VGxbm/Jv+ujwRo7Y9tZwRY1GQ8QaE++zZYPxiac
         lzlNS3rKOwHTrZ0u9/UM3w0v0QfnTQouU8yvyf7wVo5kddkJ2uzFibHtcPM6q+bYjLst
         YkSuNy3Z6jMhNPIEPOiC7d4qDbdmkR0IODQPgMsXNzxVXCEFbu1HAnFMhEx1ah9hDG1H
         fiFGx9x64Km4ZBqpOdqsK5kwqNmuHq6Or6rnhCMJnCGgeEROUOlU/EG3BPsmEZ3cuqBn
         /BAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=zKHAnKxhfh/2KF0hIIYqZ5fJvuM+1HZQ88ojGJvFEfg=;
        b=b6/lrLV/wJ/Mssw46WcoriOWug1FiCVvJbwwFaTrvjw91GnlIkpnjVfnIStrLkiO+c
         9JYgBXi0YQ7eiNKkJVCRbYGL2s6lDUem80oh3xrTgPdHUtq9noebobJkZfCBvVhYnue1
         yqk7bF++vCSCixmOGrwdefRjhfiq/+/Sw5r4kKBZno/Y2pBskntvU7rPM1L/yEShTUAV
         k91gxlAoph6NKjLnstVoPs4FUbialxztWHjo0Bx0JJLI/s5Kg5ML59nNuW6HdsGsepHz
         gjrACYMPyoUs5Aw7sukysTNn25BudhuX1W0zUIksELAYqvKSP6O1EXzImq1yzYK/TxNF
         pBww==
X-Gm-Message-State: AOAM531AbZgAwgT/noHS4lc7Z9Mj77RnflLGXDDF0PUGSyPFQqn4ZO52
	RifGz//rUI1SeEOZ6uOa57T7iuI8bFw=
X-Google-Smtp-Source: ABdhPJzlF1if1yPnHL5up/trYixzqBLdpAvuOhoWF0y6ZLpDY70ATAVuWm1pcMVDntN1csxFnmySNg==
X-Received: by 2002:a05:6214:19e2:: with SMTP id q2mr609661qvc.15.1628099695439;
        Wed, 04 Aug 2021 10:54:55 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id a5sm1636285qkk.92.2021.08.04.10.54.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 10:54:54 -0700 (PDT)
Date: Wed, 4 Aug 2021 13:54:53 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for July 27 2021
Message-ID: <20210804175453.GA13365@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for July 27 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Scott Murray, Bruce Ashfield, Joshua Watt,
Armin Kuster, Steve Sakoman, Randy MacLeod, Michael Opdenacker, Paul
Barker, Michael Halstead, Richard Purdie, Tim Orling, Alejandro Hernandez,
Denys Dmytriyenko, Tony Tascioglu, Trevor Gamblin

== project status ==
- 3.4 m2 built but QA issues
- 3.3.2 is being built
- new override syntax added, conversions can start
- proposal to add lz4c, zstd, and pzstd to host commands
- prserv rewrite making process but still issues with asyncio
- AB-INT issues
- multiconfig needs simpler test cases to track down issues

== discussion ==
RP: the override syntax change was merged; nobody seemed to notice. layers
    need to start doing the conversions; there are conversion scripts but
    they’re a bit too overzealous (doing conversions where they’re not
    needed)
MO: could we just search+replace?
RP: it’s hard to programmatically determine what is an override and what
    isn’t. an underscore is an accepted symbol in many areas and is also an
    override qualifier. i have a whole bunch of stuff working, but it’s hard
    to find things that aren’t found/converted by the script. i hope layers
    will be converted quickly (layers outside of core)
TrevorW: what’s the script name and where do we find it?
RP: in master-next scripts/contrib/convert-overrides.py. i’ve put comments
    in to help, there are some changes that are needed (e.g. removing
    hard-coded paths). also ARCH overrides are particularly hard to do, so
    i’ve mostly done them by hand
PaulB: will the new syntax be backported to dunfell and hardknott?
RP: dunfell onwards
<various>: good!
Armin: layers need to be fixed up in dunfell
RP: only if you’re trying to make your dunfell branch work with master
PaulB: what happens if you mix and match
RP: it will error out and not parse, the colon was not a legal character
    previously so it will fail
PaulB: noisy errors are the best

RP: m2 now in QA. there is an issue with systemtap not working on Intel. no
    details from the QA team to figure out what went wrong. also there is a
    runtime issue on beaglebone-yocto to do with the keyboard. there’s a
    backlog building up for QA (3.3.2 and 3.1.10). we’re a bit down on AB
    power
ScottM: are there bugzilla entries for those two?
RP: yes. odd that the systemtap issue didn’t pop up on the AB
PaulB: it looks like a 64 vs 32 bit issue. the register names indicate 64-bit
    but it’s pulling in a 32-bit header?
RP: hmm. that looks like that’s the case

ScottM: there should be a new rev of prserv patch later today

PaulB: mixin layers. is that the way to go or do we want 1 layer?
RP: i prefer mixins, then we can distribute maintainership more easily. adding
    mixin layers can get messy, which is good since i’d rather have users
    have to think about what they’re mixing in 
PaulB: if the mixins are orthnogonal then they should work easily together
RP: yes, if they’re orthogonal, but how do you ensure that?

TimO: any news on a next yocto conference/devday?
TrevorW: plans are in the works
PaulB: is there a place with a list of YP-related talks at elc?
TrevorW: not that i know of
PaulB: i’ll put the list together on the wiki and post to irc
    https://wiki.yoctoproject.org/wiki/Embedded_Linux_Conference_2021
RP: and mailing list too please
TimO: some of us have started posting our links to irc

RP: JPEW will be giving a presentation at an LF security
    supply-chain event. this will be good to help advocacy 
    https://events.linuxfoundation.org/supply-chain-town-hall/
JPEW: i’ll be discussing reproducible builds and sw build materials (aug 18)
RP: it would be nice if you could add cve tracking too
JPEW: SS can help
RP: we have pretty graphs

TrevorW: the advocacy people have been wondering if YP should advertise at
    Embedded World
ScottM: ask J-SM i think he has attended (as a part of the AGL)
MO: and/or we could give YP-related talks
