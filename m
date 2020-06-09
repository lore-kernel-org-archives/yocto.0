Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.666.1591737371759366348
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Jun 2020 14:16:11 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=gu4Zn3SO;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D1F2E01CB3; Tue,  9 Jun 2020 14:16:11 -0700 (PDT)
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
	*      [209.85.219.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61C58E01C7A
	for <yocto@yoctoproject.org>; Tue,  9 Jun 2020 14:16:10 -0700 (PDT)
Received: by mail-qv1-f43.google.com with SMTP id cv17so47226qvb.13
        for <yocto@yoctoproject.org>; Tue, 09 Jun 2020 14:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=AIsaj5lF5PLxR3quC2nbtmXY3HhICEoZ5zJvnXGLONo=;
        b=gu4Zn3SOORGZm91SYHPbBz7QE3J3svJru4E3/OcmwJGivPCjDYeFOasFzKIol/A1Ns
         3JE5hV3vy7dVOccscborWYS66r6MQDEHom5IGFrcwtc8DjkHeMHUg/kKnSubjxgLZTk2
         W+zrvjlVL+4bHzCvoXpe1Je5x/JDd2ayHHDQme+oOJMmZV4CzIG6Woic9GUQg+Z+Fy36
         EL+bMTJsvclN2uSjeoDnKa/gLHGL8T9knKyKzCAFr9g/JK565YQ4rxZ4HGWhvfSH1L0A
         vPs3WGPosJH+tT0NUc40Xcy1/uoOHYdNw+C2E8Cta+hROhfE+0XJmPmjZKpl+LcoYqDF
         QB0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=AIsaj5lF5PLxR3quC2nbtmXY3HhICEoZ5zJvnXGLONo=;
        b=ek5+eWrWEKvHjdrqj6+iAC8ZePUR8hnMGUckdBPcHgcw1mASbhs4sG45MWNfkc7YH/
         c1T9W44BFuOGV8RigxW6pxIMYGBMYTL8tifMPhV9ydFtnO4LZZtoaQpSo6inAAMs+tAx
         RBaaMRsk+wQkhnWk5e7lJqyVOcEjeClCuktU54xLTEsiIjPChgZK4QWKrw8IX6zegCKS
         QfJDflkRFFKHvy79USvm/Ljxliu4iW7h4j85+Wj7Cn1B9W1xkajwDsw0usUGo4CZOiUm
         cmk7vzS+4QI4CrxMPtoKq5K814k7r3tyUmTFPd+2jxR+YckGrgPcgTI4lgfz5XC7DK5D
         GyPg==
X-Gm-Message-State: AOAM532VBjlWQ0Zsn5OG+FjaVc5RBDGzYiWGS6QCf5DSu4sxf15t/I1D
	XGlyWQOPTFAyjtxk7u7+Fc5jYeZL
X-Google-Smtp-Source: ABdhPJwXpFIiUJmG1m3SRti7jpL2+2QfcgUVLcab/wAGKsphMmo8Z/0pkwDPvG9EXCxUTJPJbgfnbA==
X-Received: by 2002:a0c:ed4d:: with SMTP id v13mr31051qvq.237.1591737368975;
        Tue, 09 Jun 2020 14:16:08 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id e1sm10715153qto.51.2020.06.09.14.16.07
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Jun 2020 14:16:08 -0700 (PDT)
Date: Tue, 9 Jun 2020 17:16:05 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@yoctoproject.org
Subject: minutes for Yocto Project Technical Team Meeting / Engineering Sync - June 9 2020
Message-ID: <20200609211605.GA37371@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yocto Technical Team Minutes, Engineering Sync, for June 9 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7=
QwKC5wWVDg9dDH4/edit

=3D=3D disclaimer =3D=3D
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please fee=
l
free to reply to this email with any corrections.

=3D=3D attendees =3D=3D
Trevor Woerner, Jan-Simon M=C3=B6ller, Stephen Jolly, Trevor Gamblin, Bru=
ce
Ashfield, Scott Murray, Paul Barker, Michael Halstead, Jon Mason, Richard
Purdie, Joshua Watt, Armin Kuster, Tim Orling, Sathishkumar Duraisamy,
henriknj, Ross Burton, Jeremy Puhlman

=3D=3D notes =3D=3D
- 2.7.4 released last week
- 3.1.1 built, but has issues, not sent to QA yet
- M1 early next week (to build)
- thanks to AlexK for lots of fixes

=3D=3D general =3D=3D
RP:
    problems with 3.1.1. qemu(-mips?) failed with taskhash mismatches, no=
t
    sure why


RP:
    devtool, patchtest, patchwork, and wic looking for maintainers
PaulB:
    patchtest/patchwork still on python2, needs 2=E2=86=923 update. patch=
test
    should be moved to OE-core so it can be noticed by more people


RP:
    lots of recipe upgrades, happy with where master is (wrt to recipe
    versions), still need to update qemu to 5


JPEW:
    did RP see my patch to mc-depends to make it backwards compatible?
RP:
    dismayed it was more complex than hoped, but looks okay
JPEW:
    i=E2=80=99m using a proxy object otherwise we need to duplicate a lot=
 of code
    with a lot of if=E2=80=99s
RP:
    saw the BBMASK thing for multiconfig that needed index checking, sad
    that we=E2=80=99ll be stuck with that going forward (in command.py) m=
ostly for
    backwards compatibility (e.g. file checking). another option is to ha=
ve
    a new API and append a =E2=80=982=E2=80=99 to the end so callers will=
 call the right
    things (old or new). the code=E2=80=99s probably going to get worse a=
nd worse
    with every new parameter we want to add (in the future)

JPEW:
    re multiconfig, sometimes the old full =E2=80=9Cmulticonfig=E2=80=9D =
string
    doesn=E2=80=99t work but the new =E2=80=9Cmc=E2=80=9D string does, ca=
n we drop
    =E2=80=9Cmulticonfig=E2=80=9D? changed in 2.7? or 3.0? there=E2=80=99=
s a bugzilla somewhere.
    some code handles both, some doesn=E2=80=99t
RP:
    we can get rid of it, despite the expected screaming


RP:
    re devtool, reports on mailing list that devtool isn=E2=80=99t mc-com=
pliant
RP:
    we have a horrible hack for PRserver
RP:
    highlights the need for a dedicated maintainer


PaulB:
    re patchwork, kernel.org are using a newer version of patchwork that =
is
    python3-compatible, is maintained, but missing some things we need
Timo:
    i looked at freedesktop.org=E2=80=99s gitlab, they=E2=80=99ve made a =
lot of changes
    from where we forked from them, they=E2=80=99re also using python3 an=
d django2.
    going with mainline will miss features that we=E2=80=99re used to
PaulB:
    make a list of the gap items, then decide if we can live without thes=
e
    things
Timo:
    i looked at the fd.o=E2=80=99s patchwork and saw that many of the thi=
ngs we
    added to our fork have been added (but differently) in fd.o=E2=80=99s=
. e.g. we
    added a superseded feature, doesn=E2=80=99t seem to be on any other p=
atchworks
PaulB:
    would like to spin up concurrent patchworks to see how the react to t=
he
    mailing list
Timo:
    good idea, maybe we can work together on that
PaulB:
    for patchtest it seems obvious what steps are required, patchwork les=
s
    clear
Timo:
    https://gitlab.freedesktop.org/patchwork-fdo
Timo:
    might be a lot of work to compare ours with fd.o=E2=80=99s patch by p=
atch to
    see
PaulB:
    we need to figure out if we can live with some upstream version, to c=
ut
    down on the effort of having our own fork
RP:
    but it=E2=80=99ll cause a lot of pain if, for example, the superceded=
 feature is
    missing
Timo:
    we=E2=80=99re better off putting resources elsewhere. upstream looks =
hard, but
    i think patchwork-fdo looks like it might work, maybe easier to submi=
t to
    patchwork-fdo rather than upstream?
TrevorW:
    maybe fdo would really like a superceded feature, they split from
    upstream for same reasons as us, they probably share the same frustra=
tions
Timo:
    agreed, we should reach out to them
RP:
    we should get a list first before reaching out
Timo:
    we probably have about 30 patches on top of upstream, although most o=
f
    them of them are probably just to add the supercede feature
PaulB:
    is there anything in bugzilla? 13684 is a django update
PaulB:
    to take action to capture this discussion in bugzilla
Timo:
    Amber working on layerindex, but maybe we can have her work on this t=
oo
    (not a promise), she has a lot of django experience


Timo:
    re perl dependency. there=E2=80=99s an existing oe-package-data util =
script,
    i=E2=80=99m using almost exact same code in a bitbake task, should th=
is be
    refactored to lib/oe?
RP:
    sounds good, but depends on the implementation, in general i=E2=80=99=
m in favour
    of strong APIs in lib/oe. e.g. =E2=80=9Cpackagedata=E2=80=9D is too g=
eneric. the
    history was that packagedata.py was created as a way of pulling code =
out
    of a bbclass
