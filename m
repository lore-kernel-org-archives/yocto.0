Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 352ADC54EE9
	for <webhook@archiver.kernel.org>; Fri, 16 Sep 2022 12:15:09 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web09.5303.1663330502595430753
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Sep 2022 05:15:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TaWrPVzU;
 spf=pass (domain: gmail.com, ip: 209.85.167.52,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id x27so2045324lfu.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 16 Sep 2022 05:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=dYcvKaoLDprDhe/jq9A5UuwdN5uChYxUHvf0lb7+10w=;
        b=TaWrPVzUTfXI1JsCX1cLRaoktgEIsUyH2Ar2ucKFuitm2LiSnAaYgn+Ey+WOYKFYFU
         5HjkaP29QnsoIGjW8xrRTTI6fbYbdopCp/M/II8LdQExodwXB34KKgbanO4ZmufdJ0Wh
         zvXUHN7n6uT/VbZAkMp5UhJim3jT6qTRvUUj/9ULQm0RqMqzRe1jcQoYSIJEnodROMMj
         3EBNzu/QqUdgwzftJBlFqdxKUSNOL3U2dLJUFt65071N5jYv7djDqy/GxjNX1dwfQEG9
         bkOg4AzhU4/iiqAmJu+iK/Nr9xtSKVjfvpZjD3dSy0fBuPMEkuKxXnqznPUenQARAIpy
         6njg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=dYcvKaoLDprDhe/jq9A5UuwdN5uChYxUHvf0lb7+10w=;
        b=vje+Xex2dF9D1SO76NbnvagHuqntPW4OGNSKh8lbOSczcdA+SEWqdc4xt2QQ0uidps
         rR5MYxcoeujmoRus6/D2JZWMV5FG2YMg7Bkxr+maPXWq57ANIUwSwH2tB8wPF5PpdBOC
         QWIv2b3bRoGbb2xM3H5Dmu6ECTQmDjE/p5cLHIYrXqKDEAVoFVfVvHWH8A4kY2yRhwhV
         rqfgdNB3FNM25LEea0lSE449YXCyEPQ5MQpUuy+i4EJZLGhj2WzEKPESN+2oXWDqorKC
         NsTVaAlmwJ+u2pdgbQVmMdkzGk8zhl7zFThk8tDB/Fh46r7081xhsukRgxashZ/IvoWl
         LiOA==
X-Gm-Message-State: ACrzQf38GWgo5kauEUm7kljcOyCEfJxPT9ff+1F6gBE3B2gAN8k5dVCa
	GH06R1sBq76Q16CYlR3k2CCOO+szJ9WVFtYg7e8=
X-Google-Smtp-Source: 
 AMsMyM77uHEE0aGx6Ryb+Rf6xfYPoByXVnXSQBBOwuhLYI8rm9phXoFEa5K23nc3mB5Y31a3XDWMo4PzEXj3LapeLAs=
X-Received: by 2002:a05:6512:10c4:b0:499:4c:64d7 with SMTP id
 k4-20020a05651210c400b00499004c64d7mr1588788lfg.521.1663330500373; Fri, 16
 Sep 2022 05:15:00 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 16 Sep 2022 14:14:49 +0200
Message-ID: 
 <CANNYZj-tD-v_Cb4F7cOqyQRWpgWOBavxqhgJPhZzQ2gw1dkWxw@mail.gmail.com>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
To: Edgar Mobile <heideggm@hotmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Sep 2022 12:15:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58060

You can start by adding vulkan-samples to the image - the recipe is in
core. We do not test vulkan in qemu, because the software vulkan
rendering is still under active development, and marked as
experimental in virglrenderer.

It may help if you use qemux86_64 and kvm for it, because software
graphical paths are too slow without it generally.

Alex

On Fri, 16 Sept 2022 at 13:43, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> Greetings,
>
> I'd like to test graphics rendering with Vulkan on an Aarch64 Yocto honister (qemu, host is x64). Can you tell me which parameters I need to add to local.conf to get all libs and headers installed (plus maybe some useful tools and demo if present)?
>
> Regards
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58059): https://lists.yoctoproject.org/g/yocto/message/58059
> Mute This Topic: https://lists.yoctoproject.org/mt/93720286/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

