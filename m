Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E383C7618E
	for <webhook@archiver.kernel.org>; Fri, 21 Apr 2023 03:58:29 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web11.4218.1682049502283353938
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Apr 2023 20:58:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=VTe6WvUU;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-94f109b1808so184358766b.1
        for <yocto@lists.yoctoproject.org>; Thu, 20 Apr 2023 20:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682049500; x=1684641500;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jH02MYNHHvFiP22GgiYNtVsL1n7cWSPwuyJubMO1BUE=;
        b=VTe6WvUUW3iiv3Wt18cIA7GQFOYCOGknxfPBTNKoLs5jiIwu1XY7NkxwwE8LiGvpSS
         jIxgyEZxOViSjdGhId9WF3Z4L4qhYmYK7u2ENcBXkMaB4lNGUepAruzWZmypBJRs+c3k
         slHuik08zUJJ2eyJZ67F+VPf5f4XG3+TovluBww4gfifu5gkSNnx52xUi8xq6Y/BA2V7
         lgbfo46P9cL/0xQvAtRzrS/D1JhWFZI+Xzv1jSS9vFvf7z8a9JiGpEC8GCTfR1h13jXC
         LE4h4OihFy8otiLJJ0aynLHm2xFMG6qluNwptTJdSofnN58pHQcRaKAnpq1eyP0EpCrK
         0UUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682049500; x=1684641500;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jH02MYNHHvFiP22GgiYNtVsL1n7cWSPwuyJubMO1BUE=;
        b=O3Yw1MDW0jyz5JnIjggQClVbRfc1hCPMCe8hQ9ELXFhH7rfXFvKBrQZ3Etwn/5Sauf
         coA5ajD+v4kXfLsZlj3qQBGxaSU6l8toh/7cuxYCPsM+TzzG6lSUZw280NpuDFU6jrdj
         g/rit4K+RvgyV312k8eqt3ypaaf7K1IJSb6xMISY/JAx3jlPvN1fY96LqiUteZrrsyW+
         TIOt0ziLKSvfM92tfSduc18KcvpCyxRPfNqi0w56cHGw0ll1KiSXBUjDTN+5SczwyT8w
         io2ZGeBoP7kCHT9oMa9lBttsSzT5dAxGhlYCB1TmeewhdAAOqmjGj5X+F5UCs2ar628R
         rROQ==
X-Gm-Message-State: AAQBX9eWR2oy69KwMJ10enmej4CrK4IFIsvJL+zj4I20vXzBgs/L48ie
	D0anTbV3wgZ8m/cOlfYHPXWGAQJDMBeeUpSOoQa+rZS9
X-Google-Smtp-Source: AKy350YoUlm6MF5mvZtXD6ieXOuT6xUjcIbmLZe9FrS5viSsF745DEiOfpw3erAHmJUNcD5zk3uG4/qwFUG8DyZwuro=
X-Received: by 2002:a17:907:a426:b0:94e:4fac:d92b with SMTP id
 sg38-20020a170907a42600b0094e4facd92bmr976589ejc.58.1682049500271; Thu, 20
 Apr 2023 20:58:20 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Fri, 21 Apr 2023 09:28:09 +0530
Message-ID: <CAPJWBni6M5ssUgSEyTEC5Vd8=XahXfEP+71N=AUmU9FyefDMRg@mail.gmail.com>
Subject: NPM package management
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f5580105f9d0aa40"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 03:58:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59745

--000000000000f5580105f9d0aa40
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I am writing a nodejs application for my board running on yocto dunfell. I
had a doubt regarding the npm packages. Since my application would use a
lot of node js packages, how do I load all those packages? I didn't
understand much about the npm registry tool and how it can help for custom
complex applications.
If you guys have any ideas or suggestions please let me know.


Thanks
Hassan

--000000000000f5580105f9d0aa40
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<br><div>I am writing a nodejs application for my =
board running on yocto dunfell. I had a doubt regarding the npm packages. S=
ince my application would use a lot of node js packages, how do I load all =
those=C2=A0packages? I didn&#39;t understand much about the npm registry to=
ol and how it can help for custom complex applications.=C2=A0</div><div>If =
you guys have any ideas or suggestions please let me know.</div><div><br></=
div><div><br></div><div>Thanks=C2=A0</div><div>Hassan=C2=A0</div></div>

--000000000000f5580105f9d0aa40--

