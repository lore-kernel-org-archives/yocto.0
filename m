Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47B00C25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 16:08:49 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web11.18229.1715875634681425050
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 09:07:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cbhJBX4T;
 spf=pass (domain: gmail.com, ip: 209.85.216.45, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2b9ddac7971so312507a91.1
        for <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 09:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715875634; x=1716480434; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I04LhvS3dgDUNrjLkjN5GqzlJT1WUvz2X5lEASdtVRc=;
        b=cbhJBX4TQ3JnH495STgFKDBPWSiKFRkCMR8iO8QKB/e29sQMzQf8CeZcXvI9VJkosD
         LBhMV4ojn8GzqBDbQGiquKzOaamus3eC5ZMYZ4B91uzazb/9zFtpei5J4gFi7GcIOTfR
         oP2Gb0Cm4S7w6HzAm0YR7vuz3mJjlHyQmCunHfUsTULoVkwIKj7kELc4VlzNaHoCEWKn
         22wY5J5vIUVKDLu3ppVuoDUvCcbBtCwm83Ekv8iDxGS66aJbPyQCvwKMkPtRpMFwHFfi
         7PPol73StdHMmuVBjklx046VIfuhxVwcJzkNlDAZhGtHDU+QA0gYsVRuo4xSQPuqwc9D
         0yTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715875634; x=1716480434;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I04LhvS3dgDUNrjLkjN5GqzlJT1WUvz2X5lEASdtVRc=;
        b=QxUofKaPRVCAvXPP/Tb3eIh46KwbmBW8GWqWJ7a9xhI2Y7lfo0Y+tAiJZg1Ddk9gRN
         8HbapM/k2qcFHA4JWz0tpDfN8zsg57LownDbcWOEKYKk8cLqJssTRnqESSJZDHJGYjW/
         ilbMWTindBDwf9ZMec8tqWAPRjXLe4r/RTodjXS+RCUyV6dBRifEFQ6rmLCYMJG4hoMe
         r605beBBq5vwOOBs4ZbHzyLH31fNyuSNoh6rPNxA3R4V9goFFPrSuS/zU/ouvSEYbgmO
         GClCnnkUWm8O4A74/XkZb6U1jxs7gEOjpxnprR4QVwFu2CktJtKzP5H9wiO78QIUSdbT
         MyUA==
X-Gm-Message-State: AOJu0YzvfUlz/psfkgITjn4tCFt/kgE+qU+BsagX1/BYbgOcPaOIM9pN
	WTNRe2SVVC42YshOrs+aktbKsM/Pz0diIr3TCWGkPH5QOTdaHlQuzwMycuoX/oseivMDBxbOvTo
	JqcaLVP/s4ohuXHJegDBIk13ogRk=
X-Google-Smtp-Source: AGHT+IEzyKtmN+eFQzmSlpT312x4o4DLkEYLoDv4q1yR3YSY16pyeUrwrXcm3xTCrU80tv2NrpqZ4HA1iMbObgha400=
X-Received: by 2002:a17:90a:69a4:b0:2b9:7afc:e7be with SMTP id
 98e67ed59e1d1-2b97afce8a1mr8068331a91.46.1715875633940; Thu, 16 May 2024
 09:07:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LwEkmPWUi+B3BotJy0g2AhfBRyVfO4jUBkhRXVtNS1aww@mail.gmail.com>
 <7a55c302-24cf-463f-831c-889c2fa0d168@cherry.de> <CAGAf8Ly=jt9WusiC3PEHakxZjjHHnd=gV1yYonTdQRRE5qrtZQ@mail.gmail.com>
 <35A42455-17EC-48EE-A140-6B42B23C80CB@arm.com>
In-Reply-To: <35A42455-17EC-48EE-A140-6B42B23C80CB@arm.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 16 May 2024 18:07:02 +0200
Message-ID: <CAGAf8Lzh7-eGr3+-55vHMhSVtQbfQvgy53AQtv7gN2gbZ6CSaA@mail.gmail.com>
Subject: Re: [yocto] Strange errors while executing poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb using scarthgap release
To: Ross Burton <Ross.Burton@arm.com>
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>, Quentin Schulz <quentin.schulz@cherry.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 16:08:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63123

Hello Ross,

I guess, U might be very right!

OFF TOPIC: Fedora 40.

I had another terrible issue with Fedora 40. I pressed M-net, my net
provider, that they screwed up my DNS setup. For 4 days.

Then... I started to investigate myself!

Here is what I did find about unfortunate Fedora 40 release (IT IS
ONLY Fedora 40 release mortal issue):

https://gitlab.com/gnuwget/wget2/-/issues/661#top

https://www.reddit.com/r/Fedora/comments/1cf5jpu/switching_from_wget_to_wge=
t2_suddenly_in_fedora/?rdt=3D40957

Please, all U who R using Fedora 40, find that there are issues with
newly introduced wget2 (wget2-wget) Fedora 40 packages.

Zee
_______


On Thu, May 16, 2024 at 5:39=E2=80=AFPM Ross Burton <Ross.Burton@arm.com> w=
rote:
>
>
>
> > On 16 May 2024, at 16:31, Zoran via lists.yoctoproject.org <zoran.stojs=
avljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
> > The full log (full_log.txt) is attached to this @, as per Ur request
> > (lot of stuff, echt!).
>
> From your log:
>
> WARNING: Host distribution "fedora-40" has not been validated with this v=
ersion of the build system; you may possibly experience unexpected failures=
. It is recommended that you use a tested distribution.
>
> This is saying that Fedora 40 has not been validated and you may experien=
ce unexpected failures.
>
> Later in the log:
>
> pzstd: /home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/build/tmp/s=
ysroots-uninative/x86_64-linux/usr/lib/libstdc++.so.6: version `CXXABI_1.3.=
15' not found (required by pzstd)
>
> That is the sort of unexpected failure you can expect when using Fedora 4=
0, because it has not been validated.
>
> This is an incompatibility with Fedora 40 and uninative, so until this is=
 resolved you can disable uninative with this in your local.conf:
>
> INHERIT:remove =3D =E2=80=9Cuninative=E2=80=9D
>
> Ross

