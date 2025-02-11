Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1858DC0219E
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 18:42:37 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web10.920.1739299353202251543
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2025 10:42:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WDqAN/jB;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6ddcff5a823so39381986d6.0;
        Tue, 11 Feb 2025 10:42:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739299352; x=1739904152; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lvfciSMH16E2qxLXJvnDRk4w3hrtZMJjcNmeEsDxM5A=;
        b=WDqAN/jBKD0CnqRuEhtJsMjClxXEFeE/Aq/Vjt6L3LVlzpX8zWsUKwEDQa+IgXJPez
         r+iWoXh7nJYgxDCV7bpT9lh0N57Fz40J7QeQ2+0l4dURJ7yuXf/c8F5auTgRfTSNbUsB
         TN8Gwal72kDud+oYqP7KzFS+BjU8xP7DtK3BoD0PGk6feHs8ppr2dGnJAUMJrC0TC+oj
         MfrjB1s4SC8fwDkV9yXZwKqv+/HqDx5HEaiE9xwnHXzol5ovYBPpyhtxGw+/VxqLHY2/
         yADmiqEB4ohVR2nlfHwxK5IFamPz1SRy0dzm9L4YYjSxhldYtONdH6SJuEVLPs0NOfAQ
         oDgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739299352; x=1739904152;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lvfciSMH16E2qxLXJvnDRk4w3hrtZMJjcNmeEsDxM5A=;
        b=a9colaNMW4UAhygCdrHqRFQJh1K0PVHePBeXEJQL5OuHqDzDTa+8UvhQkgIX7NGMyK
         iJjZDkDJTnXHv2uRk7XVYtUYR9vW6ibO23N5dvYkmgob5UJ5odNUCPatJOhB0zjj6VrH
         FNH4GS23oai5v//2EdNO2TUeMFauNRACAm4Tmwdd4yOf4fcI7DB7y6rikgpKpLmHBOT9
         IcYZBVQOU3ePgEdayyVI+2M6XCq6rOvGH7xRGJpuI4PN5S05P2AXwmQIbeDsq8yCyfBs
         fj5b7eT/1AzGesCy2EEU02h2H/10m9CITFl7ihgprF4+pd36Hn0WQa5tAKhEzUy6+msK
         iWhQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfvA9My8IOIqpLXdp1jE1fPVG5uRslgb8fj2lRATKAe0en3DV94pUBI7X8bnKpMsfGGsz82eWA9tRsyl0=@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yye+3dTPt/aWPfDzQXgvQIH9yy9MZHhRT2Ral6nVkDRecmhBf4K
	Bg9Fb7Kb9PUmzF0+P/wiXPY1zXH6MwOBQM+1ZL4Z+6TVoVyO022qTelOBSCEIygSYoN3elADg01
	lCR8cKK2tTej+j9c/x4rwbuErruM81w==
X-Gm-Gg: ASbGncu9hJg10SdUSWWh3TfrTCMJ/I4y3SmgQqzzl/FOwHIjoSl2SytDMFmvFn88JbN
	N3Y2yLC4KseJlkwiFDsE6wgRjBVpCey8LvUel5pHSSm1QmdrHTDOOH/vbv6qtSTfYE6jHHYBDS3
	+HCygreigcCoRWLZlUyuXDOIAE9hW8Kdg=
X-Google-Smtp-Source: AGHT+IGU0tvDgrim2fNnpgLGjl92AfSV22V1q9hInNSuqjmYvNTEtlLC7UQiAE7a9kRYbhiz/YYyS3C0zGoZSgzRg7Y=
X-Received: by 2002:a05:6214:5016:b0:6d8:8cb0:b40d with SMTP id
 6a1803df08f44-6e46ede4467mr6329456d6.39.1739299352187; Tue, 11 Feb 2025
 10:42:32 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb9Fr9MFy5uub2_pTRWmVbt96OWBJ5ty+eAB9Qn+LYa_Wg@mail.gmail.com>
In-Reply-To: <CAK5yBb9Fr9MFy5uub2_pTRWmVbt96OWBJ5ty+eAB9Qn+LYa_Wg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 11 Feb 2025 19:42:20 +0100
X-Gm-Features: AWEUYZl3ITgRLWG6uLIKKHwpXswMJBtjk07tdhRsE2l5CcZkgtuaAXbzlzsy-YQ
Message-ID: <CANNYZj-PbWQDa5hAc5X6sqHVMvJ0QE01XXwytya8rprwvSsqag@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 11 Feb. 2025 (WW07)
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: ",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	yocto-status@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 18:42:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64771

On Tue, 11 Feb 2025 at 16:57, Stephen Jolley via
lists.openembedded.org
<sjolley.yp.pm=3Dgmail.com@lists.openembedded.org> wrote:
> We=E2=80=99d like to request help to process the open github pull request=
s for openembedded-core and bitbake:
>
> https://github.com/openembedded/openembedded-core/pulls
>
> https://github.com/openembedded/bitbake/pulls
>
> Having these open doesn=E2=80=99t look good for the projects and we can=
=E2=80=99t disable them, some have been open for a long time. We did alread=
y clean up the poky pull requests.

I'm sorry but I have to say a couple of unpleasant things. Here goes.

The only processing I would be willing to do is mass-closing these
pull requests with a polite note to submit them according to the
official process. Otherwise this tacitly admits github as a valid way
to contribute, and we're not ready for that, and possible will never
be.

While we're at it, how were these repositories created in the first
place, and what was the plan for the pull requests they would attract?
Should we delete these repositories now?

Alex

