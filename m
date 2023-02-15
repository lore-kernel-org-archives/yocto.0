Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09EFC636D4
	for <webhook@archiver.kernel.org>; Wed, 15 Feb 2023 05:36:14 +0000 (UTC)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
 by mx.groups.io with SMTP id smtpd.web10.9030.1676439368791286140
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Feb 2023 21:36:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bZcDORg7;
 spf=pass (domain: gmail.com, ip: 209.85.217.51, mailfrom: joel.winarske@gmail.com)
Received: by mail-vs1-f51.google.com with SMTP id k6so18816607vsk.1
        for <yocto@lists.yoctoproject.org>; Tue, 14 Feb 2023 21:36:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1676439368;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iw5lAiqKd+zWTn4oZ6gN9Lj2fIcFmnMRfvzMEfE3JxE=;
        b=bZcDORg7V4nS0T1abGXh1hqdkO0WDfXDd9phh3Q0E0L2UdmJjdDuX1KldMQhx3zzEa
         hqbL+7zD7X6B4W97pdY+EQaKVfB0QEwUIbjqN6QkrnmRurWEd4HepAkBifObpSYOs6F4
         Edf8yJcC0QuHxvNYm86Y/PLmzIyNJI7eshkq7e3rwGVZzWxGwIn1viRB+kF2Cm4VyITY
         gnd9E0K6IcmCF9B+zOExWT9a/mQMKMfvCJJFV7xKh+3cGkPpfeQr3Dx7UoMN9KOoc2sz
         IqeL6T9euimsBCBg6iD8rLR9yr5wcoH9WLxMyVGPn5SE7ZvZfNgcJg94pXEeSrNogATY
         oIIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1676439368;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iw5lAiqKd+zWTn4oZ6gN9Lj2fIcFmnMRfvzMEfE3JxE=;
        b=1C077HtCmbOkuhD75DkzZ2QnN447A8WQ2HbyZjjv9UCZSKOrNzInuvIuE4PrjS+NZb
         iA3wr7YLOEi/0xUAVOm8J/gt8WTs8PB9Iyy2ajANvkrHij5MF4qsvKRmkOPI6l7xPBzU
         7LyXHuqL3m1fFrJWFOq2LNnOPxVHbIQ0XoEUAwLU2Mae+ZnloOamGDBT7GCgRYwCZ77C
         2nmegD6DwmhvWj9ZpSmOmZOUPTXLCQawcdJ5dMzW2EcgmiWl5iA7rFW+Ff+CeJ1U4IWl
         /jCFf34SNsgGL5kUyZmS7+0bLZ9NPvq2xXLRlOzT5WXFRYJy2qeGHXLTRFLiIR3LFBf/
         kyHw==
X-Gm-Message-State: AO0yUKXjQ4ggwVvPFmmN0y2cukvKezTKG8WmR+Tw7WAKFjHfglDGny8j
	GVKnRPWIOBWEFvPmiQNFP2fUQIZtga6jB3MGvNGWOJxe
X-Google-Smtp-Source: AK7set9DFtYakbdzNUABJhTcpEm/Qqm6FvTA0kyFD/2pZxGvXZ3fjlVQK+1wfiFAeBse0MKyA2KkLx570XS/gn4Kl4Q=
X-Received: by 2002:a67:ca03:0:b0:3ea:c8c:48a5 with SMTP id
 z3-20020a67ca03000000b003ea0c8c48a5mr200476vsk.53.1676439367596; Tue, 14 Feb
 2023 21:36:07 -0800 (PST)
MIME-Version: 1.0
From: Joel Winarske <joel.winarske@gmail.com>
Date: Tue, 14 Feb 2023 21:35:55 -0800
Message-ID: <CABKMkPJ3-KK_Y0tMrp2QC=K0P0hm_2-cV0UorSQOSvZ7PVub6A@mail.gmail.com>
Subject: Mold linker
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000fe407405f4b674ab"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Feb 2023 05:36:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59229

--000000000000fe407405f4b674ab
Content-Type: text/plain; charset="UTF-8"

Has anyone played around with the mold linker?

https://github.com/rui314/mold


Curious what the build time difference might be on a large multi-core
machine.


Joel

--000000000000fe407405f4b674ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Has anyone played around with the mold linker?<div dir=3D=
"auto"><br></div><div dir=3D"auto"><a href=3D"https://github.com/rui314/mol=
d">https://github.com/rui314/mold</a></div><div dir=3D"auto"><br></div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Curious what the build time diffe=
rence might be on a large multi-core machine.</div><div dir=3D"auto"><br></=
div><div dir=3D"auto"><br></div><div dir=3D"auto">Joel</div></div>

--000000000000fe407405f4b674ab--

