Return-Path: <jacob.avraham@auto-talks.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C6BFC2BA4C
	for <webhook@archiver.kernel.org>; Wed, 26 Jan 2022 16:43:45 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web12.14938.1643215424332896358
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 08:43:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@auto-talks.com header.s=google header.b=H6Gugyld;
 spf=pass (domain: auto-talks.com, ip: 209.85.221.45,
 mailfrom: jacob.avraham@auto-talks.com)
Received: by mail-wr1-f45.google.com with SMTP id c23so66702wrb.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 08:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=auto-talks.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=35E89wAOs2eiz6Vzx4PjMQHAZ1KSRP7eXj4fttnqUo8=;
        b=H6GugyldEZhh2ThigVf6d1K6ad4Siv9Xzeqc9ys4VSC5hmSAx2zEKrgBLePaRJ8Sti
         JPQAt3f6VItJQAW9myAhl3U3ByZWGPlKlTH+VR61Bq+CnLPkSjbDdzoxbccGDDrkDmuH
         pAPi/2UyYqceK5mHTWoj6iHr1R3u1eHq3/cIE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=35E89wAOs2eiz6Vzx4PjMQHAZ1KSRP7eXj4fttnqUo8=;
        b=zV606PfzBw2unADa+DFKW+VSGJo7hPUkCWfM4Soqvjd/CAWTeukjkHMEUNibbewZVa
         xa22Wnx1ImgRIZzHS/U4xk4ox8L5GdZzmqWKO6HpjMeqGmkm9bNF/A5r84M6dntu9gMA
         4W5KplR4QglqIaDVx6oCmv9SAj5EAaw66+z4hpwiM85IsJRLp85Dkx020TeOVZEMmGgk
         1QzCJuAwT56VporVMjIiHv7vv07bzYTtTgrTw6/n3JvOw/+mjbz4RbFH27MKyKuJVSbQ
         N1XwKFhXHtaIH3yCK+avoq0ieitZBUGVNoMKebb5+0mvQkRv1IoH6LoZnaNcm/vfRQKZ
         QBdg==
X-Gm-Message-State: AOAM531VxtdQq8EfRudyS64bOEGLFTHewxX6SJireKyOxI1OjdDZsgLr
	LtkCla9qRfNA1O8NC+/U+G1eyrYV8t4iSUlLGaYUsDXPwvQ=
X-Google-Smtp-Source: 
 ABdhPJxniUNIrdaw7vDmtR3XP3amRZNj/T+N9H7egRFEmDdiJvAhXNeBbfCgELy0X5ZhLhZ0cMoquqpmyLE3odIIF8w=
X-Received: by 2002:adf:e189:: with SMTP id
 az9mr23568893wrb.624.1643215422351;
 Wed, 26 Jan 2022 08:43:42 -0800 (PST)
MIME-Version: 1.0
From: Jacob Avraham <jacob.avraham@auto-talks.com>
Date: Wed, 26 Jan 2022 18:43:37 +0200
Message-ID: 
 <CAD_Sx13pi-4HoXvwJSbL851xC_W-Zoyh65qmz4u8+qTwBsSoSQ@mail.gmail.com>
Subject: build yocto 2.6 on Ubuntu 20.04
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008a037a05d67ee771"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jan 2022 16:43:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55980

--0000000000008a037a05d67ee771
Content-Type: text/plain; charset="UTF-8"

Hi,
Has anyone tried to build yocto 2.6 on Ubuntu 20.04?
I know it's not supported, but it's a major task for me to upgrade to yocto
3.x.
I tried it myself and it fails on building qemu-native.
I wonder if anyone worked around this.

Thanks,
Jacob

--0000000000008a037a05d67ee771
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>Has anyone tried to build yocto 2.6 on Ubuntu 20.0=
4?</div><div>I know it&#39;s not supported, but it&#39;s a major task for m=
e to upgrade=C2=A0to yocto 3.x.</div><div>I tried=C2=A0it myself and it fai=
ls on building qemu-native.</div><div>I wonder if anyone worked around this=
.</div><div><br></div><div>Thanks,</div><div>Jacob<br clear=3D"all"><div><b=
r></div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_=
signature"><div dir=3D"ltr"><p style=3D"font-family:Roboto,RobotoDraft,Helv=
etica,Arial,sans-serif;font-size:12.8px"><span style=3D"color:rgb(17,85,204=
);font-size:10pt"></span></p></div></div></div></div>

--0000000000008a037a05d67ee771--

