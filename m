Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A644AC9830E
	for <webhook@archiver.kernel.org>; Sat, 17 Jan 2026 00:53:06 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.578.1768611177487407790
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Jan 2026 16:52:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jY/rI2jx;
 spf=pass (domain: gmail.com, ip: 209.85.215.180, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-bc09b3d3afeso1035166a12.0
        for <yocto@lists.yoctoproject.org>; Fri, 16 Jan 2026 16:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768611176; x=1769215976; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=frzB6abXR7bRhIOzMzxoUspZNaoI2W0qy3aV5bZQGgs=;
        b=jY/rI2jxSXerHbBKI41lZpIV/brxI94x1TRjvkkqPHS+H0lr61IAb321vkZhnKGB3F
         CelOa1kBJFx/TwAmWa6L5rDiRB4yo9RZEZPKQK5gpEPhqZENit3dBeHmp+0e7vIu+3pa
         T4Fq3DbyNGC68lgP7CTv7CG4Owu8kS+LOV0jcIgxiM5R1E1ynjJmVEzLxeQIo6bp1Gch
         FfoQhOTQ0ue2CH0crjK/ER28dtsHsuepwZoc/tqYB/zWTA8GDmFYYQp5wSwni49JAnE3
         PLo6zN/PNHnJD08wSMJASagDLKxiq+5d84n4YC/UnDdXZR6m/8YkUpRrPlvixFKsAwD3
         ZHog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768611176; x=1769215976;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=frzB6abXR7bRhIOzMzxoUspZNaoI2W0qy3aV5bZQGgs=;
        b=PPLiCY8HCj6VMOL951GkxMBWJvkIwZm8inWE6R2M+F0DInKcNBSCUDpZsFXCSxYhhM
         94v9FypvFChWDfJ5s2jYj25aOEseZXJ//5BbrSnjFf5zKJBCo09YskKMV3tb0nf/d3Lo
         UUrWoPtVLS+Wp+fgw8wYK6jGrLuVQZ+UtvEkEWnHLszi/3OjucRJ/fdOxKmHbt0lzeXr
         iJDByr7dEHPK4ZNnQUcKRoidIJJ50RebFIddVC7qoKeENA4zLhJLgCVXrfW8Q0K7x3xK
         aksQ5lfrNFarv8E3cBTQ7PVaMao8ZrD4yP5EckoZEBs3WGBDzmkYuueUpyeUfIgSx82o
         TpfQ==
X-Gm-Message-State: AOJu0YyQuM33ujc7rpcCSW6DCbn873pt2QhaCtpFSXC/u9Y0fKqMZ7qm
	0x5NMexEgGeG04zH6dwMv47RsHAfLLpJgPBRf+YmIGM9MNJQO1iubJlrD/9eNy7MmjSiJ4yna2Z
	mLM9nE+Tvq1welZDu38PeU9dl34G7DhC3og3Etx8=
X-Gm-Gg: AY/fxX5odMHkt/mfxFd1cSI5trRgOSGaYL0KTsN5zrAhbo2ybBDQtpuOAKi3ntVJfNG
	1yFBV0J5OeTPN/BrT+7EqW3L3rQP8gw3BUb9NsKX2aqNAxmp7cBBUJ4PDBN8HZYRauXeRCKNmqt
	PvhNMgvTArImpv+LwkRUStC7AA+3UJ7kQ34en5hZGVOo9dddO5lHnNqGfFhHF0z6DjvxhoGJ1uG
	EW3JXJeRDkLOrfGZegOHni6EVcbrnCCA7gct7ISIdJfqr+aS72Qr4qqchanQKRYT6KLvQ==
X-Received: by 2002:a17:90b:5101:b0:34a:8c77:d37b with SMTP id
 98e67ed59e1d1-352731799d0mr4356939a91.16.1768611176069; Fri, 16 Jan 2026
 16:52:56 -0800 (PST)
MIME-Version: 1.0
References: <mVWm.1768580735610632133.aVqV@lists.yoctoproject.org>
In-Reply-To: <mVWm.1768580735610632133.aVqV@lists.yoctoproject.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 16 Jan 2026 19:52:44 -0500
X-Gm-Features: AZwV_QjfMauZ91fW24EmAr6F0iRR4MeZoPLOO2C5Agl43ePITDdO64XjFoftkAI
Message-ID: <CADkTA4MGYstWHCciXTWSyNs8bc7h1Gjd+eWv60xytQfoPeUUVA@mail.gmail.com>
Subject: Re: [yocto] virtual box on target
To: yocto@lists.yoctoproject.org, mlynch@hi-techniques.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 17 Jan 2026 00:53:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66155

On Fri, Jan 16, 2026 at 11:25=E2=80=AFAM Michael Lynch via
lists.yoctoproject.org
<mlynch=3Dhi-techniques.com@lists.yoctoproject.org> wrote:
>
> Ok so I'm contemplating attempting to create a recipe to build virtualbox=
 for my target system (x86_64) and was wondering if anyone has done that or=
 attempted to do that?  If so, was it successful?  Any pointers anyone has =
would be greatly appreciated.  Would anyone be interested if I actually get=
 it to work?  Why you may ask do I want to do this well I need to be able t=
o run Windows in a VM on my target machine and can't do it the other way ar=
ound (Windows host with yocto image guest) because the yocto image needs di=
rect access to custom PCIe devices.

Why not use KVM  (or kvmtool) ? Or any of the other virtualization options
that already exist in the ecosystem ?

You also might have more luck asking on the meta-virtualization mailing lis=
t.

Bruce

>
> TIA,
> Mike
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66154): https://lists.yoctoproject.org/g/yocto/messag=
e/66154
> Mute This Topic: https://lists.yoctoproject.org/mt/117300268/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield=
@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

