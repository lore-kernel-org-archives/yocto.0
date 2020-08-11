Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1940.1597181142811320521
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Aug 2020 14:25:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=hevh1kQF;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5760FE01FED; Tue, 11 Aug 2020 14:25:42 -0700 (PDT)
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
	*      [209.85.222.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E7B1E01FA2
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2020 14:25:41 -0700 (PDT)
Received: by mail-qk1-f172.google.com with SMTP id 2so229725qkf.10
        for <yocto@yoctoproject.org>; Tue, 11 Aug 2020 14:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=oE0ctw4Ygdn4CJdZcsm9XffeYUPp7toG+/KEPCCQsR4=;
        b=hevh1kQF22vU5TiiftXJDGyRLXlyqZGz9Y6b4iVDZAFGQDPCNSwbynn2xpgVdRz40v
         f/FNZQRplppNXVf/AQSQeTuWmED8zT4cTjD53s+lzXmVj9EGfTQQqOUbOSC7UEs8uo7A
         mfEMUqqnheULBaBgmRt2mkBbAbmNAYXFF0TXe9zqRNk+n+zWmBvKD4KDS1pesmkqpkRd
         wtAgiRusDaSVSRwV0/3pi3+H6gwMvYkgGueEqIIjQSRwo3DFknMaf3H1QZE55MK1kY2/
         QlWrT+fXJw4LLFb1N0A2gzTLaBTeRTZHy+ymWVzNmLWJMnDLkKVNsCuhdmp8v4dbfDrr
         Bhgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=oE0ctw4Ygdn4CJdZcsm9XffeYUPp7toG+/KEPCCQsR4=;
        b=k9yV8Eua6YyxZJoZ2luEVTrkJcabC4xDvn5h5H7aXBow1H+BK5jCO8TBIGccHOjAk+
         LbisJZR1kFyzyoaC6i1D/5A5WOH+8+qneT1nBn4PLVOK79igdCoyJv/pJt/Li6cP0juA
         gkpoDfqWfmXCY0GhH/wk7AHWQQLhMHHUewIyomjgt+mF4kM8dxobtStMBllD34Y6IPZe
         veqLtYT7zNLQKeACl9aQTlkoul0fBEZpExvT7j93xOyXfojQ96wFzEzmlFG7BNFXCTQY
         QfvDbo1j8TniRU+LPm1DEGsk1CmGkR8VgXmxaLCUnZzmAWtiyeNe6R6xEH26UtgGmk8s
         vmfg==
X-Gm-Message-State: AOAM530rs2GOHokGIUiG49O7uiQSJDJl3xzm16XLpK7YLLFn0MJnKhJC
	E0Unvt9GRi8b3rFPSevKrUW0yhHvEMk=
X-Google-Smtp-Source: ABdhPJzdlwm0cHV6/9sR7IwPOwTer1ahZzFksrzCVBmiPy5n5MuSyYho4CoZN5nYjeKa4qBheX/hIw==
X-Received: by 2002:ae9:e857:: with SMTP id a84mr3308197qkg.100.1597181139949;
        Tue, 11 Aug 2020 14:25:39 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id x137sm114042qkb.47.2020.08.11.14.25.38
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Aug 2020 14:25:39 -0700 (PDT)
Date: Tue, 11 Aug 2020 17:25:36 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for August 11 2020
Message-ID: <20200811212536.GA29700@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yocto Technical Team Minutes, Engineering Sync, for August 11 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7=
QwKC5wWVDg9dDH4/edit

=3D=3D disclaimer =3D=3D
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please fee=
l
free to reply to this email with any corrections.

=3D=3D attendees =3D=3D
Trevor Woerner, Stephen Jolley, Armin Kuster, Bruce Ashfield, Jan-Simon
M=C3=B6ller, Tim Orling, Jeremey Puhlmann, Paul Barker, Mark Morton, Alej=
andro
H, Randy MacLeod, Michael Halstead, Richard Purdie, Trevor Gamblin,
(callin), Ross Burton, Peter Kjellerstedt, Steve Sakoman

=3D=3D notes =3D=3D
- 3.2-M2 out of QA, in final release process, looks good
- now in 3.2-M3, last milestone for features
- 3.2-M4, in september, only for bug fixes
- 3.0.4 (last Zeus) should be built and out this week (if all goes well),
  this is the =E2=80=9Cstutter step=E2=80=9D, then we go to 6 months
- some more AB failures added to the list
- some 3.2 bugs that don=E2=80=99t have owners

=3D=3D general =3D=3D
RP: some =E2=80=9Cold=E2=80=9D AB failures have reappeared, perhaps a loc=
k file issue in
    bitbake
RP: there is a package data one that might be debuggable and reproducible

RP: relatively quiet week, a couple bitbake patches (<something?>, colour=
izing
    output)

MarkM: what=E2=80=99s the next step for sphinx?
RP: a list was made of the areas to work on (from Nico), we just need peo=
ple
    to sign up
RP: the one I=E2=80=99m going to look at is how to get the versioning to =
work on the
    website

PaulB: meta-kernel layer, seems to be some issues with naming
Ross: we have been using meta-kernel, i can see an argument to rename to
    meta-mainline-kernel, perhaps, since meta-kernel is a bit generic
RP: my concern is that meta-kernel doesn=E2=80=99t convey what it does
PaulB: my intention was to make it a common place for common kernels (e.g=
.
    Linaro kernel can be used on a bunch of ARM boards). also my hope was=
 to
    support back to kernels that aren=E2=80=99t =E2=80=9Ccurrent=E2=80=9D=
 (e.g. 4.4). so it=E2=80=99s
    not just a =E2=80=9Cmainline=E2=80=9D layer
RP: i believe there=E2=80=99s a way to get the mainline kernel with linux=
-yocto
PaulB: i need to be able to flick customers between, e.g. a 4.4 and a mai=
nline
    quickly
TrevorW: the magic to get mainline with linux-yocto is to set
    PREFERRED_PROVIDER to linux-yocto-dev
RP: it=E2=80=99s a tricky situation, Bruce does a lot of work, sometimes =
work that
    doesn=E2=80=99t show up on the mailing list, I think collaborating wi=
th him
    would be a good approach. linux-yocto was created to reduce fragmenta=
tion.
    sometimes understanding linux-yocto can be tricky.
PaulB: maybe just carrying any differences that we need relative to
    linux-yocto might be better. some of my customers just want a raw mai=
nline
    (with no other patches) since they also support e.g. Debian
Timo: one of the things i do over and over is explaining linux-yocto to p=
eople
    and how to use it
TrevorW: it was my intent to explain scc files and kernel patches with th=
e
    last talk i gave at devday, if there are suggestions please let me kn=
ow.
    hopefully those videos get published
Armin: one can use kernel branch overrides to use the v5.4/base (of
    linux-yocto.git)
RP: maybe we need more docs or information
PaulB: meta-kernel was meant to be lightweight, it doesn=E2=80=99t get as=
 much
    testing as linux-yocto, it wasn=E2=80=99t meant to step on anyone=E2=80=
=99s toes
Timo: maybe this is an opportunity to take a look at the kernel developme=
nt
    manual and make sure it is up to date
RP: maybe we could put a barebones kernel mainline recipe for the version=
s
    that are in each release (i=E2=80=99m not saying that=E2=80=99s a goo=
d idea, i=E2=80=99m
    just throwing out ideas), or maybe add more testing on AB for the
    variations of kernels that area already in each release (e.g. the -rt
    kernel)
PaulB: this all sounds good
TrevorW: a suggestion: rename recipes-kernel/linux to
    recipes-kernel/linux-yocto and then create a recipes-kernel/linux-mai=
nline
    for PaulB=E2=80=99s work?
RP: that would only make sense under the assumption that this would be me=
rged
    in oe-core
PaulB: we=E2=80=99re a ways off from that conversation, if ever
PaulB: i don=E2=80=99t think this is something that=E2=80=99s going to ge=
t resolved for
    M3, but maybe sometime after
