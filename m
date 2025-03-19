Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BDE5C35FFF
	for <webhook@archiver.kernel.org>; Wed, 19 Mar 2025 09:41:50 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.3960.1742377302747285238
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Mar 2025 02:41:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TcF1zxCS;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ac2c663a3daso640683466b.2
        for <yocto@lists.yoctoproject.org>; Wed, 19 Mar 2025 02:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742377301; x=1742982101; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BodLOtv5KgJH8YPmwcPnhvVEfiAJwhGyClEugQrdS08=;
        b=TcF1zxCSZSSSRHP02iRDt0ybIxc/KMW4xmBeoV+eI9iftzULZ7WfBtvvqXq65mRRoe
         KEiuJ1Ic/7LElwpySbCX+dzxYAfaNWD8FS7PNzUT1Lrrzm2Ml+l6gf1M2mg1DIZvxWzl
         hlccOHmK3cJNkLGPj/eEV9nCucghswxiP2shvyF5/uP/Xd5d/l55Lf1zG/Iy/HDLHCw/
         m9f/DENUOthBYEfrqcN4/kJi8cPx8FGw9ChYsOezhSh7wU8GFL3FAkzmVdglnCKrUQ9z
         8aMEWxmb3sJZJY8jnd1AcCmRDywqvzgPP2M0DP69KsHV5+cgNlRk/Pd+V4oUZh/FV6RT
         DODw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742377301; x=1742982101;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BodLOtv5KgJH8YPmwcPnhvVEfiAJwhGyClEugQrdS08=;
        b=I0pvP9uCxiLXV7a/aJVG6EUN6so7YN0zlScD92H0xySWp9MZFww541t+KzJatmnnuL
         TyqjWoiLb9LcMgQaixJQzv55urJjEVymLlwwMJa0yJQp7CrSU8SGcQn5/5YhwMlWiT/r
         iCXHaJVb2jN8P+iCgaOD6uOfJ1Jc7vxa6NEhCP5iLy8Bknc5vE7jZpGlxXT1J7iF5nqU
         N9QzvbnMIN9yRuX7Fzizas2Vc7NQ7Cx7aFbJkmFZ2SY8PhSV9k09+4bAd7aeuUiz2tls
         0LPbj2AUamgcowJ5FQilBcPe7s2r68fbPFBKOx03Ya5ulcS7YHTX3GzgYcfAVfWoehzl
         /zVw==
X-Gm-Message-State: AOJu0Yy1AwnrTJH1kWIFNATHqReKXV42NlpWLyn3WRDaJb1Yg1ZMrY8e
	eznDOOqSQQX8c8dbEgpbxGPcvYBu0MAdo2Cm9v7eHhIqTaE1hcIPpAuLjQ==
X-Gm-Gg: ASbGnctXGL92J+GdPdv1i2F8cm62UswZzC9coNADjvYgwHjI4t7COBTl5onI5x6UEJg
	QseyqxxSQdL2sjef+IaDy0Y1iW2/Z8ZMtIjcjltsibCzvTIDSjgGeHyfUs/+oMwUFtzQ2QoeazM
	n9HbBaHZua8X8CjbdPOVbcin2+wtXt+1LtlwGMFvwRqApS+3p+W5LBRbLlgLpFK6m4WAQYwakaY
	FV+AJJWULa8ZEOAGP7ZlwFCbUlutD8GVz2S9AscRbTOlAx0RQExCMAOlqDyz478p3Ca/9WsG9Cl
	1qUmUl9jOZyfdgskNu8S11BKkv4iERKklh1naKGnt5feJZt+COrB
X-Google-Smtp-Source: AGHT+IHCuvsSbiuOG2OPihvGdFcmfeFFk5kH9RDiy7P8hUua6RRmXuuP7NAfWMw6btZEzdSxR2t9RQ==
X-Received: by 2002:a17:907:c88a:b0:ac3:bdd2:e70c with SMTP id a640c23a62f3a-ac3bdd2f5d8mr151660066b.35.1742377300511;
        Wed, 19 Mar 2025 02:41:40 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3149cf378sm971177566b.116.2025.03.19.02.41.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Mar 2025 02:41:39 -0700 (PDT)
Message-ID: <b8dbe5fa-663e-4039-9c17-d93d919aa09c@gmail.com>
Date: Wed, 19 Mar 2025 10:41:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Install zabbix-proxy
To: yocto@lists.yoctoproject.org, ndivecha@granitenet.com
References: <HSzU.1742328331216232413.DQOK@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <HSzU.1742328331216232413.DQOK@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Mar 2025 09:41:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64978

Is it more than a matter of appending "--enable-proxy" to EXTRA_OECONF
(and maybe adding a systemd unit file, if it needs any)?

Did you try something similar by any chance, and got some
error/misbehavior? If so, could you share it?

On 18.03.25 21:05, Nitesh D via lists.yoctoproject.org wrote:
> Hello,
>  
> I’m working on an embedded hardware project using Yocto Project. I
> need to set up a “zabbix-proxy” to monitor remote devices
> (https://www.zabbix.com/documentation...toring/proxies
> <https://www.zabbix.com/documentation/6.0/en/manual/distributed_monitoring/proxies>).
> Unfortunately, OpenEmbedded “meta-oe” has a recipe for zabbix and
> zabbix-agent is available, but it doesn’t include zabbix-proxy.
>  
> Has anyone successfully implemented “zabbix-proxy” over OE Linux?
>  
> I’d really appreciate any help or guidance you can provide to get
> zabbix-proxy. 
>  
> Cheers,
> Nitesh
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64977): https://lists.yoctoproject.org/g/yocto/message/64977
> Mute This Topic: https://lists.yoctoproject.org/mt/111777651/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

