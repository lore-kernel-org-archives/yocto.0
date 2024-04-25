Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09FEC4345F
	for <webhook@archiver.kernel.org>; Thu, 25 Apr 2024 07:26:48 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web11.11504.1714030004106059499
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Apr 2024 00:26:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mBqNlZWq;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d87660d5c9so6593601fa.2
        for <yocto@lists.yoctoproject.org>; Thu, 25 Apr 2024 00:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714030002; x=1714634802; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l04SY4SjphI2Nfa9HYH6Fy9FgzFhdwr7RQd1I6trAVY=;
        b=mBqNlZWqh0mRrCWgZMs4Gwht1Nps3TVZJynyCa0W3ailMNmdyn5vm0qB9qcBegMSTr
         c9LTzSPeYDOfQtoQfiq0SuXDdRDnpeBbv+qO9a8obJ2J/cfCfpP34gsNsbpq5nhdLmZR
         VIAum3YGoohcM+LwJPwMNQVVsGGEhwUb9heGBJFTWM4J8pM73n+dQkehZZs/cA61bN0R
         gxhkPnZBSlQTZq4Dk+ZbBGBoIJyjfS0ghaKf4eYHw0gkQBYNFNSMI3S/mXkzHN+fqtVe
         3NQINf17ViRkVsWXEBfuB/6aoIbJ3nWKq0Ry5b0vm4aSn1p/EUpnlvgkgUTStJ0BSfew
         5VLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714030002; x=1714634802;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l04SY4SjphI2Nfa9HYH6Fy9FgzFhdwr7RQd1I6trAVY=;
        b=YL95cicsfrNt9z1o/qQ1+4LE69UaigYDSjEeSniQObjDNkHAGPXJTGn7ZElcymEyEP
         eWjVX5zx0+qn3HUt1fdHz9xmui0Ey6hWnc1rpI88D92+rdmIDRMAsRF9V3v0JwRHEG/2
         T+Wy+TBvsm6TPrwbxmvtbHYdxjAI48JJcTTOxbwaD5lnLzDJOfijcFIf56e3ab3n3X+o
         rgyz4Z/QyJfLrucFwkO1Ad1bE88x3h6Q+/GDnhRi0kqENajqOqLwICATI0Bu4TJ5+q6Q
         UTpmNsgEvdkBvQA56rBLcrIh8KGMjaUY+jshCO+WLfjgB7Hw5fxRgaFackrEQSsZnHwS
         5aiQ==
X-Gm-Message-State: AOJu0Yy5H1UoUW601naFWWl6+pR3E/M3THfm9UEicAv+anKJbekTh5FP
	X557QygTPCiIqB5T5LELjpvsXUbnvZwqrALm4wAfMR/LwTwLv5skZMS6iePGhvL2I7P4/2F+qSc
	I/LhxgiXchEtPE5RUprpKM7aYL9cCLA==
X-Google-Smtp-Source: AGHT+IHroNAPDM9nZn9W1sKcV9FKuMjf0pZlAOzxLao3BTpWchpZpMW6EiOFIyKfzwh3kV8SZ1CR++U1V8wiBlymBYk=
X-Received: by 2002:a2e:81c2:0:b0:2dd:cb34:ddbc with SMTP id
 s2-20020a2e81c2000000b002ddcb34ddbcmr4631848ljg.48.1714030001986; Thu, 25 Apr
 2024 00:26:41 -0700 (PDT)
MIME-Version: 1.0
References: <j9su.1713969552488817175.31Ed@lists.yoctoproject.org>
In-Reply-To: <j9su.1713969552488817175.31Ed@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 25 Apr 2024 09:26:30 +0200
Message-ID: <CANNYZj_3QKp67y9R8_iyH_Emq3-gnYN=yEcwmXPABhKCTu_5Xg@mail.gmail.com>
Subject: Re: [yocto] How I can add/remove libxxxx-dev.ipk to the installed
 yocto SDK? SDK partial update #devtool #kirkstone #sdk #yocto
To: yocto@lists.yoctoproject.org, Salahaldeen.Altous@leica-camera.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Apr 2024 07:26:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62996

I would suggest that you teach the 3rd party to set up a Yocto build
and provide pre-built sstate cache to them. We've added SDK features
directly into it, and incremental updates are both possible and easy
in that setup (just pull from the layer repos and rerun bitbake as
instructed).

Alex

On Wed, 24 Apr 2024 at 16:39, Altous, Salahaldeen via
lists.yoctoproject.org
<Salahaldeen.Altous=leica-camera.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
> I am compiling new version of shared-libs are yocto recipes and plan to ship these libraries to 3rd party without provide a complete SDK, can I only ship the ibxxxx-dev.ipk and install to the already shipped SDK are incremental update.
>
> From time to time I can provide a full update for the SDK, but I would like to avoid frequent update.
>
> what is the best practice to provide partial update without using devtool? is this possible?
>
> Also, can I uninstall/replace these libs which not official released from the installed SDK path?
>
> show I use rpm instead of ipk?
>
> Regards,
>
> Salahaldeen
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62994): https://lists.yoctoproject.org/g/yocto/message/62994
> Mute This Topic: https://lists.yoctoproject.org/mt/105711257/1686489
> Mute #devtool:https://lists.yoctoproject.org/g/yocto/mutehashtag/devtool
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkstone
> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

