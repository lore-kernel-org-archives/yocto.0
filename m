Return-Path: <jandryuk@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CCDC6FD1F
	for <webhook@archiver.kernel.org>; Fri, 10 Mar 2023 17:15:50 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web11.25293.1678468547233842176
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Mar 2023 09:15:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mUk48Jt+;
 spf=pass (domain: gmail.com, ip: 209.85.208.41, mailfrom: jandryuk@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id cy23so23180118edb.12
        for <yocto@lists.yoctoproject.org>; Fri, 10 Mar 2023 09:15:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678468545;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mh/oGTis7G0XjfXh5Jd/N/hOfUqWVsUiSCGaFeWlFcc=;
        b=mUk48Jt+GyFX+ASRV1bU01DobTp/2NFGRuWzlP082KhMdN5S6+UuT8ZiE1V1Qe38rc
         7YXuc0jABihgKyX6yIbVNzR4U/vGmivuW4vCsB2f4FN3psvfZDSarpcUm1R0TVfRkp17
         IWwOltyumJFHZkO9fR1+Eo7OysREN313u1Xl2KYAcDB2IRsgJeopB6L35wxLl/A0xbYA
         1uTDSg/zd0b8bj+1PbhCLzHkaohfFMsQiTlxMchv6f2mWy6NqlIj1q8L2F3g8t33Qf+5
         QY18F3XGx6hhGT7tGVIPz/NmQPlIlEg82QbyNpx8SmBGkT9R8dSzU3jKbZG7gx6CV3YS
         uksw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678468545;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mh/oGTis7G0XjfXh5Jd/N/hOfUqWVsUiSCGaFeWlFcc=;
        b=iBGMCIPEiwLSjZRI9teQV2/JSMYs0ejKGEvfUWSqNUfZU88hbyOZ8pQid4MvfRXqvF
         M4FiVug6AYRphLGxa7/O+b3wVzwCx6PLOKu1nxyg7GC1Elyjr3TxhAmc82jQpEya6M+s
         Z1/aewZCWBt2/O3H0k6BeVwUSQETO9Ur+GftcsmzcpeJj0rMX96Ril7yXU47yO8fcm7R
         dVDxEZp1DlttHfYzqaI/GqtDyDQZ20Xwyx7Oc7aMS/5c1AiVZD2P184MVtNx3HTY/SLu
         AhlGPKYD5WAzj2NAG0sxgS+6g0lINvcihm+x+NM1rrT1CuEJdGKIMp0sGnAULwkiT/jy
         PeDg==
X-Gm-Message-State: AO0yUKVgTOxQcoxKwekHGs/18A0GwROC3f8t5j7rQJJ3AjPoGHo0B2GD
	o8Zlo3vAZt/moztsIdhGb8BN0gDaxL3JnnHO19U=
X-Google-Smtp-Source: AK7set+CzyzOc+GJdIx1FYGCuDhugqoQhxMxRPMMRqpVhgI4+NeIA9wyUeV1uxigFrwLp1cnGEEpY9U+bSXZCg02PU8=
X-Received: by 2002:a17:906:50c:b0:8af:43c6:10bb with SMTP id
 j12-20020a170906050c00b008af43c610bbmr13427252eja.14.1678468545373; Fri, 10
 Mar 2023 09:15:45 -0800 (PST)
MIME-Version: 1.0
References: <22051.1678106002246388737@lists.yoctoproject.org> <21997.1678353554952504620@lists.yoctoproject.org>
In-Reply-To: <21997.1678353554952504620@lists.yoctoproject.org>
From: Jason Andryuk <jandryuk@gmail.com>
Date: Fri, 10 Mar 2023 12:15:33 -0500
Message-ID: <CAKf6xpvfZrXDLPakp_XhSfmakNi4sQBEnufLkaHsSrBa-aPTcA@mail.gmail.com>
Subject: Re: [yocto] Question about psuedo abort errors
To: Tamis <tamtamis@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Mar 2023 17:15:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59378

On Thu, Mar 9, 2023 at 4:19=E2=80=AFAM Tamis <tamtamis@gmail.com> wrote:
>
> Hello all,
>
> I believe that we resolved the issue.
> The issue was reproduced again during latest nightly build. And then was =
also reproducible manually.
> So, I modified the recipe and spitted S and B variables.
> So I set:
>
> S =3D "${WORKDIR}/git"
> B =3D "${S}/v2"
>
> Fixed the paths into do_install.
> Now both B and S are into the PSEUDO_IGNORE_PATHS automatically and now i=
f we install files from S those are now ignored.
>
> After next invocation of the recipe the error was not reproducible. So I =
believe that issue was resolved.
>
> Thanks a lot Richard for your input and Qi for your hint.

Wow, I think I've been seeing a similar issue.  Thank you so much for
the investigation!

We have some recipes building Qt libraries & binaries with qmake -
https://gitlab.com/vglass/ivc.

The QT classes use a split build dir, and we have:

S=3D"${WORKDIR}/git/src/usivc/ivclib"
B=3D"${SEPB}"
SEPB=3D"${WORKDIR}/${B}"

However, the QT .pro files are full of references to parent directories lik=
e:
SOURCES +=3D ../syslog.cpp
SOURCES +=3D ../../data-structures/ringbuffer.c

Would it be okay to PSEUDO_IGNORE_PATHS .=3D ",${WORKDIR}/git" to work
around the issue?  It's still specified within the source directory -
just at a higher level.  I don't know the QT build system, but ${S}
being set down in the subdirectory with the .pro file seems needed for
QT.

Regards,
Jason

