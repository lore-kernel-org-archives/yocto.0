Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C6BC02192
	for <webhook@archiver.kernel.org>; Mon,  3 Feb 2025 10:53:08 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web10.85276.1738579973718655926
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Feb 2025 02:52:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iOCQDtlc;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6d8e773ad77so31795356d6.2
        for <yocto@lists.yoctoproject.org>; Mon, 03 Feb 2025 02:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738579973; x=1739184773; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gmoEKdwlDV2gr0OGXITjg9pa8hwlPnaxfSY9GeOhV1A=;
        b=iOCQDtlc/2qWhY+cPwDMwmw3zj77eCDuT8XP48QruFv0WEvM2tOdbtxF0Qzwx4O07m
         YQSJ6DBFYWoPpBgJ7DbJhbVv8W2Go9oJLekqdpetUrXi03KPVr6ufymy+y4BcXb4mA9K
         d2EGJtFqRjbjDYx5K3Kc74XPQMDadhJ7oBT4E5oH4RRjPl+lZHdtR+QeZo9iCRI1mGIC
         JtXs9y3SuriOInMCD9T5qcYGpReXS86JBYRdc1vhm+SaKg6AEXnbaiS1RvRnX2C+4RxE
         DL2p3TrSrxeZeruqm+ugNBLJvARObLEXR5ox/d9Oq2TJuBzscQcMqBAiLF9VJVhwhThp
         Yh9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738579973; x=1739184773;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gmoEKdwlDV2gr0OGXITjg9pa8hwlPnaxfSY9GeOhV1A=;
        b=U8NfEJBuIOzB/ufyJXdDBVoAhhAenYjwWl0l004R+J0e9huQyt367Y3lAK6Fp4yci6
         LYyksibFMCm1+I8n44RmXzsTIy2Ssp1ZKZBuSLbTyy1A6vbnd3GCEgJTupj4fr7gCCS/
         wxkzRFWY+VTWoJoNBT60uxpCmJavDhvLpbMCDuSc0dyNvVLwpL/z8QxyYP1uXKTgOO8A
         0NaQA4/REyYuAgATkqeN3XeWlsQ9OmyEjw/3fF/I/ddgqhO++Xgj4aWTHJslg0DzwxCU
         8R+lrxW5+EdIeoDP253w3khl1BGWrEHTTHm+U7Ad9GN50Q4f7fr8lIyGilHdcyoWAP33
         iHwg==
X-Gm-Message-State: AOJu0Yyvu57/WLMTmdf+xqZRn2V9zrPepIX7vPjXrW85XYqhaaQ2Rhal
	PDFLY+Vr9jZ9ErkVgI6yPHiSpEIjGQkOtfBvTtqSMgHcMWyKRJ1Uvev9tfnosr+O7IzszLjogrg
	QQpouPNFG8ahFfqelAT+joD11FwWcdg==
X-Gm-Gg: ASbGncu1iXBn8ddQvjJCKvqh1Lf2GIhraNaQ98gaFyugkHyKaWCLACIiqpjh/dNqwEv
	DfKp+J+VtyQeYrNlfXufDQveGHwk/6ly6UROh0qxAlggMgFC8BPKamjRO9m//zGUFJBsHLNrvse
	wG7wIpcgRKFpl/rvow9y6vvXx50ymqhHY=
X-Google-Smtp-Source: AGHT+IE3XAV6xwN7U2mJOUZCp23eU/eAdAY8OyY8XdnJl0qbjRH+UaPS9NHnlyS7VmEJ7N1e+4lAhnaTjKU5471CU00=
X-Received: by 2002:a0c:e583:0:b0:6e2:6527:6932 with SMTP id
 6a1803df08f44-6e265276966mr85389576d6.30.1738579972766; Mon, 03 Feb 2025
 02:52:52 -0800 (PST)
MIME-Version: 1.0
References: <CAOOAcKdtLmVtz0r5SYwmqyrUgf+PzMhhovg9jen=k6h5UVKvXg@mail.gmail.com>
 <CAOOAcKcCJNjTECq6eqWi+E4-rPG1aAC5Hy=Yj4KP-45J57Bqyg@mail.gmail.com> <CAMSfU+6fz9nyqz+vmQOE6saVkexT=DHVqUoitWyCs1=Vqu4GGA@mail.gmail.com>
In-Reply-To: <CAMSfU+6fz9nyqz+vmQOE6saVkexT=DHVqUoitWyCs1=Vqu4GGA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 3 Feb 2025 11:52:41 +0100
X-Gm-Features: AWEUYZkYaEnaMM8xmvj1Zrs7DdPO8OO1bCrLTCdSuqImM-MCTUbh9MSEsDHHygA
Message-ID: <CANNYZj8dHU8-VmXPjX9nkC4nvUr-CzM4VczNt=P_jp59UjiEyA@mail.gmail.com>
Subject: Re: [yocto] Incompatible license in yocto
To: yocto@lists.yoctoproject.org, yoann.congal@smile.fr
Cc: manjurrnayak96@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Feb 2025 10:53:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64699

On Mon, 3 Feb 2025 at 11:26, Yoann Congal via lists.yoctoproject.org
<yoann.congal=smile.fr@lists.yoctoproject.org> wrote:
>> I'm trying to add INCOMPATIBLE_LICENSE = "GPL-3.0* LGPL-3.0*"  to yocto build. I made this changes in distro include files but after making this changes getting lot of compilation errors. Could you help me with this?

I'd like to know where the advice to set this global setting came
from. It's deprecated in favour of per-image license restrictions.


> You may want to explore using https://git.yoctoproject.org/poky/tree/meta/conf/distro/include/no-gplv3.inc in your distro. That may fix some of the problems.

The first thing is to set the restriction only in the product image,
and then see what the remaining issues are.

no-gplv3.inc is meant as a showcase of examples for breaking
dependency chains when issues occur, but it just as well may result in
a unusable configuration for the actual product.

Alex

