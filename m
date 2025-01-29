Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCBAFC0218D
	for <webhook@archiver.kernel.org>; Wed, 29 Jan 2025 14:07:36 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web10.13217.1738159650882140145
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2025 06:07:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WAa8RCJv;
 spf=pass (domain: gmail.com, ip: 209.85.128.47, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-436202dd7f6so78675085e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jan 2025 06:07:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738159649; x=1738764449; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Bpw6K6FSSDlRkyF8Pmt+yTs2OijJ9rAoIXSpFMX7LzQ=;
        b=WAa8RCJvyktaIolC3BQeWlpEM3p5/VweL8SV4HAGpTExvN+HUF5+3lCbv2X7FEVNwP
         PlXqM0HQivblHCR0slUJUxpzFQMDd0Nz2o0gTt5s0OU/U8gnhcDe8anz/xYevSjywCEN
         0AfU/JRxgDjAZpwqHM6wZlo9xEcL7b8L/6jp3t/POqhMEt3NBj5TQRIhb5Tk+MgP86ft
         6zZyNySpwxxpsiOvfU4Avz3Hi5G8qOG0ZzYn+vJIqJFgJcM7skujF2R+voEleg7OtQbg
         iFrG62/NrklGE/ulULrmjQNotuIu3nXji8Ak+Vt4mFP64oYVtchves54R9wUOW1yBJ/3
         6UGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738159649; x=1738764449;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bpw6K6FSSDlRkyF8Pmt+yTs2OijJ9rAoIXSpFMX7LzQ=;
        b=Lmu2KoBx7fLRbbKbBjU4YVjZTyFPn4AZga87Ti868xq4cuI0c8tU6kVnX/y/6DdGQx
         cDZa9SnYhigT2Bqwz0azePZtByNHPtHfwaRkaSiP9AgRihHJm7fd+qvT0Nh0GatYhqke
         7Kvkf5ENhWdwoMwP4rytT5o3oOYsEUjQBDwOl+z61jcZcIUMibEBpTK8RlW22ieMoMQc
         W/40LedHgVPeQvpUp88TuuP7Hkng9s37wWFM4bkrVbjHOjp/g8dVACx4oWKSM3xVKJbl
         iXm/zOxTIdBqYVDpmDagym25T4SxEAITQvPGRtTLq4rX3aqqfXfuYrf4GdUGRWIPPe/k
         Wc5g==
X-Gm-Message-State: AOJu0YypN9I8lh10/81w7UaE5gklEZyaT9wbUmuyPyNWXnKcJS6RMwNl
	ejQKtyQHv/KXWbwGBbwGqkfipfFoOgUO7hl1M7SlcZBbGJ/A23KPjSDTsg==
X-Gm-Gg: ASbGnctwYOrX4ze7bvWCkDRKO9NwDpFUnMHRvS1xBPV+oL3VIjiAy9h7r+PCAuZKm7L
	+TECxn4xFUK4NMLLoYIzS+YNxxDLgvZUQDlvzH7t7brofzhpWFrwsRxisO1y+ewJdoHuBtoLLa0
	QSgQ47RV7UpC1CNR7Ozblb5rQrleGcDc/ycTvoVeLfXSInmAzPDFQ+VC2NC9SOXijbYCWjkQYGc
	uwoXG9T6iBZY8zk8ad0AYmnf6329ymfNEeneUe8TO6HCd8LOpCBHVZ0P/SukFXHRzcWHa3m6zf7
	CqaJa/apP2mKFH79GvjyL0g=
X-Google-Smtp-Source: AGHT+IG8rfwoxPxkXHt2/JFn1DfqQ/JkcqEcLRHTxStc2oGu4qXVaz56IXGrjUfWIFeYsFX3+7wbDA==
X-Received: by 2002:a05:600c:4f87:b0:434:a7e3:db5c with SMTP id 5b1f17b1804b1-438e01fd812mr12678005e9.11.1738159648788;
        Wed, 29 Jan 2025 06:07:28 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438dcc263f0sm24270455e9.9.2025.01.29.06.07.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2025 06:07:28 -0800 (PST)
Message-ID: <83aaf6d3-0944-4b45-bca1-dbde9fd6d77e@gmail.com>
Date: Wed, 29 Jan 2025 15:07:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [scarthgap] circular dependency issue #kernel #rpi
 #scarthgap #yocto
To: yocto@lists.yoctoproject.org, ganesh.manoj.mahajan@signify.com
References: <XAWg.1738151518148913098.vKhK@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <XAWg.1738151518148913098.vKhK@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Jan 2025 14:07:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64671

Do you have a lot of modifications for the layers/recipes?

I would debugging this on a very basic level: remove your modifications 
(comment local.conf modifications, and other global changes, along with 
bbappends that are changing the base layers), and check if you can build 
it successfully. If you can, then start adding back them slowly, while 
you keep checking if you can still build the image. Once it breaks, at 
least you have a more exact point of reference to investigate.

(FWIW, I have built kernel 6.6.22 on Scarthgap for Rpi3, Rpi3-64 and 
Rpi4 over the course of the past 3 days without problems, but that was 
with my own config... mentioning this only as a note that the kernel is 
not impossible to build with this setup)

On 29.01.25 12:51, Ganesh Mahajan via lists.yoctoproject.org wrote:
> I am trying to build scarthgap image using : bitbake -k wac-core-image
>
> I got below error
> ERROR: Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_collect_spdx_deps 
> has circular dependency on 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_create_spdx
> ERROR: Command execution failed: 1
>
> above error is been fixed in this commit for scartrhgap : 
> https://git.yoctoproject.org/poky/commit/?h=scarthgap&id=15acbd10906568a1ed9c548b465f1cb6b5205202 
> <https://git.yoctoproject.org/poky/commit/?h=scarthgap&id=15acbd10906568a1ed9c548b465f1cb6b5205202>
>
> But their is also a commit were in the function names have been 
> changed : [03/11] classes/create-spdx-2.2: Fix build time dependency 
> calculations - Patchwork 
> <https://patchwork.yoctoproject.org/project/oe-core/patch/20230602133453.229023-3-richard.purdie@linuxfoundation.org/>
> Above commits are for error mentioned above just that there is change 
> in function names for create-spdx-2.2
>
> To get rid of the error i added INHERIT:remove += "create-spdx" to my 
> local.conf above issue resolved with the commit but i came across  
> below error
> ERROR: Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_package 
> has circular dependency on 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_packagedata
> ERROR: Command execution failed: 1
>
> Am I missing something i am working on scarthgap-5.0.5 version
>
>
> Ganesh Mahajan
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64670): https://lists.yoctoproject.org/g/yocto/message/64670
> Mute This Topic: https://lists.yoctoproject.org/mt/110876502/6084445
> Mute #kernel:https://lists.yoctoproject.org/g/yocto/mutehashtag/kernel
> Mute #rpi:https://lists.yoctoproject.org/g/yocto/mutehashtag/rpi
> Mute #scarthgap:https://lists.yoctoproject.org/g/yocto/mutehashtag/scarthgap
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

