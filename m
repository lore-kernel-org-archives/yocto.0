Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F584C25B74
	for <webhook@archiver.kernel.org>; Fri, 24 May 2024 12:49:51 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web11.14885.1716554903400723043
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 May 2024 05:48:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NJfKHTWe;
 spf=pass (domain: gmail.com, ip: 209.85.215.170, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-681a49e6e86so515344a12.3
        for <yocto@lists.yoctoproject.org>; Fri, 24 May 2024 05:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716554903; x=1717159703; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NCKetm+StdoQLGkjoOZTHDL7xdsXHMhEpd3fx++AN8U=;
        b=NJfKHTWe5oPFFjI0PU8ZUrUXnuOLaFk+bqpZyxd2OrUdDLiZT3Ny632JrVcaXqgmUb
         8zX8r2rFsGxPpXahUGzz7P1kQ7rTiRVRPEWUOPtR8rAJyWEs3sfo46T6csEk0q3Ttx5m
         IFf9iyStTItIW3ZE6iT+9DOI66nAJ5+qQYhrSeZ+oo1mY01hVHBAT0q9iph01q28swij
         bZn3Q2Z22RRdKF1iHNqI0hhQPxCbNOoVP1wgtYCZNlo4iqBBr2xqrWw2PrKlpjEcQRXo
         Fsm3UcoY2WuvStwrE6Zh2R0yvnKktZUB4XsGox4c0slAI4A/0ZTOtPDeByqTQAxTo3G6
         Eoyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716554903; x=1717159703;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NCKetm+StdoQLGkjoOZTHDL7xdsXHMhEpd3fx++AN8U=;
        b=clZRyEITPgo9Y/F7R8FTqmu91flrVUmlZYdE/eMw71A7w7mJbWyG9Pr6udggXiCSyu
         ZNsqeVO+eHUCGfUjWhDXcTpKWVlzTxICi7JuVNoStLM87ZpPIWi0xEKUhsioUd4jCwSV
         dbxilXJm989v4WOgT57aya2peGd70GSJ+8BiBpA0m98QXxG6j4bcK6FjClR7Xb52iPW5
         aBFpicmv9PHwIFAuVCs2Op5znz4nSw+qCuJOGUmdmzHhyQ6LVojGh46SqgLWSyq5A0WY
         jWl0rKn3J5DnuaSG1igN4mWz2vv90ykFqLLWIhF4OzKjJnQcYcZl6DqK1I77MU6tacjf
         ylhQ==
X-Gm-Message-State: AOJu0Yzf4UCdfyCwjA41cXp6PXM9R2hfKa4RQxxJQAO+q5ECZJU9y5c0
	G+J1ltWjuk9bizxQIcYEAfjQS2sTCE++WdSqdwyNYraWM1cZFsdcJJU+yY3lg9d4ldaC+HgQvfX
	N+wuo4DW2L1Mi1ozqG9Jqf18Y5hQ=
X-Google-Smtp-Source: AGHT+IGcRCImPKTe3Z5yQO2WopI/RICjik2jjayDcTcVqiRwlT49MY23lud1Td9Ltn2lH2xfaegJ8k/NTlx/m+MKFwk=
X-Received: by 2002:a17:90a:ec12:b0:2bf:5992:31ae with SMTP id
 98e67ed59e1d1-2bf5ee1cb71mr2079924a91.20.1716554902496; Fri, 24 May 2024
 05:48:22 -0700 (PDT)
MIME-Version: 1.0
References: <EB772314-DE2E-4782-8D5C-87699453EAF0@gmail.com>
 <CAGAf8LwAfEGUHtEWOpATj1Tt3u6W=QEuQFBBGztCmDyr0yq1Pg@mail.gmail.com> <DA4472B0-C469-41DB-951B-293257EF46D1@arm.com>
In-Reply-To: <DA4472B0-C469-41DB-951B-293257EF46D1@arm.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 24 May 2024 14:48:10 +0200
Message-ID: <CAGAf8LyaQZBVhG2rfW9HwD-jf_CHTBeV1yhOzO+CpasvFvd-Pw@mail.gmail.com>
Subject: Re: [yocto] [Openembedded-architecture] proposal: controlled deprecation process for oe-core
To: Ross Burton <Ross.Burton@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 May 2024 12:49:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63196

> I don=E2=80=99t know what is in your rootfs, but http://downloads
> yoctoproject.org/releases/yocto/yocto-5.0.1/machines/
> beaglebone-yocto/ has core-image-minimal for beaglebone-yocto
> and the tar.bz2 is 12M, an order of magnitude smaller
> than your image.  And our core-image-minimal isn=E2=80=99t even
> _that_ small, as it still uses glibc and has a full init system.
>
> My guess is you=E2=80=99re installing large amounts of firmware.

Interesting... I never thought about the size. You are probably
right. I need to start looking into trimming the whole thing.

I think I also carry elements of BB Green, BBB Wireless,
BB Blue, Pocket Bone.. I should get rid of these platforms.

But there are layers which are overwriting the Poky elements,
and a lot of unnecessary stuff these layers are also carrying.

And these are NOT used there at all. Most of them.

The issue of the YOCTO scalability stays as an unwanted
feature. Hard to decouple packages.

Zee
_______

On Fri, May 24, 2024 at 1:02=E2=80=AFPM Ross Burton <Ross.Burton@arm.com> w=
rote:
>
> On 24 May 2024, at 10:00, Zoran via lists.yoctoproject.org <zoran.stojsav=
ljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > If you allow me...
> >
> > The lack of scalability was always the biggest problem of YOCTO.
> >
> > It brings a humongous rootfs, while BuildRoot is (almost) perfectly
> > scalable. It can scale down almost 20x.
> >
> > Latest Example for YOCTO:
> > -rw-r--r--. 2 vuser vboxusers 101327860 May 23 17:24
> > core-image-minimal-beaglebone.rootfs-20240523141721.cpio.xz
>
> I don=E2=80=99t know what is in your rootfs, but http://downloads.yoctopr=
oject.org/releases/yocto/yocto-5.0.1/machines/beaglebone-yocto/ has core-im=
age-minimal for beaglebone-yocto and the tar.bz2 is 12M, an order of magnit=
ude smaller than your image.  And our core-image-minimal isn=E2=80=99t even=
 _that_ small, as it still uses glibc and has a full init system.
>
> My guess is you=E2=80=99re installing large amounts of firmware.
>
> Ross

