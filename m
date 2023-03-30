Return-Path: <celledge@siteworx.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37A7EC6FD1D
	for <webhook@archiver.kernel.org>; Thu, 30 Mar 2023 22:10:54 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web10.40416.1680214247800690088
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Mar 2023 15:10:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@siteworx.io header.s=google header.b=g9VzdsUX;
 spf=pass (domain: siteworx.io, ip: 209.85.208.42, mailfrom: celledge@siteworx.io)
Received: by mail-ed1-f42.google.com with SMTP id cn12so82394322edb.4
        for <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 15:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=siteworx.io; s=google; t=1680214245; x=1682806245;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6KLfmrGf4KTl4UtSdfnKKT4ny8ePbaGWVt/U3DVAIec=;
        b=g9VzdsUXq1pOpU2hJK4kj80LVmj7j0cdkba/Quc6Q8m09UCSOPe9jc6JziROEddyaN
         tiA9szEElF/PjcbDnejDSVFbOEpKkhnyc/7ONQ+xDk1FTTaxDRufWJkJrzuPgr5S/CEV
         3JAi/3KOUJ8KRAzPporPSD5ujStzjU81ae2giiCp2Nhbkb6KADoIE6/iOKQDQjaQMTcf
         94QiS4rl2sXV6MMxNMjqv0k3tq/ZiFynP6mjCVJPBAL0jfu6wN/LlVMt8p1dHqmxggYi
         MhlXbVzegkQZTU7Lixd+frsMr7u/inRi09K4T3Lm0sdyOsiBFxabQXVVHYGizy33L3Pr
         vGZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680214245; x=1682806245;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6KLfmrGf4KTl4UtSdfnKKT4ny8ePbaGWVt/U3DVAIec=;
        b=Ktmd1Auhxn3Rrrulaik9MUe9LF4gGlvD/lfSX3pTfNZveqdZWIII9LUDfPLq8RDNpu
         4smEh5nK00NvSHop+XvPri1MaittOsWR4WvcyEHddMe40KNGy4fLxuyuFQCRk9gSf5GC
         Uwwj+j1h1IUcz454Jle04t+SDiW6d5PvHA6urKPEg0Pj2FAxOmZnlsjfxUb1up3TGyZs
         K4Q5na9CkfLfYz8fy36KHCS9quCJpyKPSOCXb7kCSyiQMqKLflCgzRRZPFQ6pgMXYBEH
         Emvw1KlUMdFbfmg8YlusU/T/vwWTOQURibi+mEunEV/73NTbdEWdpOvzEBtsOHCV6Vu2
         PfvA==
X-Gm-Message-State: AAQBX9czEcxNZxwwqE3Mpkn3lhIQOn85t9UUV4rMyUbSA+HcCGK0B1af
	+aQZmwJwgE8zABYF+rlBSZc8Xp8hCePCBIlzocn7eNMNfJGW4DC/4MRmJg==
X-Google-Smtp-Source: AKy350ZrjWUb0MS5xjzGVYWkWrjThnvvaFO64dcQm9pl+Q/0/dpiyaRDy7jN03zkpkjzZipY89zOm6B2HFFW/x4WB3M=
X-Received: by 2002:a17:906:2416:b0:932:4d97:a370 with SMTP id
 z22-20020a170906241600b009324d97a370mr12124268eja.14.1680214245560; Thu, 30
 Mar 2023 15:10:45 -0700 (PDT)
MIME-Version: 1.0
References: <175151A6DCB6A43F.12651@lists.yoctoproject.org>
In-Reply-To: <175151A6DCB6A43F.12651@lists.yoctoproject.org>
From: Chris Elledge <celledge@siteworx.io>
Date: Thu, 30 Mar 2023 18:10:34 -0400
Message-ID: <CAHkgX0t0mdTAtRtANVNzo+0MKhUZUp5F+rMFyW4s2RS6SQfRvg@mail.gmail.com>
Subject: Re: [yocto] connman + busybox-hwclock startup failure
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000040e68705f8255d15"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 22:10:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59556

--00000000000040e68705f8255d15
Content-Type: text/plain; charset="UTF-8"

I accidentally omitted the final "." in my examples.

INITSCRIPT_PARAMS:${PN}-hwclock = "start 04 2 3 4 5 . stop 20 0 1 6 ."
or
INITSCRIPT_PARAMS:${PN}-hwclock = "start 40 S . stop 20 0 1 6 ."

-Chris

--00000000000040e68705f8255d15
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accidentally omitted=C2=A0the final &quot;.&quot; in my =
examples.<div><br></div><div><div>INITSCRIPT_PARAMS:${PN}-hwclock =3D &quot=
;start 04 2 3 4 5 . stop 20 0 1 6 .&quot;</div><div>or</div><div><div>INITS=
CRIPT_PARAMS:${PN}-hwclock =3D &quot;start 40 S . stop 20 0 1 6 .&quot;</di=
v></div></div><font color=3D"#888888"><div><br></div><div>-Chris</div></fon=
t></div>

--00000000000040e68705f8255d15--

