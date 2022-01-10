Return-Path: <ivriabtsov@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29674C433F5
	for <webhook@archiver.kernel.org>; Mon, 10 Jan 2022 13:13:33 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web09.31356.1641820411575089340
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 05:13:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nTx/prjY;
 spf=pass (domain: gmail.com, ip: 209.85.167.52,
 mailfrom: ivriabtsov@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id k21so44266774lfu.0
        for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 05:13:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=FNTwzF7iIP0parAPYwj/ZUsiHBQM+RkYNpAKh3IIWow=;
        b=nTx/prjYV9lrfOo/rvBCkQpW/LdJwAS9HSqTA6pSBzsd1thop9hw1wIPw0TTKN5mtY
         PzOqsefrbWuyLoO6Zpz7pBbkvQ6ytQoqugZ5AzOdeIDH8QIPlbu0Qtp1peqkUn8zhbAB
         ZNVoA+J7+MHyqEgB/MPOFOoTyql49HMThaDJ7pzpRZ40ls5rlZ1O5s/qd0uO20dozQ49
         HZXXnLoyK2OpYqRAOv/DdAV3E7usP8IY+oTAA1/7o382HxRsxC/Vp+YugaRsRHalcBYu
         YU6AOhnIWurGCqNnfkZCkiwlesHuA7WZW74yyi44XCxRKtG8+0U8QnyDYa9Du6MBQQmh
         ZD+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=FNTwzF7iIP0parAPYwj/ZUsiHBQM+RkYNpAKh3IIWow=;
        b=PymRA+onzpCfljfPLbvlJeAm4Mw7RX461awHugdRQz6/s9G8NbswzVx45AKKTeSEPi
         tQ0reNerNZnKxiwYWPh/XsfaoolzDDi/p29Nu32qHJ+Lc7VEq0b8vasq1JGK1DORvGSF
         FxO4/x3wtN+5NvSRuKSgM19T11Z6E0XhyMJEYLg+2Jq2ylornHNy0HwbFf06wIsv9ygl
         jg3VtatfoNF9ohjCQuYVJvu88ptX630FUV2ow5QpkUHMojdUFx8bFdboxmbYpOQj8BWR
         1oCX7QZnKWQyCQzExOd5YNmz9bQrcFdAv1dZ76teCKyjdUNpILaLAkWiSl+wVLHatMQS
         dxuw==
X-Gm-Message-State: AOAM530nEU0p4j+rl6U8Y7/CSCypiSOcOgQgyVLPLDwWIC+IbkOedKGU
	hBvimxLkUF5OnCEa2L39kU9kxAXb+fL5pxip8y6+7DNlcxFsyg==
X-Google-Smtp-Source: 
 ABdhPJxz1Gxc0KSsbLBr5rEcG+IwLHV256xBfjPffCJNyyo3UatrI/vAO8l69pm8pKLi4WWyJVjMxzgojE9L6Fxipew=
X-Received: by 2002:a05:6512:3986:: with SMTP id
 j6mr62863907lfu.170.1641820409124;
 Mon, 10 Jan 2022 05:13:29 -0800 (PST)
MIME-Version: 1.0
From: Ivan Riabtsov <ivriabtsov@gmail.com>
Date: Mon, 10 Jan 2022 16:13:03 +0300
Message-ID: 
 <CAKAnv4FS33+yfaoYRo3nC=odXT_VKmdsYoWpE6zb7f9fRXyB5A@mail.gmail.com>
Subject: rebuilding images
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jan 2022 13:13:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55771

I build the image with the command

#bitbake phytec-headless-image

then I need to add something to the image and I do it like this

#rm -rf tmp sstate-cache deploy

and

#bitbake phytec-headless-image

but this is too long, the question is: what to remove , so as not to
rebuild all the packages, but so that the package was added to the
image, for example, I modified local.conf, it was like this:
IMAGE_INSTALL_append = "mbpoll mosquitto"
it became like this
IMAGE_INSTALL_append = "mbpoll mosquitto ntp ntpdate rsyslog"

