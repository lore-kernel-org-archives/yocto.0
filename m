Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
 by mx.groups.io with SMTP id smtpd.web12.326.1599600709902994929
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Sep 2020 14:31:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=c7PVeijJ;
 spf=pass (domain: gmail.com, ip: 209.85.166.44, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f44.google.com with SMTP id d190so977558iof.3
        for <yocto@lists.yoctoproject.org>; Tue, 08 Sep 2020 14:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=3T4+dCpTiKGY/Y96rqHnUfuFxXL1lEUVCHzgN8NgvGQ=;
        b=c7PVeijJR2GfURyvPuR91jt8hxAlAexLPPZI+oFC+gWbQTgTS0Dzkdw05hyFozFnnS
         MmZlJOxDYJYek6FrjskJoeK0x7rKCVrFcGGA5DSIO2WFrElY6ya/u7X20PTYB4mVvLdx
         abRuY/TC4esi5EKHVVSbJ5g//jskfFcPk5Gn4rxa7MWhs8Ldt8kxEP3FbijUrcw6gpwx
         +NfFOowuerie1elA55Be85A97Ab+fwhUiS06l71R6pgDKAxxlvi6AldcsOSA4ewwDcH2
         50QI7IH6KIySwgcCRbUxoNhNXpti0MT4SxdTeXqxhgwULsWNen/hhBPGOV9AMKez+JR3
         Ls6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=3T4+dCpTiKGY/Y96rqHnUfuFxXL1lEUVCHzgN8NgvGQ=;
        b=YoSp/5M5TkidQzV3+IH0dyYH1Gpw1T53zJ9G16Zkc+xE0kjZAp1lTn4/wzPcuEehJm
         hHQIDcbQxVR7jR4lNv3vcbQ2FhFubSp+F1mtycQvhSxhx4S4JsW4ljf+rcNc8yvd2pAc
         3mry97r5cfcD5Br6ggkBp6OEASlIlIEb23sgG4WK+bvoF2iX9MtWGlBV1mdl2/4CfwPm
         PZwYN/isGquQCRP6KKY44K0Z0V/7jKx61xHkNFEugMB4j2C09w47Tt7R9lFx4x0txNqX
         XjsYLeYMRj0WfRnOmJSzOPJvOU2jdQ/ze2le2pgAVk9YA8l/m/iwkzYeFzaqP5+ck48b
         W2JA==
X-Gm-Message-State: AOAM530IHEAjkxud55dDUAyBbE4m8p2W6fylPdne/ieMNH5lmMMHsJmJ
	PGsLZcabM+AwH26RlZYItrfDlNf4Pr0=
X-Google-Smtp-Source: ABdhPJw6ZDZG6qxpErY4eTAG5eMuwoIfHrXM4Ulg3fkSiLZwpbIjTD4zeRfeuvHv5dErivsSmxuQYw==
X-Received: by 2002:a6b:b48c:: with SMTP id d134mr812259iof.115.1599600708694;
        Tue, 08 Sep 2020 14:31:48 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id k16sm200963ilc.38.2020.09.08.14.31.46
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Sep 2020 14:31:47 -0700 (PDT)
Date: Tue, 8 Sep 2020 17:31:37 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for September 8, 2020
Message-ID: <20200908213137.GA30356@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for September 8, 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Jan-Simon Möller, Armin Kuster, Trevor
Gamblin, Joshua Watt, Saul Wold, Alejandro H, Bruce Ashfield, Scott Murray,
David Reyna, Vineela (phone-in), Paul Barker, Richard Purdie, Steve
Sakoman, Ross Burton, Mark Hatle, Martin Jansa, Michael Halstead

== notes ==
- 3.2-m3 is closed (feature freeze)
- bitbake parsing merges/fixes
- work to enable pr-serv merged
- no more recipe upgrades
- issues with older releases and new distro versions
- new technique for handling AB issues

== general ==
RP: a new tweak to qemu for AB testing. appears to lead to fewer AB failures.
    JPEW working on a number of things, some of which have already been pulled
    (e.g. signal handler)
JPEW: we can’t use multiprocess due to multiple platforms, but the analysis
    leads to new solutions in other areas
RP: there is a bug open with upstream python, following the python
    documentation (i.e. writing code as per the official python
    recommendations) can lead to a deadlock (with multiple processes, worker
    pools)! this seems to have been an issue since python 2

RP: issues building older releases on the AB (zeus, warrior, thud). useful
    for the LTS, and to keep up-to-date with severe security issues. i have
    patch queues for thud and pyro. please check the mailing list for the
    discussion. currently older branches are bitrotting

J-SM: any impact on dunfell for multiprocessing?
RP: i’d like to see things stabilize on master before considering back
    patches. the bugs have been there for a while (e.g. python 2). we’ve
    been working around these issues for a while
SS: i think i’d like to do a release (dunfell) before the new stuff comes in
RP: good idea, but i think we could fast-track a couple patches (intermittent
    issues and runqemu-nice stuff)
RP: once we hit feature-freeze, the AB reacts differently: there’s a
    difference between full-rebuild-builds, and incremental-build-builds

RP: sphinx documentation
SS: master only?
RP: yes, we’ve talked about bringing it back to dunfell, but we need to get
    it working in master first, there haven’t been many changes between
    master and dunfell, so it shouldn’t be too much work to back-port once
    its ready

JPEW: any crops maintainers here
RP: i don’t see them
JPEW: image retention policy has changed on docker hub, they now will be
    removed after 6 months
Paul: there has also been talks because images are pushed from travis
    unsigned, so that might be an issue. maybe opening an issue on the crops
    tracker would help
JPEW: we’re seeing this with pyrex as well, so it wouldn’t be good if
    crops containers didn’t disappear randomly
RP: Randy looks at this from time to time. on the one hand we don’t want
    stuff disappearing, but we also don’t want to have security issues. Timo
    is also the other person to poke
Ross: i’ve talked to Randy about it and he’s been responsive
JPEW: okay, i’ll look into those

RP: systemd question, serial timeouts with systemd usually on MIPS
    (core-image-sato-sdk). the timeout is 60 seconds, this should be enough.
    my own testing shows: core-image-sato-sdk: 55 seconds(!)
Mark: maybe device probing, udev?
JPEW: trying to setup a user sessions?
PB: reminds me of something a while back (on arch). perhaps login session
    dependencies?
Ross: try it manually
RP: if someone could take a look, it looks reproducible
Paul: core-image-sato-sdk with systemd?
RP: yes
Ross: on qemu-mips?
RP: yes, but has been seen with qemu-arm, but rarer with qemu-arm
Ross: random number generator-related?
RP: i was wondering that too, but we did put the virtual device in
Ross: maybe it’s broken with qemu-mips?
JPEW: are we using the jitter random number generator?
RP: don’t know, i know we had issues, but then we enabled qemu-passthrough
    which fixed most issues
JPEW: i’ve seen issues like this, but for me enabling jitter worked
RP: the passthrough seems to work
JPEW: as long as the kernel config is enabled
RP: it’d be nice to see this one fixed, it’s one of the ones that still
    lingers despite fixing so many other issues
JPEW: is it a RO rootfs?
RP: shouldn’t matter

David: request for papers open for the next devday (yocto project summit)
Link: https://pretalx.com/yocto-project-summit-2020/cfp
