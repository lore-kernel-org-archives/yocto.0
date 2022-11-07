Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AB00C4332F
	for <webhook@archiver.kernel.org>; Mon,  7 Nov 2022 15:13:03 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web09.4588.1667833982422143440
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Nov 2022 07:13:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=DLD58DnM;
 spf=pass (domain: mistywest.com, ip: 209.85.216.52, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f52.google.com with SMTP id d59-20020a17090a6f4100b00213202d77e1so14910086pjk.2
        for <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 07:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4FzcgYhVfHFnGD6u4W7NWHAHZc8N8f7+esFhqBRqRCE=;
        b=DLD58DnMoplTa7cYEp3FjG8JJcLeC6A4yWYS396K0Y44zspBjm6HNbauiFXQaqgwbd
         DGVol3V2BsTHN8oyVe1Qnq+oO8jYL8f2nxVad+iCH71LnbteHBsDnwVTAMMl6fuTZYRM
         W4gUFKHnbMlhbwvK8bC+K5obzV7Oz4yWr5uMBThx4iMWBz8AT/21Df3hC2XvcgMPi2sN
         +FiwlDkdeZqvgbR7nYNP10ZTQvmOH19uq129D9Ko6A/jwxmovtv0xAPeCnCVhzMyt95c
         cc2EyF04jNP0cKW6j8UwSmEFCNe/5kk8O9Htk9QnxGazBdBoIKWrWCOgma/JqalA663g
         JoAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4FzcgYhVfHFnGD6u4W7NWHAHZc8N8f7+esFhqBRqRCE=;
        b=7P65mq6gVM3XeCO2u9sogn53npZNQBYZnIwczS/f6gW95cFGFEnq0tE6py8eqp1fIB
         cNIVOJ2QAs52wkAx2rzuYVgP4N0/4dkLf9qwry7tH66syzJFyIMOekZfm5RldyU/4bJv
         BXUx2fDyUwtPIqDOuJMY/ewuegsg5Pots7+NFmkKcFgtPyhWr+vT5gfI+ThNgbHeYaAT
         UwJziOhlw5fXJSmvZ6YOF1vDLyFeBoxudxL2q5nTOsUc279UFmAdNp4PnEIGugPkRovO
         H+IHmFSjUL8U/BH3WJb1MEj63U4TS69d6/Lfc7D401wHMrq9CWIwB+tCOKI5GUvJzsQX
         d9BQ==
X-Gm-Message-State: ACrzQf3EmjR//VRNL7D9K3ydbE0+aJvw8cySqa6HXJgQWCM13iLu8L5U
	PS7NigSYw1tJ8A6HcbmQ0x2oDA==
X-Google-Smtp-Source: AMsMyM6wpgs//2M9qNrmCWsz1Oyiz4rx3fcLHJgxAemba14NbwZYl0LGtpd3yJwMzVc5Sf8/24gKbg==
X-Received: by 2002:a17:903:50b:b0:187:11e:5f1f with SMTP id jn11-20020a170903050b00b00187011e5f1fmr52110975plb.41.1667833981637;
        Mon, 07 Nov 2022 07:13:01 -0800 (PST)
Received: from [192.168.1.223] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id z25-20020aa79599000000b00528a097aeffsm4602182pfj.118.2022.11.07.07.13.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Nov 2022 07:13:01 -0800 (PST)
Message-ID: <b2693c74-41ba-bbcc-8337-cd2ff343ea8e@mistywest.com>
Date: Mon, 7 Nov 2022 07:12:59 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [yocto] undefined reference problem persists
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Anders Montonen <Anders.Montonen@iki.fi>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi>
 <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
 <0C6FEB0D-931C-4EE1-BA24-3534DB9940EC@iki.fi>
 <cbe95fad-8ce9-3e72-2626-e1185505ede5@mistywest.com>
 <CANNYZj-PtwKFqs+DHCR-CTC86UiVU7p9D=mBNyjG+pes6zeK8g@mail.gmail.com>
 <29069143-19cf-3d00-4c13-a031f61c02d4@mistywest.com>
 <CANNYZj8Kn7bL8Mk5QdF4tbVyK_7SGUwPAYbs2XqjkAbrpn8Twg@mail.gmail.com>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <CANNYZj8Kn7bL8Mk5QdF4tbVyK_7SGUwPAYbs2XqjkAbrpn8Twg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 15:13:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58512


On 11/7/22 00:27, Alexander Kanavin wrote:
> On Mon, 7 Nov 2022 at 02:35, Ron Eggler <ron.eggler@mistywest.com> wrote:
>>> Are you going to ship what you're working on to other users, or is it
>>> just experimentation?
>> The intent is, that's it's going to be shipped (but with full access to
>> the sources)
> If you're shipping anything that is under gplv3 you also need to give
> the recipient users a possibility to change the item under gplv3 from
> the source code you have used to build it and install their modified
> version to replace yours.
>
> Are you able to fulfil that obligation you have under the license?

Yes, that will definitely be doable for the recepient if they chose to 
do so.

-- 

Ron


