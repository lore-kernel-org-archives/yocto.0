Return-Path: <webhook@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,SPF_HELO_NONE,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23FD5C433EF
	for <webhook@archiver.kernel.org>; Thu, 23 Sep 2021 21:39:45 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web11.89.1632419835135311585
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 10:57:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LQp8k6U5;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id a13so4652533qvo.9
        for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 10:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ry1thctvkRLvRArsQCfq+0VBL10J3gkV3H5eciRkaY8=;
        b=LQp8k6U55fS6mlUhnCLzT5PQ/YCVxml3tQ8wiaHM/+K7a8dnH3+O72+LRpLhqKVyMW
         T08E+MNowuAlvS60YxCenypGacW3/SbWn9Yc9uE+KjcIi4UXahgk9JDFC9WvY1SFzKYm
         da5bAVZfrkCmhvALZqgiRGkDc1dfwnFmaxVYMzkLi97Fr7MJGol8sbkvTRS6JnpcnIK/
         8/M6y4yd+3/CEtaLTY30rvfx3IjCXspoIYrhvvFbya77GAx7WS7cjx9UImfmnBIBTcA1
         P97+KE+d1DjyjFvuDYi5XYn50vhCrPtzK7JqRi3azKHw9qIFUkrvGxGHRuLQGNEf/ciw
         VAzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ry1thctvkRLvRArsQCfq+0VBL10J3gkV3H5eciRkaY8=;
        b=di5khD56kYoUDsTDrLFbbOCyvCu8iLWn2gepqUluz9Dwmet8mgfQgl8uqKlMaATIpI
         IwBMY2D7A3RNKmyfXTQ85xrWn1YI+dPkwuaHry2WjZF/jaVI1NdAiUgSjpjSGxFvAOjJ
         Wc+rEJkGSXt7zZA9WbbcOhwDAz/OvMCQRnUwH6xs74m8Ea/YWAVtVfiheswKRcfxW5FN
         EKfqojFHUkWTPh8OE32vJEyb1zykjkkdrESaScPXICfEXsrWlJQI+okvOWimG1GJfmrV
         XK8qdoJs+amSRCY5fpVHetIW6MajxMvTD+cOWPIM8kEj6cHw7eGo9lkXQ/0GKp4ZIU8l
         uXxg==
X-Gm-Message-State: AOAM532VxU7uStRqSNyER9tGzL1p/3RObbZViPSK6N4M6NMwxicab4vk
	tSPNgu+erNvGh5F8kLkq3ngogpK2DX7iptWO28CR7Nm8OOw=
X-Google-Smtp-Source: 
 ABdhPJzjK5iGMrqQ4UvvsC14leg2Omk0xcz3Vz1BCQU8g5klkScWvace8Hb0NvTplXH+sy4d1YEI1bUqJ0w9rmUO0Pw=
X-Received: by 2002:a0c:a952:: with SMTP id z18mr5759383qva.64.1632419834191;
 Thu, 23 Sep 2021 10:57:14 -0700 (PDT)
MIME-Version: 1.0
References: <JE6o.1632404774963332999.ccky@lists.yoctoproject.org>
In-Reply-To: <JE6o.1632404774963332999.ccky@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 23 Sep 2021 10:56:48 -0700
Message-ID: <CAMKF1sotbsQkE-Sb2Nc2xaq5ox+t6b9rw3ZYMHX-5fFAnViPDQ@mail.gmail.com>
Subject: Re: [yocto] Using bitbake with external SDK #zeus #toolchain #sdk
To: enrico.buffoli1994@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from
 bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca
 [216.209.220.181] by aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS
 for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 21:39:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54820
Message-ID: <20210923175648.3VrgAR-Gbmi0xKSq3bqhbTjqWJ1wgIcV0U04OtbX6FI@z>

On Thu, Sep 23, 2021 at 6:46 AM <enrico.buffoli1994@gmail.com> wrote:
>
> Hello,
>
> It has been 2 years that i'm using the yocto project to build the image for an embedded system on IMX8M.
> Now the system basic image is done outside and i receive the SDK.
> All the additional packages that i was installing with my yocto project are missing because i receive the standard os image.
> Is there a way to use the SDK that i receive to build the additional packages with bitbake?
>

if its eSDK then you can, with standard application SDK not so much.

> Best regards
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#54808): https://lists.yoctoproject.org/g/yocto/message/54808
> Mute This Topic: https://lists.yoctoproject.org/mt/85814142/1997914
> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
> Mute #zeus:https://lists.yoctoproject.org/g/yocto/mutehashtag/zeus
> Mute #toolchain:https://lists.yoctoproject.org/g/yocto/mutehashtag/toolchain
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

