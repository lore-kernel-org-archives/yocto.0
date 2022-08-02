Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99681C00140
	for <webhook@archiver.kernel.org>; Tue,  2 Aug 2022 13:57:02 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web12.6346.1659448620191486345
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Aug 2022 06:57:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=A28Xdxm8;
 spf=pass (domain: gmail.com, ip: 209.85.208.47,
 mailfrom: jpewhacker@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id z22so17723169edd.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 02 Aug 2022 06:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=559ir3Wkj7x78VvRWZRRVaPqG2s2MwkHY7oyT4cUBTM=;
        b=A28Xdxm8mSVWSxfK6hQju9wWGsnFW/W/k5Mv2NwEhEVh4mY3vUsVR5HFplv21AF5nu
         Sufy219neYzqFBKcvX0SHRU2/qDH40wrWxrF6rS5F3MjQCUVAwPQUdaJ34qKq4sv9Zhl
         4SBjrmVHSYbQ6vUE6JZAl4Mhn1pZyBtpKo4MCWqqek4KA19MpoeUsXKRvHzAZANEo254
         M3x44Dxwml8VX8WjgOQzdZXlFXXZk31zZ7WhKr3iCGm4ioNHGdYc3Tb5KlHj7gNFERoT
         Xe+u6j76PzfnfpwnfOr3wSQa7nuwZ94xda/nDfNBn45x16jn2GgSuTcc5iTHkpbsXmsM
         +Wdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=559ir3Wkj7x78VvRWZRRVaPqG2s2MwkHY7oyT4cUBTM=;
        b=ApkUDXUyRauusCtNNyIYewBnQcjFH2ZrWdJ5u0dLQ28vJ2ZfndH4upo2g7RePtJ5in
         toRH5/Di4AQJZcdXFu5gEa+W0tJchylox/BwQtS2eNnDQ+5TtnSheBfc4hMfblNwqcFA
         0IExZinTI3lbXCXUEH2trm/QM5ecmtd9sLIdcWA+5nr9xK7U1/1NMTh6jnQtC5v91ax7
         h0BYa7MgtVoKZjPexdletVgxeSqrDfVgvGM+02OSomvTdWk2Reoy52LHrsJuuZQBLYbC
         doEmR3wipB0CGBtY/ri63wV15yxTYR+92+oiawQPjNZfHmhTvz8siKQAWBkhXKH3WQoE
         1vVQ==
X-Gm-Message-State: AJIora96hNzpzOO+H4IdkmGGKY17YNr/0colneLklrpRPV5MjRsYCeOn
	cFFd2yxgsc31wqVK/doLT94addyosOlaciiV97M=
X-Google-Smtp-Source: 
 AGRyM1sGA3+XXNuXwj1Pa3P07UjhVwKw878dCj9R2mUEO+bSPq/1ZbYrraArnQrXHIneqf/UXDpTQvduWdu8fpEfUAY=
X-Received: by 2002:a05:6402:50cf:b0:43c:7d1:df75 with SMTP id
 h15-20020a05640250cf00b0043c07d1df75mr20817364edb.72.1659448618516; Tue, 02
 Aug 2022 06:56:58 -0700 (PDT)
MIME-Version: 1.0
References: <oqsz.1659447842876164805.WW8H@lists.yoctoproject.org>
In-Reply-To: <oqsz.1659447842876164805.WW8H@lists.yoctoproject.org>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Tue, 2 Aug 2022 08:56:47 -0500
Message-ID: 
 <CAJdd5Gbbh3gSuKtxAAHm-tc0er_EA93QCq+yyiHQ2YMWHC6cfg@mail.gmail.com>
Subject: Re: [yocto] BBClass function and symbolic link (symlink) ... I throw
 in the towel #python #bitbake #kirkstone
To: martin.leduc@luminator.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Aug 2022 13:57:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57730

On Tue, Aug 2, 2022 at 8:44 AM Martin Leduc via lists.yoctoproject.org
<martin.leduc=3Dluminator.com@lists.yoctoproject.org> wrote:
>
> Hi team,
>
> Well, I throw in the towel.  But it's looks like so simple .... for me =
=F0=9F=A4=A3=F0=9F=A4=A3.
>
> I've a function to replace the version file in /etc/version.  This functi=
on is integrated into my mybase-image.bbclass, defined in my layer and I ad=
d, in my core-image-minimal.bbappend recipe inherit mybase-image.bbclass.
>
> In my bbclass, I call my function using
>
> ROOTFS_POSTPROCESS_COMMAND +=3D " \
>     set_version_file ; \
> "
>
> My function is written like this
> set_version_file() {
>     bbplain "set_version_file BEGIN"
>     mkdir -p ${IMAGE_ROOTFS}/etc/tmp/
>     echo ${PV} > ${IMAGE_ROOTFS}/etc/tmp/version
>     chmod 644 ${IMAGE_ROOTFS}/etc/tmp/version
>     rm ${IMAGE_ROOTFS}/etc/version
>     ln -sf /etc/tmp/version "${IMAGE_ROOTFS}/etc/version"
> }
> Note: /etc/tmp is just for the purpose of this test
>
> I mean, I don't try to do anything outstanding but the ln -sf line makes =
my compilation crash BUT.... it works like a charm with Warrior but Kirksto=
ne rejects "ln -sf" command.

Can you provide a little more detail about how it crashes? Also, I'm
not quite clear what you mean by "works like a charm with Warrior"; it
sounds like something still isn't working in Warrior that you need, or
just in Kirkstone?

>
> I'm definitely not the only one who adds symlinks to the recipes
>
> I've also tried:
>
> lnr
> inherit relative_symlinks (don't have any impact but I've given it a try)=
,
> from the poky folder I've tried grep -r "ln" ./* | grep bbclass (to valid=
ate the syntax)
> Read many posts on this topic
>
>
> I'm unable to find where is my issue.
>
> Any ideas are welcome, even if it works like a charm on Warrior but not i=
n Kirkstone.
>
> BR,
> Martin
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57729): https://lists.yoctoproject.org/g/yocto/messag=
e/57729
> Mute This Topic: https://lists.yoctoproject.org/mt/92770329/3616693
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkst=
one
> Mute #python:https://lists.yoctoproject.org/g/yocto/mutehashtag/python
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [JPEWhacker@gma=
il.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

