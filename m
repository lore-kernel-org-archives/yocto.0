Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web09.24073.1629726471014469590
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Aug 2021 06:47:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iHpyQxQj;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id eh1so9651299qvb.11
        for <yocto@lists.yoctoproject.org>; Mon, 23 Aug 2021 06:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=TFukKdUKdINTDb4iUluF1WNrppkfkkFQEzx/nXrVBCQ=;
        b=iHpyQxQjrMerr5q780AAMUdrNHrLxprFwpc8QWmEm+i72smTbOM/k2l1YrqWt7fcPy
         H5/To9gp8czNeLnkmr58i+DXp8g5tzJMIJuykzg277jD/iMOk7UD6dG3mboosZ/sadxw
         v71boXW1voEumUuEWMPlM8TfuPrNeAtUT5w0qbVF00kFTMCKSwv+gixhJOM5EQ5GoQ5K
         bekyuPT5X4BbAgmz6ybB+OmGfEMEemTo77Beq7xWXT0UfSJ68vIfx7xZcJ7ZshZ2Wbeh
         gEU0OPaAXCcXoS1Neooz8M2oUyMi2mEjs0EZF667xYJPQCE4zrUNKLxqoMupHC6MyzGm
         zBGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=TFukKdUKdINTDb4iUluF1WNrppkfkkFQEzx/nXrVBCQ=;
        b=JfN4HxUAPeq2K03qVjIGfrjzEBT8JXKSf2zgvF7vIeoICivmsSPo/Bfx0PMskCEeDz
         AcqiDoaWrTy5QfTOWY39VGggjxyIkLvv8BUNcnGWUAnElK1nuNhxCFAnup7Z7rCyj2kP
         QXuSSO5kDL2XVCQAsD/K6OCA2Vmc3DMCut6OsR/gyR0bi15VMkXRq3fRHHMRHF2pAx5i
         UTLMIAMOHyDGvLBGHhsN6UJ6ahFBVmWk2vEJTMnVq38UcZ02FQk4FVpFzW6jOMAtAlYq
         nkBzHEXqB/U8xvEbutqDEL8zd3zwQ2L47mZsoDnUJJeyLvNWGLbBPNUOg6LmwUU61m1g
         Bklg==
X-Gm-Message-State: AOAM5300KuVLBMmszG8p/vv+AjffwQ6W3Z1Jw3Cx/39mnYdNNyfboCUN
	MGPqM12t+JMLTxVdhN+sy9n/PlozxfhPeg==
X-Google-Smtp-Source: ABdhPJxWJRBPNnzatQpaieTibn7+rTHncnYsQ/k7HZe/VtGbiBppFAYM3Cfq9CAg4+I/tRYPsuYQlg==
X-Received: by 2002:a05:6214:12a9:: with SMTP id w9mr33131809qvu.0.1629726469792;
        Mon, 23 Aug 2021 06:47:49 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id b65sm8538344qkc.15.2021.08.23.06.47.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 06:47:49 -0700 (PDT)
Date: Mon, 23 Aug 2021 09:47:47 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for August 17, 2021
Message-ID: <20210823134747.GA40780@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for August 17, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley Richard Purdie Peter Kjellerstedt Joshua
Watt Randy MacLeod Saul Wold Michael Halstead Richard Elberger Scott Murray
Steve Sakoman Tony Toscioglu Trevor Gamblin Bruce Ashfield Ross Burton
Alexandre Belloni Daiane Angolini Jon Mason Jan-Simon Möller

== project status ==
- 3.1.10 (dunfell) released
- 3.4 (honister) is in feature freeze next week (pending work includes rust
    and prserv)
- glibc 2.34 update merged. the builds are fine, but causes problems with
    uninative and pseudo, fixes being investigated
- kernel: drop 5.4, updates to 5.10 and 5.13
- appears to be issues with buildtools tarball in aarch64 (probably related to
    gcc 11 update)
- plan to migrate tune files into architecture-specific directories; patch
    likely to merge in the next few days
- bitbake fetcher no longer ignores SSL certificates
- LTO linker flag handling changes merged to help with reproducibility issues
- overlayfs class changes were merged

== discussion ==
Randy: the pending rust work is coming along. fixed ppc issue and fixed
    reproducibility issues but still having an issue with diffsigs. Alex did a
    full build and it’s looking good. is diffsig issue a requirement?
RP: yes. maybe show it to me and i can take a look. perhaps a status update to
    the mailing list

Scott: re: prserv. i was away. i was able to reproduce the hang issues that RP
    was seeing on the AB before i left. however, i’m seeing a new issue with
    debian 10 and python 3.7 we’re seeing a hang, but it’s not like any
    of the other hangs we’ve seen before so still investigating. is feature
    freeze the end of this week, or next
RP: technically Monday. but this is a planned feature so there is some
    flexibility so we’ll see how the progress goes
Scott: what’s the minimum python?
RP: 3.5 or 3.6?
Ross: 3.5
Scott: we could also lift the read-only feature and put that in for this
    release then work on the rest for the next release
RP: well, we need read-only for hashequiv and prserv
Scott: it’s already there for hashequiv. i don’t think it’s a huge need
    for this code. but i’ll keep working on it
RP: we could do that as a backup plan, but i’d prefer to see it all go in
    for this release. i’m reluctant to do this.
Scott: python 3.9 seems quite happy. the problem seems to be with the older
    versions. maybe there’s something we can do with the older versions to
    make them happy
JPEW: hash equiv is a lot cleaner, it doesn’t have to do all the forking etc
Scott: i thought i had it working (before i left) but i guess not. i’m
    seeing a strange ld.so bug (inconsistency detected by ld.so: dl-open
    worker assert dl_debug_initialize()->rstate == RT_CONSISTENT failed). not
    sure what this is, not what you’d expect out of a python program. looks
    like maybe loading debug symbols? when i attach gdb i don’t see any
    obvious problems. the coverage on the AB uses buildtools, what combos on
    the AB include the old python?
RP: i think the really older ones all have buildtools tarball, but newer ones
    would run native
PeterK: i think the latest python is 3.6 with the fstreams thing
JPEW: i thought it was 3.6 too, i’m pretty sure i was the one who bumped it
RP: i was thinking 3.6 for fstreams too when Ross said 3.5
PeterK: not that it helps you if you want 3.9
RP: but it does help somewhat
Randy: (finds log) January 2021
RP: ah, the core does have the version bump, but it was not done in bitbake
JPEW: i think it was something specific in oe-core that needs 3.6 and if
    someone is using bitbake without oe-core then they can still use 3.5

JPEW: is bitbake major version going to bump with overrides
RP: it did
JPEW: i meant bitbake 2.0.0
RP: not yet. i’m tempted for next LTS, but we’ll see. i’m getting tired
    of 1.x ;-)
JPEW: let’s use dates

JPEW: re spdx. if you go to poky-contrib there is a branch jpew-sbom which
    includes all the stuff i’ve done with spdx and sbom creation. please
    take a look and let me know if what we’re creating generates something
    that’s useful to you. if you do fossology scanning then please take a
    look at the output and let me know if that works for you
Saul: i’m looking at it. do you have any plans about creating a single large
    image sbom instead of the relationship based one
JPEW: originally i went down that road, it can be done if we can do it sanely.
    however we have to create different parts at different times in the build,
    so it’s just easier to have separate docs and then link them later.
    so we get 100’s and 100’s of docs, and then put them together in a
    tarball.
Saul: townhall is tomorrow, looking forward to it. but i’ll look at scripts
    to pull it all in together into one single doc
JPEW: that would actually make the documentation smaller because all the
    linking adds quite a bit.
JPEW: also i wanted to leave open the possibility to link to spdx docs from
    the source code and pull all that into the big tarball. i think the
    lite-spdx group is trying to make things nicer (in this direction) for our
    (and others’) usecase, but not involved in that
Saul: sometimes the external references cause issues. i threw some random ones
    at the validator and there were some warnings and errors. the tools are
    also 1.x version but they don’t properly validate the 2.x stuff.
JPEW: they were validating against the online tools at one point, but i
    probably did something to mess it up. it’s annoying that the offline
    native tool is java based. it would be nice to validate as part of the
    build, but that’s a huge undertaking. there’s also the issue of
    identifying the spdx license using the ?? tool
RP: who said to not use that tool?
JPEW: you did
RP: okay. well that’s what i’d use so go ahead
JPEW: also need to verify that the license that we put in the file is a known
    and valid spdx license. sometimes the validator tool doesn’t accept it
    because of a small issue even though it is the same license
RP: there’s an spdx-legal mailing list where stuff like this is being
    discussed. e.g. common licenses for distros.
RP: glancing down your branch, i think we can start adding it
JPEW: i’d like to target the next release. we could merge it now as-is,
    it’s functional but not 100% correct
Saul: it’s pretty isolated
JPEW: yes, just one class. if you don’t inherit it, it shouldn’t affect
    anything
RP: i’m leaning towards adding it for this release as-is since it is so
    isolated because it is important and i’d like to see it get wider use
Scott: townhall presentation meeting by Joshua tomorrow
Saul: free registration, supply-chain discussions, NA timezone
Scott: there are some other talks too that seem interesting (sigstore)
RP: thanks to JPEW for putting in the presentation! sbom and reproducibility
JPEW: sbom, reproducibility, CVE checking, buildtools, etc

RP: re current patch status. lots of version changes in master-next
Scott: yes myself and Jan-Simon noticed it. i’ll poke around in it
Jon: on my todo list today, will review it
Scott: i think the tune one might blow up AGL
RP: it’s in master-next and Alex’s testing branch which i think shows
    green for AGL. it’s intel that blows up
AlexB: yes, AGL is fine but Intel blows up.
RP: AlexB make sure Anuj is aware of the meta-intel issue
AlexB: sure
SS: what’s it mean for the removal of the 5.4 linux-yocto recipe for
    dunfell?
Bruce: i’ll keep sending them to you. i keep updating 4.19 and other things
    that still get updates. i’ll make sure to add “dunfell” in the cover
    letter
SS: lots of hand-editing of colons and underscores
RP: i suspect the conversion scripts could be reversed to change colons back
    to underscores

RP: glibc 2.3.4 changes caused more issues than i anticipated. AB builds are
    green, but 2.3.4 on the host (builtdools tarball extended) or ?? cause
    issues. in some cases there are reproducibility issues.
RP: libevent INT-AB monotonic test keeps failing off and on, but fails often
    enough to be annoying. will be the next one to come to grips with
AlexB: yes, that one and the bitbake one
RP: i’m pretending that tone doesn’t exist

TrevorW: i want to convert meta-rockchip to use more of the kernel kmeta
    config features, what machine do you recommend i follow as a good example
    of doing it right?
Bruce: i'll send you something

TrevorW: is there any requirements or objections to adding new IMAGE_FEATUREs?
    i’m working on a zram IMAGE_FEATURE and would like to know if there’s
    any chance it would be rejected as an IMAGE_FEATURE so i could look at
    other approaches
RP: IMAGE_FEATUREs have never been rejected that i know of
TrevorW: they’re added very rarely and there aren’t many of them
RP: they’re infrequent because there aren’t many. just be careful how you
    add the packagegroups to make sure you don’t add build dependencies.
TrevorW: my feature will also need to add a kernel config. are there any
    examples of a feature that also pokes the kernel config?
Bruce: check nfs ones

Elberger: is there going to be a yocto-checklayer for dunfell?
RP: i think it’s been enabled
Elberger: i’m looking at the yocto console view and it’s not there, am i
    looking at the wrong thing
RP: maybe it scrolled off the page, i’ll send you a
    link… https://autobuilder.yoctoproject.org/typhoon/#/builders/121/build
    s/208
looks like it failed in aws and meta-oe.
Elberger: oh, it might have failed in aws because of a dependency on meta-oe.
RP: true, yes. this isn’t an issue with meta-aws

Elberger: how can maintainers do stuff on the AB
RP: talk to Nico and I. probably need to wait for September

TrevorG: python-cryptography test is failing because of a version mismatch,
    needs setuptools-rust which requires rust in oe-core
Randy: look for my rust branch at poky-contrib
