Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 788E4C3ABBC
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 08:06:11 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web11.45096.1747037169189714229
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 May 2025 01:06:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SWjkdoNI;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-acb39c45b4eso677870766b.1
        for <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 01:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747037167; x=1747641967; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/r2+pFEkOEYCsRs3YdwdYD4X1fvXEJl2dYw0DQaA+PQ=;
        b=SWjkdoNITV0hhGdFWIX4RIXvIDOQUcz7bldrMzoy2sSFcA5q8ZgJs0mZzK414pK6ok
         XMVt6HA+kPWFHT/jzQxueMksr18miF9AgtOVkXCzJoikv0MAszLIEcpSQ475lZorrRw4
         dAAy/uKXsqKdfDZNgmBl2uNoKgJLAnbl2CBF0517MQBu6aWRpUU99OZSxGyl8PuG6Kgl
         DsRmzYmxX0odeztGScyVGLdBHcuhFlahHZaX/hDdd9nq84B9ojLwP+s8eF3dL8ewJLuD
         ePpQMwh0kgoDc7SqBI2kxzZD4KkMNMfCPSL4ihlc+JGReoFqmNa7YJYpp2Z6B2vrbj2j
         bKmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747037167; x=1747641967;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/r2+pFEkOEYCsRs3YdwdYD4X1fvXEJl2dYw0DQaA+PQ=;
        b=BxH7bl0sZ9b9WZZi7GYUpk342ipCUcbjouXqHEL3ixqrV6VkntNRDXTxRhdEXvLQBf
         YCx63cHbMGTYbIqtyhFQE03Sg7x9tZnPIJdSQu5wEOpm0ACIdpMc6Bjq9Noxh+nWmEhc
         M9HS8z20nQb5tR4P8CeK3MxvsMWF5K7ieSnkYM37YTtjlF0KureYMOmRGiaZOlSkeoDF
         w+Ok/+XJHjO+D1mlMgA0Qgs/FdxCLnGRkFmwzQDurqM+9E4kAbzD7XaK31bgd4FWiZ4A
         ARkM9JJpvfK11k4HvzgFNfZfJOObOhu2osgD4tetP5n2RtvNT36u5ihg1LFIEqVl9bck
         +oSw==
X-Gm-Message-State: AOJu0YwUFrtjOtRF3HS1y7ooX5h4kzpBB4VJjEknNSkkDD3KdQMDl5il
	NRjb9kZHvDQ5r2l1TcnyLsnVEVonF2ueIt+3WTFed1oTXumcJdNuNSyaXC8o0UHZANdStVAemeP
	4uu2jqHrypSdxnwa5IcNkY3hGD5QftTgz
X-Gm-Gg: ASbGncttbNAywsCubSiFzWXgrS0RNpdHrLHk6bKwl+sYTEPCP4vq2E02BrD0gxC5ji1
	apXt1BGojPFU6GLGHg60MnoX3nJzv1+3eWJbBAWUS3SneMFC/1FxjyLgke48ve6236jATcD9Zel
	DTpm8i4qE5bGHwoHQK91ld90VayZqRlg==
X-Google-Smtp-Source: AGHT+IGSrWYRmQo6b7SGfDEN6e2zkId9gXiMQ4rj2RYhIUPAd1H5Fb2lKmO0SbMjGWTEDxAS3ADrc20uwmBMYr/Hv6w=
X-Received: by 2002:a17:907:d402:b0:ad2:46b2:78b2 with SMTP id
 a640c23a62f3a-ad246b285famr516936966b.18.1747037167169; Mon, 12 May 2025
 01:06:07 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Mon, 12 May 2025 13:35:55 +0530
X-Gm-Features: AX0GCFuxhyJOOWoQtvW_xYyaJRAeTE76RyA3ktqaPYjd0EBT_42MRgeUY0-F2co
Message-ID: <CAPJWBnjKUfZ4EYtWNq0AxhrEADs3Eb9NXBvEfW7pRdzYcw_cHw@mail.gmail.com>
Subject: Size of production os image
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c235fd0634ebc91e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 08:06:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65306

--000000000000c235fd0634ebc91e
Content-Type: text/plain; charset="UTF-8"

Hi guys,
My os image size is generally around 1 gb. I am working on  IOT gateway
product. The funny thing is my actual bodies application is around 100MB
including node modules. I know that yocto is mostly used for smaller
footprint images but seems like I am doing something wrong. I have tried
removing other irrelevant packages related to hdmi, audio, video and so on.
Can you guys attest to this?

On a side note can you guys let me know the os image size for your devices.

I use yocto dunfell and kirkstone.

Thanks,
Hassan

--000000000000c235fd0634ebc91e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,<div dir=3D"auto">My os image size is generally around 1 gb. I am w=
orking on =C2=A0IOT gateway product. The funny thing is my actual bodies ap=
plication is around 100MB including node modules. I know that yocto is most=
ly used for smaller footprint images but seems like I am doing something=C2=
=A0wrong. I have tried removing other irrelevant packages related to hdmi, =
audio, video and so on.</div><div dir=3D"auto">Can you guys attest to this?=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">On a side note can you =
guys let me know the os image size for your devices.</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">I use yocto dunfell and kirkstone.</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto">Thanks,</div><div dir=3D"auto">Hass=
an</div>

--000000000000c235fd0634ebc91e--

