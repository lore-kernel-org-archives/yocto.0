Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E87B4CA1009
	for <webhook@archiver.kernel.org>; Wed,  3 Sep 2025 10:49:11 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.9366.1756896549813222486
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Sep 2025 03:49:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eRiAPMli;
 spf=pass (domain: gmail.com, ip: 209.85.128.44, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45b8e28b3c5so4457735e9.1
        for <yocto@lists.yoctoproject.org>; Wed, 03 Sep 2025 03:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756896548; x=1757501348; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uVYiF041dVwjGjvCnqzpVVmg5/SaTqXXt6ONEfN/vNI=;
        b=eRiAPMlirho9+pb3HQBFf3Org7aqBPg6zf7AkbF7os1wTF9m0dxuVfMgXdYrQrcv3J
         L5ZOqaFjtMKlHZiU42k6E9d+qIF/pfTxDhG37ad5JVrUh3W2DfUsN/9Ycp2f9zMdCpLk
         nqvKkhUh4+Uiqav3iLIuI/jvZj/wMdKN+61fr4V5jdofQbfT3ayd1d20rjgVp9Umev1A
         SjANppYLcnycE/Rsa0jOIZPWiJ6diu9aINV4qeESovZQN1P0CWZYtcwPj+7Qyx95ZTuy
         LJLS7StK2PQny5ilJMK+UCFkNQa6tZHTG0XiprDZPeAgx3PMeeF8voSBfGIBMhebr3Tg
         DUJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756896548; x=1757501348;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uVYiF041dVwjGjvCnqzpVVmg5/SaTqXXt6ONEfN/vNI=;
        b=a51Q80plCd1zITLIeIm+0R+pZhwnmDs2q+EVzIS4+N3R9FwDqWae1EY7Tx1Mi+o3tb
         DB4jPbHy71FGEIMrGDqP/1U+xA1GR/q24uv1tgJFulgrJ/qwKJ1sTIRzmM5BdFSzRZv4
         BEy78QzEZSB536+bMD1mK4fVLxobWHoVWTFkc7uvZ+ULbRgKNLkaAG9ECCpFKTe+C9i8
         C+DBHXdgpxvl6qIXAw9jRw/iZwBq0W+cwtJG44412pO3r5z4NQGmqm9YF3X758pglAw7
         teT0Rj4w1snx6PIqag/XMapD8hEkXesjKWzm7MrRrszSYoTZ09qSRmZHk5GGVOze/EaS
         0LcA==
X-Gm-Message-State: AOJu0YxsqCUSQGmbJK1LABVzayWPCv8NrP2Qy/JnAKC+MyH1LlmayQeh
	hL3iyCDNOJ5FZBGFQXV70YfyR5cpIoW2mYlLKrsfhnUhXL8jc8M+ReEjC8+NdQKd
X-Gm-Gg: ASbGncvzWdyuj6f58ejE90Z3fvJXbfPwn6eoT5Tc6CD+4RbP6pSmOySW1+JQDu+huqL
	PwB5ATh8CxE4CF5QekZrvkeAuCuKYBPtxq62yL7mAC3ceasYLcBf0XVckfogrvyLD2m/B/h6qQ+
	Vohm1i7Fsxy2Jjr0emBQ8uZOfhzRzVeK7ci8kt9kvlyVYMnAQzgBtoP9w1CYMksZMhf//QFCu3L
	Mqbs8mG7pzTLr2fq1vlMb+1uckkJdQYmZbkVS2jX4MR3cw47yostZb9ysBxePP2xCW9J3e7dL9I
	BpzjcIdVZdl8RJd7uXPyE60V/rVhgSQLjXsC0SkGO3tiSubYDY+0/1M8npnGS7XElSuxfpUycYx
	9xs3ySfzk+2COk8oi06Dc3vFAVnC17GE=
X-Google-Smtp-Source: AGHT+IFjk65xrX2mooRUyp8JEshR99J177foqEV7/pvXtXFUp3f3dOj7U4gwJqI9rEYyUe/3yNccMw==
X-Received: by 2002:a05:6000:290e:b0:3c7:e6d0:b1b6 with SMTP id ffacd0b85a97d-3d1dcb77f57mr12200373f8f.9.1756896547917;
        Wed, 03 Sep 2025 03:49:07 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d3a7492001sm18454688f8f.42.2025.09.03.03.49.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 03:49:07 -0700 (PDT)
Message-ID: <45bcc161-228d-4900-a384-7c3869b97ef7@gmail.com>
Date: Wed, 3 Sep 2025 12:49:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] No meta-openembedded/krikstone updates since 2025-07-13
To: yocto@lists.yoctoproject.org, joerg.sommer@navimatix.de
Cc: openembedded-devel@lists.openembedded.org
References: <mtcyc6sh3ncw36xq2ngxwfzqjo4jwakclrwsitncnjxeb3nke4@czy7r2g73dwr>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <mtcyc6sh3ncw36xq2ngxwfzqjo4jwakclrwsitncnjxeb3nke4@czy7r2g73dwr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Sep 2025 10:49:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65814

On 9/1/25 13:24, Jörg Sommer via lists.yoctoproject.org wrote:
> Hi,
>
> there are some patches for Kirkstone on the mailing list openembedded-devel,
> but no updates of the Git branch at
> https://git.openembedded.org/meta-openembedded/log/?h=kirkstone, since
> 7 weeks. Is a push missing?

I'm merely guessing - probably Armin (the maintainer of the branch) is
on holiday?

>
> Kind regards, Jörg
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65809): https://lists.yoctoproject.org/g/yocto/message/65809
> Mute This Topic: https://lists.yoctoproject.org/mt/115004774/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


