Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web09.1861.1628623040065991424
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Aug 2021 12:17:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=i4Xt+Ums;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id a12so16331897qtb.2
        for <yocto@lists.yoctoproject.org>; Tue, 10 Aug 2021 12:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=2fNID6wpA4BpBkx2s5R60ubiPUPaG5tNNuK0VCDR+Mw=;
        b=i4Xt+UmsuUYoYYxecJtnUE3D6vuNNEaUgLKKi776WY8lmgeKz78oL/pC0ZDj7TT7kF
         9c3SFge6ef5NhH8j48GPRRnn4ilfU8W8dXU/3gSh3+aNlnoCVoQZZaNMhyKjRAU0zghr
         +6LONcnBjdCl/Eo/h8DX1aUQZh6zd1/xA1uI5deI78XODqpCRqTBQy3xp+9D6kME2Ns6
         sW7v7UKwCmb5o9w9P1KgBmQkoKOdHaJwrmw87/fjqFINod6kBINfUeCmzvNeBZVwxQIN
         QcI4W6SymRaZ5TquSQQz/GSxHeGimza2fwX1YLyzBqkP7nmFZ4ozT2O03DPrgdqeXyJk
         kmdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=2fNID6wpA4BpBkx2s5R60ubiPUPaG5tNNuK0VCDR+Mw=;
        b=d0hr2ML5R5ePdl9aMuuDl6/+ocmCDWKFOOJ7o32n03iaOqbWt2CQsQpCoOF31CBEzm
         YDGTafYRpzgYIDz3VobO+IuyS8r8dmLQi3ZM7QloFbWca8Ii9Idh69PZ2DrBNASmgGFp
         AeAKXnXcEJh+GTPDD6q6+Ou+m4S3AdUpnZoApkwF8jyNyI93PGJqCglw3fkQEWDjI9Sj
         hGlZ2l/E8Ovo6hFdspBKC5Uu8H5e1eN88/1qSQhVqO/FUgK5xRYIjQVu1sGJVjMILlyN
         o+zHBZD2vkjvMmVoGUc+uLGkwyHViOnWzcu9m7PsE4qObw2wtDOX7ycC2BuSTtQ42jhu
         j2xA==
X-Gm-Message-State: AOAM530Kcb9hnb1VHgPmvskERn7E4zfgxzdcDevNhhoGHu0bVuNbeDZ6
	mUlKHsSNtbYhcyhKrTIQ/D8IQh2sGitgdQ==
X-Google-Smtp-Source: ABdhPJxtMq2YnHtCyEVYnSM1ASq7XkU1m15uHXJqPc4AFiT1wYcv3FgPtSFmNGMIeN3SLrM9bNiOTA==
X-Received: by 2002:ac8:7685:: with SMTP id g5mr12224884qtr.194.1628623038873;
        Tue, 10 Aug 2021 12:17:18 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id x125sm11331624qkd.8.2021.08.10.12.17.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Aug 2021 12:17:18 -0700 (PDT)
Date: Tue, 10 Aug 2021 15:17:16 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for August 10, 2021
Message-ID: <20210810191716.GA28455@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for August 10, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Saul Wold, Jan-Simon Möller, Armin Kuster,
Michael Opdenacker, Michael Halstead, Steve Sakokan, Randy MacLeod, Richard
Purdie, Paul Barker, Tony Tascioglu, Jon Mason, Angolini, Alexandre
Belloni, Richard Elberger, David Reyna

== project status ==
- 3.3.2 (hardknott) was released
- 3.1.10 (dunfell) to be released imminently
- bitbake’s new override syntax is now in and is part of honister
- there was 1 bugfix related to override syntax
- 2 long-standing bugs fixed (devupstream class and LTO)
- prserv coming along
- AB-INT issues around ptests still persist
- multiconfig changes in master-next, please test

== discussion ==
RP: one critical fix for the override syntax so far, but relatively smooth
    with positive feedback (in general). working through the backlog caused by
    the conversion (e.g. LTO patches, odd bugs in bitbake, task explorer UI on
    an empty directory). load of patches in master-next (e.g. esdk bug)

DavidR: re: ELC. we are getting a booth (both physical and virtual). looking
    for volunteers to be at the booth (physically) during ELC. also, YPS
    coming later in the Fall

Jon: can we move TUNES now?
RP: sounds like a reasonable time to do it now. but reluctant to break
    everything again. i’ll double-check, but it probably makes sense now.
    the python2 to python3 migration was bad for many users so i don’t want
    a repeat of that mess, but i think the TUNES change should be easier. did
    you have something in mind?
Jon: i want to move the CortexMs to core, but maybe reshuffle the CortexA ones
    too. there are also some x86 ones that could be cleaned up too
RP: this change will cause loud errors, so this would be obvious to users

Saul: re: SBOM work with JPEW. Joshua submitted a patch to integrate more of
    the meta-doubleopen layer to oe-core. there were discussions regarding
    changes to the packager.
RP: i don’t remember that discussion
Saul: fetcher and archiver. we can discuss more in IRC. meta-doubleopen did a
    mirror checkout and patch (archiver) which is different than the oe-core
    archiver. we’ll go digging into that.
RP: wanted to change the way the fetcher unpacks instead of just dumping into
    workdir, but it messes up devtool. remind me on IRC and i’ll dig up the
    patch for you

Randy: re: meta-rust merge to oe-core. ~35 commits to pull in. will have
    something pushed to poky-contrib later this week

RP: the prserv work is paused right now, and there are a couple other patches
    for m3. but if anyone else is working on anything else please let me know

Randy: there was a Go bug that a co-worker was working on, but was unable to
    reproduce. maybe something about Go accessing the web during the build?
RP: Go-mod-dep. i think there’s an sdk failure and a failure somewhere else
    that suggests Go is trying to access the net. try doing a build locally
    and killing the default route (for example) to see if you can reproduce

RP: I’m hoping Tony has a valgrind patch for me
Randy: is he working on that?
Tony: is there a ptest we were going to skip?
RP: glibc-4 work
Randy: where?
RP: master-next. we can exclude them now, but fix them up in due course

Randy: re: swat team (to AlexB)
AlexB: yes, i haven’t moved on it yet but will before Thursday.
Randy: the intent is to make the swat team more effective and coordinate the
    reporting tools on the AB?
AlexB: yes
