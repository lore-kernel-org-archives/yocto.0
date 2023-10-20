Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FE22CDB47E
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 06:07:56 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.48764.1697782071331862237
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 23:07:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YiPVVFi9;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: skandigraun@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2c52407516bso1005111fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 23:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697782069; x=1698386869; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/ZHhIap6geBbNGC/uTf813QQ7kHd4ax19SxDNf53J4I=;
        b=YiPVVFi9tqC1Fl5mUWDQw10sEB8P2s+91l2axXQzjperCc+pSs0K1MgZ5CKb3Z7TIX
         +CaJmM/bwj46B7Lub2BhQ8zsISRhGp3MOTvLlX8qDEWmTznIKKa7gmbnKC2piQJqYWN4
         i9oWaE1irFmGgsRiQPAl3UA/0P3r9YfJWjgD524sM8NCuOG0fODpGnJPyrNZbYVVlkjf
         1o0FH2Ga7OO1yC9KUIwwWyAgP+NecsDUbT4+MgRkjpV/eN1/YFjHYUULRkBDkgwh3WiE
         SbefXaMryeLxPUZ+Pei/Xx6VbOMHRanYTfFcX1utWfni6sikGmbpcSeMxZZbvIHInibz
         RoEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697782069; x=1698386869;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/ZHhIap6geBbNGC/uTf813QQ7kHd4ax19SxDNf53J4I=;
        b=Zh6IFLeiuOyAKU/BcR+W0LCDdXxvDlxu784Myd0OgCEWYEjpfEkbOnmK5NRKZ3aGBJ
         uGfELjvJTekL9hqYw+z6rp02FKWjc87ctDb91zF77JEgGV72gzQ0IV0z8E10JGfHYCgu
         E0mRNm0ChBcPOt2Gi1fkFNqQpoKk7E0ajpaJXNINNv/BqDYC+TUta0sux3Lxb9AI46ag
         o6fyWYTvXNte7nh67qh6nun99wVl2Lwo1OvAtkoCYq794a76jpvz1NDjA0FlPrIi10Ay
         d262w/4XYz01SOpRIJPDpUWmo1vAwpFKGPgPO1x4xV4KU/wSuFBgtB8FHpR7kgr75zTs
         ARHA==
X-Gm-Message-State: AOJu0Yz1PQRenvznc81I2c1rjz9CxtYAPcewQ7ybTxAsjxy1HcUMfUB4
	WnxYDvEeEjYUwZlYVaH/ZTA=
X-Google-Smtp-Source: AGHT+IFis8N5LcErGzSI0vsAH4K8/6BJVKXlC5/75uYvSAa1xkS4OVKPiEn/SFr+JlcRV2R8BOT5dA==
X-Received: by 2002:a05:651c:b20:b0:2b6:cd7f:5ea8 with SMTP id b32-20020a05651c0b2000b002b6cd7f5ea8mr855117ljr.1.1697782069250;
        Thu, 19 Oct 2023 23:07:49 -0700 (PDT)
Received: from [192.168.1.64] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id m16-20020a7bca50000000b00405d9a950a2sm6042589wml.28.2023.10.19.23.07.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 23:07:48 -0700 (PDT)
Message-ID: <6baca76d-7d79-439a-a444-79a9d59e3b3c@gmail.com>
Date: Fri, 20 Oct 2023 08:07:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] find: unrecognized: -printf
Content-Language: en-US
To: "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>,
 yocto@lists.yoctoproject.org
References: <L7wx.1697780290550525004.loGj@lists.yoctoproject.org>
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <L7wx.1697780290550525004.loGj@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 06:07:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61427

In case busybox's "find" utility is not sufficient for you, you could 
disable "find" in busybox's config, and add the full version of find to 
your image (recipe is called findutils).


On 10/20/23 07:38, Poornesh G ( India - Bangalore ) wrote:
> Greetings !
> 
> I am trying to add "etckeeper"  to yocto . I have written a recipe and 
> added it in my Rootfs . But when I try to commit , I am getting the 
> below error log:
> 
> -------------------------------------------------------------------------------------------------
> 
> root@imx6ulevk:~# etckeeper commit "First commit of my /etc directory"
> 
> find: unrecognized: -printf
> 
> BusyBox v1.31.0 (2023-10-18 07:46:50 UTC) multi-call binary.
> 
> Usage: find [-HL] [PATH]... [OPTIONS] [ACTIONS]
> 
> -------------------------------------------------------------------------------------------------
> 
> I tried enabling the -printf for find in busybox but I could not able to 
> see in busybox menuconfig . Requesting your suggestions to resolve this 
> issue.
> 
> Thanks in advance
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61426): https://lists.yoctoproject.org/g/yocto/message/61426
> Mute This Topic: https://lists.yoctoproject.org/mt/102076007/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

