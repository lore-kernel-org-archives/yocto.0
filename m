Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D305BC433EF
	for <webhook@archiver.kernel.org>; Fri, 22 Jul 2022 14:59:26 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web10.8887.1658501962391604463
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jul 2022 07:59:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GA8aVsFP;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id h18so3610847qvr.12
        for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jul 2022 07:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=njfjhq6aFQAocI/gjvzfG7zpe6XbJmSAVge+MBYknY0=;
        b=GA8aVsFPQR+PMj/zEy+oJ2Fqu5iE1RV4wfUgx4UzV8hD9PQ10i5stfx0+AIwHjPClv
         3gadjTfibjIp8Zvgwf0n5GTC+kD19xz22cfCusvpT0miX4sX4W/FDqCD7xjCGZXU07id
         dETGfGKconnS/5/jgQpOgnVo7PGDH0Lb9GbvVS/oDiJiqQ2ajD/vtOnjlZrmwoo1H+eU
         FlSOVR3sfR37rjb0lwQMSwxx8Hfx9eEqs2vGeUR2cmDmA3dOLeSVTJGVdra3W51PO338
         5CRy68M8PEMoTJzR7Yx0M9Ipb8QVsve53LonkIuK7fhiMkiNr/0QrMjsWAKD8XMz0XAe
         BDbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=njfjhq6aFQAocI/gjvzfG7zpe6XbJmSAVge+MBYknY0=;
        b=eWvaLc4XYKZAfroJEJ+K0C7TFoNOTSMs23AUmM2ek5T+0OxEbrxsPSJPbQemTcvVmO
         W9raBFUteZvlDMZWoekFpc9i7Zoqs47fgS5bY3TiMfJQH5BUPSAjmFOOdXMOxI3NMu2F
         /vSZqRqv+1lle4XpzT1JaIMGvyVpDXp17gvSF6cB7CReWQbf4FsUZIpOXoD5xlJKXbRs
         ltPodfUCngZbQ1KrZQ8ZK+3xO0DLQCrCASodiPgtgKoXP2PZLY6NwS8LsHNBWqqz5B70
         Uq02jJTotv0frvrZekhYlP/ahkO+iceir6qAq0apxkkdFm1y/DVHFLy1Eor/QvegJGqo
         ZuCw==
X-Gm-Message-State: AJIora/LqGxcMGy1pPGO2GJN91QYdomzOyNG2axXko/DGnMYLlWORUsY
	8sMSlkFaXXyv5EwSPIGpksOaGwy1Uo6M6zKdZX8iTckawBo=
X-Google-Smtp-Source: 
 AGRyM1szbGi/CZNPYzjET9CYRGDnOnTOyp3axwmj9J08dvAeoYrhhuIiZSBbjmXAa+WcJ8gvHMkUp7sanw5k2pwzae8=
X-Received: by 2002:a0c:f9ce:0:b0:474:14a:3c9 with SMTP id
 j14-20020a0cf9ce000000b00474014a03c9mr476555qvo.24.1658501961288;
 Fri, 22 Jul 2022 07:59:21 -0700 (PDT)
MIME-Version: 1.0
References: <e12d26ef-09d5-5060-3948-2904ab3c531b@gmail.com>
 <15386.1658496437410669998@lists.yoctoproject.org>
In-Reply-To: <15386.1658496437410669998@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 22 Jul 2022 10:58:55 -0400
Message-ID: 
 <CAMKF1soZjVwY5Qk3mWiAhoPyvS2VijOdS6c8Vr20rDuPhJf2Yw@mail.gmail.com>
Subject: Re: [yocto] Custom YOCTO meta-layer building on Ubuntu 20 but Not in
 Ubuntu 18.Why? #dunfell #yocto
To: sethu.m@calixto.co.in
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Jul 2022 14:59:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57623

On Fri, Jul 22, 2022 at 9:28 AM <sethu.m@calixto.co.in> wrote:
>
> Actually that was a problem with broken gcc package . It resolved when i =
cleaned the gcc and rebuilt the image.
>
> Another Problem iam facing is we have actually 2 machine configurations ,=
 Same kernel but different defconfig and dts files. For one machine config =
build iam getting the root login but for another machine iam not getting th=
e root login after boot. Where should i look in to for resolving this issue=
???

Look at the serial console logs from kernel and perhaps with early
printk enabled. Many things could go wrong when serial console does
not show up. Your description of the problem is ambiguous to see what
might be happening.

> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57621): https://lists.yoctoproject.org/g/yocto/messag=
e/57621
> Unfollow This Topic: https://lists.yoctoproject.org/unft/92524182/1997914
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

