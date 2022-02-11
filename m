Return-Path: <mattwood2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20F10C433F5
	for <webhook@archiver.kernel.org>; Fri, 11 Feb 2022 16:23:43 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.9245.1644596622013959230
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Feb 2022 08:23:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Q66igvHD;
 spf=pass (domain: gmail.com, ip: 209.85.167.42,
 mailfrom: mattwood2000@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id o2so17608964lfd.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 11 Feb 2022 08:23:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=kQDLvNPp65GFRJ7RuxOtLdlV/Qqs2gRgUdcsAwjYEak=;
        b=Q66igvHD+N+hVlIQus3z7pU1exRl/63oBQ1vXunKyqAFe60YfLprkKfSKhc5kqJUmB
         q0yKTX2ZAMbIekmL3e3qbqhWYYByY+PAProRmIqCp467+/9tsVxD/N60YRxHz06uf3Ch
         s0/ts5SWVnt0DFhbPiFWX1g48L0ye7obnyIDZ5D5VenlorE0BndAdF7QRI9aRenl+7PE
         OqyqIp7IHVW3fsDPxcV6+r4faHBaBl3U428pBXUOmXP9H22aG9tuVsTQqoap85gRg1kt
         pcGUQv2vV9DlHgyh3eu/En+cWRHIBC4Ov+B3eUHsPPaOvIsHtxQ38LJZjMotDZERo26j
         CoeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=kQDLvNPp65GFRJ7RuxOtLdlV/Qqs2gRgUdcsAwjYEak=;
        b=opr1jYdy0VWt7Mq9dd7z6s/TmeF+vSsddJYEfrIFgoJ6jlaoqGolPiPLpDkIH1zJ9W
         49EqOTz87lFyxOwhBqWkqWjHIiurbGQhLbA/0l0C9OEJy+tRlLxDcdfVz5nXt0xmX3yE
         Vj2vziKvebTyCJf9DfnTnK0GPZOI7PJWlYo6P8JsAWQ9sc1CqSQofwicrrFpPO5HkfqA
         hfN5sZmdljejbiq5XXukyA7cunUETEYRRhX1KK8kfGU7sf0FffSxkozrBhWcJVOTt5i1
         8sV5sE+kgA1jecMv0DCOYNo3FJrEunhqzu6pwm0IxTaH8jdml37xox9xq4qHej/QVmMP
         FMuQ==
X-Gm-Message-State: AOAM531dnoT0rIVLqE1iwnTqaG0Ed+BZd6UkuDwEtS+xXXyYpH8vm0Wh
	YfC62t04oL11HfSZ6/Gc+NLiQ3ajidVEXcel9Wa0GtFoDIw=
X-Google-Smtp-Source: 
 ABdhPJy5Yr/5SC1qXnP9xKaEVr/SCh25Dt+U9DznuhJb2ZYSHnjXu8yUeaxlKkfogMXUXmUV958eW0nqcEh9ZxULMMU=
X-Received: by 2002:ac2:4198:: with SMTP id z24mr1621422lfh.341.1644596619821;
 Fri, 11 Feb 2022 08:23:39 -0800 (PST)
MIME-Version: 1.0
From: mattwood2000@gmail.com
Date: Fri, 11 Feb 2022 11:23:28 -0500
Message-ID: 
 <CADjezmaWK+MRzqRyHwvegFoNQRwwdaCXCT_KU=70i270z79zOg@mail.gmail.com>
Subject: gpsd recipe not installing clients
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Feb 2022 16:23:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56158

Hi,

I am trying to include gpsd in a poky build.  The core components are
included, i.e gpsd gpsctl and gpsdctl, but the clients like gpspipe
and gpsmon do not make it to the final image.

For context, I'm building for the raspberry pi 3b+ using
core-image-full-cmdline.

I see all of the clients in
tmp/work/cortexa53-poky-linux/gpsd/3.23.1-r0/image/usr/bin however.

What am I missing?  I didn't see anything in the recipe that would
indicate a conditional install flag.

Thanks, Matt.

