Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1AFDC7619A
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 05:30:19 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
 by mx.groups.io with SMTP id smtpd.web11.6979.1681191011667400787
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Apr 2023 22:30:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qp/r2jql;
 spf=pass (domain: gmail.com, ip: 209.85.160.52, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-1842d8976d9so8569725fac.9
        for <yocto@lists.yoctoproject.org>; Mon, 10 Apr 2023 22:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681191011;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e5twADI7MZZRDNLR9yAD1fYJ52qEgOEPCodNHo4cFTk=;
        b=qp/r2jql4aNmiEb2hdiJjLEdRjOD8VIvMcTlqSPDLU/AIHY0RE87zG7q3J4aoCd6jV
         MFZF6SvhPOjzT1F6qRDmRRgp1O232wJtbKItv+abxCjfZ6sOxaq4iiBzoN4vhUyGEzr3
         2+D0lHQIqOGcFOdp1qjL0vn+iUfQt1HirOQH3hNFTo5zrmPX1nXJuoqNvXlatV6mAY7k
         b8z44+ibw5lVzFPH9ghqp18uT+KyFxjpU9N1LlIfoFYEd1aiPpx5G31lnig0YGsHFC2v
         /b6IjTA5t3hmEeDJc/kFIma3na45Nv8pJQDSTCLQJ6lKh5P/YEB4ZzEu5RIXGlsGEp18
         9b3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681191011;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e5twADI7MZZRDNLR9yAD1fYJ52qEgOEPCodNHo4cFTk=;
        b=OWHfn2geSiuSln5UJm6efyKgspdK2DCiYR3/1zDG3QuoScwgLsYcQ8dZaZa3t5IlxS
         0gcZUe5EubxcpD/rVt2rY/FbcPL1QI1H+CEpM9bpWmhqFei/rs9cP5LCYWDOJO3Y7btk
         GoEltARW41ph9F2RpTuH/Rx/3LGZUjq7CwvLxemvV2RpjDnrh49BXJ0YnCF2WuS8+GIl
         o2eXGLwmJxpuaGA5jr2yeQ6REe8EZJEefIt+N3itCYaMZe+eNE3CIx0nuADnPSQptTbX
         If9CMa+IB75HKoReAb2Go/17iQiDTivfXLAC4lMiy4wlYGUenycz5P5YDvrJcUhb0AXm
         h7gQ==
X-Gm-Message-State: AAQBX9fkLveTg4qFj7Lv7Z0uHCGB3cO55cD7Uzu4NRpbXnrbndesF19t
	k6SlCSNj1hdynH/CnaJx3cVMqjiWtlMOJRR2mTQ=
X-Google-Smtp-Source: AKy350bFON+ovQSAU0Y3aEYxit7vsG8F8AZW/fJO/u7bVfa5VW5aU08jcTm51AG1qLyEmBeXHojdb7WB5d2rh9JcSBE=
X-Received: by 2002:a05:6870:4255:b0:184:1a2c:83df with SMTP id
 v21-20020a056870425500b001841a2c83dfmr734715oac.4.1681191010546; Mon, 10 Apr
 2023 22:30:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBngHdPMCNbXdv=ZKxy_HuW-FzoFgiw1OykgnuppHG0BkTw@mail.gmail.com>
In-Reply-To: <CAPJWBngHdPMCNbXdv=ZKxy_HuW-FzoFgiw1OykgnuppHG0BkTw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 10 Apr 2023 22:29:44 -0700
Message-ID: <CAMKF1sp+Y8ka1afMoBf-pfN1ZJMjMAo=MUetRasfV_ojd-WfdQ@mail.gmail.com>
Subject: Re: [yocto] Missing .o files.
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 05:30:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59666

On Mon, Apr 10, 2023 at 9:46=E2=80=AFPM MOHAMMED HASSAN
<hassanchattarki@gmail.com> wrote:
>
> Hi guys,
> Its my first time using yocto so I dont have much experience on this. I a=
m trying to cerate a .exe file for my target hardware. I am calling the mak=
efile using oe_runmake command but there are some missing .o files for whic=
h I have no solution. If you  have any idea where I can find the related .c=
 files for this (I am still a beginner at work) then I would be grateful to=
 you. There error is shown below
>
> ute-size.o build/attribute-storage.o build/attribute-table.o build/client=
-api.o build/message.o build/multi-network.o build/print.o build/print-form=
atter.o build/process-cluster-message.o build/process-global-message.o buil=
d/service-discovery-common.o build/time-util.o build/util.o build/af-main-h=
ost.o build/service-discovery-host.o  -lreadline -lncurses  -lm -lpthread -=
o ./build/exe/hostforEdge3
> | /home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/9.3.0/ld: cannot find Scrt1.o: No such file or d=
irectory
> | /home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/9.3.0/ld: cannot find crti.o: No such file or di=
rectory
> | /home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/9.3.0/ld: cannot find crtbeginS.o: No such file =
or directory
> | /home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/9.3.0/ld: cannot find -lreadline
> | /home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/9.3.0/ld: cannot find -lncurses
> | /home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/9.3.0/ld: cannot find -lm
> | /home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/9.3.0/ld: cannot find -lpthread
> | /home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/9.3.0/ld: cannot find -lgcc
> | /home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/9.3.0/ld: cannot find -lgcc_s
> | /home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/9.3.0/ld: cannot find -lc
> | /home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/9.3.0/ld: cannot find -lgcc
> | /home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/9.3.0/ld: cannot find -lgcc_s
> | /home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/9.3.0/ld: cannot find crtendS.o: No such file or=
 directory
> | /home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/9.3.0/ld: cannot find crtn.o: No such file or di=
rectory
> | collect2: error: ld returned 1 exit status
> | make: *** [Makefile:411: build/exe/hostforEdge3] Error 1
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
>

in the makefile set

LINKER =3D $(CC)
ARCHIVE =3D $(AR)

that might help

>
> Thanks
> Hassan
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59665): https://lists.yoctoproject.org/g/yocto/messag=
e/59665
> Mute This Topic: https://lists.yoctoproject.org/mt/98191767/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

