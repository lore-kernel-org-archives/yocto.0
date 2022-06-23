Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47F05C43334
	for <webhook@archiver.kernel.org>; Thu, 23 Jun 2022 14:45:19 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web12.8274.1655995516142694986
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jun 2022 07:45:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=A2hUamD0;
 spf=pass (domain: gmail.com, ip: 209.85.167.54,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id j21so20676407lfe.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jun 2022 07:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Qsycpi1yTLYmLmTP8QgskVzx+OAVU1zG2FO69rkcvBs=;
        b=A2hUamD0SStjysv3L3Yv7S4F2qZ5wFTNj3u2UgwExer8euN01Rbh9n2RXZ2El5f/UY
         HrM3SID8VhIQrRQaH9ZkaP3DMUHL0UIoqcfOSiln2JQ7IveamVq/Ov31sNVyE8zrl5o5
         ETusZw/mPgVXQsdVdKhB/UYWWVgKIofS7XcfUUe4u4XcQ4ShjpuALeJk/Z+/eXMPdi4f
         S02fDENMIUdpZLrXUIdH4uTyw5Voy9t3pqXDZ617ns1ntGMNMZXaxPVD6ubRxuEhFW/9
         FWqPrpjhfWb3TcqbKvUkiGCtzV5j+s5geTx446NsdbUlSpWqaLiZlc1CdN7xLQXpbH4O
         Jikw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Qsycpi1yTLYmLmTP8QgskVzx+OAVU1zG2FO69rkcvBs=;
        b=hEKIpFsH+Xr0QWF5j4Wlk9dx98FZwBTRUPkObZCV7x6x8Plyf5HfxR5/cKnSMBvHsZ
         WX1yHmQK8/g+nmYeaKM0lZswVJSqMK+vDeIKxC3IFGH0Bs9cYicppHCv/chg7MWQ+MBH
         edFD8Tfdg/iOpTFG7DIp2hAhyTZL7yylUSvydNkHxEE1eKt8i1jmBWtWW/UGlLqpNjyV
         0I/wNmNuI4Y2grDTVzyYePCKG7AdzzBgekF0xhUxXFYmaIaNWeBgsfEInZYEOfb/wEAG
         2wHn3N4ZOXv6dqpNxZ0/DOOvWeWCWE3KMZgMMVGV7rjSPa3qCMVeeKe64STwz/pgrlkZ
         sfag==
X-Gm-Message-State: AJIora80fntRT92em6sCnbfH5UivkgNTsMr5dTcv1e841leBdRVubyWX
	C7Uyfc9U0cdbwmj3Ig99DbNTDM6ef3UMI0a0WCE=
X-Google-Smtp-Source: 
 AGRyM1tnaBHMP+7RKF9Ma+YzGAXNCKQ/i+WUaBO2PZ5g9smcZZMrsoR3jcUXI0eXEsr50tOQMsHDzouO+6AFdewHUYQ=
X-Received: by 2002:a05:6512:acc:b0:47f:769e:6aef with SMTP id
 n12-20020a0565120acc00b0047f769e6aefmr5733646lfu.26.1655995514008; Thu, 23
 Jun 2022 07:45:14 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAH0OAGRgTDTeW58mNx=UuDEdbVC=LuJ_=mCs0ZiOL3GwjMNzew@mail.gmail.com>
In-Reply-To: 
 <CAH0OAGRgTDTeW58mNx=UuDEdbVC=LuJ_=mCs0ZiOL3GwjMNzew@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 23 Jun 2022 16:45:03 +0200
Message-ID: 
 <CANNYZj9Oby1THK5pJwz2JuWRsRwf2OMbi3PhwX=PPYBXkjn1RA@mail.gmail.com>
Subject: Re: [yocto] source-less python
To: Aurum Nitrogen <aurumnitrogen@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Jun 2022 14:45:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57384

I don't remember any such discussion. If you want this to happen, you
are welcome to develop the feature.

Alex

On Thu, 23 Jun 2022 at 16:39, Aurum Nitrogen <aurumnitrogen@gmail.com> wrote:
>
> Hi,
> I was wondering if there has been talk about support for source-less python on an image. Installing py and pyc files doubles the size of python on the rootfs. I can imagine this being implemented as an image feature.
> I know that in buildroot it is supported.
> Was this discussed and decided against? Is this an open issue?
>
> Thanks,
> John
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57383): https://lists.yoctoproject.org/g/yocto/message/57383
> Mute This Topic: https://lists.yoctoproject.org/mt/91944424/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

