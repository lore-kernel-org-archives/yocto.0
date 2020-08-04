Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.8752.1596557675015813322
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 09:14:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=E5VgFoaK;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA718E01F8C; Tue,  4 Aug 2020 09:14:34 -0700 (PDT)
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
	*      [209.85.166.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FD87E01F8A
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2020 09:14:33 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id j8so30431293ioe.9
        for <yocto@yoctoproject.org>; Tue, 04 Aug 2020 09:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=nu4gk7KOwwSSsU3LdEp78yksq3MvpxkYYsLbswDCWS0=;
        b=E5VgFoaKcsFialfn0eW51soi8NzL1OMW21u/dFYwq88PNNV5NRG81rjXQ4vZZ5Ht+T
         NQHmaPniviXEofg/hFZKlnug64TxHVy0zdka9QmcqmRyINeHbHks8gemoJpKMwDTAzJY
         flDWIP7Xo28KqGf93iYFzxqnxTgsye+dSPQl1YLOlscqOe+8dxUI/l4/OX2jm8shLK1K
         /BnYHI6k1ot9EfnstH9AfbJVe0qirQ2wY26UL6q65EVvNk12wzzrRMfEsIDGIsKezynH
         jvGisuAGQQTjF6t4gbzgM3Q4o04jfdxXArfaqH/RWN6pj3roHJBvXy9Yxt+eS7RoIv26
         OKOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=nu4gk7KOwwSSsU3LdEp78yksq3MvpxkYYsLbswDCWS0=;
        b=t8JYJNPFX/3sr3Tjj64mgLaAbzryPJIQP/kPu2t4mr3RdsmhPZ/GFRVl2/hFctzg/7
         ohGlfvs5JW8PpebZS+/a231xQyIWTmKOa9sMp9CDtWfJANNozPsGgMxZBACIWo4T0xgC
         TKE6SPzWd4xJFge2QG+r2suS0iacf5K0+nUFW7zyLQ2+S5VLWHq1HN9wgDITDN/guL3i
         VZ/rHlKzJ4iJZ2XpnBSYrf0jVjoIhDUozdobIx1wMDWpAEEzaAobe751YOcrB7A+dGTG
         VXSjLYcyq0YcvjkCpkwdXbnSHmVSEjO7rvMu00d7rIyU+NgIyiXejjfImrFli2y80IMy
         WGWg==
X-Gm-Message-State: AOAM5300aeF3SCeVhbQO8E+fwdEvep21pICDkidHi8m2tChY77+u2SiG
	ZuPKX3/SfjvQrF6FavqzIRkV5EB2kLA=
X-Google-Smtp-Source: ABdhPJwlJSZ5FNOM7UXBATEVbk5tvO5IRUIRqDB0pMYev7wXsDUAuttX1yUI6F4cnPNSo1d4mjWuRQ==
X-Received: by 2002:a6b:c98b:: with SMTP id z133mr5950472iof.3.1596557672246;
        Tue, 04 Aug 2020 09:14:32 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id c13sm13119595ilg.27.2020.08.04.09.14.31
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Aug 2020 09:14:31 -0700 (PDT)
Date: Tue, 4 Aug 2020 12:14:29 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for August 4 2020
Message-ID: <20200804161429.GA24936@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yocto Technical Team Minutes, Engineering Sync, for August 4 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7=
QwKC5wWVDg9dDH4/edit

=3D=3D disclaimer =3D=3D
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please fee=
l
free to reply to this email with any corrections.

=3D=3D attendees =3D=3D
Trevor Woerner, Stephen Jolley, Armin Kuster, Richard Purdie, Josef
Holzmayr, Joshua Watt, Alejandro H, Steve Sakoman, Bruce Ashfield,
(phone-in), Jon Mason, Scott Murray, Denys Dmytriyenko, Matthew Zeng,
Philip Balister, Peter Kjellerstedt, Saul Wold, Tim Orling, Ross Burton

=3D=3D notes =3D=3D
- 3.1.2 released
- 3.1-m2 in QA
- qemumips issues continue on AB
- published doc on inclusive language
- published doc on future directions
- intermittent AB failures, but seems to be going down
- lots of unassigned bugs, please pitch in
- 3.0.4 (last build of 3.0 series, zeus) probably built sometime next wee=
k (if
    everything stays good)
- project tracking metrics are good, probably the best in roughly 18 mont=
hs
- overall project appears healthy and growing

=3D=3D general =3D=3D
RP: relatively quiet week
RP: binutils update caused perf issues, Bruce already submitted a patch
RP: infrastructure has issues today (some parts are down) Michael is awar=
e

RP: inclusive language: agreed on by various groups in the project. pleas=
e
    join in.

RP: future directions is something we=E2=80=99ve been working on for a wh=
ile, please
    take a look

RP: i=E2=80=99ve been looking at the sphynx doc update (hi Nico!)
RP: Nico has been making great progress. i=E2=80=99d like to make improve=
ments to
    how doc versions are selected, looking into what sphynx can do for us=
. i
    think Nico is about to publish a list of ways to contribute(?)

Timo: bug triage: we decided to create a new mailing list for AB failures=
. any
    name suggestions?
RP: i think it wasn=E2=80=99t AB failures, but QA reports
SS: yes
RP: with AB1 we realised that what was being emailed out was wrong, with =
AB2
    we never re-enabled/re-implemented it. the problem with an AB failure=
s
    list was that people started reporting general failures not happening=
 on
    AB. the idea was to shut down the build failures list and create a QA=
 list
RP: we could create it, if there is demand, but i don=E2=80=99t think the=
 demand is
    there
Timo: i=E2=80=99d rather get an email than staring at the AB2 UI
RP: having that email sounds great, but we don=E2=80=99t have the code in=
 place or
    anyone to create/maintain it
Timo: fedora project has some stuff that maybe we could use
RP: resource issue, patch-test and patchwork are limping along already
Timo: fyi, Intel is hoping to take a look (shortly) at patch-test and
    patchwork (it=E2=80=99s in the queue)
RP: thankfully some tools are getting tested since they have test suites,
    hopefully more tools will get test suites

TW: we had a nice OEHH last Wednesday, thanks to all for the opportunity,=
 nice
    to see people attending
Timo: i appreciate it too
Crofton: i=E2=80=99ve created an OE calendar with the dates going forward=
, let me
    know how that works
http://www.openembedded.org/wiki/Calendar

TW: time to start planning for next YPDD?
Armin: yes, David was on yesterday=E2=80=99s advocacy meeting and said he=
 was taking
    a lead on it

SS: getting ready for next LTS release, please take a look at the current=
 CVE
    list (we=E2=80=99re getting it down)
Armin: what=E2=80=99s different between having Steve send it out rather t=
han the AB?
RP: i think generating it automatically causes it to end up in a black ho=
le
    that nobody looks at. i prefer to have it be more personal
SS: it is automatically generated
Timo: we also have tool (from WR)
RP: that is a good tool (the WR one). i=E2=80=99d like to see SS=E2=80=99=
s tool released
    too so we can say =E2=80=9Cthis is what we=E2=80=99re using=E2=80=9D
Crofton: is YP security list still a thing?
(varous): yes, there is a mailing list
Crofton: it appears dead, bad for people to sign up then not see any acti=
vity
Armin: i thought there were hooks
Scott: the hooks stopped working a while back, there hasn=E2=80=99t been =
an email to
    that list in months. talks to get it working again (MarkH)
RP: there was a datacentre move a while back, maybe that=E2=80=99s what h=
appened
TW: oecommits emails stopped at end of March, maybe same thing?
Scott: or maybe the groups.io move?

Scott: yesterday, announcement of the new open software security foundati=
on
    (which appears to be an LF project) did OE/YP get invited?
https://openssf.org/
Crofton: i posted that on twitter, i=E2=80=99ll get back with the replies=
. chances
    are we could use their help and they could use ours
RP: it=E2=80=99s the first i=E2=80=99ve heard of this, i=E2=80=99ve discu=
ssed with LF to have
    better communication between LF members, especially for new foundatio=
ns,
    we weren=E2=80=99t notified but we should try to reach out
Timo: is there any regular LF-wide meeting within LF?
RP: no
Crofton: closest would be the Leadership Conference
RP: coordination between all the LF projects is hard and doesn=E2=80=99t =
exist (yet,
    at least not to the degree that maybe it could)

Timo: fop is a =E2=80=9Cyou should have this installed if you want to gen=
erate the
    docs=E2=80=9D
Timo: do we know how some of our diagrams were generated? do we have the
    =E2=80=9Csources=E2=80=9D?
RP: i=E2=80=99m guessing not. i looked at some of them recently and notic=
ed some
    tweaking was needed and was wondering how we=E2=80=99d do that

Timo: last week Thea had some ideas for solving some of our resourcing is=
sues.
    e.g. looking at stats of past contributors can help find resources
Armin: i was at yesterday=E2=80=99s advocacy meeting, and this wasn=E2=80=
=99t a big topic
    of discussion
Scott: is foundries.io a member now?
RP: yes
Scott: needs to be added to website
RP: odd, they are a silver member now

Bruce: hoping to go with 5.8 kernel (and related libc headers) for gatesg=
arth.
    things are looking good, lots of pain (strace!) but coming along well
