Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B9F3C433EF
	for <webhook@archiver.kernel.org>; Tue,  7 Dec 2021 16:10:52 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web12.69007.1638893452045863192
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 08:10:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NJSvoe/l;
 spf=pass (domain: gmail.com, ip: 209.85.160.182,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f182.google.com with SMTP id a2so14698524qtx.11
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 08:10:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wd3AdjZD6eas4hUzYvunqM6gq7w03lkFBv3mM2l/Ujo=;
        b=NJSvoe/lDfiDIB00d6Dx1YHUwoe2791nr3M2xoaxgZ1CjjA2ck86ILW+Nk2gERMAHl
         +FfP8v4dNJ8aWM6BU/HtDBDH7/wY564DusvKJ3vYP8EfYBKE/k75dMXx7+nTNNitNLXe
         heGvH2hIHiTcgDnIPOpU+YanFuMR1va6inQMe+/bGZb5pNyHMDQxjAe8i/E4L8F44qCE
         ub686hIyR7Z2p6Elgcj+ZlpF4982DPljwYvzlD0g/IduvSzdozNbLK7SmYOt6TQloJS9
         XeldW1SVSn4yJfgIiXLrCXjD9O/THoaiebJ37otSt20dMw1DC8ivhpzY9UMlx6zZkDGa
         zQbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wd3AdjZD6eas4hUzYvunqM6gq7w03lkFBv3mM2l/Ujo=;
        b=bYOrBA2nl4mtAzIzWuB/ogoe8gNvr5X09WxB/fHK6iMAuFaWNHKBWtKXOtuWjMauQu
         2hgEtZvZTninFuulQWydUd5M+zxjKRPODfRIrGuMqN53tsdKINo27TgLx9IJRPd90OaB
         2cYhTdD9L6NhZX3OhwgefkPHBr/7uS/41tCl8bf/20Ok223FkSPVggCRo4bdaqPZRvlv
         E3Fgs+xV90immxPSGFge85fbp5mSaPwPrXMSTy+WisRbDzZl5ofZh+mP+Qr2F/J72gY0
         JMU8jgP1deHNNzr6uOnu3av/zj89yHDRqEJAP4WWJ0utBamKyaWJHBe8N7nEvGN/amRh
         hlnQ==
X-Gm-Message-State: AOAM5313bP4HqIMUY/sgaNLmd2H2nLgRDNQSa7XWvvp8xxeHB+FqqlJ5
	VYFMA879g6wGtR80CqBgYkdwTAgxHeRLTloVusU4+8GYAY9Q5A==
X-Google-Smtp-Source: 
 ABdhPJwIctFOeOx26jO3YUVBYUvSugwmPiM9msUa2zsWFi2n8ua2KwVqQmnTdT1KQ+rhYndybemdNDKILzd+x/imAK0=
X-Received: by 2002:ac8:7f4d:: with SMTP id g13mr29448qtk.215.1638893451196;
 Tue, 07 Dec 2021 08:10:51 -0800 (PST)
MIME-Version: 1.0
References: <OrLs.1638861855420347300.mDj1@lists.yoctoproject.org>
In-Reply-To: <OrLs.1638861855420347300.mDj1@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 7 Dec 2021 08:10:24 -0800
Message-ID: 
 <CAMKF1srEV=J-jfdLWbE3TeQPCRdRdB0Dxafr3S5W_GR23YTqLg@mail.gmail.com>
Subject: Re: [yocto] Is there any recipe for #FRR
To: mousavy.system2005@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Dec 2021 16:10:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55505

check

https://layers.openembedded.org/layerindex/branch/master/recipes/

if its not there then perhaps no one published it yet.

On Mon, Dec 6, 2021 at 11:24 PM <mousavy.system2005@gmail.com> wrote:
>
> Hi
> There is an old discussion regarding this in this link:
> https://lists.frrouting.org/pipermail/frog/2019-January/000445.html
> But I can't find any updated one. Is there an updated recipe to build FRR?
> Thanks
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55495): https://lists.yoctoproject.org/g/yocto/message/55495
> Mute This Topic: https://lists.yoctoproject.org/mt/87560560/1997914
> Mute #frr:https://lists.yoctoproject.org/g/yocto/mutehashtag/frr
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

