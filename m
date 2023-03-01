Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5B50C64EC7
	for <webhook@archiver.kernel.org>; Wed,  1 Mar 2023 13:49:27 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web11.22320.1677678372398135115
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Mar 2023 05:46:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@calixto-co-in.20210112.gappssmtp.com header.s=20210112 header.b=B5Y0DzHz;
 spf=softfail (domain: calixto.co.in, ip: 209.85.208.53, mailfrom: sethu.m@calixto.co.in)
Received: by mail-ed1-f53.google.com with SMTP id i34so53926641eda.7
        for <yocto@lists.yoctoproject.org>; Wed, 01 Mar 2023 05:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=calixto-co-in.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=556DMRp2pvcu75UqNi7zj2pbafQVLuyrDMMkn5XvH0M=;
        b=B5Y0DzHz/GZAiHlryZoCNhYs/n9oxpkil7fWw76W565qFkBSDmwXXAeiv1aZmX2BbX
         8Ug0TMIEjS4A+/Wc5vaVx6m3EicOkbCn99W8xUpMBKiqTXkr3aFP/9nFFVYsAVtbDxb0
         0Q1xOOqgThskcBV6nM9YQS3Oc/0WbvkKIpVlTdNiE4E6wfalD5HILW1q2XQg/MnQ49r0
         ibwT3Zi+U177YinBNmuXyf1AdTsuVrv9Jw8KXXc8rsrt23TuKwvBBic81r0R5HWuZdNu
         UENO/Ce/i4pVKxqeMiDf7U5JHC22coC87JRTntUU0+Vzc4r+H8AkV2coHupihWrWgP1t
         BFbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=556DMRp2pvcu75UqNi7zj2pbafQVLuyrDMMkn5XvH0M=;
        b=ZtEV+iABKYe/VSNt6KLriB+YhZZAWuQzGBlSKquTPZC2cBwKa1qwOZjppwxnzORk2j
         gQ5QgRLBbIzXjbtQZx2L0l3Gyybf5B4TYxl2061WxlZU3XrDJDG10EKBTG0DcfbbJp6o
         xWvNr+P5uUPOZLorcKEznwQhzY5HrDhFw3OJgJk13ghKIAlcTlqXn+CzGn9zp95/3gGR
         N+N0mxX9oNuMpSnGOO0eLUBD+r0s/8a0sIY2pYSVq0BBJ9wgykmp70ZDqMA4pZ5RJy+i
         vJY9cD66TuSZ0dn63NH0zP9e3Jqj2+6qoa7rfDWjNoYHWyjvX/XwqeUOoDRHyr9EOu3U
         tg8w==
X-Gm-Message-State: AO0yUKUO6SG+Wz9maVyCRtrwdiodLLyhAguZvHVUiJRIihxDD2B5/OtY
	U9M8haeuxPZjWpO8cEmr29grz+g/9j+Vi3wHGugUErAd16hL0iWz
X-Google-Smtp-Source: AK7set+LHY3GWZz3syIF3Te4u4Q+faebAsZOiObn9bK1DYvVD7nPEk49EHZRqWUk/ff7ajUINs2tFY7LqIrrxckLAyE=
X-Received: by 2002:a50:c3cd:0:b0:4bc:136a:e25 with SMTP id
 i13-20020a50c3cd000000b004bc136a0e25mr1135542edf.3.1677678369903; Wed, 01 Mar
 2023 05:46:09 -0800 (PST)
MIME-Version: 1.0
From: "Sethu Madhav" <sethu.m@calixto.co.in>
Date: Wed, 1 Mar 2023 19:15:58 +0530
Message-ID: <CAFjAHzH+jooWbRcnwcG+upchU1n5JWJ0+mUTe8GoFZkbc_aSjw@mail.gmail.com>
Subject: Transaction error after trying to add systemd
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000049230805f5d6ef82"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Mar 2023 13:49:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59326

--00000000000049230805f5d6ef82
Content-Type: text/plain; charset="UTF-8"

Hi,
When i try to add systemd using the below config in local.conf

DISTRO_FEATURES_append = " systemd"
 VIRTUAL-RUNTIME_init_manager = "systemd"

Iam getting transaction error .
How to resolve this issue?.

Downloading Packages:
Running transaction check
Transaction check succeeded.
Running transaction test
Error: Transaction check error:
  file /sbin/telinit conflicts between attempted installs of
systemd-1:244.5-r0.cortexa8hf_neon and sysvinit-2.96-r0.cortexa8hf_neon

--00000000000049230805f5d6ef82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>When i try to add systemd using the below config i=
n local.conf</div><div><br></div><div>DISTRO_FEATURES_append =3D &quot; sys=
temd&quot;</div><div>=C2=A0VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&q=
uot;<br></div><div><br></div><div>Iam getting transaction error .</div><div=
>How to resolve this issue?.</div><div><br></div><div>Downloading Packages:=
<br>Running transaction check<br>Transaction check succeeded.<br>Running tr=
ansaction test<br>Error: Transaction check error:<br>=C2=A0 file /sbin/teli=
nit conflicts between attempted installs of systemd-1:244.5-r0.cortexa8hf_n=
eon and sysvinit-2.96-r0.cortexa8hf_neon<br><br></div></div>

--00000000000049230805f5d6ef82--

