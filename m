Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web12.11459.1620158175185545989
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 12:56:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lTHso3DS;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id dl3so86606qvb.3
        for <yocto@lists.yoctoproject.org>; Tue, 04 May 2021 12:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=ND0NSd9KcuciGBeqTAIlWrM1oB1BIGvaUChGv3vEnbw=;
        b=lTHso3DSJ+vmGwC1mWrSNLbiCWFqVgWiz8zJLrs3lhKoNOYjVBYSXVjctmmKhP9+AU
         d/qVsSVsIBITA4SCw4yqsJZNgvizCPyA+cxNtgWbjsuNom577Nc70Q9VELI2KTUUsk5n
         xwK00sSCfWxFzxN2WOpnaG6puMsGMnOaNBo4N4XHvBTsCjZguIglRiSmqKLuN7XY8JSG
         UonWcOor/aw+bEjUUVDsbMlEIyTi1rOysC2WnhFwLbUFVlFdO+ZS1ce+TtvsPxukTnqk
         KIp6QFHJ2wGTs0iegazJWdmYbTcXouUo3i8NixhYdqiRxJcqnGNYWQDSrTs2RQIaiN7q
         YmmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=ND0NSd9KcuciGBeqTAIlWrM1oB1BIGvaUChGv3vEnbw=;
        b=QJsrhP8lKhAzGvEYKxEyJEVxpEis5wYCpmPOmUlBYLhRdg9paJdnanZIj8DynehQPm
         YKLN0bcoUEGYZo92DBgL4mz0MRiE/xa2z2h/QWQXoOu8YZePsq90pxdPNGLZVwfrezZy
         MZB5c0feUjwFFlECd/qMS4fTYR+VBF5wdaDhnAmRXhPU1YqP6ps4cM+0S3x37QvX+iHk
         ToM9YvAKKdz8cgIgMiGyT4+8+gnxFnS3uDj4Iequi1Mdsb/iRAPtsLHUOwGWpf4X/W4V
         NoxUGs8XyKkzcLvuCcVCksQ0gT+HNDINfoZtixYETcaWcsiP8ugA8Vwo2GNzE3ZtTsgc
         ItYw==
X-Gm-Message-State: AOAM532pHiV+b4k0vuqouYiUrsHMbGdFxIjWn9dpdjpCeJ+1ZAlJrxYm
	vVdZdju/lO4jLwigAlX3qyssNzevIiA=
X-Google-Smtp-Source: ABdhPJwOwGvsMYXpe4DkJW1D/GN74QHdLOFnUm5VNm821Z4FFjANSM0PdSW4UM2YRFyhPO1Nb2N+Yg==
X-Received: by 2002:a0c:e486:: with SMTP id n6mr25073135qvl.21.1620158173754;
        Tue, 04 May 2021 12:56:13 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id m4sm3529479qtg.21.2021.05.04.12.56.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 12:56:13 -0700 (PDT)
Date: Tue, 4 May 2021 15:56:11 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for May 4, 2021
Message-ID: <20210504195611.GA27693@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for May 4, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== announcements ==
The upcoming Yocto Project Summit is taking place May 25-26 2021
details: https://www.yoctoproject.org/yocto-project-virtual-summit-2021/
registration: https://www.cvent.com/d/yjq4dr/4W?ct=868bfddd-ca91-46bb-aaa5-62d2b61b2501

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Armin Kuster, Alexandre Belloni, Joshua
Watt, Michael Opdenacker, Joel Winarske, Randy MacLeod, Jere Viikari,
Scott Murray, Trevor Gamblin, Steve Sakoman, angolini, Rob Woolley,
Richard Purdie, Tim Orling, Bruce Ashfield, Jon Mason, Ross Burton,
Peter Kjellerstedt, Martin Jansa, Michael Halstead, Alejandro H, Denys
Dmytriyenko

== notes ==
- 3.2.4 to be build this week, final release for 3.2 (gatesgarth)
- Apr 2022 (3.5) will be the next LTS (kirkstone)
- 3.4.1 patches going in (honister)
- gcc-11, thanks to Khem
- multiconfig fixes for bitbake
- new uninative version for (patchelf, and gold linker issues)
- ~62 AB INT issues

== general ==
RP: relatively quiet week
RP: AB failures are a nightmare, the uninative update was meant to fix an
    issue, was difficult to get in, but didn’t address the problem
RP: upstream is not accepting the patchelf fix until we provide a test case


RP: the qmp patch seems to cause some of the AB issues, maybe was also
    reported by Armin
Ross: Khem was waiting to start a build due to a related issue
RP: a path length issue with sockets
JPEW: there is a work-around


ScottM: what does this mean for dunfell support? is dunfell support to end at
    that time (Apr 2022)?
RP: remains to be seen. we’re starting the new LTS Apr 2022, but no firm
    decision on what is to happen to dunfell in Apr 2022 yet
JPEW: dunfell was really good for BSPs
ScottM: yes, lots of good dunfell BSPs for AGL. although most are now wanting
    to update to a 5.10 kernel. many AGL members are using dunfell but simply
    updating the kernel (some are due to LXC)
SS: feedback i got is that 2 years is not nearly long enough. it takes at
    least 2 years to develop the product, not to mention post-release support.
    “LTS” might mean 5+ years for many
ScottM: true, 7-10 years even
Randy: is there support for this
ScottM: possibly
RP: a longer LTS puts strain on community maintainers, there are larger
    ecosystem effects. we need to get that message out to the people
    benefiting from the LTS
ScottM: backporting CVEs get difficult as the LTS gets further and further
    back
RP: sure, oe-core might be supported, but what does that mean for meta-oe?
Bruce: and there are other non-oecore and non-metaoe “important” layers
TimO: users need to decide: long-term or latest
Armin: they can’t get both
TimO: i wonder what SS’s feedback is
SS: it’s what i expected. there’s a lot more silence than expected,
    surprised there aren’t more patches coming in, would like to see more
    community involvement. the month that i provided prizes for CVE hunting
    actually brought in fewer CVE fixes
RP: i’m seeing that with core as well, there seems to be less involvement
    and engagement than one would expect
SS: there are some things that need other layers/scenarios but it’s not
    comprehensive
TimO: and testing is even worse
RP: i’m curious to know which other layers/tests SS is using
SS: i like to add QT, and do builds for specific boards, runtime test some of
    them to make sure everything is still working on real hardware
Armin: more layers are adding tests (ptests) 
RP: can’t keep up with ptest failures in core as it is today


Randy: we’re gathering more logs wrt high latency on AB. haven’t had time
    to analyze yet. between rust and AB latency issues, is there a preference
RP: they’re both important for different reasons


Armin: is there a reason we went with no-password scheme for test-image?
RP: you’re assuming there was a design and design decisions made; there
    wasn’t. it evolved out of debug-tweaks, organically, with what we had
TimO: unfortunate assumptions, it works for the specific things being tested
    so changes have been made
Armin: 2 places where a user:pass can be set: class or systemd. which is
    preferred?
RP: (from memory) configs get set in base-passwd and injected at rootfs time
PeterK: user add-extra class?
Armin: then i need to inherit that class
RP: root entry in passwd file, done in base-passwd. then it doesn’t matter
    whether it’s via class or systemd. i would start there


Randy: tagging releases (see last week’s discussion), in meta-oe the branch
    was created a bit early, and then things got pushed a bit later. should we
    create a process for this?
Armin: the ones that want to align with poky do, others don’t. some layers
    only released a release branch recently
Randy: in some ways later is better than too early
TimO: some layers have their own branching scheme whereby a branch supports a
    number of releases
JPEW: i would be hesitant to add a tag until i’ve tested against the
    upstream (same) tag, which could be a large burden for maintainers to test
    against specific tags
Armin: for me i’m further downstream. i have to wait for poky to branch,
    then i have to wait for meta-oe to branch, then i can branch
Bruce: what’s the issue?
Randy: meta-oe branched too early but it wasn’t actually ready for that
    branch until weeks later
TimO: i wait for my CI to blow up, then i know to do the compatibility


RP: new people on the call. any questions? any topics?
JoelW: hello, happy to listen in


RP: if i sent an email to various lists (oe-architecture) would that help drum
    up more support for maintainers? i’ve drafted something, but not sure if
    sending it out would help
