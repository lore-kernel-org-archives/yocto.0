Return-Path: <sergey.nikulov@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A4AEC38A2D
	for <webhook@archiver.kernel.org>; Tue, 25 Oct 2022 07:37:07 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web09.4546.1666683415387990079
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Oct 2022 00:36:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jZRVJYe8;
 spf=pass (domain: gmail.com, ip: 209.85.210.176, mailfrom: sergey.nikulov@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id 130so723703pfu.8
        for <yocto@lists.yoctoproject.org>; Tue, 25 Oct 2022 00:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+T8hSeb0s/5snaL6EkrmjISt/tqZFxmOLAQxxj6xYvo=;
        b=jZRVJYe8fkdbhTeYiMYQIz0lIlK0ciPGrYY27wfSAECUpR+RYUieUq4/7KVt5OtwjR
         kynhqkTimRx3u6c7YVl/d1RZ3t+7ELimLUOynTL3zcOFPaI5cWOs4DZDpZkjELPlClSk
         jWoCJyQkCRAZ89bn7VkYh1r3I0HWGbmXm1GNX9BOWmD3rpl/hvPNqAdg5YVZhVO935M3
         dXu7uoKpCYEF4zv7hCkDlr4YHnHHsrtDat+C6AdLSMdStolA7YG09oW3+5MDRfozqgEm
         OUk8eKeiax3DOTxrPVO+L22ECrtWW+hrd7mJwtedj8V27UDu1KfEKE6Nwnk6B/HTmYQ3
         MumQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+T8hSeb0s/5snaL6EkrmjISt/tqZFxmOLAQxxj6xYvo=;
        b=JWrekCSeY9og97lrhuVfez0mKsTPGAth/ZGU6NPgZbMfNcS61pmwhMJ9uUWeQAwix6
         dKTAvKm3sEqwnSf7ZHMD86kmdCF0SO8VuLd4ZQsJvaexkVGD80JQtmYx90LLIKthmDbF
         2Vmj7KWnA2O3JmAPXurH6wAUQgqRAHDkRjQ6tVFCzVea27T/zP50TZ8wH3FxFAowkMwz
         ugodwPyFjGx3uozwW4AzfMnB64YhW5Q/IxAuqMOHZkkbkLl2EZLfHz9PBchcnSE0R7Xd
         yf4EVBH/Y2AmFHRvCR5IQ7J2YogYuBfP3QC197K49ROafeZStxV4yxye92j8GHQ2S0BW
         deGw==
X-Gm-Message-State: ACrzQf0wqwO/w7rHbUNL0BrGKfsTRgcC6vqU22avRUR2KNeOOOFymetL
	V04K6YN8zSp7mAbX2Wpc46F6A0nDm7VAjpJAYXI=
X-Google-Smtp-Source: AMsMyM4RKKk8Uj02qndKS53g1dRAF3aGyERXYsmvLnVoUpYy5PrgPEa/B+iERKcBrLrn/XftIlUE8JMg+VtPo3uIHAY=
X-Received: by 2002:a05:6a00:1406:b0:565:dc13:bb36 with SMTP id
 l6-20020a056a00140600b00565dc13bb36mr37996843pfu.46.1666683414734; Tue, 25
 Oct 2022 00:36:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAE7Ac0BRr-YCf-F2ps-qX0SF1JcCR=RpXCd4KMW6dVHXQzoRJg@mail.gmail.com>
 <31059.1666683092159816525@lists.yoctoproject.org>
In-Reply-To: <31059.1666683092159816525@lists.yoctoproject.org>
From: Sergei Nikulov <sergey.nikulov@gmail.com>
Date: Tue, 25 Oct 2022 10:36:43 +0300
Message-ID: <CAE7Ac0C0aiKv-XDO2N8XCWFL95Mo7xg-=K6EqoQJitr=nggROQ@mail.gmail.com>
Subject: Re: [yocto] How to enabled systemd unit files automatically using recipe?
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Oct 2022 07:37:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58411

Yes, sure.
Use space to separate multiple paths
For example:
SYSTEMD_SERVICE:${PN} = "one.service two.service one.path two.path"

On Tue, Oct 25, 2022 at 10:31 AM Sourabh Hegde <hrsourabh011@gmail.com> wrote:
>
> Hello Sergei,
>
> Thanks for the update.
>
> I have already added "SYSTEMD_SERVICE:${PN}" to my recipe. But, it is set to different file(.service file). Can I add multiple files to it?
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58410): https://lists.yoctoproject.org/g/yocto/message/58410
> Mute This Topic: https://lists.yoctoproject.org/mt/94553177/3617615
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [sergey.nikulov@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


-- 
Best Regards,
Sergei Nikulov

