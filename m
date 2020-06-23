Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.14529.1592939091573157339
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jun 2020 12:04:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=ewbJX/Az;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A728E01D74; Tue, 23 Jun 2020 12:04:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F387E01D30
	for <yocto@yoctoproject.org>; Tue, 23 Jun 2020 12:04:49 -0700 (PDT)
Received: by mail-qk1-f170.google.com with SMTP id q198so12033399qka.2
        for <yocto@yoctoproject.org>; Tue, 23 Jun 2020 12:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=YiL0QZ9wglnX/JZ5/DT5URgtveo6/pU5RTCnIQZKZ2U=;
        b=ewbJX/AzdtpOTvEOIrcG6bNNHF3AgmlJVFiWLDXaOsDe8SjhwHvlZDg1wET6Jv+wE/
         5t2Xs6U9YzV7QGobX3Kn9VqayPTJ3WvTSurUy28SNufgcsFje6BbPkYZkba0hjenlVoF
         CYLF09Ra77WKESXgwWTGtfg8AJRfF6nHXRP7uf6eEIdjWLWjyPak6IOl/xVyV77EMRey
         dtji4JJ16UYSL1B2m4cz+TYu4txnhcq5nGNAGzBHbx7Ts7WE7HDIlBzWPSF8wiZjU8Ew
         Mfj/ejWNwCMHzaw6vgAq+LIhGE1Xma3lluK478dPuVMKDSgpnqtSp8YP6cJOWcX5tvlR
         Yf9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=YiL0QZ9wglnX/JZ5/DT5URgtveo6/pU5RTCnIQZKZ2U=;
        b=cmtaU0QUvBRL8Hu5EpyENxfaDdUQp7tJA66LoZ62A6EU/Io6czJNDbYUDGMAiJ363Z
         PQD61ZbpnkNCTrONirNY9W0g2UdAO99OSLiz00o9eHERvuzLujGM/fWaWYwEElnvjYRQ
         QFCFDzraU0QsF8AggNpGUuqmDZ5ZGDLZ5HI6IdlGwoDUDqdgNj1vZ6Nbg/vursp486fZ
         SRvlFJE/dDphqk1TkPf+yjgcQv5bQYvhhlpUoPPxiqGmjmRxo+N8aBdzcZiDQvvL1E2G
         jrvSzu9jWWXt5chHrtE0wkyetulghCBVgD2n3X9YdJwg/OYzMv245OfPYnQQ7jXbeKNg
         8HhQ==
X-Gm-Message-State: AOAM530HlcvU0lb9FhhwIjbF4o3KV4NfhTgsgnBPMdRzeQSLOqBrLU6D
	4ov6YvpLXBRJfpRbcbPi7654sVuk
X-Google-Smtp-Source: ABdhPJxEwESxBYmn4xaPd99cvVeoKqR0Q5VLgUHZP9bdcwcreHYookGi4Fg8Hc0nAvKQZuY5Y2pzQQ==
X-Received: by 2002:a37:855:: with SMTP id 82mr4409319qki.441.1592939088635;
        Tue, 23 Jun 2020 12:04:48 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id r5sm1524158qtc.20.2020.06.23.12.04.47
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 12:04:47 -0700 (PDT)
Date: Tue, 23 Jun 2020 15:04:45 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for June 23 2020
Message-ID: <20200623190445.GA21879@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yocto Technical Team Minutes, Engineering Sync, for June 23 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7=
QwKC5wWVDg9dDH4/edit

=3D=3D disclaimer =3D=3D
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please fee=
l
free to reply to this email with any corrections.

=3D=3D attendees =3D=3D
Trevor Woerner, Stephen Jolly, Jan-Simon M=C3=B6ller, Armin Kuster, Jerem=
y
Puhlman, Trevor Gamblin, Scott Murray, Richard Purdie, Steve Sakoman, Bru=
ce
Ashfield, Paul Baker, Randy MacLeod, Peter Kjellerstedt, David Reyna, Mar=
k
Morton, Tim Orling, Joshua Watt, Michael Halstead, Vineela (?), Alejandro=
 H

=3D=3D notes =3D=3D
- 3.1.1 was released last week
- 3.2.1 out of QA, looks clean, for TSC review, release probably in next =
few
    days
- still issues with AB
- still looking for more maintainers
- lots of unassigned M2 bugs
- new testing manual
- ELC + devday next week

=3D=3D general =3D=3D
TW: meeting next week?
Stephen: will look if there=E2=80=99s a timezone/agenda conflict=E2=80=A6
(various input)
Stephen: okay, next week=E2=80=99s meeting cancelled

David: ELC, virtual booth and slack session, looking for people to hang o=
ut
TW: do we have to be registered for ELC?
David: no, certainly not for slack, Tracey and I will work it out. email =
to
    come later today with details, contact me if interested

RP: links in status report to devday and to new test manual. please have
    a look through the test manual. kudos to Mark for pulling it together
    (always getting questions about testing). this was started a while ba=
ck
    with ScottR

RP: re AB. still seeing intermittent issues, causes lots of builds to fai=
l.
    impacts me and SteveS. couple issues with repositories and/or branche=
s
    (upstream) disappearing.

RP: issues around the =E2=80=9Cstdin=E2=80=9D bug (wrt testing)

RP: Ross still working on RCU bug

RP: Alex working on a =E2=80=9Cwarnings=E2=80=9D issue

Scott: can we still add 3.2 features?
RP: nobody=E2=80=99s mentioning anything. we=E2=80=99ve never been so ble=
eding edge (AUH
    kudos: AlexK). apt upgrade. Armin working on dhcp and bind updates. B=
ut no
    =E2=80=9C3.2 sound-bite=E2=80=9D
JPEW: multiconfig fixes
RP: true. and also some RDEPENDS support (should be straight-forward exce=
pt
    when recursing)
JPEW: not sold on the feature
RP: simple use-case is to put 2 toolchains into one sdk. my answer is to =
build
    the two then combine later (with other code). i agree that we might n=
eed
    to look for a different approach
Timo: the code to bring it all together could do other stuff too, but i a=
gree
    with Joshua that =E2=80=9Cthere be dragons=E2=80=9D

Timo: perl has a new release 5.32, we might want to get that in
Scott: but it has some new language features, might not just be a point
    release
Timo: haven=E2=80=99t dug in, we=E2=80=99ve had issues with perl so hopef=
ully things are
    better

RP: 3.2. held up due to valgrind regressions, new distros (gcc 10 fixes),
    reproducible builds, etc=E2=80=A6 so there=E2=80=99s lots of good stu=
ff going in, just
    nothing =E2=80=9Cnew=E2=80=9D (i.e. a feature), but that=E2=80=99s ok=
ay

Scott: new autoconf (Ross)?
RP: don=E2=80=99t think it=E2=80=99s released yet, we=E2=80=99re testing =
the pre-release. if
    upstream releases then we=E2=80=99ll upgrade, but don=E2=80=99t know =
their timescale

RP: trying to reduce patch overhead (AlexK has been helping). it has been
    slowing moving down, but recently up-ticked a tiny bit. we=E2=80=99ll=
 never get
    to 0, but every reduction helps

Timo: was looking at Sphinx update yesterday. looks good, some glitches.
    noticed the doc revision history was missing. how important is that?
RP: i=E2=80=99ll ask MarkM to take a look. if it=E2=80=99s lost it won=E2=
=80=99t break the deal,
    but ideally we=E2=80=99d keep it
MarkM: yes, that and some other things (e.g. html version doesn=E2=80=99t=
 have
    section links)
Timo: was looking at Toaster manual, noticed some images were missing too=
.
    also found a broken URL. overall very good, nice to see a modern form=
at
    (i.e. readthedocs)
MarkM: we=E2=80=99re also looking at a colour scheme, Nico simply picked =
the
    default, but something else will probably look better
RP: Nico, MarkM, and I met (it was an open meeting=E2=80=A6 *wink wink*) =
and decided
    to move forward and are hoping to have it done for Dunfell (LTS) and
    master
Timo: agreed. XML is a dying art, everything looks good, kudos! (will try=
 to
    get some help from some Intel folks)

JPEW: sstate found/miss cache?
JPEW: a patch to not go out and look for every sstate object, keep a cach=
e if
    one had already been found
RP: the found cache isn=E2=80=99t the issue, the not-found could be an is=
sue
    especially where multiple builds are using the same sstate. we don=E2=
=80=99t
    have a mechanism to generate an sstate object in isolation, but it mi=
ght
    be a step away
JPEW: but it=E2=80=99s the not-found that is the slow path. if the sstate=
 object
    isn=E2=80=99t there, the build goes out and searches the filesystem f=
or the
    missing object
RP: maybe we could make the cache time-limited (e.g. 30 seconds?)
JPEW: yes, that might help. it=E2=80=99s like there=E2=80=99s 2 scenarios=
: local builds
    with one builder, group builds
PaulB: maybe we could simply watch the sstate directory for changes?
PaulB: there=E2=80=99s also an issue of a remote sstate cache over https =
where
    packets are dropped so it fails, the machine builds it locally. could=
 be
    a =E2=80=9Ctime of check=E2=80=9D vs =E2=80=9Ctime of use=E2=80=9D is=
sue: the check says it=E2=80=99s
    there, but at use time the network blips and then it=E2=80=99s not re=
trieved,
    and then there=E2=80=99s no retry
JPEW: we saw same issue here: solution for us was to run bitbake twice: o=
nce
    with the setscene only, then once without it
PaulB: we=E2=80=99re trying to offer our customers a common sstate but we=
 can=E2=80=99t
    necessarily ask users to do the =E2=80=9C2 bitbake=E2=80=9D build
RP: maybe we need a config setting
PaulB: i think the issue is we=E2=80=99re checking a URL twice, it=E2=80=99=
s the time
    difference between checking and using that is the issue. perhaps we c=
ould
    just do the poll once?
RP: absolutely not, that=E2=80=99s effectively not possible. decisions ar=
e made
    based on those checks so the two fetches have to be separate. if we
    combine them, then there=E2=80=99s no savings, each build would be ve=
ry long
PaulB: perhaps better reporting
RP: people are just going to set the config to ignore the warning then bu=
ilds
    will fail and it=E2=80=99ll look like the build is flaky. i think the=
 answer
    is we=E2=80=99re going to have to accept a config option, but we=E2=80=
=99ll have to
    document it and be aware
Alejandro: could we switch run-queue classes (by a flag for e.g.)
RP: the patch isn=E2=80=99t the issue, it=E2=80=99s a philosophical quest=
ion. i=E2=80=99m
    worried about the implications from a usability standpoint (e.g. =E2=80=
=9Cwhy is
    my build rebuilding all this stuff?=E2=80=9D =E2=80=9Cbecause your ne=
twork is bad=E2=80=9D)
RP: over the years we=E2=80=99ve reduced the number of useless warnings t=
o the point
    where warnings are actual warnings now. maybe it wouldn=E2=80=99t be =
bad to have
    a warning for this situation
PaulB: some layers cause lots of warnings to be emitted
RP: heads up for 3.2, lots of warnings are errors now in poky
Timo: very similar to gcc=E2=80=99s situation, code warnings are ignored,=
 code
    doesn=E2=80=99t work, so now more warnings are fatal for the build
RP: 5 years ago i wouldn=E2=80=99t have taken that patch, now i think it=E2=
=80=99s
    reasonable
PaulB: okay, I=E2=80=99ll put a patch together

RP: getting back to JPEW=E2=80=99s issue, i think we=E2=80=99ll simply ne=
ed a config
    option. for the future I see bitbake needing some sort of dynamic
    directory monitoring code, perhaps notifications from the hash equiva=
lence
    server (if there was a mechanism for sending messages)
JPEW: true, but if event-driven (not polling)
TW: but if the network is flaky=E2=80=A6
RP: depends on scenario, AB should work reliably, over the Internet?
    anyone=E2=80=99s guess
RP: maybe a username/password, or web token, or some other auth method

PaulB: what would it take to replace pseudo with some sort of container
    (flakiness with LD_PRELOAD issues and others). 2 issues: 1: build nee=
ds
    the sub-uids and sub-gids needed before the build 2: even with root i
    don=E2=80=99t think you can run mknod
Timo: could be bind-mount in the devices and then add groups, we=E2=80=99=
d like to
    keep it rootless if possible
PaulB: but even with root we can=E2=80=99t create device nodes (device na=
me-space
    inside and outside the contain is the same (shared?))
Randy: is the same namespace used on purpose?
JPEW: not sure how to name-space physical devices?
PaulB: if mknod is the only thing that could be an issue, then it=E2=80=99=
s the only
    thing we=E2=80=99ll need to get working with LD_PRELOAD
RP: not just that, but anything mknod would create would need to be wrapp=
ed
PaulB: oh, true
Scott: do we need the full system image in the container?
Timo: no
RP: all things considered, pseudo is still holding up pretty well, is it =
worth
    wholesale replacement?
PaulB: still seeing seccomp issue
RP: there is a work-around for the seccomp issue
Scott: i like the idea of using the container since it will definitely av=
oid
    host contamination
Randy: a container would be faster too?
JPEW: we still have to record everything
RP: won=E2=80=99t completely solve the host contamination thing because t=
he
    cross-compile is still happening on the host, depends on which proble=
m
    we=E2=80=99re solving (LD_PRELOAD? host contamination? performance? =E2=
=80=A6)
PaulB: my issue was mostly LD_PRELOAD, and wic. bitbake runs inside faker=
oot,
    but wic doesn=E2=80=99t
RP: true. i think the tools need to be more granular
