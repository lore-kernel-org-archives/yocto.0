Return-Path: <rustyhowell@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83227C0015E
	for <webhook@archiver.kernel.org>; Wed,  9 Aug 2023 19:31:31 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web10.475.1691609487996883595
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Aug 2023 12:31:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=MGiH0RVM;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: rustyhowell@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2b9d3dacb33so2745021fa.1
        for <yocto@lists.yoctoproject.org>; Wed, 09 Aug 2023 12:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691609486; x=1692214286;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3icoolCcqJdAQIWSb989NVZRKuqCKusiZskeSNwGXMY=;
        b=MGiH0RVMNVNvFl+wiorC6dnmb9b8g7t5ga3oikdp1oF2ZCZ84kmIxuCPzWSGzHb9Fm
         RhXH2lQd9CatJGLSmYCsXej9rg8We/vKmRhtHOMWfjazq4fiel8b7o8lElytIQBrHA5m
         uEMFp0IIX7G3PFBF0Yy8XduAiYxIznCcGJoaj0G96hnkNt+KgedFUUckyzwxEjvlFixc
         e2g+rqkVjRHzB/X1CfJYjANr2PAL8fORSZ/eGdaElKTAOpRz4jKJB7nR9mk2+Y+jSahO
         SAuQ6gjEMxlDS2sohNSRfgy6XGtMl3ppSkEAqj17PEALTzaY7kIR17qWDEYxmmO/5TjU
         NSdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691609486; x=1692214286;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3icoolCcqJdAQIWSb989NVZRKuqCKusiZskeSNwGXMY=;
        b=gilMD5vwO+KYfABTpjPIGkmr//aE7VrwWdX95ZAb6uCVMajE0DYCIDR+mLgWgBPQ6M
         fw5ZYfykBJZpChOe/3eCweEdRdHHKCWbt+v6M4mnnjbKzrid1OAGRDw1qKosfo86FUxB
         wTIjEOHVpYUsyfPVoUlCXlGg4LfbW2hO4HOQtLKMagzVcGw8LpR/15n3ogr+//hfVTpG
         qAtizCJlNV9swo5A2y0Wnir1s6qisOtZFdK4coso+VTSY/VYnQIJ4wz2juzb6o3uBIFi
         DLgOQmfoiUixkcjxt1wdYQpdlXFw+ljlnq4OO7FpTw/lF9ELl97IuGhgKrAyqnN3dtin
         lTvg==
X-Gm-Message-State: AOJu0Yx4nZ0HpF+J/bG9pAVB2vy5pQ7JSSE2trgUuPKTNuUygCbLIcR1
	Dqput3YP+M/m2iRWvisvMCf30Vsol5DUWDRMgsotDk4AqyA=
X-Google-Smtp-Source: AGHT+IFfhPkDGjSVabh8fJmd9DtQe4rs5IpYhU5x1842xgHQ2GoB1uQIzCRKdo9e9QJLfQdcMhO1AdpMYYCmMDNvRTo=
X-Received: by 2002:a2e:7e06:0:b0:2b7:344c:a039 with SMTP id
 z6-20020a2e7e06000000b002b7344ca039mr110205ljc.33.1691609485277; Wed, 09 Aug
 2023 12:31:25 -0700 (PDT)
MIME-Version: 1.0
From: Rusty Howell <rustyhowell@gmail.com>
Date: Wed, 9 Aug 2023 13:31:08 -0600
Message-ID: <CAE+BM3=XOQrMOkb2tG9hz6zE1doD_ACZHtGYguUfES8cEx+-YQ@mail.gmail.com>
Subject: sstate-cache miss analyzation
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000077fd8f0602828652"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Aug 2023 19:31:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60763

--00000000000077fd8f0602828652
Content-Type: text/plain; charset="UTF-8"

Hi, I was reading this very old mailing list post about SSTATE and cache
hits.

https://www.openembedded.org/pipermail/openembedded-core/2014-June/211563.html

Is the information in that message still accurate?  Are there any newer
tools available to help understand why a recipe got a cache miss?
Thanks.

--00000000000077fd8f0602828652
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, I was reading this very old mailing list post abo=
ut SSTATE and cache hits.</div><div><br></div><div><a href=3D"https://www.o=
penembedded.org/pipermail/openembedded-core/2014-June/211563.html">https://=
www.openembedded.org/pipermail/openembedded-core/2014-June/211563.html</a><=
/div><div><br></div><div>Is the information in that message still accurate?=
=C2=A0 Are there any newer tools available to help understand why a recipe =
got a cache miss?</div><div>Thanks.</div><div><br></div></div>

--00000000000077fd8f0602828652--

