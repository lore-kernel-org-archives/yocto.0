Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C5EC30653
	for <webhook@archiver.kernel.org>; Tue, 25 Jun 2024 09:08:07 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web11.167041.1719306406954884539
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Jun 2024 02:06:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TjTpQU8n;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1f9b364faddso42839495ad.3;
        Tue, 25 Jun 2024 02:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719306406; x=1719911206; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V3kMnMSdsZM/UeQ6NWEyK9QK6c68MD3Apc/0nnnymX8=;
        b=TjTpQU8n0sUuw6j/5WtkVTDnu2RuwRv5IT4RAEmkwFnstJ0+BlhqGdvsip8YBNCvt4
         SymsenKkdkiBqHtC5vamEO6qyJ3IOqhj/6vlcSimaSXcg6s/EsWRAKyehNKaxHwVQaZ7
         b40dUZxEWwlgxL9RQtbHl3jPeZfcbBp2Q+m+E4BGuj16gapKAxADuGjlXmFdqG98on2Y
         JEjbNVc2IWAXqW/RiOHPqhdSLMbt6lBDy9aB//S7+QYKVrGGzgP2kNvovg0xNklyFXgb
         N5kbH6TQuNGPdJdsB1h2wjRfMKMUZBvGqu81XauBr2qFBbzNlXh65zyq8QPnDVsLNXri
         RqVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719306406; x=1719911206;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V3kMnMSdsZM/UeQ6NWEyK9QK6c68MD3Apc/0nnnymX8=;
        b=LsKj3O8Xgf9jTXFrATb3/sRtEWPEGBNi+qixpy8bhsuuvj8Ath5oibZv/Uc9v78UyU
         oZHq2CreSoBLz6NQDqH83hDgeImjTPa2GJmqOIMlJIQcb9bE77FiasSL2QB8w09/fT7I
         jG6KIkcplLspXNmsWf8Oq0LWpU+4tMxLLEPekd5NJRhsqW/UvB4Cb/pZaP7Iw0+Y9uIC
         gsw+O57vDul1fm3BGilR0flJ70nJnkeQspmdbawskKYW7wlqxps8W1T6e5U6N24+IJPu
         lyK8ZBwjrFf8O4BHLrN0aeb4wtQAJeTEQGNcUBHFwkasoKx9lEN6mZyUhv1z7xOQ5YpE
         WDRg==
X-Forwarded-Encrypted: i=1; AJvYcCVC3pC5QiaIdPojqH/15whr7YlBFfRnwIAKRJCvovXDGajUuZivgIgoIr6Is50II1VIfAh1mqEHzZyK2l7vhFWa8UkfEeOxACJHQ3BeM0B7bfJAaA==
X-Gm-Message-State: AOJu0YyHsb2XBhZjAH8RrzSX1WoXmHrr/iZ9Tv5BTv7IE9E+mloAFZEd
	Ksj4yiL1A87hGQSqJWcS0Htd0DlQB4S4JzpxzE8Qa14HRwRVRlkLgG+tybOo2JX7vOzTd29AL+3
	alip6GDZzvBlh4HZT9DqgH+cp/hk=
X-Google-Smtp-Source: AGHT+IGwK3W4aKZm4f9xt0Sivr19CCLVfRnFHXNKQEroJ2ebSzSFglWqr2WwxPEs0E4Wx+Pa8I+09prgvudcQcu91u4=
X-Received: by 2002:a17:90a:f3d5:b0:2c2:d250:2813 with SMTP id
 98e67ed59e1d1-2c86127e27fmr5181465a91.1.1719306406168; Tue, 25 Jun 2024
 02:06:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb-XZMRnfJuC66B=FoOhOXkvwfpsFDES2FH+Vcp61vR=_w@mail.gmail.com>
 <17DBE622025D9B67.28936@lists.yoctoproject.org> <CAGAf8LxiZOtRBWye6i0KMkZ-jBv9T8RM3Mu024naen-M15rAPg@mail.gmail.com>
 <DEEF93C6-732C-40B1-8759-0E25B6E2C5E6@arm.com>
In-Reply-To: <DEEF93C6-732C-40B1-8759-0E25B6E2C5E6@arm.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 25 Jun 2024 11:06:34 +0200
Message-ID: <CAGAf8LyfuhMTHJj=bo+GRkJffi+S=7YnMMv5i2TB8OM9bxBqcA@mail.gmail.com>
Subject: Re: [yocto] Yocto Project Status 11 June 2024 (WW24)
To: Ross Burton <Ross.Burton@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Stephen K Jolley <sjolley.yp.pm@gmail.com>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	"yocto-status@lists.yoctoproject.org" <yocto-status@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Jun 2024 09:08:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63390

Seems you take the conservative approach.

Supporting quite lot of distros. Just lamenting to get the idea.

Zee
_______


On Tue, Jun 25, 2024 at 10:56=E2=80=AFAM Ross Burton <Ross.Burton@arm.com> =
wrote:
>
>
>
> > On 25 Jun 2024, at 09:09, Zoran Stojsavljevic <zoran.stojsavljevic@gmai=
l.com> wrote:
> > 13.3.0-rc0 in poky-5.0.2???
> >
> > What about 14.1???
> >
> > I am all scrambled and lost... Or?
>
> As was said earlier in this thread, the 5.0 long term stable release will=
 not be getting a major upgrade to the compiler.
>
> Ross

