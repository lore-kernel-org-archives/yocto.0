Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92689C7618E
	for <webhook@archiver.kernel.org>; Fri, 21 Apr 2023 04:01:19 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web11.4266.1682049677743827604
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Apr 2023 21:01:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=JV9TVK4G;
 spf=pass (domain: gmail.com, ip: 209.85.160.50, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-187b70ab997so8898012fac.0
        for <yocto@lists.yoctoproject.org>; Thu, 20 Apr 2023 21:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682049677; x=1684641677;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PCa4lzc8DDuOXEZJlwaoDp+LZrNfe/lo7Txzm0TPQoE=;
        b=JV9TVK4GlUOnxDTAwKtMi75cAQGQDu8TUtCIFcWYqgwkdQeEdqrfEv5r9k1fmXC8Cm
         NPvgLjoU6J5CyZIi8cZelb1IRfuccslh4zny50/3XtJjkCxwLcKoButmZIZuxu7GxogT
         Pr1qIsKlCvdqWlGtIeom8P0Vxaasg5QRa1n6Nvwc9uCnJLEsd5DuE8xuY8AmSBZXFwOe
         7aoxldyJ0H0kJTMBCjm2tperVYOjtxhZz6dOQK/U/hCv9WizjQRh+VhLmTn5AJorR4Ho
         EMrkG+gasTm+fYx20im6sQtWIL7n+jt5EuTLy1TUyIqUI8SRHoWHnEOfT0vLGXPPTSHd
         jT+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682049677; x=1684641677;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PCa4lzc8DDuOXEZJlwaoDp+LZrNfe/lo7Txzm0TPQoE=;
        b=GhBWn1TnnBNJ1S8WKH394Ze2OIrT4I/Md7Lnj9uqg+gTgPnihPuD0F+ZUTdrybrr9B
         IdTCiTVnOX0GO0NoIVI9mU32SkVFRsBdTnnckMi1+4mRW1l3fdSBnW2C2wCQjOKm6goi
         OBy7+uCfJrOrgvQoxLdO4JCkNcbezKW3gCpX6byUVr59vtMS6Hcn9Tt6BSLfs64coYJi
         tohekQHHcNY4fSkUsCX4C46Oib+JvgIfSInA5JFsAJHUUBCbDlkqvBPLEQiXF1JNcLd9
         Z5Pwb6YF9bl4PhmRINcfoMuq7YIwalkQp8JGNypkFMR+x4aoBgPEeHVtR785rz28OsYJ
         Bi1g==
X-Gm-Message-State: AAQBX9dRFc0O/ISsdrIe+Q7MIdWGFRgv3OWg52Ra9M5mXyxGei7xLKcd
	HMbYuwsc8RDM+oj1dWOUsF/KMsR76pSH3Xk+ri4=
X-Google-Smtp-Source: AKy350Zmc6yLKqxKTfR2QEu5L0T8jWHPP2I5+HM+NUw7U9jhVVmY7u4laUjKjkMzcbmtSn8MVgzrxRwUiVj5P/kOl5Y=
X-Received: by 2002:a05:6820:1997:b0:546:dd28:c5d0 with SMTP id
 bp23-20020a056820199700b00546dd28c5d0mr747613oob.1.1682049676732; Thu, 20 Apr
 2023 21:01:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBngCF34ht+RdS3cNb1ZPLSzobqJXu_pVF_WO+X54pwC7_A@mail.gmail.com>
In-Reply-To: <CAPJWBngCF34ht+RdS3cNb1ZPLSzobqJXu_pVF_WO+X54pwC7_A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 20 Apr 2023 21:00:50 -0700
Message-ID: <CAMKF1sqnqLLmC4Xpu_TeWTA4ZAESf0JcyS+uSg1GWVFM-=5Y9g@mail.gmail.com>
Subject: Re: [yocto] OTA updates for Application Software
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 04:01:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59746

there are several options that can be used for OTA with yocto project.

swupdate
https://sbabic.github.io/swupdate/swupdate.html
https://github.com/sbabic/meta-swupdate

RAUC
https://rauc.io/
https://github.com/rauc/meta-rauc

mender
https://mender.io/
https://github.com/mendersoftware/meta-mender

a detailed list is here - https://wiki.yoctoproject.org/wiki/System_Update


On Thu, Apr 20, 2023 at 8:53=E2=80=AFPM MOHAMMED HASSAN
<hassanchattarki@gmail.com> wrote:
>
> Hi guys,
> I wanted to know if it is possible to update your application through OTA=
 updates.
> If yes, then please share some documentation or some steps in achieving i=
t.
> If not, then what other alternatives do we have to update the application=
 in our hardware deployed at some remote location.
>
> Thanks
> Hassan
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59744): https://lists.yoctoproject.org/g/yocto/messag=
e/59744
> Mute This Topic: https://lists.yoctoproject.org/mt/98403981/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

