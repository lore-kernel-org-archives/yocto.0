Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.120867.1597960077427034679
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Aug 2020 14:47:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=Re85RC5U;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 005B9E0205D; Thu, 20 Aug 2020 14:47:56 -0700 (PDT)
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
	*      [209.85.160.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AED77E02059
	for <yocto@yoctoproject.org>; Thu, 20 Aug 2020 14:47:55 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id h21so2322048qtp.11
        for <yocto@yoctoproject.org>; Thu, 20 Aug 2020 14:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=HhlnwPtqV7QPqmWAFgxvpL++zCSxAknE+XVdROO5W9k=;
        b=Re85RC5UHYkftvQpxoTl/u/BqmUUdMxzQOBU0pUAGXLPVH1OJRB4LIpLKf+ybmFTW9
         HrQ6JZk6Qe54A2n885w6QctifXvrv/QyTn/cBX+mUARjWUbJ2zzuNqjy2dk4IVUJMhRh
         zC/IOAev4GaIigppadkjHfTcMOX0Ukirp7NB1mvNYYA3Hef/zdEPaBvriyiSm1Tlg1nQ
         Wy7iCwaWCj/I/nCR8EmJ7YfQ+I55SayjxiOEpl95ow5U2iFvCi6LxloPkXpTmLa7pOSq
         f/lqvtWpdTcaF0Jp/GrFT1xYVzZ4h/ezh+l8BOqfT4Hd3zkVASsMOTmvXRAMonRKVd8X
         mf5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=HhlnwPtqV7QPqmWAFgxvpL++zCSxAknE+XVdROO5W9k=;
        b=XSbnwbDnwJVz3FyLbvn7/FQjdOpAKuJo7wB3U0kBL3zQpgTBURs1aL1L5L61b/BWHF
         Yf12rQditEGpST4Ld9Goo5Mc8+q7m4UMYgF0lDsuH/vMEInMGb/p+SpKceDIO48QNjUY
         kYHxHqFlo550T3VVBThhFSvX2W6KlrMxvvoKL9oVnQCzBq9GF1fV0OM20XYTR5XUdQPj
         T4FFZML8qZVw2WSCH8hBSLLfmsQZcGjgARHJ2LgeJh/1bFOR9W4sXFLafttYsZAxJaml
         X8uU+9vDPJqaAubk7nPM4UhlIQl+LSgUfaldWr/UPFA6k+I8xGzKoepskRKJiCDr9TcS
         42lw==
X-Gm-Message-State: AOAM532qwzM8rJshNFilqcyLGvL2XJdU5T31IoCd1S4vjIhUnjT/WTpk
	9gWhNng4EP8w4jm8ERJK98c08NkUxLYmtg==
X-Google-Smtp-Source: ABdhPJxWetI/u/jIzjkygWjMFJ5qwbNeRe2E38auZBjr0cGrsJz55cEJn26VuVqMnt++3VhFK/dBwA==
X-Received: by 2002:ac8:7351:: with SMTP id q17mr591859qtp.111.1597960074437;
        Thu, 20 Aug 2020 14:47:54 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id c22sm3252060qke.2.2020.08.20.14.47.50
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Aug 2020 14:47:53 -0700 (PDT)
Date: Thu, 20 Aug 2020 17:47:46 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for August 18, 2020
Message-ID: <20200820214746.GA3916@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yocto Technical Team Minutes, Engineering Sync, for August 18, 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7=
QwKC5wWVDg9dDH4/edit

=3D=3D disclaimer =3D=3D
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please fee=
l
free to reply to this email with any corrections.

=3D=3D attendees =3D=3D
Trevor Woerner, Stephen Jolley, Armin Kuster, Josef Holzmayr, Joshua Watt=
,
Tim Orling, Jan-Simon M=C3=B6ller, Mark Morton, Randy MacLeod, Alejandro,
Michael Halstead, Jeremy Puhlman, Richard Purdie, Scott Murray, Paul
Barker, Mark Asselstine, Martin Jansa (JaMa)

=3D=3D notes =3D=3D
- 3.2-m2 released last week
- 3.0.4 (last of zeus) going through QA curruently (out in next day or so=
)
- sharp increase in AB bugs (intermittent)
- AUH upgrade script failed
- trying to drop fno-common scripts from gcc

=3D=3D general =3D=3D
RP: trying to cleanup the fno-common vs not-common gcc patches, thanks Kh=
em

RP: there has been good work to fix proper back tracing

RP: intermittent AB issues, got leads in some, struggling in others. not =
a lot
    of people with which to discuss these (never mind fix)
Randy: we=E2=80=99ve been able to reproduce some of these on a different =
setup, but
    not many
RP: i don=E2=80=99t think one needs to setup a clone of the AB in order t=
o reproduce
    these issues, simply run some of the builds (oe-selftest) with variou=
s
    loads (cpu, I/O) on the rest of the system. Armin tried this and was =
able
    to see them
Armin: and more, actually
(various): using a VM helps
Timo: point being, an idle system rarely shows any of these issues

Timo: did we fix the 500 issue?
MH: we definitely were able to fix the one SS reported
RP: i was able to find a reproducer over the weekend and gave it to SS, M=
H:
    did you document/close the issue?
MH: i will

RP: for one of the tests, the solution seems to be to extend the timeout =
from
    5s to 10s. we=E2=80=99ll see what failure rate we get at 10s

Armin: bind and dhcp. not sure if we want to replace things, or have thin=
gs
    co-exist
RP: going forward i think we=E2=80=99re going to switch over, so might as=
 well bite
    the bullet and switch

RP: speaking of compatibility=E2=80=A6 i pulled out the packaging code (P=
Rserv and
    hash equivalence) PRserv is deprecated in favour of hash equivalence

RP: we=E2=80=99re staying close to upstream thanks to AUH, please send ou=
t updates.
    some packages still need manual maintenance (i.e. qemu)
Randy: did you create a defect for it? i can
RP: please do

Armin: future planning, since we have an LTS now, any benefit to plan for=
 next
    LTS? (i.e. bigger, larger changes)
JPEW: when is the next LTS
Armin: technically, in 3 more releases
SJ: so 3.5 or so
Paul: the longer the timeframe, the worse the predictions
Timo: chance some features will not get the testing they would otherwise
RP: historically we=E2=80=99ve experimented with different release cycles=
, causes
    too much load for some releases, =E2=80=9Cstampeding herd=E2=80=9D ef=
fect for
    patches/QA. our current system seems to be the =E2=80=9Chappy medium=E2=
=80=9D
Armin: i wasn=E2=80=99t proposing to change the milestones or the current=
 release
    system
Paul: i think the proposed features page on the wiki is probably the best
    place to look (https://wiki.yoctoproject.org/wiki/Future_Directions)
RP: or bring it up with the TSC. we=E2=80=99re struggling more with contr=
ibutors
    rather than planning. we could fill in the target milestones better i=
n the
    bugzilla (talk to MH to get more added)

Paul: what are you proposing for the process to modify that page?
RP: probably best to discuss on ml before simply updating the page, the l=
ist
    is of things that have already been vetted by the TSC. do you have an=
y
    ideas?

Paul: LF core infrastructure list of =E2=80=9Cbest practices=E2=80=9D
    (https://bestpractices.coreinfrastructure.org/en/projects?q=3Dyocto)
RP: we=E2=80=99ve taken a look at that already, we have a badge! e.g. nee=
d to run
    pylint, has been added (now someone has to look at the results)
Armin: we don=E2=80=99t advertise that we have the badge, we should put i=
t on the
    website somewhere
Randy: i=E2=80=99d like to know more about the pylint
RP: just used in a couple places for now, want to add more later. lots of
    output, we don=E2=80=99t care about some things. we need a profile to=
 teach the
    linter what things are =E2=80=9Cdon=E2=80=99t care=E2=80=9D (e.g. lin=
e length)
Timo: looked at some of the linting stuff Conrad (Siemens?) was doing
RP: Ross and I looked at some of the linter output and it does catch some=
 good
    things. the future directions page needs to be advertised more
Paul: can=E2=80=99t figure out which things are YP vs OE
RP: depends on which TSC discusses it
Timo: hard to figure out how people can find things

RP: docs, have been working on the version selection stuff, updating link=
s to
    point to =E2=80=9Cread the docs=E2=80=9D links
Randy: is the Sphinx stuff visible yet?
RP: not quite, see the status updates on the docs ml
Randy: need to subscribe
RP: seems we need more mailing lists (e.g. AB output). naming is the issu=
e
Timo: 7 people =E2=86=92 10 suggestions

RP: any thoughts on an AB list. a list for AB patches. =E2=80=9Cyocto-aut=
obuilder=E2=80=9D?
Armin: sounds fine
RP: needs to be better than =E2=80=9Cyocto-builds=E2=80=9D, which is too =
ambiguous
TrevorW: maybe add =E2=80=9C-dev=E2=80=9D to the name?
RP: seems there=E2=80=99s more problems adding =E2=80=9C-dev=E2=80=9D and=
 separating the people
    into =E2=80=9Cdevelopers=E2=80=9D vs =E2=80=9Cusers=E2=80=9D
Armin: just don=E2=80=99t use AB to refer to it! (i.e. advisory board vs =
autobuilder)
Timo: and not let the names get too long
