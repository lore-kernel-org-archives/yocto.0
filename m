Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E557C433EF
	for <webhook@archiver.kernel.org>; Sat, 23 Jul 2022 00:38:30 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web11.1843.1658536700695500056
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jul 2022 17:38:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=UU1to4hq;
 spf=pass (domain: gmail.com, ip: 209.85.222.178,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f178.google.com with SMTP id f14so4849872qkm.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jul 2022 17:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=SfDjCFH8NPvri4K8jKf+BtiU5rDtEk6Ud9NFJcFi9Ns=;
        b=UU1to4hqG2OcEK+S3TVcaxbuEHss3IyCH5vKYbUkyGj6mLJyqH3/xJOMnmzK0ZwC4G
         yAA5t0GCCAgPjb3o5xAp5fz/ypZvUHbLWABDh73fmRcrbg47nMZW2m3wq9tXBoZIsl7S
         lqAYktHbbpRojygeROWKKAAQrGprNHpSEJVVzPZjWA89OYXTXkVA4hYNzQUV+UUj+dNU
         aRdjiXjNT4FLzJRUB6Kdw5RHCmMDYbJCrjmGJ6jN+PUkBT24sSOevzFo/AdIBcxysN+x
         MHaN/YimkI+gEyJLs+cVEOcOvhk9bdLDfxs5EoS5lZ4ZWCeWHEleVpirmoZ7STkQSPBy
         1xgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=SfDjCFH8NPvri4K8jKf+BtiU5rDtEk6Ud9NFJcFi9Ns=;
        b=DBd2U2/o+Y18MCRkrJSYSThJiBSa0ldCxBjFoxQL2RtiSdSJEcYBvgBlvYjMmoC783
         FFZgFetKsFpQRcyU0sWZSHPXF7Ei7sBaWTGyVKqI7Yk7MPb5Wjc4UPmmyz3i0+R1UeNC
         8A0PHFNvohEQ/pazanrq9Z+fqzEC9n2PzoQqSq3BDimR2b+adPculu+5HGyDmqWzsYK/
         B4lutFTUHDJ+YYp4o2wOvc/EcP1LW/zfylpKOFraKeKVS//GYJhfn1pHeP7Pv7MACft4
         aiQxQTGG+1JvabmtWFrSFyeH7/U1fjFVwkZjeqgKxDlgWupwOPtotF5Sz51Q0MWB6llc
         xfeA==
X-Gm-Message-State: AJIora+M5Kc6ZC90jgHgng5Tn7qvFuNPFhF+ZZfWVzCcAzc69GjsRaLz
	gKpeXZjksQ+pICCdj7Oh6iDOXcCvOob3XQATx/lUcdURcjAw6g==
X-Google-Smtp-Source: 
 AGRyM1uu6Zl0hltpjJvwxakrHRv4QwQZUx+s6KOazq4g4RBFXFvf0oPLNGGKz2P18TQpknG9G7xs+XskxoLZmRFDaEc=
X-Received: by 2002:a05:620a:17a3:b0:6b5:fc1e:40e1 with SMTP id
 ay35-20020a05620a17a300b006b5fc1e40e1mr1911074qkb.227.1658536699605; Fri, 22
 Jul 2022 17:38:19 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR15MB5055F60DA7F873193E3AD877CB909@PH0PR15MB5055.namprd15.prod.outlook.com>
In-Reply-To: 
 <PH0PR15MB5055F60DA7F873193E3AD877CB909@PH0PR15MB5055.namprd15.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 22 Jul 2022 20:37:53 -0400
Message-ID: 
 <CAMKF1srE40FXoPynBsUxtaOjj+BdJHu4SoNQXNMDFmFwjYvt0g@mail.gmail.com>
Subject: Re: [yocto] Adding and using user in more than one recipe
To: Greg Wilson-Lindberg <gwilson@sakuraus.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 23 Jul 2022 00:38:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57629

On Fri, Jul 22, 2022 at 5:23 PM Greg Wilson-Lindberg
<gwilson@sakuraus.com> wrote:
>
> Hello list,
>
> I=E2=80=99m trying to understand how the extrauser and adduser packages a=
re used and interact in kirkstone.
>
>
>
> I need to add a user and I would like to also use this user in another re=
cipe. This had been working in our previous builds using version of Yocto u=
p to hardnot. We are in the process of updating to kirkstone and the user s=
tuff has now broken and I am not making any sense out of the documentation.
>
>
>
> How do I create a user in one recipe and then use that user in another re=
cipe? Can I even do that, or do I need to create the user in more than one =
recipe with a hard coded UID, GID?
>
>

you can do it in image recipe

inherit extrausers

IMAGE_FEATURES:remove =3D "debug-tweaks"

EXTRA_USERS_PARAMS +=3D "\
    useradd scribbledeedoo; \
    usermod -p '$(openssl passwd -6 diddleDoo5)' scribbledeedoo; \
    usermod -a -G adm scribbledeedoo; \
    usermod -a -G video scribbledeedoo; \
    usermod -a -G audio scribbledeedoo; \
    usermod -a -G systemd-journal scribbledeedoo; \
"

HTH

-Khem


>
> Regards,
>
> Greg Wilson-LIndberg
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57628): https://lists.yoctoproject.org/g/yocto/messag=
e/57628
> Mute This Topic: https://lists.yoctoproject.org/mt/92557070/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

