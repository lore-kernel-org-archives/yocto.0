Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B0F3C10DC1
	for <webhook@archiver.kernel.org>; Thu, 30 Nov 2023 12:49:53 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web10.71320.1701348584905822306
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Nov 2023 04:49:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZwynSR1J;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2c9cb021d5bso7225091fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 30 Nov 2023 04:49:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701348582; x=1701953382; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s6YJfHAYDxap4bG/1aGJkTZ/NHgw0tcvUkFMmn7aOEs=;
        b=ZwynSR1JdZwn8vrAJhb7fm5NIYPtn2ilpyT7NdXPAT7/Sw6mCJxGTiftvaIareuPN/
         1Be5Z3pC5FQdKYiKoTAHODD8H+LJQig/s8hEN4FyHtedvI8OhB4vOy++GknTcZlwoent
         6p8D+PBdlyjTdAi2lPHz7wUSZc2WRHcPOGb4zoDzl+1Gi6J49xBVnoGn9X9sZ09PkG9r
         BPSos4FptWhyXpWLBfSDtpWnH/vy/DQAQls3ycffPR9vnpwhALxDRb/dCcnwkHGwLr5b
         +q/96vzpx380oFJAC7OgvYiIBLtF6q4n9UOzrdYA8wMKsZAZxgvFEsxmnlOhVtAxxen1
         Vlug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701348582; x=1701953382;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s6YJfHAYDxap4bG/1aGJkTZ/NHgw0tcvUkFMmn7aOEs=;
        b=vyV/6WuEqlZEOVu+7O3nrMEuZZKlfBz1L1yGQNraHXl7zZVkxa8HTddthJAL6fj3Uo
         DNnNH8YJRyOswIcdAyGdbfLc1hPyPqiIKG3dvgBB2k7PF5R3tz5qYOi3p8vDFoU+Bhmf
         mxamL+3VWW2z1cjrtJFNIztGLvATdwcOA4K3GrWsNYQIS/i+PeEazX5JBYNU+XX1l2M0
         9BFfO6ts0h/wSRSvOAlyrKYobkQCpuvJCqV4rZdO4K+QoPN85dkeYqtojgNJoypJBL/p
         9BKG3zakoGXHaX0WlYbzyt/lKKx+kvRqPyapWShVy43StBnL+nuuBeWFHQTHbGHneebI
         72+g==
X-Gm-Message-State: AOJu0Yz89QrZmMyKXgbKXDy27ZjVBKYFf5kXaUg+Sep0xOXkQme4AOPh
	fd53YvYsUXrlhm9z81e+co+GoIcBtha8Zmd86V4=
X-Google-Smtp-Source: AGHT+IFgnMRXBfKj+ACDtEfGCvvG88PBLXA3RH/T7NHKZuL1da50Fc9JaZYqGEoDC0MyvslORLO/Mg1lP1xyRVq6Q3g=
X-Received: by 2002:a05:6512:3a90:b0:50a:a242:b614 with SMTP id
 q16-20020a0565123a9000b0050aa242b614mr14543878lfu.2.1701348582117; Thu, 30
 Nov 2023 04:49:42 -0800 (PST)
MIME-Version: 1.0
References: <wexK.1701344436144583266.EkOD@lists.yoctoproject.org>
In-Reply-To: <wexK.1701344436144583266.EkOD@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 30 Nov 2023 13:49:27 +0100
Message-ID: <CANNYZj-XT7y5Wrsiz7ppGrPb1Whb7J_r-sn6QqzGqWYXp7bi5g@mail.gmail.com>
Subject: Re: [yocto] SBOM in Yocto Zeus
To: "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Nov 2023 12:49:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61778

I'm afraid you do have to update your yocto to something where spdx is
supported. That's why we constantly urge everyone to stay close to
upstream yocto, and have a process where that happens regularly,
otherwise you will not be able to fulfil business requirements for
your products in the longer term.

Alex

On Thu, 30 Nov 2023 at 12:40, Poornesh G ( India - Bangalore )
<poornesh.g@mindteck.com> wrote:
>
> Greetings !
>
> We have used yocto zeus for one of our medical application with i.MX6UL S=
oC . This is initiated couple of years back , at that time "Zeus"  was the =
latest hence we went through yocto zeus .
> Now we are having a requirement of SBOM  with spdx format. I got to know =
that zeus will not support this. Since most of the developmental work has c=
ompleted we could not able to upgrade the yocto as of now. Are there any al=
ternatives available in yocto zeus for creating SBOM.
> Can anyone suggest me possible ways/procedures using which  I can able to=
 create SBOM with spdx format .
>
> Thanks in advance.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61777): https://lists.yoctoproject.org/g/yocto/messag=
e/61777
> Mute This Topic: https://lists.yoctoproject.org/mt/102891851/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

