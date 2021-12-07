Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2ED72C433F5
	for <webhook@archiver.kernel.org>; Tue,  7 Dec 2021 22:09:31 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
 [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web11.3942.1638914970091141040
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 14:09:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Cn1syGh6;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id bu11so739480qvb.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 14:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=amlouFeaUBbuZQfEuli63be/t87eCo1L7n86W05m4o0=;
        b=Cn1syGh6dQjFBg5zX8fqIvbSwSmRfC18uK3a/Edi4s4ZYYzeHFmoC+uRrGA8Yi89hj
         2MTxj5jozljEXtibV7zdLP1XsMnXuM6EIdmlD1AVdd8NAkdJ3JuTd2OqD7i79eoQNHGN
         j5h+KM5mBGQzLjGtzK2WmikgugEp1UMXWsqwBcocsma120axyJS8RY/SWZH6Sq5Vdy40
         knSQYp4coHjK7QmoBLU5j/3qyFH1c+H6p23i59QrT42EMnlFUoDsZiCJ/dgsjpAQQE8y
         hc0xEVzTRM/wu8ki3+EDH+dd7zieOTTos+3OJlVPIdDg7lh4r+FHbRnZO5bS+zDJ0XpM
         qAaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=amlouFeaUBbuZQfEuli63be/t87eCo1L7n86W05m4o0=;
        b=0GVzLwtvSTvWU/w5bwle4JxPBbyEQO8pxrc+KKRh07pZOWgiqBQ/q+bRxu6runN9/y
         kITTGmOULir+9V0ch7EgJZIyUYbomV3pbRDMKPCxIk0u9RnYl8INvkZbZSBqZ/Qvja6E
         77V/a0KJrHtYN+9FE1C0ZzRN3j4gDuxKVS8TiAoSz+Ie/+q34aWewSA/q0pVScnesNMv
         nYGHlrNsfCQ2sdpyoTt0SSAtMqBhqFCzO3oo9AYEU9MruG3rVYKuP25jIMnuwPQLeKfc
         iBAllDFNX7gCQQs9iN/1Wviq6T9rSnVkNScVqxSXhHE+GcVMso7DLnLhQsP3AlqNn1Zq
         kYiQ==
X-Gm-Message-State: AOAM532hGMtPm72Fdicf0vuV01eN5WttySiU7zDHkuL0t6sc5ETdbkrW
	jKKxVEBqNG1fy24zaYAs5u7tu1vRGhcbb33ZKf8=
X-Google-Smtp-Source: 
 ABdhPJxQpaCNLcjQJ3PMq0ZFIf/QR5enJP72kKs5Q6EFBSbet7O68XASOEHAEym9atKNvKfI5CBx/XY98g2Sb6YICgk=
X-Received: by 2002:a05:6214:c28:: with SMTP id
 a8mr2850822qvd.24.1638914969216;
 Tue, 07 Dec 2021 14:09:29 -0800 (PST)
MIME-Version: 1.0
References: <9e28238f37654e9d873bcb01eb0b876e@sakuraus.com>
In-Reply-To: <9e28238f37654e9d873bcb01eb0b876e@sakuraus.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 7 Dec 2021 14:09:03 -0800
Message-ID: 
 <CAMKF1spC+yvxFX6=Ta0KDa3OUxqFkNs2h3+LEgothfM8D5Om1g@mail.gmail.com>
Subject: Re: [yocto] Touchscreen not working if keyboard or mouse plugged in
To: Greg Wilson-Lindberg <gwilson@sakuraus.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Dec 2021 22:09:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55508

On Tue, Dec 7, 2021 at 2:07 PM Greg Wilson-Lindberg
<gwilson@sakuraus.com> wrote:
>
> We are building yocto Zeus for the Raspberrypi 4. We are using a touchscr=
een on the system, and it works just fine. But if a keyboard or mouse is pl=
ugged in when the system boots then the touchscreen is disabled.
>
>
>
> I am wondering if there is a configuration somewhere that can be set to a=
llow both the touchscreen and an external keyboard at the same time?
>
>

I wonder if its some overlap in device tree overlays

>
> I=E2=80=99m sorry if this is the wrong forum to ask this, please point me=
 in the right direction if not.
>

perhaps you can open a github issue here
https://github.com/agherzan/meta-raspberrypi/issues
>
>
> Regards,
>
> Greg Wilson-Lindberg
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55507): https://lists.yoctoproject.org/g/yocto/messag=
e/55507
> Mute This Topic: https://lists.yoctoproject.org/mt/87576072/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

