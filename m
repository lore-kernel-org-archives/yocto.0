Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D3AEDE9AC
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 11:53:18 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web11.10044.1694692393283874584
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 04:53:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=Vk1wI0rW;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2be5e2a3c86so24335971fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 04:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694692391; x=1695297191; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l4P/vUFfYpo3vZn+mxT0FP/PjJUy6+y/8pdEv0ZtUQo=;
        b=Vk1wI0rWijj1CGGlk4DFinYsDvoiVN9hCYJpxebgAcSno4S+VQWlE70jSPVkkM5qyn
         YErNbwsG7ESna3YeoWjLDQTM1HmhaPkgv48Qm9NtnWMbOCQ1OyRLamaxYEXi+fsdaCRi
         RRfHf/qVELpcr2zLzUwqys44iTfQ4e2wr9/3pIz3du815xBEJdluB32e7hMywRSv8jNX
         fhO6xpanzcrViDatasOROJ1DTg9s1G1KhljcxChd8QPF9PiwdG/fyuYDpedXtBNzGHsm
         t2pW5ZRVulDR+9+X9kAurhMEP+Wn+Grk+G1jocV4dHwHv2GJ8/9Kk8FH9x4spMhkeulc
         mnoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694692391; x=1695297191;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l4P/vUFfYpo3vZn+mxT0FP/PjJUy6+y/8pdEv0ZtUQo=;
        b=RqncPUloIkWlhrAYc5v4JgsEZbi27l0vKw7jOpJahsjAilJU1rjLzGLBlV+2y9BnI4
         yyjCsUFdS2H48szevH6+L131sIPjElRj3LZiEnafxS1vYwofVpH+OBT5Jdrz8RDrguYI
         wVSocDU7Y25j85Cm1kzulbMlbbMvJx6VOcz3Dl5Wb0oxYSjSabeGPF4KiCIjnihQ2ju2
         rEaNi6xgSeymGD98U2zHVUGQN3e0HGncDu3fSbcVjySJX/Jc7naEeE3+E0IhYVTvGAUn
         QxEjsdsVQYcYwGiBGK1lhhyhWVgcwKH4y3hSInG8dosc/s/0YvAkUo8xJald1W1WN6Fx
         RKkQ==
X-Gm-Message-State: AOJu0YzOKOT6ImWjze70Zaq4fArLh1UMcE1EHUPF5JGgX5ez5UGvE8Kj
	YENf5F+FH3S6tpKOWaFvjICer+UUINs5R4ZubuE=
X-Google-Smtp-Source: AGHT+IF2ZEl3sZW4LpiXyW4jOJKnxZK1/uFGYXjK5PNq/mQ2Ye2tXu0C98xNQUcP6hixEHnm5OJnbdCze2Dh/GbTZpg=
X-Received: by 2002:a2e:981a:0:b0:2bc:d507:6ee with SMTP id
 a26-20020a2e981a000000b002bcd50706eemr583548ljj.7.1694692390963; Thu, 14 Sep
 2023 04:53:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
In-Reply-To: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 14 Sep 2023 13:52:59 +0200
Message-ID: <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
Subject: Core workflow: sstate for all, bblock/bbunlock, tools for why is
 sstate not being reused?
To: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Julien STEPHAN <jstephan@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 11:53:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60991

On Tue, 12 Sept 2023 at 16:44, Stephen Jolley <sjolley.yp.pm@gmail.com> wro=
te:
> Alexander Kanavin will be working on the core workflow topic

I am now ready to start doing this, but before I do, I'd like to
decompose the subject into manageable tasks with a bit of help from RP
and the community:

https://www.yoctoproject.org/community/yocto-project-engineering-request-fo=
r-quotation/

=3D=3D=3D=3D
Core Workflow =E2=80=93 Process Improvements

Background

The project builds everything from source by default. This means it
has a reputation for being slow and heavy. There are ways the project
can accelerate this which means faster workflows and improved
developer experience but these are currently cumbersome to use.

Rationale

The project aims to defragment customised embedded Linux. This is
important as if we succeed at this, it gives benefits to the wider
ecosystem through making it easier to inject security fixes and an
ability to share and collaborate without re-inventing the wheel.

To do this, we need to provide best-in-class support and compete
against binary distributions for usability and speed. One way we can
do this is provide better support for binary artifacts via our sstate
mechanism. We do already have some of this functionality in our
=E2=80=9Cextensible SDK=E2=80=9D or =E2=80=9CeSDK=E2=80=9D.

Deliverables

Enable a public sstate mirror via a content delivery network (CDN) and
populate using the autobuilder
Ensure CDN sstate is reused under normal use case scenarios,
particularly for slow components like rust-native. Identify any common
sstate mismatch causes. Ensure test cases are added to cover the use
cases and prevent regressions.
Add lock and unlock commands to allow specific components to be locked
down to specific sstate checksums or allow them to vary
Allow switching between eSDK and non-eSDK modes
Add tooling so we can understand why something is rebuilding when it
isn=E2=80=99t expected to.
=3D=3D=3D=3D=3D=3D=3D

So: where to start? Do we need to 'design' something, or maybe time
should go directly into addressing specific sore points? All feedback
welcome.

There's also an unfinished patchset for adding bblock/bbunlock, which
I would prefer to *not* 'take over and finish' but rather see the
author get it merged:
https://patchwork.yoctoproject.org/project/oe-core/list/?series=3D15276

Thanks,
Alex

