Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933ADC433FE
	for <webhook@archiver.kernel.org>; Tue, 22 Nov 2022 07:51:58 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web10.13467.1669103509067353007
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Nov 2022 23:51:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hG1h6LFm;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id s24so16994666ljs.11
        for <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 23:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nBy5istKI49lDblldJk0qJuSWt3bLZATp7mvQ3Yo18A=;
        b=hG1h6LFmuAtDPFqTsVbHz+KbR7nkS+u4vfJGY4KwMooTsE4WhDWUvV6bSt+d9qPLLa
         6leif6SxWNcpxBO2/yZ4+o5TwXgkc6Bw2nTRErsjxMJ1uIXHIVcIGNj4Ibn7yZNaJkC/
         SURU+uKIGAiyFZFvakH5roaOpJ1eXB9VVO1HNvHSNIkrVLRMxwno0xzQTspXsZa2c49a
         HQ+1w5MgylHmWcb0qFFlyFmInupEUDjyuLQgySwL7unsm4UQSVFy7RQM/58i2nyO19KA
         ippLptqJrm82u64xY8dr2yZqlFyHKRwUL/7+mG9O+Nizfmk2UU3PntQbI7I3/TGLgKre
         v7mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nBy5istKI49lDblldJk0qJuSWt3bLZATp7mvQ3Yo18A=;
        b=MDIHHDE3apX0eEcGoqeXBEtKQQlwQgYX/3+UUMZlbZjBWiJxvxzZvc02OI508REk3S
         iOhZOtmkXOig3sX3899higN6iXPRaMhlzyaydAK4GP60Nv+qdQbxYHIb5xVldPJ0Ky4E
         eKjyvhrJrDNTCXJ8FXHiFH2SfXTdTIspW6RtiBic4UUH2jihpfq51lhObL1hKFR2oFmE
         5CVqT4VuS7DTx7YxgGLIQHBDoux/Qpp3rpyAeaYGhbd57CtyZ1tq/YCRCQNAMSm9PN7C
         m2Yh4wcraScnsZSppW6fptSkLRwxsKW2VqPhFUn59Yctc2EYkprk2xRp5ZNLP0Gq9NdO
         AoRQ==
X-Gm-Message-State: ANoB5pnOi5DNVZda82aenFv+wc/LAWOZEbPmifbGdbweHosc3/VJwnJE
	6MEDZ4GWBOX/7dUd2BmSdKVhiHYu/eDi6GfHhBOnXEUDJ2U=
X-Google-Smtp-Source: AA0mqf4p0oTUAiqiBRpl889HnjXTS4jVmEv5EWv0YrU7lx8YM4Hkyg+M4YeWwDA3RJvhxoEEbHdAxHjMx5nEa9IuNpg=
X-Received: by 2002:a2e:87d7:0:b0:277:100c:db42 with SMTP id
 v23-20020a2e87d7000000b00277100cdb42mr6585130ljj.417.1669103506427; Mon, 21
 Nov 2022 23:51:46 -0800 (PST)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 22 Nov 2022 08:51:34 +0100
Message-ID: <CAAfyv353AYvWGFeSskMzxUEgDvqf7YJEPAdf0B5w0z0avMjs6Q@mail.gmail.com>
Subject: pseudo issue in kirkstone
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Nov 2022 07:51:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58615

Hi,

I have a class where I create a custom image with cryptsetup and for
that purpose I'm using sudo. AFAIK using sudo in image creation should
be OK as it runs in pseudo. sudo calls works fine in dunfell releases
but while on kirkstone I'm getting:

| sudo: error in /etc/sudo.conf, line 0 while loading plugin "sudoers_policy"
| sudo: /usr/lib/sudo/sudoers.so must be owned by uid 0
| sudo: fatal error, unable to load plugins

Is there any workaround available or it's a pseudo issue?

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

