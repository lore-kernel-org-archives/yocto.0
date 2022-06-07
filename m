Return-Path: <evinoth1206@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66DF2C43334
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 09:47:50 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
 [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web09.10491.1654595263807990994
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 02:47:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lqYxjh0t;
 spf=pass (domain: gmail.com, ip: 209.85.218.52,
 mailfrom: evinoth1206@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id q1so34059422ejz.9
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 02:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=qsqigSWEvMIy+CLmd9ftNGh4rgMCfMVAVKdW/qppk9w=;
        b=lqYxjh0tuqWesVoQVjQ7RWCrsliZpoFqIMv2lnb7EwyOIVFJpSLkFodj7jlXR5Usrv
         LXhgQvcCwpxTqNvmcs5xIwXLmvOL9BYFKnlX1tTK9XBLwF8qfB5DAdhiCAM5hlkLcuOf
         hjNYSP4PxbJxxuoy2SFojzerOchmVF1Q9tx1IhoVMlSuFixBeOxBsazlTLGQwlqCFbGl
         IWqRI+u7fUQRFZutSOZ8v+48hD+sT2EfiHR3ac70nq8nQw4qAljYnP2fS+bhiC9R0HP9
         2YQXvgM4xzx12x7Hn0yorH0EeaWhaVVcAj7BZlpGxgkOk0YZy/xWDaKJHvFpDnW6Ls48
         vhHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qsqigSWEvMIy+CLmd9ftNGh4rgMCfMVAVKdW/qppk9w=;
        b=JGdbPfSzq53o2El7lAHq/DM6oFeU59BRvKEN25eTSsUqDAtq5p/XnBaJsx96ejvEcC
         y6cpi7rGen/B6R3VnTbrTHGVaXvrHeytisRjRvDUPgupYAIQj5Z8CGXBOvAgtN0eW478
         S1WXkDbz0AYAbbgJiAde6l/tp7vJQM7gRz+QjXh7vbOpAwhmAv8ATe8l3o/hTbgbqQOD
         J1j2lidZn/He91nKf4up04E/7+UYup3ofsqvPTsg6IDnvZ4VOMrBzsbUKoqShtKD1nl7
         4xD7hNxjm6oq4JiFXqMjs8LvCYOYiHiu0HFgreyyjJCRtBlKXcNM4OplM5ifG0rmrIep
         O2Sw==
X-Gm-Message-State: AOAM532ErpwMWveimu6YlBbwiyISo5K11nUBHqydkchIBzp8Pq21p+N4
	HRrnS4BZAJYEgk2QddtkjUkiaUh6GNHCTxlE072gGvMwtFI=
X-Google-Smtp-Source: 
 ABdhPJwhKYth8xFfRGdzpzQu3nq0hmbBa0TdZBZQ+aKZxq0EqhN9qqIYOlKCvg/ei3qIsf5vEew6KjY8nls5n+90AzM=
X-Received: by 2002:a17:907:2d8a:b0:6f5:df90:45c4 with SMTP id
 gt10-20020a1709072d8a00b006f5df9045c4mr25094750ejc.662.1654595261813; Tue, 07
 Jun 2022 02:47:41 -0700 (PDT)
MIME-Version: 1.0
From: Vinothkumar Eswaran <evinoth1206@gmail.com>
Date: Tue, 7 Jun 2022 11:47:31 +0200
Message-ID: 
 <CAJst-kEqrNhR832waWSMDNGkTFORLgEPX5y2VRS7g1Bn=T3evA@mail.gmail.com>
Subject: How to remove the python3 from Yocto SDK
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d3d59c05e0d87a0d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 09:47:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57283

--000000000000d3d59c05e0d87a0d
Content-Type: text/plain; charset="UTF-8"

Hello,

May I know how to remove python3 from the host and target sdk package ?

TOOLCHAIN_HOST_TASK_remove = " nativesdk-python3-core", seems not to work.

The image is built on top of core-image. Python3 is not installed to image.
We deliver SDK to other teams and they are complaining that python3 in sdk
is causing problems after sourcing the sdk. They want to use host python3
instead of the one delivered from Yocto SDK. Could you help ?

Thanks & regards,
Vinothkumar

--000000000000d3d59c05e0d87a0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr">Hello,<br><br>May I know how to remove python3 from the host =
and target sdk package ?<br><br>TOOLCHAIN_HOST_TASK_remove =3D &quot; nativ=
esdk-python3-core&quot;, seems not to work. <br><br>The image is built on t=
op of core-image. Python3 is not installed to image. We deliver SDK to othe=
r teams and they are complaining that python3 in sdk is causing problems af=
ter sourcing the sdk. They want to use host python3 instead of the one deli=
vered from Yocto SDK. Could you help ?<br><br>Thanks &amp; regards,<br>Vino=
thkumar<br></div></div></div></div></div></div>

--000000000000d3d59c05e0d87a0d--

