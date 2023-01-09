Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2156FC61DB3
	for <webhook@archiver.kernel.org>; Mon,  9 Jan 2023 08:15:17 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web11.66471.1673252112017768119
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Jan 2023 00:15:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fbtRnIaW;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id q2so8059690ljp.6
        for <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 00:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EBDe8TjXF74QkQ7v62SufwRMET5vRaJLhlmSLQ25Suo=;
        b=fbtRnIaWll2tx+jtN3Ij439M6ETn8bC51fa1keoT9brHgjcsluKTogaTUQuGBmfPeA
         6n6LmMghDSryVDTSIdvGCQlaaGWKaR30MgowjhWer41aFc9CZ9XXhAB/PfRgjuQs8bqi
         GPJvZFjy6eA2suTFxI9lp0I3Epsz5+NWgj5kpeugAEGeIW1e1HHVV0ZI0FYRz9GGikZI
         bymeWFuoB0Bof93ELwzu2xMmM8KWEzcXIQOTimJgU7CciNzlx/UbKS74Mx/BKXiwzt2R
         FsJLSfXSGlKZyOhs0mICfN0sYFjexQYqp8/xRy+sBS75znbIj4xRSdoLBEPQAx5zq4+U
         hdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EBDe8TjXF74QkQ7v62SufwRMET5vRaJLhlmSLQ25Suo=;
        b=7vFnMqod6SHDblzXhjkcznjJDRR3emObX0wVZeTBNOaHu0cRRrgS1/8sVmcUwGKgnt
         PpcXUFWUkm/ghuzaVDP/V+RXESfJiRN2/fqeMQRDSPK1X09zBOL2U4VthWlOeZeLVOom
         NLC3URb730TE2hK5sRdRrTMomdphhtzIvHOUOwwrwOHTvK7nHLgOeYgHl/SU1egM3W9P
         QSqzBAi6QbKQTrEIpk6Iqk7Qf8rvkP+JWt85HK4/bJ84M1Fj9dFlndtWnuUi/yXe8Ngk
         BSngegwwgD3SaiH7cfmmMLRC6XtlgdAe6vVrtFxk30YO5dKQ9myGznjom0ZKd1rsJzpd
         3rdA==
X-Gm-Message-State: AFqh2kp1TmppLQBrucaS6nAO9G8AN10YQQ6GXCP+bVND8KgUdc9li8FD
	7m1NPQyPsHYYgiJ1Zdb4/gtknWibG+W7KuqK4AI=
X-Google-Smtp-Source: AMrXdXspodlHpdIA26WceycEkGlKYhM71YQ2gC/DzRO7vKW+c6AcY61SwT8Ok9Yysd9a8/NmG7iZRc8s+vs7TFk5DrA=
X-Received: by 2002:a2e:a813:0:b0:277:8759:bf65 with SMTP id
 l19-20020a2ea813000000b002778759bf65mr2804297ljq.108.1673252109158; Mon, 09
 Jan 2023 00:15:09 -0800 (PST)
MIME-Version: 1.0
References: <XDvm.1673251265599401127.EHD3@lists.yoctoproject.org>
In-Reply-To: <XDvm.1673251265599401127.EHD3@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 9 Jan 2023 09:14:57 +0100
Message-ID: <CANNYZj_+8shYrWpSeeGAQoS-j9vC0bOwdaTgRRKMUzrqMXUE2g@mail.gmail.com>
Subject: Re: [yocto] How to make root file system writable?
To: jovanbosic95@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 08:15:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58938

It helps if you show your build configuration, e.g. the output of
'bitbake -e core-image-full-cmdline'.

Alex

On Mon, 9 Jan 2023 at 09:01, <jovanbosic95@gmail.com> wrote:
>
> After bitbaking core-image-full-cmdline, my root file system is readable only. How to make it writable? Is there something I have to change in local.conf?
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58937): https://lists.yoctoproject.org/g/yocto/message/58937
> Mute This Topic: https://lists.yoctoproject.org/mt/96148248/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

