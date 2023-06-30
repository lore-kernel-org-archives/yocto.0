Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF356EB64D7
	for <webhook@archiver.kernel.org>; Fri, 30 Jun 2023 09:10:56 +0000 (UTC)
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
 by mx.groups.io with SMTP id smtpd.web10.8045.1688116251709702558
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Jun 2023 02:10:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=obsly33e;
 spf=pass (domain: gmail.com, ip: 209.85.161.48, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-565a8d9d832so1123009eaf.1
        for <yocto@lists.yoctoproject.org>; Fri, 30 Jun 2023 02:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688116251; x=1690708251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h/xjsyRbe3A6JgGdr2Wq0CR2oxHThMZMtbva6CBB0vg=;
        b=obsly33exucqTYroEEGAseAzgl0cWf4+I7a9F6feE9a3uWsBbhyHPvPtfPD1WQRBGV
         eJNqNCw1a8izMYXF+Gy2AQeW2xgBUXvmWhdO8txqu0haIbwRlQc7+mAIkDdIDuDNJ41g
         fPA6d8Y8zXLYJp2VXnwhD7YyM8WBpxcbzy1yU+SfQeNxGR/EyeKrY4gdywE0K5k3Baz8
         nRyHqG3KJs4F51dXS4/LeG5/vfG4KbqcnGT726wFUYhznJcSi5DKafwwCcTp3PF4aTyN
         hK293m24vsZlZ4155aYh8UeWwHgJXWSKycti+R9qZ3XqRKwQi5EMXXNFhaq7StI1GhQR
         TIXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688116251; x=1690708251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h/xjsyRbe3A6JgGdr2Wq0CR2oxHThMZMtbva6CBB0vg=;
        b=be2Dp0QDEo3chTgX68AQOwUalePszvpudD/F1N1AJwR6uWCj6Qzb8agcLHagA9as1a
         qKzthaYCuDdmuh+teLyuJ6H1QdWFX7TcUvUpb7rIO+OGGaPK7+SX3Te8hKk0b9OWMKG5
         K6SUadcpBdUR/tpiOsyV4eITNjC3oC9FtDmEGzxtFXMjqfN0K5OnWvc0slUbw93Drqhw
         3/vw0olWg0ZD7iH+QaiU2ExM6OsoGQV4+l6MMQhXh+AfWrowFhunDAcrEHGCcEhrxRUX
         HrgbsyIXjkSyVsicbUxLFIpH957XWjRGFyT9i6sWR/JRHw1RoH/7lbBMTjgrQ/nP1r+E
         XFDw==
X-Gm-Message-State: AC+VfDyRrKfaoF61h7kquLJlBp/9Mxm9HcMagIIgJsfUOKXcSB/Cm9Rx
	CgDlqMZRkDhxYbt2ow2aVbsfQXPo33uog9KLqb4=
X-Google-Smtp-Source: ACHHUZ6+HQGsh6B6qq04vc2jqp/B/X/ofZtQWrlRFYF/RNe0Z50SGLjZaFNBfpTN4+VqZBwrIObqKwUI+VwkwvMs7Ic=
X-Received: by 2002:a4a:4f44:0:b0:565:ccb4:1b81 with SMTP id
 c65-20020a4a4f44000000b00565ccb41b81mr1810364oob.2.1688116250642; Fri, 30 Jun
 2023 02:10:50 -0700 (PDT)
MIME-Version: 1.0
References: <c561ff89da6b3d966fef9a57c3b0dd8e732639e6.camel@linuxfoundation.org>
 <16989.1688092592478812912@lists.yoctoproject.org>
In-Reply-To: <16989.1688092592478812912@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 30 Jun 2023 11:10:24 +0200
Message-ID: <CAMKF1spFrVX50GoXh4oq7v3wf6XPO5+K+dN9bm1D1h5Q-u+CXg@mail.gmail.com>
Subject: Re: [yocto] report one objcopy bug and fix
To: cddiao@ambarella.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Jun 2023 09:10:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60483

On Fri, Jun 30, 2023 at 4:36=E2=80=AFAM <cddiao@ambarella.com> wrote:
>
> Hi Richard,
>      How about to remove "-S" in the tar commands ?

This would make the archives not use sparse optimization and increase
the size of resulting archives. I think it will
penalize all other hosts. I would just suggest calling out a
workaround for a particular version of distro where it's problematic
and move on. anyway 20.04 LTS is already at 20.04.6 at the moment.

>      I only tested 20.04.3 and 20.04.6. I didn't test the other distro, s=
o I'm not sure if there's anything wrong with the other distro.
>     To be on the safe side, remove the "-S" can solve the problem fundame=
ntally.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60482): https://lists.yoctoproject.org/g/yocto/messag=
e/60482
> Mute This Topic: https://lists.yoctoproject.org/mt/99828392/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

