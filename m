Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 766A4C433EF
	for <webhook@archiver.kernel.org>; Tue, 11 Jan 2022 19:48:38 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web09.12944.1641930517185878129
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jan 2022 11:48:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PTkEIR5P;
 spf=pass (domain: gmail.com, ip: 209.85.221.51,
 mailfrom: jpewhacker@gmail.com)
Received: by mail-wr1-f51.google.com with SMTP id k18so161851wrg.11
        for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jan 2022 11:48:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=aAotV/WZAN4IrX8NsiPXkAaxZYXoQ7BuSz0SKVMJ11U=;
        b=PTkEIR5P8fThg+muwLB6CGGKygk4xVZmeJspthZivuoTK6LQS19QkQ1RNOBjwiLJRL
         in+xj3rn2KwqAauAVAdC+jTdD9g0/EQwt02yEZS2oNdJX65b/wYaOR+KJP3pJC0ApIqi
         O9++r1BgzimvKPZ3QiPUlVV0LQBejzHLJ0boEZreOqZc3QQ7ZIpmkVXCwl7MhhPGyMQF
         mkysffnrEXD9FjLxflKj8afy7gIRhukg3yzzOkFkfga9UJNsOPNZ60NbkqEMGslvmIlm
         Se8y+n3obktmOpX7adfEGDMvOKfsnCvy+4DyogvM/39DlHHsWefLuFPP/CxesLMW65Wl
         AVBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=aAotV/WZAN4IrX8NsiPXkAaxZYXoQ7BuSz0SKVMJ11U=;
        b=s4Qd7QXcvxNaF3OdxLMaayDp0O7keVM0tGGv61hJq4ffq22xHUPpIofDaEID7ylnUa
         O7O4ck62ex+mch5PQAzxBmfLPYxQgm/amqAk95bXer8/8U03VNcA/TynigzS1XiU35SE
         aNb58v0/FQAz4fZqLuFS3YXe62jYBnfZC1U5CewcljEqnAwelDTs2iAOQ8U9V0BNlkvL
         Xf+6yZDpallxHaRjMSTwJCzNbTQ9in20PiAXBcrkDheI5MqGkZiOnj4lBGcPCDFkmzg3
         jhS+/zh82zdee8ZhfEAe69dcHG2h8gXI4V8AJFf4V8RXZqLIf8t5Rns0ByewU+iwaepP
         uZZw==
X-Gm-Message-State: AOAM532/pZd8hmNCPo40EYDQLdvzTgVaVGsbyxsT71XgUVq44Dce6/ZA
	yMQgYVjFyffNWumvrAuuV1rUkY+sIiG+F1XM+u0=
X-Google-Smtp-Source: 
 ABdhPJyZlxhGW3Q1d+/sCOp4yB+JekUKYdZOW5UG5WPq/9rLuvaZh7kFD120R09VPWgcXu9YWzTx2NyKRvGTjzeBBKw=
X-Received: by 2002:adf:e2cc:: with SMTP id d12mr5075817wrj.107.1641930515709;
 Tue, 11 Jan 2022 11:48:35 -0800 (PST)
MIME-Version: 1.0
From: Joshua Watt <jpewhacker@gmail.com>
Date: Tue, 11 Jan 2022 13:48:24 -0600
Message-ID: 
 <CAJdd5GYy58np+zpzGQg=KEcNv2OTHzu0uXjxK2J7v1LKbTnQVw@mail.gmail.com>
Subject: Reproducible build website broken (CORS setting on
 git.yoctoproject.org?)
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jan 2022 19:48:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55809

Michael,

I noticed that the
https://www.yoctoproject.org/reproducible-build-results/ website went
down (it always shows "Error fetching test results"). I did a little
debugging and I think that the CORS setting on git.yoctoproject.org is
not allowing www.yoctoproject.org to request the data anymore. I
thought we had fixed this at one point in the past and maybe it got
lost somewhere along the way?

If that's something we can fix, that would be great, otherwise we
might need to look into another solution for fetching the
reproducibility data.

Thanks,
Joshua Watt

