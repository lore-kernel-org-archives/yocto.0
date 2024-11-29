Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E695D6EBF0
	for <webhook@archiver.kernel.org>; Fri, 29 Nov 2024 09:00:43 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web11.112432.1732870838507656780
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Nov 2024 01:00:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WarnR7YT;
 spf=pass (domain: gmail.com, ip: 209.85.222.180, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-7b66a740de4so113596085a.3
        for <yocto@lists.yoctoproject.org>; Fri, 29 Nov 2024 01:00:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732870837; x=1733475637; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eebQudJUnX/7KkjvfXBBf8bv8cQuXgz5VTsnK0YAKCw=;
        b=WarnR7YTmnxnA0bN7rg47Suq7oieLM3Qdtk7uDaSB0xJzDL1d5uS+n/eLAt6LxNC4H
         uiqO285Wkw74mVCQ0eT8iWgrHKjd1h0zAQNYBLm1w6gC63tUukWh6ESQpWKUWyC6YaSd
         53KPmRSb3od+k3iJQ/9kkJWN8hmpJlQHTzXyX5pg4C4TVTg/Na62Z6rafOr/VNKyUTto
         UfgLzQYRm/zLk3XIG0xMHot+bRvu2h3M1mQLNHoadA9koNwsroz+8fybP4Q66DU162v3
         XejglYNDUVnLKrIxw3FjahA0stCr/xi8B6xHDVGxxhhzRXQ6eTvCGMRbw6sFlN8G5XP6
         NIWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732870837; x=1733475637;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eebQudJUnX/7KkjvfXBBf8bv8cQuXgz5VTsnK0YAKCw=;
        b=XRuc9+fnONdeiBDDoXU0RVPPmXBUH14AO9f6bpkDRJY2k91czX6T8QFFtMNZ0ktUoE
         381qdHbKx3tOkS22uOFwH2mwcNo1EOK7zTSMCTeqoCirx1WG7qGB7aK7A57dL3I4U7pG
         jdXo2Y+p3UwtUR9z9GbPXYwOnXSKVGUcEN0MBItnMj5hMkVMvmLBquAp0zZESpP0E3hW
         Xx6qWYrz6DnC6ZVoKMNiNR7fHqzINz3xF654sFkb8ZeBhB+oFlaqUvakcuiICZWP1RtA
         YgxPMFU8gZLxGS5TVypUVyPXj452x1u6gsGONh6ZO5h6zTbwAZlfPM/tuZPYlj/c38xh
         cW6Q==
X-Gm-Message-State: AOJu0YzMlagnkXJfTJeRQnHlTWOUKucSAA2vziW6t3f21dD5Qm1btr2L
	blRDdBJPqJaeNpP9UWndRdixqUAkt52NDGQoSPinnlnMxo2Nmx8wb7ZR4iRDMPzR1jTTKgTiI3u
	0qeGGosrhdo1q1owgJQbA43bj5e74Qg==
X-Gm-Gg: ASbGncuJspt7WKL4YuuBgad9XwmzRmquCWKV8gBcCo89yyqA7ue1HEIFuj+HZeQGL3o
	jYEToRHhSdkI5mcA/AF4oU3fk9Es1/QCL/h85/0K2Liz06h1QXUK2T/OAqvTVvb0OVA==
X-Google-Smtp-Source: AGHT+IH6GArNuZ8e0RjaVhY/pHdP3pZgv49HIqZUZXCYim8w7Hs6FDxZg4IgDlqdOnnnWl9eWBMCd6mUxQyu98EQVC4=
X-Received: by 2002:a0c:c509:0:b0:6d8:7ed4:336a with SMTP id
 6a1803df08f44-6d87ed43781mr43163196d6.31.1732870837347; Fri, 29 Nov 2024
 01:00:37 -0800 (PST)
MIME-Version: 1.0
References: <CALvuYr=oud5yZHATSO0PSxGsvY6BhAUGiP9kq=oZE5o-c5MgUA@mail.gmail.com>
In-Reply-To: <CALvuYr=oud5yZHATSO0PSxGsvY6BhAUGiP9kq=oZE5o-c5MgUA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 29 Nov 2024 10:00:26 +0100
Message-ID: <CANNYZj8i_jv0bgYfmsw0dcYSFtmXFDa_reDDDfu_Exs8fSRUcQ@mail.gmail.com>
Subject: Re: [yocto] Backporting in Yocto
To: yocto@lists.yoctoproject.org, posinaaravind0205@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Nov 2024 09:00:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64379

It's very difficult to help if there's no way to replicate the failing
build and look into the build directory. At least you should show the
failing recipe, so we can check there are no obvious mistakes in it.

Alex

On Fri, 29 Nov 2024 at 07:32, aravind posina via
lists.yoctoproject.org
<posinaaravind0205=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hello All,
>
> I'm working on yocto to develop a layer .In that customer wants some out =
source wifi related module files . From yocto I'm tring to build the .ko fi=
les into the rootfs . But whenever i try to compile my recipe i'm getting s=
ome error. in this can can anyone help out for this one . does i get know h=
ow to do backporting through yocto.below i'll mention the error cases.
>
>
> ERROR: backports-cypress-5.15.58-r0 do_compile: oe_runmake failed
> ERROR: backports-cypress-5.15.58-r0 do_compile: ExecutionError('/home/phy=
tec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux=
-gnueabi/backports-cypress/5.15.58-r0/temp/run.do_compile.2980720', 1, None=
, None)
> ERROR: Logfile of failure stored in: /home/phytec/sanava-kernel/yocto/bui=
ld/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/=
5.15.58-r0/temp/log.do_compile.2980720
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 4 KERNEL_SRC=3D/home/phytec/sanava-kernel/yocto/build/tmp=
/work-shared/phyboard-segin-imx6ul-7/kernel-source KLIB=3D/home/phytec/sana=
va-kernel/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-source=
 KLIB_BUILD=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboa=
rd-segin-imx6ul-7/kernel-build-artifacts modules
> | make[4]: 'conf' is up to date.
> | #
> | # configuration written to .config
> | #
> | Building backport-include/backport/autoconf.h ... done.
> | make[3]: *** No rule to make target 'modules'.  Stop.
> | make[2]: *** [Makefile.build:13: modules] Error 2
> | make[1]: *** [Makefile.real:88: modules] Error 2
> | make: *** [Makefile:43: modules] Error 2
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: ExecutionError('/home/phytec/sanava-kernel/yocto/build/tmp/work/=
phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/t=
emp/run.do_compile.2980720', 1, None, None)
> ERROR: Task (/home/phytec/sanava-kernel/yocto/sources/meta-sanava/meta-bs=
p/recipes-kernel/backports/backports-cypress_5.15.58.bb:do_compile) failed =
with exit code '1'
> NOTE: Tasks Summary: Attempted 670 tasks of which 652 didn't need to be r=
erun and 1 failed.
> NOTE: Writing buildhistory
> NOTE: Writing buildhistory took: 2 seconds
>
> Summary: 1 task failed:
>   /home/phytec/sanava-kernel/yocto/sources/meta-sanava/meta-bsp/recipes-k=
ernel/backports/backports-cypress_5.15.58.bb:do_compile
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>
> Thank & regards
> Aravind P
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64376): https://lists.yoctoproject.org/g/yocto/messag=
e/64376
> Mute This Topic: https://lists.yoctoproject.org/mt/109831107/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

