Return-Path: <tsu.yubo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BA09C6FD1D
	for <webhook@archiver.kernel.org>; Fri, 17 Mar 2023 15:03:59 +0000 (UTC)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.web10.21926.1679065433106016272
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Mar 2023 08:03:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KEb37zy6;
 spf=pass (domain: gmail.com, ip: 209.85.222.53, mailfrom: tsu.yubo@gmail.com)
Received: by mail-ua1-f53.google.com with SMTP id q42so3538295uac.3
        for <yocto@lists.yoctoproject.org>; Fri, 17 Mar 2023 08:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679065432;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oRc+8MjO/ebJw0j3qiIsU/636lZH3m8LBR70LX7SjhA=;
        b=KEb37zy6itJADkmrG6LkI6B9CLJljwkYpkWFJ9r71zbN2maeAoLLj10gbqs5EdlaqD
         A56aK/fSYw2XPWH5fjz9qj6WSy41U+OJ+xbpjFGRTkKgf1wsIojemac1qOg8N64+KSyS
         hJkROvF+Cmom4/dOsdLEFoy/VEWxTGjhLIYscIG9dKm/Xdf2iRyUB2lme0iDgBq28Y1o
         7I3NBg2GB880oStwf4XC4YKv/UPKhMi84w1POPCNeyHSdbU2EqqsR/q592nBlKYaUsXB
         Y/dSHhwjlDmntT67msDFhYC3GLGJE9eQ+5n941FTzg44AV7mtsPkIJCrtvHOY7bVFjlC
         L0Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679065432;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oRc+8MjO/ebJw0j3qiIsU/636lZH3m8LBR70LX7SjhA=;
        b=IHq3uaDNtEC9PManQVBngWwEG3FgNdbE8W9JgcCJjGeN8J04mAx7d+Vs69GdUlNqZ5
         cL9qOhB95n1/ot7rNkL3ch0T0yySz5mDobbuaICjvJ1HI1d5nODAc6/lXNZSwGSwygrX
         FivMS6xq32lcS+GiDmeUgJeCFc+TSCDomk1u6IZH7iX5ZEXGQLT33mrp64FZdA2b/0Zh
         wVNdodBywFdupkHldXPwseJlGOilhvItVcxZqYyDlAAg8MXzvKP+QX1GlZp/DY4dhvCg
         nhQddQuURaGYeXwfwi6eWdJDo6o2vK7iM5a1xsV0Tx9+nKOfJd993QxrS0Y1kapmitdl
         QrKg==
X-Gm-Message-State: AO0yUKXcVWRlASHenvGJI2qtxFEW1T5sWDf5mtKCDjap9Vz5SEhGFYAe
	Mqrabi7Bkii3I+riwNij6n3D+stmS4+4OeFVAgq6vLysHhKomUbC65U=
X-Google-Smtp-Source: AK7set8qbk+530fVyijDRYQr0rjOJUYujPTOcARuZAXV4dvWN26HgRafSsNY7rReTzPqRK6gfJepP+7CSMhumlNFZto=
X-Received: by 2002:ab0:4a12:0:b0:68d:6360:77b with SMTP id
 q18-20020ab04a12000000b0068d6360077bmr30797199uae.1.1679065431840; Fri, 17
 Mar 2023 08:03:51 -0700 (PDT)
MIME-Version: 1.0
From: Bo YU <tsu.yubo@gmail.com>
Date: Fri, 17 Mar 2023 23:03:40 +0800
Message-ID: <CAKq8=3LHPJgXuUvXuStP9J2Esyg6b9ODkj9dt5SBYVNJf2XunA@mail.gmail.com>
Subject: How to use mirror to download linux-yocto?
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Mar 2023 15:03:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59449

Hi,

I hope the mail list is the right place to ask the simple question about yocto.

I am using meta-riscv[0] to build riscv32 qemu.
And after `$(MACHINE=qemuriscv32 bitbake core-image-full-cmdline)`
Everything is downloaded well but linux-yocto:
```
0: linux-yocto-6.1.14+gitAUTOINC+e8d08fc4c0_b05ca3429c-r0 do_fetch -
12h26m11s (pid 4110422)  28% |#######                    | 2.00 KiB/s
openembedded-core/meta/recipes-kernel/linux/linux-yocto_6.1.bb
```
I tried many time but nothing change.

There is one mirror[1] I can use under my network condition.
So I want to know what is right way to alter URI in
openembedded-core/meta/recipes-kernel/linux/linux-yocto_6.1.bb?

I googled one article to suggest use Insteadof in .gitconfig[2], is it ok?

Many thanks for your help.

BR,
Bo

[0]: https://github.com/riscv/meta-riscv
[1]: https://isrc.iscas.ac.cn/gitlab/mirrors/git.yoctoproject.org/linux-yocto
[3]: https://www.wpgdadatong.com/cn/blog/detail/44614

