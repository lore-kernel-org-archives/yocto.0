Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E174C25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 19:28:50 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web11.23264.1715887722201069022
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 12:28:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iHm8JfZL;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: simonkbaby@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2b37731c118so478154a91.1
        for <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 12:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715887721; x=1716492521; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aLPgyreBPZSIVewJR4waK08LyfPhwEwZHhuth8I5zEA=;
        b=iHm8JfZL5blTf9oPahQJnSv8C1QOx+LCyu6Xk5+fT80okkkmZ9PO+RCpliZS9cBKdM
         sE6I/xTve5gi+oyk0Nmas9peLbejNrPnZmIAzgX8shOL33Uq4kDrzyPuiPp2IH+cXnMz
         CWEa9eU8zSPVQ4HAkm9z3SceG3Z79s+KqAQSzjolxhxFhgtDly2ESQTm5lbaAMmKLkfQ
         GHbyMoQtjV2lz4nahjFv6Dk5SVv3C6dw89cz3kRJMrouQeklQ/B1qzOCgRIcrHwJPLBM
         N7DIFuYZ3BlNPEW2W1XBjKVoAiPbma/cNE0jtvJDYJu0likwebFkvIfjUjM3Jdw1DKbq
         u/oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715887721; x=1716492521;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aLPgyreBPZSIVewJR4waK08LyfPhwEwZHhuth8I5zEA=;
        b=NAMYhsliCpigdL0FZfWoaReNU5JIqe75HLwD+aH1jpMM6qoFqnsIwElDTKdt136ktK
         Lt8M9fTWUjVAEvOL+CE0xlz7Q5SAy+odP+oMLs+Jiw7r4qe+8FNRvbhYyeHjmNvBjS8L
         T5QzEQYQWZtAmn9xHp398NPVpqjr6QR6FIzOYxB+4bRUbfaJthsq/OS1WDVjrxpzgEYe
         Poe1xLvDN/PV6IKOwYzOkvyk2sgEdY3/rwvhYTWVOoH5PMRL3KnMh3iF5+d1zAWShpkm
         DXhDeWGk69RjrTtMHrdMsaVV4uxpi9FqVAX+2WOiXGFR3A1ceKaVzQElYeDHI81TZckO
         3bBA==
X-Gm-Message-State: AOJu0YyxmaFLqQSd611eBxBf5BzlBUYsnT2qDQWY7GegLJQda0vcukEb
	101NGzjQ2jjU6WhzrpmJkpQan5SJh1y//bgJqqgb1qICTlKwfyR2jaUNzRE6j2pIFI3nx3thSp6
	lqThINF18ilfIrX7uJEyBH2gDrYg65Rcl
X-Google-Smtp-Source: AGHT+IGP3yzz0mNqgJWYvfrs+iMZqFuvmFgLfgTivL5NSRzm/c83Gax/QEn1EB2YsEkBtXaxrnFfOvt6bMPXyMiqtiY=
X-Received: by 2002:a17:90b:5384:b0:2b5:1f7d:7eae with SMTP id
 98e67ed59e1d1-2b6cc780211mr17777028a91.24.1715887721084; Thu, 16 May 2024
 12:28:41 -0700 (PDT)
MIME-Version: 1.0
From: SIMON BABY <simonkbaby@gmail.com>
Date: Thu, 16 May 2024 12:28:29 -0700
Message-ID: <CAEFUPH2wugXtmvaVQPWi4Le=5vAKOEr7=9Cn3Nv47WOqHFhE9g@mail.gmail.com>
Subject: packages not generated in output folder
To: Yocto Mailing list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001710810618973e8e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 19:28:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63124

--0000000000001710810618973e8e
Content-Type: text/plain; charset="UTF-8"

Hello,

I am building some applications in 5.15.0-102-generic #112~20.04.1-Ubuntu.
My yocto recipes aeh building successfully but I am unable to see any
package folders under the tmp directory. I see only log files under temp
are created. Nothing else. Can I know if I am missing any configuration?

tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/marvell-umsd/3.0.7-r0$
ls -ll
total 12
drwxr-xr-x 2 sbaby sbaby 12288 May 16 12:26 temp

This is valid for other recipes as well.

/build/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/libgcc/11.4.0-r0$
ls
temp


Regards
Simon

--0000000000001710810618973e8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I am building some applications =
in=C2=A05.15.0-102-generic #112~20.04.1-Ubuntu. My yocto recipes aeh buildi=
ng successfully but I am unable to see any package folders under the tmp di=
rectory. I see only=C2=A0log files under temp are created. Nothing else. Ca=
n I know if I am missing any configuration?=C2=A0</div><div><br></div><div>=
tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/marvell-umsd/3.0.7-r0$ =
ls -ll<br>total 12<br>drwxr-xr-x 2 sbaby sbaby 12288 May 16 12:26 temp<br><=
/div><div><br></div><div>This is valid for other recipes=C2=A0as well.=C2=
=A0</div><div><br></div><div>/build/tmp/work/cortexa5t2hf-neon-vfpv4-poky-l=
inux-gnueabi/libgcc/11.4.0-r0$ ls<br>temp<br></div><div><br></div><div><br>=
</div><div>Regards</div><div>Simon</div><div><br></div><div><br></div></div=
>

--0000000000001710810618973e8e--

