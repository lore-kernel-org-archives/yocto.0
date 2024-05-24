Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49DADC25B74
	for <webhook@archiver.kernel.org>; Fri, 24 May 2024 10:37:40 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.11488.1716541213539923739
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 May 2024 02:00:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JzHnr4KP;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2b9702e05easo3734055a91.1
        for <yocto@lists.yoctoproject.org>; Fri, 24 May 2024 02:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716541213; x=1717146013; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fyq6NjoGHTNgvDCtWG67WQ+VVPRnxqYsHRthHfcA7Zk=;
        b=JzHnr4KPQaYGIQdnD7g+oi6Ifa0XhUNtKU4cnIYEsjdcM/aMTf+ggk6wm6itdb6JQ9
         vtVUzqS3QUG7g4ceSrx2yPnMq1Ox/eCjAL9S+dZEgRrEtl4X2yDhvVSes5Lqn/0SgRsH
         cVZOLoKnJIJBbi4IzJH8vUW5Wzd8RpxHJ90xuvvCoMBhP1r97gF2R3rMKzfIqcrh75RO
         G2hYtb7wbqgpFDYI+eq0Kv9kI3ilf3DUHmQZdk0JyLrO45J7SjV3NGoo1L8KaJugeWe2
         eBQsOH/G2f7ybN/AaESDMlLfRtcW7+NORvtY+XgGnWg0uXsbI3d3VwMGcdMhWoIcUKiI
         LKSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716541213; x=1717146013;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fyq6NjoGHTNgvDCtWG67WQ+VVPRnxqYsHRthHfcA7Zk=;
        b=tUZNKoiRuxpN2NFfp2me70CkgKF5x/U+Zh1Sbbs7JoohqyIFMWstq6lwlxcU+WOj8Z
         /2AsTUy2X+YdLBlayWlNIeX0NQ53MIJr3XoGbgnPitD0slj/+BBmvFPK9qOsUgdI81zZ
         sxtDrdSQA0IoUwN3QpkwVb1PU0aQM/wJ21pD2GdylHMUqaDVFfTAuaRpDEfYk+fa0LgG
         Vk0bdTJqaUyZowDTSGxfS/HZwJnulEkIUGEh9bnA60jStb9q46a3N1SU/7Bzt0OpUwSH
         SWe2Df+ksfacvhRa4yvGy9MBdoeBmFnEGNLGVCnuGlhcTmcCOC3DlfB+ektYl5m4wJa4
         RHBQ==
X-Gm-Message-State: AOJu0YwmmsWjBduXXajVwaN9cJWGshIsX/ft5nOLeifrAc+l5wlntn/N
	dFeytH5fvYqEKRWAdKtTCRV8zQfMZLAUI2j1JnMLtCLqpzmbcs/sH4ZENiekbfIwAmyOox5q/97
	sOEzsrPEve2KzbV0Jm/G6kyTF9t7gV0bA
X-Google-Smtp-Source: AGHT+IFowjk7joPbSDUbbTXEfr0hAZ3saXUnFTz2/Aru+7QE4gDrwdWvu38VCx0eoyUmTU2bg5ZvRkEWsqNquIWq03Q=
X-Received: by 2002:a17:90a:68ca:b0:2bf:5bbe:b044 with SMTP id
 98e67ed59e1d1-2bf5f20321emr1404447a91.28.1716541211452; Fri, 24 May 2024
 02:00:11 -0700 (PDT)
MIME-Version: 1.0
References: <EB772314-DE2E-4782-8D5C-87699453EAF0@gmail.com>
In-Reply-To: <EB772314-DE2E-4782-8D5C-87699453EAF0@gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 24 May 2024 11:00:00 +0200
Message-ID: <CAGAf8LwAfEGUHtEWOpATj1Tt3u6W=QEuQFBBGztCmDyr0yq1Pg@mail.gmail.com>
Subject: Re: [yocto] [Openembedded-architecture] proposal: controlled deprecation process for oe-core
To: yocto@lists.yoctoproject.org, persaur@gmail.com
Cc: richard.purdie@linuxfoundation.org, 
	Alexander Kanavin <alex.kanavin@gmail.com>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	OE-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 May 2024 10:37:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63191

If you allow me...

The lack of scalability was always the biggest problem of YOCTO.

It brings a humongous rootfs, while BuildRoot is (almost) perfectly
scalable. It can scale down almost 20x.

Latest Example for YOCTO:
-rw-r--r--. 2 vuser vboxusers 101327860 May 23 17:24
core-image-minimal-beaglebone.rootfs-20240523141721.cpio.xz

It is very good that somebody brought this issue to the Daylight.

My two cent worth thinking,
Zee
_______

On Thu, May 23, 2024 at 10:20=E2=80=AFPM Rich Persaud via
lists.yoctoproject.org <persaur=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> On May 23, 2024, at 05:26, Richard Purdie via lists.openembedded.org <ric=
hard.purdie=3Dlinuxfoundation.org@lists.openembedded.org> wrote:
> >
> > ...
> > Finally, and this applies to everyone, please do look after yourselves!
> > That should be a priority for everyone.
>
>
>=20
>

