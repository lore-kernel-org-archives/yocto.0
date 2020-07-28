Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1002.1595976116870413516
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jul 2020 15:41:56 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=kYtvNod6;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 652D2E01F38; Tue, 28 Jul 2020 15:41:56 -0700 (PDT)
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
	*      [209.85.166.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD1F7E01EF2
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2020 15:41:53 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id z6so22565423iow.6
        for <yocto@yoctoproject.org>; Tue, 28 Jul 2020 15:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=Ch5QEW6t/mkG47IVxZlGMZaa0yve9FqY3y/rRuJKiGs=;
        b=kYtvNod67FzdIf4rmga2z/azCpde41MDz4hM2sQT2OBhNfE4RWbp7x6zAX6LeF4LFc
         pr5sdhOYwiGP0uk5Mic14SC1YqhtVZ14PCjBRU+8ZJJhMhkB4vJdYcpLmdoesq03Wavk
         4fxtRgNcOesT/zGreHsWEsBg7O12TPDV3BxTOqTo/0YZDfRoAF9bdlOMqQg6MR46+RHm
         TNpe4Zkw1/8a4D5qL9tCQ4spmw4TAu76LeoOq7pFLfSuL1a7bUYvV+TWuX3vvSZquBGM
         wLL3Bd1k+itbxs4HrRu5mdgjNwYNE+f7EPMRLiU2gfmc5V7kntlJKWVDzxK/8GvYTRzG
         RUWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=Ch5QEW6t/mkG47IVxZlGMZaa0yve9FqY3y/rRuJKiGs=;
        b=oNBHikiF3LP74nLySK7bDxDuBLMk3qlYZq4ftn29fibJtTsvowavtLst0n3VTcc2kC
         bHcXESPuibFM6ZEHbMYlcZXuqrURrwr/wNBXTsH6RD55tpO9OB0ZTz86XSHHdIz0bATr
         LV2+Z64WufBDIMlA5jbZb9iEwYmvPRinDHcEdPrlxEI21WKOOq3nVnnWPp+r4LyDzxSe
         1fZqa4RE07qaTGFRwqCvpXlnqZ2CdElAhryJogfwMVK1b4FBc8tzdAjGPCaW8AEXU3St
         wwI+XIVtdfJmIg6rjkU67kr5lrjM1lPszWo72NIssbTA4O4jhLvOSKnkY8PjR70fYb0I
         Vx8g==
X-Gm-Message-State: AOAM532JX/MwTSxL0Z6rSx1aqN/WfPKaynWmrnPSjSA2fqEiB7DROyi2
	H6M7GsCJejO7JxvHcOuavQyN5oBNTrQ=
X-Google-Smtp-Source: ABdhPJwQ+zHPMQVY8HTINZ/KNHm3xegsuCEob6gY0MBpRNOhGQEdHzfFhan6BsqJ3b98kD56oYw2xg==
X-Received: by 2002:a05:6638:27a:: with SMTP id x26mr4796727jaq.43.1595976112359;
        Tue, 28 Jul 2020 15:41:52 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id w15sm103809ila.65.2020.07.28.15.41.51
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Jul 2020 15:41:51 -0700 (PDT)
Date: Tue, 28 Jul 2020 18:41:49 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for July 28 2020
Message-ID: <20200728224149.GA22506@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yocto Technical Team Minutes, Engineering Sync, for July 28 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7=
QwKC5wWVDg9dDH4/edit

=3D=3D disclaimer =3D=3D
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please fee=
l
free to reply to this email with any corrections.

=3D=3D attendees =3D=3D
Trevor Woerner, Stephen Jolly, Armin Kuster, Josef Holzmayr, Richard
Purdie, Trevor Gamblin, Joshua Watt, Mark Morton, Ross Burton, Bruce
Ashfield, Steve Sakoman, (phone-in ??), Jon Mason, Randy MacLeod, Scott
Murray, Denys Dmytriyenko

=3D=3D notes =3D=3D
- fixed a race on AB wrt perl
- 3.1.2 into QA
- 3.2-m2 to QA once they=E2=80=99re done with 3.1.2

=3D=3D general =3D=3D
RP: load of perl issues over the weekend, believe to have found issue
RP: lots of qemumips issues, not sure why, perhaps a timeouts issue? (no =
ping
    within 30 seconds)
RP: some infrastructure issues (one worker has become corrupted)

RP: curious to know what people think about 3.1.2: there is a bitbake iss=
ue
    with toaster, should we release then fix or wait for fix before relea=
se?
SS: maybe we should get feedback from people using toaster
RP: the fix is simple, maybe release 3.1.2 (with release note) then fix

RP: merged re-arrangement of package manager code, this puts more of our =
code
    into python libraries instead of bbclass files, which is the directio=
n i
    want to take going forward
RP: i need to start a conversation on oe-architecture for future directio=
ns
RP: e.g. binary package feeds, we want to capture these use-cases into th=
e
    wiki

[NB: done! see https://wiki.yoctoproject.org/wiki/Future_Directions]

RP: we also posted the current agreement on =E2=80=9Cinclusive language=E2=
=80=9D as agreed
    on by various groups (oe board, oe-tsc, yp-tsc)

TW: what=E2=80=99s the thinking behind moving code to libraries vs bbclas=
s?
RP: pro: parsing speed con: variable dependency tracking is lost
RP: lots of python code gets written to logs etc, which slows it down
JPEW: does bitbake automatically detect variable dependencies in library =
code?
RP: no. maybe we just need to do the scan once?
TW: do we lose flexibility? (e.g. it=E2=80=99s easy to copy+paste+modify =
a bbclass,
    will that be possible?)
RP: there will still be all the same entry points, so it should be possib=
le
RP: i=E2=80=99m worried about the size of the datastore in memory and it =
is a
    bottleneck

RP: i wonder why qemumips is so slow?
Randy: i think Cisco are the only ones caring about mips
RP: yes, and Comcast too i think

MM: have been wrapped up in $WORK stuff, but will be working on docs
    conversion soon
RP: MH has been putting infrastructure in place and Nico is looking forwa=
rd to
    getting this going
MM: do we want to try to reproduce our current colours/formatting or try
    something new
RP: i like what we have, the project does have an existing scheme, but we=
 can
    change if something else makes sense

TW: i do lots of builds, never seen issues, why are there so many failure=
s on
    AB?
RP: do you do oe-selftest or testsdk builds?
TW: no
RP: do you do mips builds?
TW: no
RP: so these are the areas where we see these failures, =E2=80=9Cregular=E2=
=80=9D builds
    are okay
SS: i don=E2=80=99t see issues on my builds but that=E2=80=99s probably b=
ecause of working
    these issues out on the AB
RP: infrastructure issues are low, it=E2=80=99s mostly race issues that c=
ome out of
    the extreme load of the AB or intermittent architecture issues that a=
re
    rarely tested
