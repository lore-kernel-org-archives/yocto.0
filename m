Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29321C433FE
	for <webhook@archiver.kernel.org>; Mon,  7 Nov 2022 01:35:38 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web12.5483.1667784931866941967
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 17:35:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=f3MykZ9g;
 spf=pass (domain: mistywest.com, ip: 209.85.214.177, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pl1-f177.google.com with SMTP id k7so9776062pll.6
        for <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 17:35:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7+8jtx5BSbc4Ydu5/07K1x8G/Ub2gUNqhpiJjteI49w=;
        b=f3MykZ9glTb25/P2fP/Oc0E05TuxrF1pDIzMyT5M0vzAmwEL4XOsaFP2kxF9cGEzUZ
         F2XKW6o4WqrxeKzqVHlJ75h82l9/1AwdNRfU5cNw+ShDrMR3ZA1YqdGDx7++OwFOqz+E
         k6QTksCXzrpMQDhPxovJrp4mN+rEHqZ0c51UvEstske0Mde2l8XCPI8aWKdv50yUafdI
         BKZrR/DXwrdDMEDBWeDcOgBt/4hciYbSHgKTEdnDQZX48Ge0ISQ7oVzNe5U5OSN+JRwC
         OqUHdBa5sAOBOFJF1V1tyWq98qB+NUHUsqKAUTStBktkQ8rUWmoD/OP9YWTI+KDF/+Mq
         3fiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7+8jtx5BSbc4Ydu5/07K1x8G/Ub2gUNqhpiJjteI49w=;
        b=pO25zfqcApxV48/XglSXCSUckkhwZ0f3ADPpV2RQaqTujlr8qRQC8V9+TyHyK+egY8
         yB8qdPOG3x0iZkMTUL8whthIx27L1CRYjXD74sZqORpYuGBjMbTydfgTDpXJEWMyAJKu
         xAcq6e7S4QBhCMjTNhbhldYgpItOxnYmfr+9navSdFhKRr3ciUBaG8v9siDXk+05Zgq/
         WheGV//PtkUxpLKvv+wP2FPiKSVSzDR4Ep44v4TLGxR7YFjLDo7eq3SlwAXK7OC7RU6p
         IJynYdZZ3rca1ALX7sK1gg4ri745N4CCSTJuJrHoPfT+mJJjv7GMi075ziTGJnosBMGJ
         udQw==
X-Gm-Message-State: ACrzQf2vAd230BtDt8P8gUPK4J5wjRzsVynUF68gI4g7wITtq5Cyvccw
	OJTQSjrvfyJMWCj7Q3FonBQzgg==
X-Google-Smtp-Source: AMsMyM4rUswCveeecyoy3C9K4hnsw9hs0Ee34LEj+epyxUUDXXfPSO7YeLd0JbyAMhqo0BM11Axzbg==
X-Received: by 2002:a17:902:da92:b0:186:cb66:9df5 with SMTP id j18-20020a170902da9200b00186cb669df5mr744594plx.93.1667784931284;
        Sun, 06 Nov 2022 17:35:31 -0800 (PST)
Received: from [192.168.1.222] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id y2-20020a626402000000b005632f6490aasm3150518pfb.77.2022.11.06.17.35.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 17:35:30 -0800 (PST)
Message-ID: <29069143-19cf-3d00-4c13-a031f61c02d4@mistywest.com>
Date: Sun, 6 Nov 2022 17:35:29 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [yocto] undefined reference problem persists
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Anders Montonen <Anders.Montonen@iki.fi>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi>
 <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
 <0C6FEB0D-931C-4EE1-BA24-3534DB9940EC@iki.fi>
 <cbe95fad-8ce9-3e72-2626-e1185505ede5@mistywest.com>
 <CANNYZj-PtwKFqs+DHCR-CTC86UiVU7p9D=mBNyjG+pes6zeK8g@mail.gmail.com>
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <CANNYZj-PtwKFqs+DHCR-CTC86UiVU7p9D=mBNyjG+pes6zeK8g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 01:35:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58504


On 11/6/22 10:12, Alexander Kanavin wrote:
> On Sun, 6 Nov 2022 at 18:36, Mistyron <ron.eggler@mistywest.com> wrote:
>> I'll attempt to "just drop" meta-gplv2, then. However I see that there are other dependencies on readline too, i.e. it might be easier to just replace the existing 5.2 version in meta-gplv2 with 8.2 from here: https://git.yoctoproject.org/poky/plain/meta/recipes-core/readline/
> No. You cannot 'just replace' it, as they are under different
> licenses, and meta-gplv2 specifically collects versions under gpl
> version 2 only.
>
> Are you going to ship what you're working on to other users, or is it
> just experimentation?
The intent is, that's it's going to be shipped (but with full access to 
the sources)
-- 
Ron

