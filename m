Return-Path: <t.f.g.geelen@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3198BC3600C
	for <webhook@archiver.kernel.org>; Tue,  8 Apr 2025 06:51:58 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web11.68724.1744095112881093775
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Apr 2025 23:51:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EJ0aDSbE;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: t.f.g.geelen@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-ad5236e6fd6so4703795a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 07 Apr 2025 23:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744095112; x=1744699912; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ua3xrA05gJL71uR6r8WgTrb+2Ynki+DdI0CJWqxXkhs=;
        b=EJ0aDSbEARN7gXml8eW11zBh3i9a4f4A/GjBjn9Mgn1qdRviVEajSUYSm2fF4+XW3u
         0OdaOuzAnQApe9woqllJmmlASuW1rQt3D5peGrNI3y0oALuGAPFAB5xFFSGHKgnVqwJy
         QjCECgTzDHzfylFXo8SrtWIOsiJ11zeGR1pyUtexd2hzh1TlZ8V4sSSXAB9D2ujdYYEx
         0DApimwvNlfnZ7I8P4MXXfg5N/Y5n/fgRLRP1dwXTYvh6LRk/lS3eMYSmAdQd3Ebynm3
         Mm44HD96hG2oIvZEFTQAWtmR6v2XZK1z+3h6wi7YB6d+/p0GzCKHDBC3/RGlQr9bVMAP
         QZpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744095112; x=1744699912;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ua3xrA05gJL71uR6r8WgTrb+2Ynki+DdI0CJWqxXkhs=;
        b=mcruOYgp8dT67lwntwR2XwEWwMEnmcjZxtUVRS8tKgIPSMFMY86Zkap1Yjr1DF9/pu
         Gsuhkg76FPm5OCW5bovSrfYn+/+nrQFJV8TMAf5sZcHDFhnRvyn6dqaC4TVb2A38Lbht
         +EMl0eeKGvGDKT4d++N8AW7YGhVc1mOFYftclKdGjMlEW0FbyL91hqI2lKAbRPW7ZCwi
         PiqiQpttR9C49gKWnDCjeKHGZOuzeOgJX6G2SYNIortI4qsPvEiDVPde2Rao3CR0le6Q
         cf4Mx/JzxgVXpXPYnoUGoOUSiV/vMU4USL22U7T4yEzGLuvdvNqhRHrhq7W0UWZG9gLV
         2kEA==
X-Gm-Message-State: AOJu0YxoJtqaMF0GZDyi8bhy36Px/zhgqwHZXx64x0gqa7tEc4EefDfr
	q8DC5ngy+e3o0JuTusg156+1X5NzW4xvbUDYjyhcO+mnLnTTUJLbxYtXeU28nlzePfJIfXSacq+
	5LtPUKTspH9IBIdyG8+uk2L2C9AnWxPsL
X-Gm-Gg: ASbGnctyxkpalUU9L43zg2ZPdtuSewEJU50RKtCxK2/FFaDqL81T/wdEhanK0J+7X+s
	0St6Wt5iKkXUV1n2w+DM74VysFevdNvwmFtA2Ob9vjEFeBLcz1W+7eQ917osYQlWluZ4V7lxgnI
	AjnmnA3zjFM7siNRjrk8ua4npAYQ==
X-Google-Smtp-Source: AGHT+IGSfKGFMnn6yQ/qhZMA95N2cIJyfmMFYZeAqwinpcrSt6uwUVlBws/RjhA/YvqQAhPhqeofDeej5SLQb6J/eh8=
X-Received: by 2002:a17:90b:3d4c:b0:301:1c11:aa83 with SMTP id
 98e67ed59e1d1-306a489284emr21002790a91.28.1744095111826; Mon, 07 Apr 2025
 23:51:51 -0700 (PDT)
MIME-Version: 1.0
From: Tom Geelen <t.f.g.geelen@gmail.com>
Date: Tue, 8 Apr 2025 08:51:40 +0200
X-Gm-Features: ATxdqUEYJ03iBgQER0Cu92soSCgOsJlkZhwpyCxfYm3u3A5xg2mS8Sebc3Cbarg
Message-ID: <CAJo0Az5-Wy8RyJMcNG=0XynEaJ30YUr9eRXno0ZC6yKB4bQYLg@mail.gmail.com>
Subject: [auh] Setting up AUH for non pypi recipes
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 06:51:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65113

Hi,

I have AUH working on the layer I am maintaining but so far I only get
good results for recipes which fetch directly from pypi (thanks for
the help on that).

However if I have recipes which fetch from the Github source, instead
of pypi, they always fail.

An example is this: python3-aiohttp-isal.
Recipe is here:
https://github.com/Gerry546/meta-homeassistant/blob/integrations/recipes-devtools/python/python3-aiohttp-isal_0.3.1.bb

When I run AUH on this recipe (to upgrade to 0.3.2) I get the
following errors in the logs:

INFO: Extracting current version source...
INFO: Extracting upgraded version source...
ERROR: Execution of 'git checkout
698b3ead9131e09b782d2fce8efa60697c107887' failed with exit code 128:
fatal: reference is not a tree: 698b3ead9131e09b782d2fce8efa60697c107887

The git configuration necessary for AUH is correct (otherwise other
recipes should also fail). The hash it uses is correct. So can someone
point me in the right direction?

Kind regards

Tom Geelen

