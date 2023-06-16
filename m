Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9798FEB64D8
	for <webhook@archiver.kernel.org>; Fri, 16 Jun 2023 16:30:29 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.3282.1686933023577005634
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Jun 2023 09:30:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=CttMLFFs;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-4f6195d2b3fso1239119e87.1
        for <yocto@lists.yoctoproject.org>; Fri, 16 Jun 2023 09:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1686933022; x=1689525022;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B9D3gwuHwEg2/XkzhuGXgeQZb4dj3qmJxOLyYhETjOM=;
        b=CttMLFFs54vOYyRVHArgGo9l2kVtuzrbwNvUcmxrd6jNARRyCLhUFoR6soHjaP51/F
         l87qMxWD/QvKJEoJIMISdpmYUTPVBe2N2Tpj2KhWohp3fSIM3LNpblHB9NvWjmdolBLj
         RBvxcxlR/LQEIS0DuV88LczZ1h3uNg86rqxdw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686933022; x=1689525022;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B9D3gwuHwEg2/XkzhuGXgeQZb4dj3qmJxOLyYhETjOM=;
        b=a2t8hgLpN3Za5lfJRcCxtxb0NkjLv8/oEWwXThBKfPoBq7mp1PHHQHUxEvQwnwje8S
         M5M7DYYhHl+VHh/pXgUo9Amo42Vn7WOr9dQE6gJ5FZ2o8cAIO4QRKYc9GcHivgszfYZn
         OCfoFYC9YFQ4c8hIGxaXZ+blCgz6YI8aveJ6SPAAPRALLh+6eKG390NuKtyJzOdosh2G
         XQxS748F7WHhqnxQ+W7Tqnq/knZF9N1fh2lccgSkHpnNvenyQRv7eLwztRvJAKKkW85c
         1peKkQWDDVmbFsx8xs5rCN8Tf8CR564Fl4Rjd5U9ofCUhL0CMov8VxEIY5v5DtrGMWAc
         j3cw==
X-Gm-Message-State: AC+VfDxzxP9oTwBeOUUPlWQ64ojQ8fIQi/uZGj+Qxs4GNkuFjsuqGuFG
	ShcjFMHy1LOrIKhwvK2Z9PgskQ==
X-Google-Smtp-Source: ACHHUZ7UH2A+sqDnh/CrJgk0upTHypNY1RpJeEsW4T9JRkedUCfoGvjGqScqoA2LvEPGyqfGdNKvWw==
X-Received: by 2002:a19:5f59:0:b0:4f3:afcc:e1c8 with SMTP id a25-20020a195f59000000b004f3afcce1c8mr1740674lfj.33.1686933021738;
        Fri, 16 Jun 2023 09:30:21 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:b814:609:2b03:c353? ([2001:8b0:aba:5f3c:b814:609:2b03:c353])
        by smtp.gmail.com with ESMTPSA id c16-20020a7bc010000000b003f7f60203ffsm2648840wmb.25.2023.06.16.09.30.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jun 2023 09:30:21 -0700 (PDT)
Message-ID: <8cb782ce103c73e52440793ccc66459627ef44e0.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH 0/3] fix test results
 storage for mickledore
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexis =?ISO-8859-1?Q?Lothor=E9?= <alexis.lothore@bootlin.com>, 
 yocto@lists.yoctoproject.org, Michael Halstead
 <mhalstead@linuxfoundation.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Alexandre Belloni
	 <alexandre.belloni@bootlin.com>
Date: Fri, 16 Jun 2023 17:30:20 +0100
In-Reply-To: <f201c8c3-83bd-c716-b085-1f1cb2315fe8@bootlin.com>
References: <20230614085614.27951-1-alexis.lothore@bootlin.com>
	 <dc91f7ad96c8bfdc64aafca6e412f827790def6a.camel@linuxfoundation.org>
	 <6b8c3e9e-45b7-fcd2-5905-b8c136feacbd@bootlin.com>
	 <f201c8c3-83bd-c716-b085-1f1cb2315fe8@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Jun 2023 16:30:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60328

On Fri, 2023-06-16 at 16:58 +0200, Alexis Lothor=C3=A9 wrote:
> On 6/15/23 22:34, Alexis Lothor=C3=A9 wrote:
> > Hello Richard, Michael,
> > On 6/15/23 15:41, Richard Purdie wrote:
> > > On Wed, 2023-06-14 at 10:56 +0200, Alexis Lothor=C3=A9 via lists.yoct=
oproject.org wrote:
> > > > From: Alexis Lothor=C3=A9 <alexis.lothore@bootlin.com>
> > > >=20
> > > > There must be a more robust rework to do (because the issue will li=
kely
> > > > happen on each major delivery), but I aimed for the quick and small=
 fix to
> > > > quickly bring back tests results storage without breaking other thi=
ngs in
> > > > the process
> > >=20
> > > Thanks, I've merged this as it is a good first set of steps.
> > >=20
> > > As I mentioned, I think we should hardcode poky + "not ending with -
> > > next" as the test, then we shouldn't run into this issue again.
> >=20
> > ACK, will do the fix
> > >=20
> > > I'd also like to retroactively push the test results for 4.2 since we
> > > have them and should be able to merge them onto the branch. I'd then
> > > like to see what the revised 4.3 M1 report looks like.
> >=20
> > I have started importing the archive kindly prepared by Michael in poky=
-contrib
> > test-results repository, but I am struggling a bit regarding regression=
 report
> > generation with freshly imported result. I still have to confirm if it =
is the
> > generated tag that is faulty or if it is a kind of an edge case in resu=
lttool
>=20
> So, I have managed to generate the regression report locally (there's lik=
ely a
> tag issue for older tests stored in test-results to be circumvented in
> resulttool), and it is a bit disappointing. The report is 13MB large, and=
 is
> filled once again with false positive likely due to non static ptest name=
s,
> likely due to leaky build logs. Here's a sample
>=20
> ptestresult.gcc-g++-user.c-c++-common/Wbidi-chars-ranges.c  -std=3Dgnu++1=
4
> expected multiline pattern lines 13-17 was found: "\s*/\*<U\+202E> \}
> <U\+2066>if \(isAdmin\)<U\+2069> <U\+2066> begin admins only \*/[^\n\r]*\=
n
> ~~~~~~~~                                ~~~~~~~~                    \^\n
> \|                                       \|
> \|[^\n\r]*\n       \|                                       \|
>         end of bidirectional context[^\n\r]*\n       U\+202E \(RIGHT-TO-L=
EFT
> OVERRIDE\)         U\+2066 \(LEFT-TO-RIGHT ISOLATE\)[^\n\r]*\n": PASS -> =
None
>     ptestresult.gcc-g++-user.c-c++-common/Wbidi-chars-ranges.c  -std=3Dgn=
u++14
> expected multiline pattern lines 26-31 was found: "     /\* end admins on=
ly
> <U\+202E> \{ <U\+2066>\*/[^\n\r]*\n                        ~~~~~~~~   ~~~=
~~~~~
> \^\n                        \|          \|        \|[^\n\r]*\n
>      \|          \|        end of bidirectional context[^\n\r]*\n
>         \|          U\+2066 \(LEFT-TO-RIGHT ISOLATE\)[^\n\r]*\n
>       U\+202E \(RIGHT-TO-LEFT OVERRIDE\)[^\n\r]*\n": PASS -> None
>=20
> Most of this noise is about gcc ptests, there is also a bit about python3=
 and
> ltp. I manually trimmed gcc false positive to reach a reasonable size, he=
re it is:
> https://pastebin.com/rYZ3qYMK

Thanks for getting us the diff!

Going through the details there, most of it is "expected" due to
changes in version of the components. I did wonder if we could somehow
show that version change?

I'm starting to wonder if we should:

a) file two bugs for cleaning up the python3 and gcc test results
b) summarise the python3 and gcc test results in the processing rather
than printing in full if the differences exceed some threshold (40
changes?)

Basically we need to make this report useful somehow, even if we have
to exclude some data for now until we can better process it.

I'm open to other ideas...

Cheers,

Richard


