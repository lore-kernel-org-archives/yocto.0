Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DF04C27C40
	for <webhook@archiver.kernel.org>; Thu, 24 Aug 2023 00:23:42 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web11.62.1692836617021315104
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Aug 2023 17:23:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=Rdji6EkZ;
 spf=pass (domain: gmail.com, ip: 209.85.160.50, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-1c4c5375329so4143018fac.2
        for <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 17:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692836616; x=1693441416;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L1Rd0ek1SoC03CDeqFfxEY/dquG7ioP1L194kn/eZRk=;
        b=Rdji6EkZjGinlYVC4j36avj41ue8YXpOn7GeXNAofLyCa7IDNVYiWiy8gMVxXYSjje
         vHSbynd90Mm3KpR0vAnQY5ruv1I/N6Fe3/KOOZ82YlUZ58VWsRbUeEyLS6KDYuc3Tvxt
         CwMLQOmDMHNGVFIuHIhODwMpTqtBBKAAcgKdjIYdPqprhIsT15gtaWqvb3/s6gyZGJ6y
         ecc4nx3IKI4wt3gWJ5EA42w49p3jprPqArR69dSTgFB+HYSBrWml3NFrs04MLBoJmbFN
         bAY/g0EwB6ZWlg2TxJfhc/h+W7NCHRv1Ht1fKA+2Pnuf4Jw/1Ix+skCwal/YaD/7xi2d
         aQyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692836616; x=1693441416;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L1Rd0ek1SoC03CDeqFfxEY/dquG7ioP1L194kn/eZRk=;
        b=b/kYR34sGTsh1FvgkaCx34S9toKh1bG7kvZd3BotOO6Ffsnj3vPn/j2Qfa5ddF0Gvm
         yuTRvmvdYqdWKUfWUpT2sZ+3ciHietIN89RrJ4GLRzJPl9Hdl8ljfA6/1ChzyrYvA7pt
         k1xPmE0uk5ZEd2zAw45Byjb4I8bXYj2qOfc6JWE/z3VV+i1wldviB/a+0KyI0rawoPqQ
         hV74ZeBTFdVLIohBSu96uTBmhoopICmfJfeuFhyiLc2LXVk7mUrXEteQzN5c8MyXuiaC
         n1YOyO/qY0tQjsMjMfVSyzRlEyoOiYjPlrKX02WP8eUsV61IinF4tQS4wRfbyfsl5JM1
         n/zQ==
X-Gm-Message-State: AOJu0YwROwIGhJ8sfxjqtlMcWuJ525c9H+ICDKjN9UmaYgUQEfbv4kCm
	Nv/V5KmehuHhGTpvjHhch+avWLVzQcuSP9eeYSA=
X-Google-Smtp-Source: AGHT+IFZxwKexcdkv5hHTM1879FTFK9aipOwtZ6jEExGPE0iLy1enQycRxKrAjRrREnSrqc6Gw3lYdKj+yMHfGyOMwA=
X-Received: by 2002:a05:6870:c154:b0:1bb:3b94:c651 with SMTP id
 g20-20020a056870c15400b001bb3b94c651mr15661380oad.41.1692836616126; Wed, 23
 Aug 2023 17:23:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv34+oTQaT=9-QGkTdCFSJaC6CS=RB6SF=FQrOUssntoBSA@mail.gmail.com>
In-Reply-To: <CAAfyv34+oTQaT=9-QGkTdCFSJaC6CS=RB6SF=FQrOUssntoBSA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 23 Aug 2023 17:23:10 -0700
Message-ID: <CAMKF1sqe4sqEK6fO0nF2JKx-bGH6zxwZtKhbuxhDJC6=H+tJXA@mail.gmail.com>
Subject: Re: [yocto] [meta-virtualization] nerdctl broken in kirkstone
To: Marek Belisko <marek.belisko@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 00:23:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60869

which task is failing ?

On Wed, Aug 23, 2023 at 2:31=E2=80=AFPM Marek Belisko <marek.belisko@gmail.=
com> wrote:
>
> Hi,
>
> I'm trying to add nerdctl to an image using kirkstone release for meta-vi=
rtualization.
> I've added bbappend with following fix:
>
> SRC_URI =3D "git://github.com/containerd/nerdctl.git;name=3Dnerdcli;branc=
h=3Dmain;protocol=3Dhttps"
>
> (branch name in original recipe is master but main is required)
>
> but then anyways it fails with:
>
> rsync: [sender] change_dir "/data/projects/test/build/tmp/work/cortexa53-=
crypto-poky-linux/nerdctl/v0.18.0-r0/nerdctl-v0.18.0/src/import/vendor.fetc=
h/github.com/Masterminds/semver/v3" failed: No such file or directory (2)
> | rsync error: some files/attrs were not transferred (see previous errors=
) (code 23) at main.c(1327) [sender=3D3.2.5]
>
> And in ${BP} I cannot see any of those vendor stuff which should be prese=
nt. Is there some fix for that already pending or it's known issue?
>
> Thanks and BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60868): https://lists.yoctoproject.org/g/yocto/messag=
e/60868
> Mute This Topic: https://lists.yoctoproject.org/mt/100924569/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

