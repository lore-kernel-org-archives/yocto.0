Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29647EDEC4A
	for <webhook@archiver.kernel.org>; Wed, 13 Sep 2023 11:52:35 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.9915.1694605954291506991
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Sep 2023 04:52:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=pE2Q1wVr;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: rybczynska@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2bf924f39f1so53125641fa.2;
        Wed, 13 Sep 2023 04:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694605951; x=1695210751; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9v/Axo0NIsu4W4Zj4TV0BcEqFQPqnx8CwdsoWvgbxuE=;
        b=pE2Q1wVreDMOZ5+vHb1hVvm8s68/KuBinHMNGPnqkrPfBE5zDIYVyCx8aQRElBOoFn
         qZeAbq8R5N+zxOObSH9jN92T2XUIZKOP6sH/LVPe5dVrGSdzf5daGmm3kSeOn3Vm7V/a
         0j+FWPUQPJrhfsCYtl7JzHcq7KY+mMvf/ljieEqEB5aFaQXI5FKqESm0CSU5/ddn+32j
         ezaTSAlHS/DC8hYLAI/H3rmZlhHDksxbb5MGzAkWJ0xZ6A4h8RV4m0hc/9D1r6VAlaRK
         T/mwuPMeFjTLLdW7q35QjCo499uwIR/zdbSyUwPPIYiJOpvYWr9Mwl8+6EjqeSD3KeP5
         7sVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694605951; x=1695210751;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9v/Axo0NIsu4W4Zj4TV0BcEqFQPqnx8CwdsoWvgbxuE=;
        b=GIYp7ig0TnCf8wkWQ3txoag9zLg84TIuOMBfsU6hPVNV3duxWYdgBcO4haqfprUmMk
         skfbF7thXCPul8Wxvnk4uslSNQ71K5bcmK2luf+NKoXJuzpwQeVtncqn8gRgD4rwX+NX
         6lFKO+aVOdcKmlupwmA++Pt9yFblRkvCyAQxxzJIc9L0sNpNuBd0lAdUG/qUXO5By0hx
         5+dTJtyZpQuKaOOLokhbSbc2lNfzAMDoxmnSxm37jjAtAHoNVvzD954S7nMlBOhwhl4j
         Vm5RAll8yt0l59tm1pcA0L+UFUXuKc7miB+28+IQ0BtJ/XMMpGaastlDzBkTe45TVm/9
         MSEg==
X-Gm-Message-State: AOJu0YzSCd2+J8tNI2z0temddGuKgGWkmic3uoSdbU2TnsihyIlByiZe
	2F3lLcKfsXx56erpgMaYYpT9vd58d43H5zHE2gxF7KZa7mw=
X-Google-Smtp-Source: AGHT+IFDLgl6PkZ1e+dRro7szKrdsqRTg3fthNE3zPmXPhFHXbRh0ZSOpF+hz+lEg0yEaU3QscD9dJ6AXhxqd6Hukn0=
X-Received: by 2002:a2e:8550:0:b0:2bc:c750:d9be with SMTP id
 u16-20020a2e8550000000b002bcc750d9bemr2117962ljj.29.1694605951215; Wed, 13
 Sep 2023 04:52:31 -0700 (PDT)
MIME-Version: 1.0
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Wed, 13 Sep 2023 13:52:19 +0200
Message-ID: <CAApg2=SqAzD9zCnAGB+mtZoTnMCzcnocarpTSCQ0weH15j8KhQ@mail.gmail.com>
Subject: Security processes: YP needs
To: yocto-security@lists.yoctoproject.org, 
	OE-core <openembedded-core@lists.openembedded.org>, 
	openembedded-architecture@lists.openembedded.org, 
	yocto@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, Steve Sakoman <steve@sakoman.com>, 
	Khem Raj <raj.khem@gmail.com>, mark.hatle@kernel.crashing.org, 
	Ross Burton <ross.burton@arm.com>, Joshua Watt <JPEWhacker@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Sep 2023 11:52:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60983

Hello,
I've been working recently on collecting what works and what doesn't
in YP security processes. The goal is to go forward and define an
actionable strategy!

Today, I'd like to share with you the summary of what I have heard as
needs from several people (those in Cc:).

I want the community to comment and tell us what you find important
and what you'd like to see added or changed from this list.

* CVEs: Visibility if YP is vulnerable or not

People want to be able to check/look up a specific CVE; it might be a
CVE unrelated to YP
(eg. package not included, Windows issue). The cve-checker result is a
part of the solution, but people also want to know which CVEs do not
apply.

* CVEs: synchronization of the work on fixes

Currently, there is no synchronization; multiple parties might be
working on the same fix while nobody is working on another. There
might be duplication of work.
Ross has https://wiki.yoctoproject.org/wiki/CVE_Status

* Triaging of security issues

Related to CVE fixes and includes issues reported directly to the YP.
Some issues are more likely to be serious for embedded products
(attack by network), so not all has the same priority.

* Private security communication

A way to send a notification of a non-public security issue. For
researchers, other projects etc.
The security alias exists, but only some people know about its existence.

* Visibility of the security work of the YP

There is much work on security in the YP, but it lacks visibility.

* Documentation

Related to visibility. We need easy-to-find documentation of subjects
like submitting a CVE fix,
reporting a private issue, and how our processes work... This
documentation should address people who are not regular contributors.

* Additional tooling

We could add additional tooling: a template on how to add cve-check to
the CI (possibly
a different one than the autobuilder), analyze the result, and extend
our tooling to their layers...
It is also related to the "Architecture" topic below.

* Architecture work

Security if more than CVE fixes. We also have what is happening in
meta-security: hardening, compiler option,
secure package configuration, use of code coverage tools, and so on

* SRTool

We might decide to use it again. It allows one to do much but requires
constant commitment.

* Presence on pre-notification lists and receiving information before
the vulnerability gets public

YP currently depends on public data. Principal distributions receive
the information before
a vulnerability becomes public. It requires (in short) private
reporting, a security team, and a track
of excellent security record.

* Becoming a CNA (be able to assign CVEs)

Needed if we want to assign CVEs to the software of the YP, like
autobuilder, Toaster etc.

Kind regards,
Marta

