Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAEFC7EE29
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 09:26:56 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.4250.1686130011671151471
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 02:26:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@snap.com header.s=google header.b=SmA7PD1b;
 spf=pass (domain: snapchat.com, ip: 209.85.218.54, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-97458c97333so947098466b.2
        for <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 02:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1686130010; x=1688722010;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FJ2jwuRo++hT1bQPNevOWvbXo60Pz+5k+x6UecBnChM=;
        b=SmA7PD1bZiaq300SFnRldWmXA3Lz8IKnmYsd7r3cijO+g1V96JUJ/ZloDozarU0tgI
         AR0O6axYAvFKDqnChM3jWRLl3w8OKXNgYJO/6SRQSAgkRnUgdNiIJfPFba2WIfaIqwIP
         pKkHwadZbk7q4YtQIuZFjz5GgGFImOOYuX+/g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686130010; x=1688722010;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FJ2jwuRo++hT1bQPNevOWvbXo60Pz+5k+x6UecBnChM=;
        b=iDvmv1tB7yE06g2kGD2trwCLHZVHbwPN/GUlGFyXNblnQFyLpwI1Lqcjwe/xMbZcHV
         ugnjUjQ7TIZRSicB/Tl92mhblFVZk8tnDF1yoU6gzWHKQpEnJFZAPuHrMpAPQmJb1rbE
         j16ZIOPeIkmx663nbmzdEbKz1vxrh2C6xx81oaSgvtZPvZeLP1zVgbSZOxOvVVgVdtuQ
         BvMNY6jOGgs2UB4U8Ea6RF0hsZw29v/u1LBYG0X7Lm4wBOP8lzVeVfhiNQou9Bs1H2KK
         XcpP72MVYHq2Qw1wKR96hmKow6o7+5xdPwZqTQwUjHiI5vWGjQaiEx2AYEYVMQgCCRWA
         OwUg==
X-Gm-Message-State: AC+VfDy3EaeEbbe4gIiQd4Yz/1UkI4IfzD4u87pacr69P4CcUhbbKH+i
	oRTcnRe/wwgnlSKyQTOk/6BgG88XPb3CPVAzljIXXCPpowPICTRH4UM=
X-Google-Smtp-Source: ACHHUZ6b2i0HsVOycOB13yw9vXRCH/kmv+5DKy0MxrkTJj7Lh1yB44sfU4sMH5XXi82lT3KJiH8/NDSug+spr7Zq3cg=
X-Received: by 2002:a17:907:7243:b0:96a:246b:c65d with SMTP id
 ds3-20020a170907724300b0096a246bc65dmr5545565ejc.12.1686130009371; Wed, 07
 Jun 2023 02:26:49 -0700 (PDT)
MIME-Version: 1.0
From: Etienne Cordonnier <ecordonnier@snap.com>
Date: Wed, 7 Jun 2023 11:26:38 +0200
Message-ID: <CAHUKmYbWvf9LoEkk31rNg+dzqFnw_zxyYuwNBr1HkUmjVUGe7w@mail.gmail.com>
Subject: How to scroll in the yocto devshell?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000041bb6705fd86bc26"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 09:26:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60198

--00000000000041bb6705fd86bc26
Content-Type: text/plain; charset="UTF-8"

Hi,
how to scroll up/down in the yocto devshell (started with bitbake -c
devshell my-recipe)?

Scrolling with the mouse is scrolling through the command history instead
of through the terminal. Using shift + page up simply prints "~2". Using
"reset" doesn't fix it.

Environment: Ubuntu 22.04 with default terminal.

--00000000000041bb6705fd86bc26
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br>how to scroll up/down in the yocto devshell (starte=
d with bitbake -c devshell my-recipe)?<br><br>Scrolling with the mouse is s=
crolling through the command history instead of through the terminal. Using=
 shift + page up simply prints &quot;~2&quot;. Using &quot;reset&quot; does=
n&#39;t fix it.<br><br>Environment: Ubuntu 22.04 with default terminal.</di=
v>

--00000000000041bb6705fd86bc26--

