Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FF7EEE49AD
	for <webhook@archiver.kernel.org>; Wed, 11 Sep 2024 13:56:44 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.22293.1726063000600031863
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Sep 2024 06:56:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eNEpsC1q;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: joel.winarske@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2d889ba25f7so4375032a91.0
        for <yocto@lists.yoctoproject.org>; Wed, 11 Sep 2024 06:56:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726063000; x=1726667800; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IlfuEtwQVIR8e5hVd7SlYEhwo/cUEv5ZOL5hxWcr6cg=;
        b=eNEpsC1qHG2k6vScniNb8JVohqUPaIkhGJULWzCBIaAILKcS6FD6KtuWJ5ayS9zHFi
         0ZyPURfucqdJyCAvhO3csujOhUINZ030KrqV3A6TSdmYCz7162smsJXvUOGd2l2DUQQR
         JIoCx6Cnil+QtGfSgVhpURDUPnbbmBE2r98QJIzK7SoJJyCc9qngwLZEMXujfzqnq1gf
         Vcw75qjaIFSPcPMu2/cjdVfxm/U8bhIYVH90xheA1+i9SbySm2VmFaGcwnQoGypsJr5p
         ZyXibcEpP8lTWdMWuorEE3Ti80q97J1c2KJRTpdO7h2wN4Ma/YWGHAyhDzMm2a2R5uOc
         mR6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726063000; x=1726667800;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IlfuEtwQVIR8e5hVd7SlYEhwo/cUEv5ZOL5hxWcr6cg=;
        b=Mzc/epHFfHzk57n2BNof54PaucrqisAHV4T9shYrP9UWW1s0jaFhVQ+w6KujdBpB2/
         7UaF4+7fSQeYdfx33RkGjYZy6qpATmK9aVqS0RPWuQer79AZLXIsC9Se4glpPUXiyVy3
         zEM0SXZ3KqCtDBX7TmIgDuqR1vXwevyVnQBVggqXc9PHiGyIRJShdSjjVUtpyoVSo/L5
         +OMEeoxxrjmLh3X/Whe9rOkJ/cjRbfHSw0c6eZ7ETp4ODtUvhx4lhnsyOxy/mA8FIMNl
         Rpfs16zxsOtPUuxMpqqNrNubxWWeK6qbSZ5nQPiECE8AmAIiNkhTzsm9VNH8q/qTE4mr
         4ufQ==
X-Gm-Message-State: AOJu0Yz/sqs9Y9eWfzZl2bTzlGWvDJjzI1MKn+f0o4laU7drnfpx/g3J
	drx5CcIpLou4UKcTR3kpzJyZjuvCGX6pfm6wEjTypb02LfkWV5DRQ3Ng5/lLktSqNyMdfRKG6TW
	e4Lcg9F0qSuL0Cx6ufH9XWmY+ZFVIGWZa
X-Google-Smtp-Source: AGHT+IHvUVzNGKn/CDhw0o+pFORSt2nm+Yk6aTPU5rjEyRIadgdCVSz78z9uPrTuIZuj42VtsQhlTNfeCM0PXEbGjU0=
X-Received: by 2002:a17:90a:e48:b0:2d8:8430:8a91 with SMTP id
 98e67ed59e1d1-2dad4efda46mr20416206a91.10.1726062999526; Wed, 11 Sep 2024
 06:56:39 -0700 (PDT)
MIME-Version: 1.0
From: Joel Winarske <joel.winarske@gmail.com>
Date: Wed, 11 Sep 2024 06:56:26 -0700
Message-ID: <CABKMkPK18FnhuOT8ydnLXw-n-e_Y8rW_vg7AzwG4qgnXdsHQwQ@mail.gmail.com>
Subject: [scarthgap] dwarfsrcfiles + static lib built with clang
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f2693f0621d85bda"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Sep 2024 13:56:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63822

--000000000000f2693f0621d85bda
Content-Type: text/plain; charset="UTF-8"

Seeing this error when installing archive file to ${PN}-staticdev, (not
prior seen on kirkstone or dunfell):

```
ERROR: dwarfsrcfiles failed with exit code 1 (cmd was ['dwarfsrcfiles',
'/mnt/raid10/yocto/master/raspberry-pi5/tmp/work/cortexa76-poky-linux/filament-vk/1.54.3/package/usr/lib/filament/libfilamat.a']):
dwarfsrcfiles:
/mnt/raid10/yocto/master/raspberry-pi5/tmp/work/cortexa76-poky-linux/filament-vk/1.54.3/package/usr/lib/filament/libfilamat.a:
not a valid ELF file
```

Running readelf -h on the file I get:

`readelf: Error: This is a LLVM bitcode file - try extracing and then using
llvm-bcanalyzer`

Is there an override to handle clang generated archives?

--000000000000f2693f0621d85bda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Seeing this error when installing archive file to=C2=A0${P=
N}-staticdev, (not prior seen on kirkstone or dunfell):<br><div><br></div><=
div>```<br></div><div>ERROR: dwarfsrcfiles failed with exit code 1 (cmd was=
 [&#39;dwarfsrcfiles&#39;, &#39;/mnt/raid10/yocto/master/raspberry-pi5/tmp/=
work/cortexa76-poky-linux/filament-vk/1.54.3/package/usr/lib/filament/libfi=
lamat.a&#39;]):<br>dwarfsrcfiles: /mnt/raid10/yocto/master/raspberry-pi5/tm=
p/work/cortexa76-poky-linux/filament-vk/1.54.3/package/usr/lib/filament/lib=
filamat.a: not a valid ELF file</div><div>```</div><div><br></div><div></di=
v><div></div><div>Running readelf -h on the file I get:</div><div><br></div=
><div>`readelf: Error: This is a LLVM bitcode file - try extracing and then=
 using llvm-bcanalyzer`</div><div><br></div><div>Is there an override to ha=
ndle clang generated archives?<br></div></div>

--000000000000f2693f0621d85bda--

