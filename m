Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web08.6946.1619581148455819501
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Apr 2021 20:39:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uo2UxG97;
 spf=pass (domain: gmail.com, ip: 209.85.160.176, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f176.google.com with SMTP id 1so45829256qtb.0
        for <yocto@lists.yoctoproject.org>; Tue, 27 Apr 2021 20:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=afu876PrDqxY68vXnYVGYaIhPI5apZLS8CRnW5sEjL4=;
        b=uo2UxG97lkmx/8yQZ4qpbL18ofKcIH5021hJkt+e0wyiNiwYfcZ5Dc7U8lkGsPuIVq
         Mgr+STs15SVDS6hnsGjzIGZkdLIkdZfh2RRdb4YQ7dVcHtGYiM0NjxbMUFEcHytnsW1e
         v/A+JfUB7eDS6YxdNrMUYIq7InCQHiY/3nBGaL00OXoVVWzg2a+MoL6yd3VkYC8zHzQ1
         YmJ4Z69F5L/xLvsbVCgad5M0XsxeyDbhKn1e+K+CeTy1zMUFeIKgscNlEMxVIXqOrwhr
         R9/hh8R3mW35wqOA7FF2by7etAj6/0GUxvuJwzycI9Gl6BTU1ZUKZQDpeqVaSI08Sy+O
         7sCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=afu876PrDqxY68vXnYVGYaIhPI5apZLS8CRnW5sEjL4=;
        b=g/dyb+FzYJ2D6zzt4te74dLU3hw1EAjVL4nvEuSpIp28VeliNecy+iS/LLG9FqmVEh
         HypYRJCOBC4NRgZrugynypWyXqPRsqEl1buL5xsad+3v59WO6KDQVV1K63K3eX/0bzOJ
         qR080ZyN2y/m9nUDTyGn/jScFm0I4UMn09ztbK5+ZH+WPe/OERoxJadkCgCLDhdDbXuq
         kzZ7cbIHZmqsTHGg96mChF3h4XwAmCqr+0z0+e66a4WUL5zGOlj4/YlE+Ua1DIgDEJLy
         HAENUq0pppLAF9MSvWhyXD7t6VsUq02EthnFURfrOMsW3K+PqmxN5FhSJX/eyJ9Ht/95
         q2ag==
X-Gm-Message-State: AOAM531khXLRleig9UWuKAPxCgnPoRVoKcLFdOEvinhGlBzBHQY5s2kS
	QWWJt8zrcnvcPoBlFa+ag0HnwyzRorM=
X-Google-Smtp-Source: ABdhPJyytPsDJxJpPWJ+M5Dbt8+rfJuJatDjwa4v1ie5HasqvUYK6e3cQOfmHM6DfneEwQHlrR5GKw==
X-Received: by 2002:a05:622a:253:: with SMTP id c19mr25081521qtx.53.1619581146878;
        Tue, 27 Apr 2021 20:39:06 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id d10sm4250958qki.122.2021.04.27.20.39.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 20:39:06 -0700 (PDT)
Date: Tue, 27 Apr 2021 23:39:04 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for April 27, 2021
Message-ID: <20210428033904.GA28194@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for April 27, 2021
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
Trevor Woerner, Stephen Jolly, Trevor Gamblin, Jan-Simon Möller, Steve
Sakoman, Joshua Watt, Richard Purdie, Bruce Ashfield, Jere Kiikari, Scott
Murray, Randy MacLeod, Armin Kuster, Saul Wold, Michael Opdenacker, Michael
Halstead, Alejandro H, Jon Mason, Tim Orling

== notes ==
- 3.1.7 released last week
- patches flowing into master 3.4-m1
- added checking for key layers on AB (i.e. member layers)
- libseccomp moved to oe-core
- add opengl to default DISTRO_FEATURES proposal
- 2 OE positions available on TSC

== general ==
TW: OEHH is tomorrow


RP: adding more layers and layer checks for heavily-used layers (e.g.
    meta-virtualization). we’re currently testing 8 layers, last week only 2
    passed, now (i believe) they’re all passing the various checks
TW: what tests?
RP: yocto check-layer test, e.g. is there a README file, e.g. pass through the
    metadata without the layer, add the layer, repass through the metadata and
    verify that sstate checksums don’t change
TW: any building?
RP: no, just parsing. also does sub-layer testing too (e.g.
    meta-openembedded). led to finding a bug in the script


RP: adding libseccomp in core unblocks meta-virtualization


RP: AlexK is pushing hard to drop x11. not seeing any objections on the
    mailing list (hard to believe)
Randy: are we covered if we switch?
RP: i don’t think that’s entirely possible
ScottM: software rendering is painfully slow (e.g. testing)
Randy: okay, performance is slow, but full support?
JPEW: isn’t this change just changing package building options?
ScottM: mostly. i think it should be okay, what if someone enables both
    wayland and x11?
RP: i’m concerned that there are BSP layers that don’t support opengl,
    this makes it a requirement for all BSP layers
TW: i believe there a case in meta-raspberrypi if the user chooses VC graphics
Armin: what do you mean “dropping x11”? removing x11 entirely?
RP: if AlexK gets his way
Armin: can we move it to meta-oe?
RP: i don’t think removing it is on the table?
Randy: so removing x11 server and replacing it with wayland-x11 server
ScottM: it’ll have to happen sooner or later. many desktop distros are
    moving to wayland and away from x11
TimO: so a good drop before the next LTS?
ScottM: that’s what i was thinking, maybe a tsc decision
RP: opengl is a requirement for wayland?
JPEW: not a hard requirement, but in practice…
RP: uncomfortable about making opengl a default
RP: uncomfortable with making this a DISTRO_FEATURE when maybe “graphics”
    is a BSP question
TW: what about headless builds?
J-SM: shouldn’t a headless build not need graphics things?
TW: there’s probably some package that builds differently with opengl on or
    off but would be pulled into a headless build
JPEW: opengl DISTRO_FEATURE is not the right thing to check for this
RP: dbus builds differently depending on x11
ScottM: i’d like to look at how AlexK has implemented it, need to make sure
    the wayland features support the existing x11 features
RP: nobody’s commented on the mailing list. the change has already been made
    in poky and nobody said anything and nothing blew up
ScottM: are you going to switch away from core-image-sato to something weston
RP: we’ll have to come up with something
Armin: i know the mali stuff is hard to get working. Khem does a lot of builds
    with graphics stuff, so he’ll probably be the first one to say something
    if we switch. the blob drivers lag so far behind
ScottM: true, there were some cases where we couldn’t update for a long time
    because we had to wait for vendor blobs to catch up and release weston
    things
Randy: is remote desktop possible (ssh -X)?
ScottM: there’s nothing built-in, but there are things that are being worked
    on, there are a couple options, mostly over pipewire
JPEW: weston has an RDP backend
ScottM: not as easy as the old ssh -X, but it works
JPEW: with weston there’s the possibility to just forward 1 app instead of
    the entire server (rootless)
TimO: we’re in an intermediate phase and vendor support is hard
Armin: it’s like the python2 → python3 change
TW: does that mean a meta-x11?
Armin: probably, not sure if it’ll be public, but somebody’s going to have
    to solve that problem (MV, WR, …)
RP: client vs server
JPEW: depends on what you’re trying to do. if an app does crazy things with
    the server (e.g. send key events to another app) then wayland doesn’t
    permit that
TimO: sato and matchbox are looking clunky these days
JPEW: phosh might be a possibility. i built it recently and it seems good.
    uses a lot of gnome (meta-gnome) but it does build and work
TrevorG: i played with it recently too, seemed okay


TW: any umn patches?
RP: actually i did check, didn’t see anything


Saul: qmp. i think there’s a delay in the socket being created on CentOS
RP: i checked and tested your patch and it seemed to work, so i merged it into
    master. Thank you for getting it there
Saul: now we’ll see if it triggers, and if it does, then we can add to what
    it does. ping me when you see a failure and we’ll look at it
Randy: do we have to pick up the logs manually?
Saul: yea, they’re dumped into a directory (same place as other logs)
Randy: hook it up to the latency monitoring things?
Saul: possibly
RP: there’s an env var set to a path for reproducible build pages generated.
    same place Randy is putting some logging and dd test. so we should teach
    qmp about that path as a place to put things if’when things go wrong
Saul: part of OE-qa?
RP: yes, the env var makes it into the datastore as a place to put things if
    set (OEQA_DEBUGGING_SAVED_OUTPUT). the only tricky part is we’re not
    setting it for all builds, but we can look into it


Randy: with this last release (hardknott) the timing for when the branches
    were created (hardknott) in various layers was different this time around
    and it messed up our (WR) release schedule. could we have a policy on it
RP: individual layers are up to individual maintainers, can’t create a
    policy
Randy: i think the one for meta-oe got created a bit too early. could we make
    sure that doesn’t happen again?
Armin: maybe ask Khem
RP: with core we start the release branch early but then it only splits when
    there’s a diverging commit. then we also tag releases
Armin: it was quite early with meta-oe this time
TimO: it was noticed
Bruce: we had to do some dancing this time
Armin: there are lots of layers that don’t branch, so you just have to
    qualify against a specific SHA of their master, but then that can break
    when things move on
RP: we have a tagging policy that has a “yocto” prefix and the hope was
    that layers would use those tags and that it would be uniform over the
    ecosystem
Armin: use the yocto- ones or the hardknott-25 one?
RP: not the hardknott-25 one, that’s linked to poky. it's something i've
    wanted to clean up for a while
TW: couldn’t we link all layers _and_ bitbake too? why isn’t there a
    hardknott layer in bitbake? i thought i had asked about this in the past
    and was told that it couldn’t be done because they’re independent projects
RP: you're thinking poky release numbering vs bitbake versioning. i’d like
    to get rid of the poky version numbers, that’s true, but we have been
    keeping up with separate between the layers and the tool (bitbake).
Randy: there are tags between them
RP: not sure why the point releases aren’t there in the bitbake tags.
    MichaelH maybe we could look into this?
MichaelH: okay, we’re still following procedures from a while ago, so
    there’s no reason the procedures can’t be updated. we’ll look into
    adding the point release yocto tags into bitbake
RP: then you'll find that there are "yocto-"-prefixed tags throughout the
    ecosystem (e.g. oe-core, bitbake, etc) i'm hoping all layers follow suit
