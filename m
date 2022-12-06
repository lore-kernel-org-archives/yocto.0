Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4623C352A1
	for <webhook@archiver.kernel.org>; Tue,  6 Dec 2022 17:21:53 +0000 (UTC)
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
 by mx.groups.io with SMTP id smtpd.web11.54100.1670347313303836444
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Dec 2022 09:21:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lQGzAkfQ;
 spf=pass (domain: gmail.com, ip: 209.85.160.42, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-142b72a728fso18192457fac.9
        for <yocto@lists.yoctoproject.org>; Tue, 06 Dec 2022 09:21:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PbghpF5Sp9ZmjIjDCYXP/KOMAm7xQG8VIt4nVBeMpe4=;
        b=lQGzAkfQQH4iSHRfDhZI33W5zJKx8nAR8hu8joGgfQfcN7p6bBwsA/Z859ASkC61Ud
         bvoH992JCtwu9f1jWwkuGh6/bywNvtN8XFZ6YQ30x4XNT2AAnczellTjpnLSrybEmRYz
         PzQp7U3LTJ6poXJvGgSfyO0zUocnVnKG/ykEBi19GMGZIolm0Q6fcEZnTBVgsVEpO6yA
         ak3IFVovdq5ziHeFOvvCFveCsoW/PLiJGKePB9RmovuxtYLioCp8VH6Pl7270IdqO61U
         Vn8uC/4ImtBV6E6aEzG1SI3oWQrz6M9KHz5QEZVcPWvJt20YLwU4h+yPnKQaRTAc6IAw
         ML/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PbghpF5Sp9ZmjIjDCYXP/KOMAm7xQG8VIt4nVBeMpe4=;
        b=5+LxVmOe4zYV1SdeN/4XiF16w9spLqfopFohQGfv6MeOr8MKqiDwTIh4FADkKcCHqM
         YOFrq2tqztxSK8rNxNPgZYApLFeLHsRVj3Zewa+vzuOZfc1ft40cAEK7iGAy9RRdjufK
         IEttjbeYUVdI9S7S892HUNp9X0wUQr12R0C3ebuTEYTB91JYQQMNqaWhniMiZZYv725I
         cZN37+nxRsZlZdzzsJ+aBABE06k3vqM4MtZik0fbYe1TAYXXEmr/Uaiuk/Ju1cES0rGd
         86Ui/oIHef8kmWMdYOZRR8RD1T7tziiNoGMJez9z//d9emKoq8/EEIwZSxuFjqCyYerw
         Zk/w==
X-Gm-Message-State: ANoB5pmj/se6IUXGV26pvhyasdidJe7+BnO3HFRq0oKh45F5PaXmF4v2
	Ikc9+9mkiWVNLtQGlJtO56Uz9VTegdHmvpKScJk=
X-Google-Smtp-Source: AA0mqf7pbxnfZAZM4ckLJAnj72JMjO6P34oRLux34cYfbBkQSWvvb2SJ/oKEtJS0zzhBFEehuLR85CwQGfA5xgdTbDg=
X-Received: by 2002:a05:6871:4199:b0:142:d126:dc55 with SMTP id
 lc25-20020a056871419900b00142d126dc55mr38767881oab.262.1670347312468; Tue, 06
 Dec 2022 09:21:52 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1sokC=LNUhDyCsgVZ=aaGBGVQiUUU+dO4x85BNZVGKuubg@mail.gmail.com>
 <8343.1670308923532231609@lists.yoctoproject.org>
In-Reply-To: <8343.1670308923532231609@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 6 Dec 2022 09:21:26 -0800
Message-ID: <CAMKF1sprTeHYTGthC60CkfbZKSHNL-npNLU3DzGLafeuicnY1A@mail.gmail.com>
Subject: Re: [yocto] How to maintain meta layer with different versions of recipes?
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Dec 2022 17:21:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58738

On Mon, Dec 5, 2022 at 10:42 PM Sourabh Hegde <hrsourabh011@gmail.com> wrot=
e:
>
> Hello Khem Raj,
>
> Thank you for the response.
>
> Second, way would be to have test.service copies installed under
> files/<customer-override>/ directory next to recipe
> and then define customer distro specific overrides
>
> This seems to be a better solution for my use case. But, I didn't underst=
and it completely. Could you please provide an example or any link to docum=
entation? Is it also needed to create a custom distribution? This layer wil=
l be used by different customers in bblayers.conf

see how xorg.conf is defined for different qemu based machines in
xserver-xf86-config recipe [1]

[1] https://git.yoctoproject.org/poky/tree/meta/recipes-graphics/xorg-xserv=
er/xserver-xf86-config

> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58732): https://lists.yoctoproject.org/g/yocto/messag=
e/58732
> Unfollow This Topic: https://lists.yoctoproject.org/unft/95472335/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

