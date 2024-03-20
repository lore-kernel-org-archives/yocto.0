Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C68C54E58
	for <webhook@archiver.kernel.org>; Wed, 20 Mar 2024 09:34:21 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.39427.1710927252169635333
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Mar 2024 02:34:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OSTU+JM4;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d476d7972aso96982171fa.1
        for <yocto@lists.yoctoproject.org>; Wed, 20 Mar 2024 02:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710927250; x=1711532050; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=u5e47q0zhi0y8pa/XCC2wrleSySCSvlN7T00fUAuNCk=;
        b=OSTU+JM4WeaiKEfa2ebnYi9FI74ZhezIwIXI2akau1xBVA2DdIAIOgMaX/Ynn+utqh
         Zij/hd+q/DNHhtRxs/ggdHIwJPKUD8wRt0bLjSHiq5vTAS4qMQfPHmE9SDVorfyPjE5/
         qYSsyN1yqNrA/il3Pof7JGDBIJ4iTGl6DNSIrdKlyZBV4L5Ch1MbE4WBnfrQrVeMTSff
         ouNxjW6nSZcDEbQrCYdOnch8x2CaE+KAf/igjx/WE5ozq+amIIepuE+D3cmncrFgqWkQ
         C93SVWDWVnuHbv1h2rw3p03T/2JKUecPkO1MfBV6dJ/Y6Zaz9/5FDX44PtD62e9F4k0T
         t5UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710927250; x=1711532050;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u5e47q0zhi0y8pa/XCC2wrleSySCSvlN7T00fUAuNCk=;
        b=huuW55Hbno8QsHWq6F8WJVYTKH8xFPMpwu1bDb861nA6zLLOYyptEacG8b5OPE21/B
         i61Gl9I1qdTeShuTb/HdI0lfGA4LxIfTJyEyD02TAnMvPLOEWe+6r4gAM4pZA3uL8RKs
         jGq+5JIs9NbEXesGXIxwaXUrhGVxXWaUL8kYgqE2BCpOPpNB1RnecKdpL04CmmoAlOxx
         02K3qCAgwWnXG/4EKE+kgdmQLqulR++RKlZTfsaWy65DPzo1os6G7VKi+6aB6/BrzNaG
         Nu8PzDPhkxoBGnNkJLsVsjf51lhtdwPPP1QslDDd1QWYphbMdNKit5lF6UKuH42OuO+o
         y7EQ==
X-Gm-Message-State: AOJu0YyB03QBujIHrMpVRQdt+AdLsKYN5UngLJrfQ2fDY3eER7eQyAov
	kQEp3FO49alAtgHI0y8Ry6jSns/mA+wJFB5RKrxRsqk19dlPG0uGaAF0MIWrZoPcjTiBGuYR6zY
	gjKCCGXzKaXKGxhDZDfVxmtuO7hacPUohlEU=
X-Google-Smtp-Source: AGHT+IH5xgYNdCYYDdJdyuaCH0nMnok3BDA8OB4PAdhUiWR52XhQ+GVEWkdmj1tOa+K1Ww2ymvLmJCQD63HGcOMFDls=
X-Received: by 2002:a05:651c:198f:b0:2d5:b33f:8951 with SMTP id
 bx15-20020a05651c198f00b002d5b33f8951mr4231294ljb.5.1710927249708; Wed, 20
 Mar 2024 02:34:09 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 20 Mar 2024 10:33:58 +0100
Message-ID: <CANNYZj8WgSAT_jZw0yqeQSQo=ByBcrwcMSz28AOPEhthGvfcvQ@mail.gmail.com>
Subject: make a-quick quick again (and light on the AB, particularly arm)
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Mar 2024 09:34:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62800

Hello,

I feel that a-quick builds as they are have ceased to be quick or
lightweight, and I'd like to trim heavy items from them. The goal is
to:

- have a-quick complete in under an hour with fully populated sstate
- lessen the load on arm workers in particular; there is not enough of
them, and they should be used only in a-full
- make a-quick useful as a quick smoke check for patchsets that
reveals obvious issues rapidly, completes quickly, and doesn't compete
with a-full for resources too much. I would then be willing to use
them for that purpose.

The definitions of a-quick and a-full are here:
https://git.yoctoproject.org/yocto-autobuilder2/tree/config.py#n75

I'd like to make the following changes to reduce the load on arm workers:
- oe-selftest-armhost moves from shared to full. This is the biggest offender.

- qemuarm64-armhost does the same

There are also other heavy builds in a-quick that I think shouldn't be
a part of it:

- reproducible should move from shared to full. There's no way to make
it quicker.

- oe-selftest should be dropped from quick, or we could introduce
oe-selftest-quick that runs only a subset of sefltests that completes
under an hour (existing logs can be used to make that selection, e.g.
by tagging known slow test classes).

Thoughts?

Alex

