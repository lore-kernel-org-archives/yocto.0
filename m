Return-Path: <coding305@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A59FC433EF
	for <webhook@archiver.kernel.org>; Sat, 25 Jun 2022 12:35:04 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.18955.1656160501296717012
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Jun 2022 05:35:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=EueCZCJ6;
 spf=pass (domain: gmail.com, ip: 209.85.208.181,
 mailfrom: coding305@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id a11so5725437ljb.5
        for <yocto@lists.yoctoproject.org>;
 Sat, 25 Jun 2022 05:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=NEB/POwrRRWK7+JKwngtFS/1gcQ5niqhYigop7QSUPo=;
        b=EueCZCJ66Nr27wS3E2fy/hjZKCh2Hh/kBYgAAAvvzHms6rD1mTeYR9Eyow/KQJPB3G
         JXikH6TpUkwV/mEaUEYvOnFnLBt/K25oQ4dMNe148WMWVE8Aj2P7GeitPbdFep4jWflY
         fNXrPkxU6L10aXwoetKaKt0RBuhtPeNjUuzc9XQkgSgtwaItaILnwho7lN8783CbYSef
         7NxYJb/5JNlHo3ZCdVV78Zmb/wxpfzKT4tUXmAFIMzodiupjYdL8Cfg7KjykvmRhfwkI
         oX7WXJhlgqjRUiJ3wznTPg9Q0bSC+1KVksjeb9vGehYnNitP5SEV3+Gx7kH6LRAb592j
         IVRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=NEB/POwrRRWK7+JKwngtFS/1gcQ5niqhYigop7QSUPo=;
        b=nQ2DdmohpdW0kBH7EwcWZBqAPxjmC7Vk+7ayXbsQD38vZVfpFSYhjYbf/PRbfnUteV
         ySQYmPlN4vjNL+N85nkW6KVzcab/0qADdvxOApcJPDmLe2NrIfLCXKChWK+8F2SxQd5q
         nugB9eGJN18FY2usGLFfTEcohmgR85THYM/aUW7Opt+UVryG27j6SRDYQ75FcleeTPlA
         6rtg2gDWMznQwKDmQ2QnvjMCqf9M6VAB9pO0cxqpn3nRuz/i/IRfjgkz+hVG4oP/zVI+
         2cQQ9uYAAUZbluQkn0UAiAfqbz+nEPJxrsHvtQpc3umkd1+rtqt+5Xs9+4cvLmaw+ADn
         e26w==
X-Gm-Message-State: AJIora/s+nP5OjTql+1dDDaWTcHzigU4XS8bbhvjgPCCSJw12fGhQNh1
	RDnL9oy6cE2MxpEob3ld0FmCAH7nWMhiz6AQOiVNJYpz
X-Google-Smtp-Source: 
 AGRyM1uX3nOt5xoKRNZOKjjp2oUQfoEH86SPdITuARH8zYUYBrLnQCf1/cO4OCUjsRTpV+/l/rx95Pm1oBdLeSTnN6I=
X-Received: by 2002:a2e:5058:0:b0:25a:7f07:a71d with SMTP id
 v24-20020a2e5058000000b0025a7f07a71dmr1885762ljd.171.1656160499207; Sat, 25
 Jun 2022 05:34:59 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CACaVmhfGW52b_OhGPS=nQ9ea5_9Y6ztdsnmLHMw1eRBAFHBO_A@mail.gmail.com>
In-Reply-To: 
 <CACaVmhfGW52b_OhGPS=nQ9ea5_9Y6ztdsnmLHMw1eRBAFHBO_A@mail.gmail.com>
From: =?UTF-8?B?6buD546J54+N?= <coding305@gmail.com>
Date: Sat, 25 Jun 2022 20:36:37 +0800
Message-ID: 
 <CACaVmheL0i4Bhr-zyqPxDM+HT2+HGKtUzhdeRBatW3gQUYbQ9w@mail.gmail.com>
Subject: Fwd: how to setup host environment for yocto
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003f157a05e244eaa5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Jun 2022 12:35:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57387

--0000000000003f157a05e244eaa5
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm new to yocto, I wonder the recommended way to setup an environment for
yocto using vagrant or docker to isolate from the host, since I've
encounter many different error about python version or something like that.
Some layers providede by vendor uses a tool called repo
<https://source.android.com/setup/develop#repo> for version control, I
always cannot install on my machine, following the steps form that page
doesn't help either.

Thanks,
CD

--0000000000003f157a05e244eaa5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><br><div dir=3D"ltr">Hi,<div><b=
r></div><div>I&#39;m new to yocto, I wonder the recommended=C2=A0way to set=
up an environment for yocto using=C2=A0vagrant or docker to isolate from th=
e host, since I&#39;ve encounter many different error about python version =
or something like that. Some layers providede by vendor uses a tool called =
<a href=3D"https://source.android.com/setup/develop#repo" target=3D"_blank"=
>repo</a>=C2=A0for version control, I always cannot install on my machine, =
following the steps form that page doesn&#39;t help either.=C2=A0<br><br></=
div><div>Thanks,</div><div>CD</div></div>
</div></div>

--0000000000003f157a05e244eaa5--

