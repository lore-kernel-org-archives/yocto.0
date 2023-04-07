Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1631CC77B61
	for <webhook@archiver.kernel.org>; Sat,  8 Apr 2023 07:48:03 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web11.6518.1680870684401885024
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Apr 2023 05:31:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@calixto-co-in.20210112.gappssmtp.com header.s=20210112 header.b=0ufzuhmv;
 spf=softfail (domain: calixto.co.in, ip: 209.85.218.48, mailfrom: sethu.m@calixto.co.in)
Received: by mail-ej1-f48.google.com with SMTP id n21so8080193ejz.4
        for <yocto@lists.yoctoproject.org>; Fri, 07 Apr 2023 05:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=calixto-co-in.20210112.gappssmtp.com; s=20210112; t=1680870682;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7M/CiREajxiaLRORakWYtvAnAes3gRYBJTPokXMzH+o=;
        b=0ufzuhmv8ReaonbSL7xDGMAgiKXY/5cGMnrS5W3F8CR/3ziBEF54w1aZ4YNy1Xkk52
         O3A1lQyp6JFs3BW3h9gBhOh5bNI925kDR2r5RDyDI8oaDu3eYLo/31svqhGDE2Fnv5nz
         izZ5FQ8s1BELU/3UNOpxmjvgwbdaoAu1EVdRVhJbxdj+3i7f6FvbbW9YxOOimGDzcbwb
         NXLmTXqmyxziZM8jnO1q0nSGmuBrcUA8MFo6wLN+8Z9OpTwHGEnHm0satWuu1SRdtzAv
         llRtKKMsUtTtTZu85fTUBN+4gwKjsDDrQR0oDQkgjkJtdG9uaZ+2vOtf7bMaN7hubAGu
         EyqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680870682;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7M/CiREajxiaLRORakWYtvAnAes3gRYBJTPokXMzH+o=;
        b=ckFp7LYP+Fo0rtFDzP2bgFHL4z5OhyVR7Z55thZ7y9AoHajg46VOnnJsunzcCu2TWJ
         ytbabQz+eBoyWf4KZtfl6hjGs/qcTEDiXN/m/IpJQPphf3X9uvuNAvGAzJAnNAMqaXjJ
         C9wOv5JBlbOZcgU9S3XE4epG4q5zxNT1Cb7tfHjw6psvtYGhJbyLxHCFVuWRrxTlAJhU
         NBi6AYV0bs2VTwIMwOiYPok/BE3XZbbop/Gqox8Pk3LDCqMSCnh78wrwuIPStPuUf1GT
         2LCKbO+Z3py2bq4rWZFt0SHWxZyEexd1kMeJi4oAEJfcZqQTVtTSCV30N2ZvfHRDWIbu
         TwkA==
X-Gm-Message-State: AAQBX9edZV0j0/kpigTP1ERl34cntzHm0HByA6hBOt3DzFMEAOr6yXCs
	Z4plLm9pTRQQm+b8okzPzAqjmdt0JWxYhGtuKjeXROxQiOK2E9TTPjA=
X-Google-Smtp-Source: AKy350ZhCvXPEmIzKCbhm/evdOwHiZB+yo6HZIlFlB2bxqbabJusrEodnrdOkU2YOEIaxV/9B7DCdrxnQyKYO61dlpc=
X-Received: by 2002:a17:906:4a92:b0:931:3a19:d835 with SMTP id
 x18-20020a1709064a9200b009313a19d835mr1046946eju.3.1680870681993; Fri, 07 Apr
 2023 05:31:21 -0700 (PDT)
MIME-Version: 1.0
From: "Sethu Madhav" <sethu.m@calixto.co.in>
Date: Fri, 7 Apr 2023 18:01:11 +0530
Message-ID: <CAFjAHzFhe5bsLeX8u1b0+1+g5SAkTmvad=hNY8W1=uOHpUqjwg@mail.gmail.com>
Subject: How to add libubootenv to the rootfs
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e9f68e05f8be33a0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 08 Apr 2023 07:48:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59641

--000000000000e9f68e05f8be33a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
Iam working on a dunfell version and using a custom u-boot, kernel etc.
I need to add u-boot-fw-utils to my image and its well documented that the
recipe is obsolete and is replaced by the libubootenv.
But i'm not sure how to add libubootenv to the rootfs.
I tried adding
PREFERRED_PROVIDER_u-boot-fw-utils =3D =E2=80=9Clibubootenv=E2=80=9D
to the local.conf, but no luck .
Can anyone tell the procedure for getting u-boot-fw-utils in my rootfs

Thankyou

--000000000000e9f68e05f8be33a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>Iam working on a dunfell version and using a c=
ustom u-boot, kernel etc.</div><div>I need to add u-boot-fw-utils to my ima=
ge and its well documented that the recipe is obsolete and is replaced by t=
he libubootenv.=C2=A0</div><div>But i&#39;m not sure how to add libubootenv=
 to the rootfs.=C2=A0</div><div>I tried adding=C2=A0<span style=3D"color:rg=
b(80,0,80);font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-s=
ize:14px">=C2=A0</span></div><div><span style=3D"color:rgb(80,0,80);font-fa=
mily:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:14px">PREFERRE=
D_PROVIDER_u-boot-fw-utils =3D =E2=80=9Clibubootenv=E2=80=9D</span></div><d=
iv>to the local.conf, but no luck .<br></div><div>Can anyone tell the proce=
dure for getting u-boot-fw-utils in my rootfs=C2=A0</div><div><br></div><di=
v>Thankyou</div></div>

--000000000000e9f68e05f8be33a0--

