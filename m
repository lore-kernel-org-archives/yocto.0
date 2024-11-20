Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9690CD6392A
	for <webhook@archiver.kernel.org>; Wed, 20 Nov 2024 18:56:56 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web10.22887.1732129015043248682
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Nov 2024 10:56:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Nh+YmJza;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5cfbeed072dso33271a12.3
        for <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 10:56:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732129013; x=1732733813; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YPNDJ2L3ldFrrm3U0YxN/266gdq1+ODff302qUZwxyY=;
        b=Nh+YmJzapw0tNxAJR5B33O7RmwFza8LI4zs9aTnE8hRpNmMbwh9VuWvMYVrtEdeG3r
         +NYxtXqHLa58ElGDCceWN72pwCl/OIYX/T4Yi6eo3048jPXo08R1ILSuVCbKhoOPuXOh
         zVyrnhsn/8ZVzE+A0y1QKYlNgNkrITlwGXW46E5BZjdjEsHatkn2gWxKdvkY0DLQyYaY
         QxwNUsFVo9pWB2ojV/QTHNZ7j9g16pyvVbvJEd2Z0sPIfF1pTWtzY8lWoBU1tj6CSDOt
         kjR/zSfqmHj0X8FwxDYypFnsf+m/c+RcQLapubdJcV5UYYYJPvgHNtb+XQjZkJjAUdWa
         yXiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732129013; x=1732733813;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YPNDJ2L3ldFrrm3U0YxN/266gdq1+ODff302qUZwxyY=;
        b=mycXvVZ6ILDuMEeByNvUGoypx7JhhiF2K2Hhj9sOfhVJDzPY5d1coAoaxjT+jvyFG+
         d9bwPtqxc0zkCYva/3Yl7VJPNjN1gVq7gxIxrfuFjBABd9eUyTMne9npZMp3DY8BtmpY
         3E4FzPUDY8aLcuYhLg1RgkzyXGkIRm+MHXNKaLlefXCvqxGXL7lKqZgNhrToehzEXgQK
         oADyLOLuTVaS4stP/eX9zy8d/skVxIU79rMjAtMPgfT/GDIrRVUmGcZH6Ptvh9ykx2w5
         HPlm9N3xBEY9NohejaDcHaPkYsZ2G9BLogsm8yP1Jt+f534NELMPTfjjufDiEJMv+Z54
         y57w==
X-Gm-Message-State: AOJu0YwwBzhOQ6JoTZg2aNVNigq7QC21Cg0Jsct7USrdcGfw/ew2LtFK
	Y5PEeAe8cztyA6S0yAs4SfZvgmRYzOIzD5wKrlqwq5JfVvDId/8bo6MN6Q==
X-Google-Smtp-Source: AGHT+IGw8jCyFQ8N7LsN5h1N1NbWeUf6+2vey0fjnqFqsoeAG2JVJDLHsYlFQBAnWSw/kl624xP6gA==
X-Received: by 2002:a17:907:7daa:b0:a99:fb10:1285 with SMTP id a640c23a62f3a-aa4dd562f54mr367927066b.20.1732129013054;
        Wed, 20 Nov 2024 10:56:53 -0800 (PST)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20e08af75sm803859066b.202.2024.11.20.10.56.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Nov 2024 10:56:52 -0800 (PST)
Message-ID: <b01e51f4-9abd-49b5-8889-2f036f5e7eec@gmail.com>
Date: Wed, 20 Nov 2024 19:56:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] python3-ctypes pulls in ldconfig when no DISTRO_FEATURE
To: yocto@lists.yoctoproject.org, joerg.sommer@navimatix.de
References: <binf5wyli6frlazzgmotontazgt3isp4jmkbsdgr2yeoaxhkqj@nxde6f7dfkuj>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <binf5wyli6frlazzgmotontazgt3isp4jmkbsdgr2yeoaxhkqj@nxde6f7dfkuj>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 18:56:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64316

Isn't ldconfig a must for python3-ctypes? It[0] seems to call the 
ldconfig binary directly. I'd expect the package to break (at least for 
some usecases) without ldconfig.

[0]: 
https://github.com/python/cpython/blob/6c1a4fb6d400827155fd70e48d682e35397731a1/Lib/ctypes/util.py#L224




