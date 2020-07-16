Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2092.1594929909747115585
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 13:05:09 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=nl7mgL+Y;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 565E2E01E9A; Thu, 16 Jul 2020 13:05:09 -0700 (PDT)
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
	*      [209.85.219.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25A90E01E98
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2020 13:05:07 -0700 (PDT)
Received: by mail-qv1-f46.google.com with SMTP id ed14so3310838qvb.2
        for <yocto@yoctoproject.org>; Thu, 16 Jul 2020 13:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=3nd4kNT4cd5HiQ0Ba8pA0CoBpVhL3NK4LfDt6Mq0tMY=;
        b=nl7mgL+YMHyxz/x0vqOSfzDbbDwJXEDlV2ltrYhgIFeZ6VfWYc2Lyz/gLeBvoW9zDa
         jdj/nAH34IxkVsTp11iR6gxZHjJLW72eeRpxIgiUnZ3EjpqeN2Dr5e6alJQpTl5Ut67F
         rGZqnYEdhcYXRVxx/J5nOwCpTVxkzPvbURw6kz0R5XwDG0tElJdVQJUi4rqJKqUu8Ubi
         wfct6jeYcC96Epve6EwOlC/zguzhnvZLuUAhzNnFZBqZFMSgqjDMWpXoBPpwa4KaQoiT
         gKKQXLNa1H4V8qmQuzLMdjlc9tyzAYVELKT1+XggXuBrEjD0CsuuOvhV2NOx5DdCRMEs
         29zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=3nd4kNT4cd5HiQ0Ba8pA0CoBpVhL3NK4LfDt6Mq0tMY=;
        b=qkbjlhlxRXqLVx3szLrvxS9mh8fvf4UtcjVJ/BTVjaniTW62N8PchrhggrfNpTpTHN
         Ku84ZCt+GHxZP9e7ie5IMgoZe2ol0hgePJjFkmmRwAxJLqxBT0YzdPSh8hsZSVhGwKtv
         +zQlInUsMzvFaEEPEVYZA+H2D2aChLcXfrvg/K0i68eboNJA6NamYzTVDCemN1bN2PFB
         hvUgFhXHN44NXvgiBLxlLObtctHb7TTPIVA9HXddXn1/N43b7cKiad3dG3uJCFR40/Uw
         L5P5jFvSxtacOu9HI4Ogx1oEg1qX46rht7vhuFT/jX+Wn7FNvjTQW6pDZUL+8y5YLCgH
         8Krw==
X-Gm-Message-State: AOAM5329RV2MHTuaahsxn6y0zfnrKMWkJunkWoaVDyc9W7I3WxtIfg73
	JsrmUyYqc8vdLK82m6EC6l68F9O1
X-Google-Smtp-Source: ABdhPJyPreQPREae6KU5LjxI7oVkpurJw5cTvLFxikPikwK9ARCHMKDtK9Nn5BVkZSgQ1dgxHLhsMA==
X-Received: by 2002:ad4:4105:: with SMTP id i5mr5866748qvp.170.1594929906533;
        Thu, 16 Jul 2020 13:05:06 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id y40sm9423203qtc.29.2020.07.16.13.05.05
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jul 2020 13:05:05 -0700 (PDT)
Date: Thu, 16 Jul 2020 16:05:03 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for July 14 2020
Message-ID: <20200716200503.GA11596@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yocto Technical Team Minutes, Engineering Sync, for July 14, 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7=
QwKC5wWVDg9dDH4/edit

=3D=3D disclaimer =3D=3D
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please fee=
l
free to reply to this email with any corrections.

=3D=3D attendees =3D=3D
Trevor Woerner, Trevor Gamblin, Jan-Simon M=C3=B6ller, Bruce Ashfield, St=
ephen
Jolly, Joshua Watt, Vineela, Alejandro H, Richard Purdie, Steve Sakoman,
Michael Halstead, Scott Murray, Tim Orling, David Reyna, Jon Mason, Jerem=
y
Puhlman, Ross Burton

=3D=3D notes =3D=3D
- found/identified a fix for an AB issue
- looking for more help with bugs

=3D=3D general =3D=3D
RP: the bug that was found in bitbake was from 3 years ago, really happy =
to
    find it and fix

JPEW: i missed the bug triage, did we get any new people
RP: sadly not

RP: working on making sure older releases (pre-LTS) can still build (thud=
)
Alejandro: how far back?
RP: AB2 code base doesn=E2=80=99t go back that far, so Pyro/Rocko should =
be do-able,
    beyond that probably not. i assume if i get thud working, the same wi=
ll
    work for sumo etc
RP: a limiting factor is jinja2 which is used for results processing on t=
he
    AB, usually we just use the tip, but that might not be viable for old=
er
    releases
Timo: some of the issues are with ptests too?
RP: yes, ptests pulls in python tests which pulls in a huge list of
    dependencies

Timo: maybe move pytests into core?
Alejandro: why not have it in core?
Timo: the number of recipes (dependencies), who=E2=80=99s going to mainta=
in, etc
Timo: note: i=E2=80=99m for including it in core
RP: i feel we should be expanding core, i=E2=80=99m in favour too
(various): sounds like a lot of agreement for having it in core
Alejandro: i=E2=80=99d like to get rid of anything that depends on pip
RP: agreed, it would be preferable if MH didn=E2=80=99t have to use build=
tools
    manually on the AB
RP: (reads off the list of recipes that are pulled in)
Alejandro: so these are all in meta-python?
RP: yes
RP: i=E2=80=99ll put a proposal on the mailing list and see where it goes=
. Timo is
    the maintainer and is favourable to bringing it in
Timo: we=E2=80=99ve been getting lots of help from TrevorG and Leon (kons=
ulko)
Timo: it would help to have this in core for other things that want to us=
e it,
    would lead to greater use of testing
RP: we have special buildtools for different compilers, so there=E2=80=99=
s no reason
    we couldn=E2=80=99t have special versions for different release branc=
hes of the
    project

JPEW: does anyone use Lua
Timo: have used it, not extensively
Scott: it is used in AGL
JPEW: i=E2=80=99m using something that needs it, but =E2=80=9Cbatteries n=
ot included=E2=80=9D
Scott: i had to work with it a while back, there is a layer floating arou=
nd
    out there somewhere (lua-rocks stuff) that has an npm-style tooling
JPEW: lua is in oe-core, wondering if there=E2=80=99s interest in a layer=
 to add
    other lua stuff
Scott: the usage in AGL is pretty straight-forward
JPEW: i=E2=80=99ll put it somewhere
Scott: post in oe-devel see if there=E2=80=99s any interest
JPEW: wasn=E2=80=99t sure to make my own layer, or suggest it for oe-deve=
l, there
    are opinions wrt layers based on languages

Timo: perl RDEPENDs stuff, was looking at some recipe-tool stuff (from 4 =
years
    ago), there=E2=80=99s meta-cpan that has a nice REST api, what do we =
do when the
    result is something that doesn=E2=80=99t have a recipe for it
RP: i have enough on my plate
Timo: was going to create a missing.txt file for any missing dependency
    results
RP: sounds good

Timo: inclusive language, upstream repos changing =E2=80=9Cmaster=E2=80=9D=
 to something
    else, we also use master and whitelist/blacklist
Jon: it=E2=80=99s going to be a lot of work, but if we can at least put i=
t on the
    roadmap that would be good
Timo: 3.3 maybe
RP: don=E2=80=99t think we can put it off that long
JPEW: what=E2=80=99s the plan? keep old stuff around for a while? we use =
the same
    metadata with numerous versions. the branch names aren=E2=80=99t the =
issue for
    us, mostly variable names. in favour of a deprecation timeline
RP: we need to do more analysis: variable names, function names, branch n=
ames
    etc=E2=80=A6
RP: in addition to the use =E2=80=9Cwhite=E2=80=9D and =E2=80=9Cblack=E2=80=
=9D there are also issues
    over various names (i.e. some names are too cryptic) and there are is=
sues
    with the behaviour of some variables
RP: my guess is that the hard part isn=E2=80=99t the technical issue of r=
enaming,
    it=E2=80=99s the discussions around related issues, there=E2=80=99s a=
 scope-creep
    danger above and beyond fixing the offensive bits
