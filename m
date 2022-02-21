Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E59C433F5
	for <webhook@archiver.kernel.org>; Mon, 21 Feb 2022 15:59:30 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web08.468.1645459169658378599
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Feb 2022 07:59:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=76jybBWt;
 spf=pass (domain: burtonini.com, ip: 209.85.221.50,
 mailfrom: ross@burtonini.com)
Received: by mail-wr1-f50.google.com with SMTP id d3so12243729wrf.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 21 Feb 2022 07:59:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lqhScp2ChD7u9P8rGjZrhCI4F7rF4Z/PLc737xbETd4=;
        b=76jybBWt77fmLc8gmLQTlbZi2rdHe3oMQ/lI0a6M+tpcA0e/QJa4nTUAvUWJdi8CBO
         XgBdN+ttf48JhcQYPWVAUMJrEkS1hNdMl2+ZHIwqOe7ZQSUE+gjjhFzhGY3xWrm1WWwp
         SaiLaLBhRitDNYYTmpcNJCu2FwtESmmDuZ5SO/AgGENGybHVJHw0hGcBoKqOQX8lHHdi
         FQspwTs1rD/6hWioV/UkHuPZLu6tWFB15864Xg2eDy2De6qm40+Bl2Ymp8nU3YpLKVLV
         zlaCNsTriYDCbqI29NmHYnZ/Hn1/xRZ/cgfe9ngKL7t3r4kWHbeemqUY8VubhayrdGIS
         c/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lqhScp2ChD7u9P8rGjZrhCI4F7rF4Z/PLc737xbETd4=;
        b=WXvh58iAOn1rfS6YBwNT2SirHlBKAVQjlWUHxUPVGLjIkIJ9DYh848jVM5j4DUl1Hn
         MJWX+xiBQI4Y69GAvpaCTR4JRRHcHpgUOspMJqp70bYzgDqUnDF/mh297lbhWGpo2NGs
         sDicpDbOtAnZNcemhD8oA4pUbkBe640DXOL1f3UMyEDZnhVNph3WDK+DF9Ev/cEmv+mF
         EvVBOgepDwyYK2jJWS6lAtUnFe3quIKiaTKyhmlYl6uOr2L8rl7eWZjXhAim5QEe2ZeK
         60hQvWIxJ0TUc+gMK8BHtv/0lCl4ynqh+72EGsPghxu7E/Os8WJoFJomKAd2V2HNQSdN
         GQww==
X-Gm-Message-State: AOAM531EehGFeOJp3F7sUBuvwmE1/plc2NJ7zbCNEFnTLg8FNpT+eBH5
	4oaLV/KYhhCdgy1A0ePvMgSis2jkkCJ12OgbVJyKNQ==
X-Google-Smtp-Source: 
 ABdhPJytDXIDJ4hQhNszvVFRRXc+Ke71Ofl2djylbWhtKOzcniMPmocssGxYvRLJJXZbefObWRclGEqkSuqpjWeaK2g=
X-Received: by 2002:adf:ee0d:0:b0:1e3:f28:487f with SMTP id
 y13-20020adfee0d000000b001e30f28487fmr16179323wrn.620.1645459168126; Mon, 21
 Feb 2022 07:59:28 -0800 (PST)
MIME-Version: 1.0
References: <FtDJ.1645449252258283472.8QNX@lists.yoctoproject.org>
In-Reply-To: <FtDJ.1645449252258283472.8QNX@lists.yoctoproject.org>
From: Ross Burton <ross@burtonini.com>
Date: Mon, 21 Feb 2022 15:59:17 +0000
Message-ID: 
 <CAAnfSTstoBUzKHsO8r66hb33PnGaP0VOUrG+ZGSioRUpbBU=wg@mail.gmail.com>
Subject: Re: [yocto] coreutils-native-8.32-r0 do_configure: configure failed
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Feb 2022 15:59:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56222

On Mon, 21 Feb 2022 at 13:14, Sourabh Hegde <hrsourabh011@gmail.com> wrote:
> configure: error: you should not run configure as root (set FORCE_UNSAFE_CONFIGURE=1 in environment to bypass this check)

Are you running bitbake as root?

Ross

