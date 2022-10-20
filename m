Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72EAFC4332F
	for <webhook@archiver.kernel.org>; Thu, 20 Oct 2022 09:32:35 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web09.7734.1666258353679575806
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Oct 2022 02:32:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FC5xoCJ3;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id g1so32508178lfu.12
        for <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 02:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yqi+w5yfRpM+DkF1ttjA3uY2WCR6+YW5UwFlBGjrK4Q=;
        b=FC5xoCJ3FLoPC/23ezeyqZbyOZZy36HiFcmMPfeUfwd0uOLYZAlm1F2p3NlQw2BfhT
         K1PFtznysqm3ebm5gTMpV6j1eAfm7aexsZArjes7sSX8qvQN/FaAtlKpvXlZ2bljS8Em
         j/X2/wAzZA1KtJoC8UuCkxrOKYpT5pjYy1jN5ek5YLqEbB/ooEiRo72CkhX0LhKvVgW6
         lbBC5EzyYGLJaNSIEoMa96iX2OibYmY2p9qYLGpS5IG/gulynjaf+yF72TWE8fqhIq9z
         dSrM4eRfCNnPB9u42XbrBinRTmNSjRgp4Av3f5iS6+rtu4MEOr72SydUxGPagEI2y1bJ
         6Img==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yqi+w5yfRpM+DkF1ttjA3uY2WCR6+YW5UwFlBGjrK4Q=;
        b=Jo5qCwI9WxMogtTETdKJnqUq4ySEQI30u6XxPHt2IdlPJvaqH5oCq3CfNvPuPUyMoo
         CMrpQ9XVpjVlhgRxXIRLnzar88g5tRav+rpZtWLxCRFZswVDPaty1yxBRr+aoR79eqoS
         og3Z6iynV9eaOI6WWrHqGkIG02l6r74fHBEY6OVdELYIlMUt3r8g6agscbY7UOKiUhc2
         YE4e6vi5RTZabAnPVCXeJH1zi6dS6m2hY35YefQgEkvxYXdp3C2QWjlWNgSAwFqf+Bc6
         axXyc42o/5MNSy/k5EKRlJv+w4dFezU4lqx3xnhQL6QMrfkprKNmigkDH4vRRVVCIzqP
         z1Cg==
X-Gm-Message-State: ACrzQf0kdYffJY8b0IiCyvDFmQbYCzZN9VXEXuMbaLxKNwUwSFpTm5FX
	zRbPcDve/wWrvjPim4CbC9V+pFcVEPXphIZbI9I=
X-Google-Smtp-Source: AMsMyM6p7HwRlhIVRPMqoJeq//AuNAIhhrhbKpINHZtQXILSI71cAFnuD+fcCHwi2n4mC4hc59lqaSVN7DRg/CuibcY=
X-Received: by 2002:ac2:5939:0:b0:4a4:5de1:681a with SMTP id
 v25-20020ac25939000000b004a45de1681amr3997502lfi.263.1666258351469; Thu, 20
 Oct 2022 02:32:31 -0700 (PDT)
MIME-Version: 1.0
References: <1028eccc021a4bf5ab2520b3c4fb82a6@amazon.de>
In-Reply-To: <1028eccc021a4bf5ab2520b3c4fb82a6@amazon.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 20 Oct 2022 11:32:19 +0200
Message-ID: <CANNYZj9O+UnNrdi1vU1LGw4GUDJRJW3FfGubRdjEp7VZHJZPxQ@mail.gmail.com>
Subject: Re: [yocto] devtool upgrade for go recipes with git "broken"
To: throos@amazon.de
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 09:32:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58373

It helps if you show the exact error, and a way to reproduce this
using a minimal setup (ideally only poky).

Alex

On Thu, 20 Oct 2022 at 11:18, Thomas Roos via lists.yoctoproject.org
<throos=3Damazon.de@lists.yoctoproject.org> wrote:
>
> Hi,
> when doing a "devtool upgrade" for a recipe which inherits "go" and using=
 a SRC_URI to a git repo this will fail. Complaining that the git revision =
is "out of tree" - I found that the additional "src" folder inside the chec=
kout out sources is causing this problem and I wondering if this is necessa=
ry. I'm not a go programmer, but when changing this the recipe seems to pro=
duce the same result.
> I did change our go recipe to don't use this additional src folder by ove=
rwriting the go_do_upack and go_do_configure method. Here: https://github.c=
om/aws4embeddedlinux/meta-aws/blob/942651026c7a91b9703609d7658bd1649350acaf=
/recipes-support/amazon-ssm-agent/amazon-ssm-agent_3.1.1856.0.bb
> Is this a bug or do anybody know why go use that additional src folder?
>
>
> Cheers,
> Thomas
>
>
>
>
> Amazon Web Services EMEA SARL
> 38 avenue John F. Kennedy, L-1855 Luxembourg
> Sitz der Gesellschaft: L-1855 Luxemburg
> eingetragen im Luxemburgischen Handelsregister unter R.C.S. B186284
>
> Amazon Web Services EMEA SARL, Niederlassung Deutschland
> Marcel-Breuer-Str. 12, D-80807 Muenchen
> Sitz der Zweigniederlassung: Muenchen
> eingetragen im Handelsregister des Amtsgerichts Muenchen unter HRB 242240=
, USt-ID DE317013094
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58372): https://lists.yoctoproject.org/g/yocto/messag=
e/58372
> Mute This Topic: https://lists.yoctoproject.org/mt/94449982/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

