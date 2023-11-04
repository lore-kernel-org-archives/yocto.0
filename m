Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EB1C4332F
	for <webhook@archiver.kernel.org>; Sat,  4 Nov 2023 18:39:06 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.15805.1699123144479975161
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Nov 2023 11:39:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=b7ziFSkx;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: skandigraun@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2c52407516bso7075521fa.1
        for <yocto@lists.yoctoproject.org>; Sat, 04 Nov 2023 11:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699123142; x=1699727942; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RzPEOiEXqLXqRDllu5gBiemWqZ5M7n2VsLm7+tj9h/Y=;
        b=b7ziFSkx7Qp249Ces43UxZFkWzJfpE6jd2BP7MQLKuvoRzc7ChzjXmQTh+kKE7tLiw
         nSb2Cfs3QhISA9ielWdt+k4JmFbvfF05MrhXVIIQpZ8gSvIkGYFFnti0hcPvDemZAqMV
         KajT5QnZsEWggFdtBxWBSmKu5doebmYZwwJQb5iXtp6iy8BKsGfLMA2uQeGL1KTJjQK3
         UfeTznzJZsgsn0IQfdCgfO7bOY3IYk2Esg8GYMF3KtzVOHt+7yaNtLiv8koZ34mdRJJs
         WxdFWgZHSsSGmZSjRTK/L4Q1W7S9qDmgRPjVDF+ASdd/duXkx4/yDTQ56t+boHLgrnsS
         f7qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699123142; x=1699727942;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RzPEOiEXqLXqRDllu5gBiemWqZ5M7n2VsLm7+tj9h/Y=;
        b=SgdqVFv9JPCUE7Y2MYyENljlJMdICmqcDcPeH2HpXeElGABuHsdPDeBhLSj/SpRym5
         05pRJK/6uWn/2Id3CGqq9YXmUwdvGyk+uD9v32sCa3yUo+cCiPrFBp7okh82F0uD8pAu
         HWltehW1lq0kXHGOPRq41+z65X8+2Of8x/kUhAym4Wko/VLnSSg1w4Shd7xwTH3Mds3l
         kWBHJQcnxvj0a/eKSzTZD75kw4COKlcgq+JzFBHLwLN24TmSEUbSxYHnZCkFVrBlH+c4
         ybGUL+O+WHHElJrXqIP4KloUqjUbEH8t5AkqDgob0YhorkVtGI6cr3Jc0p6mT3ODfqxW
         0N+w==
X-Gm-Message-State: AOJu0YzT1S1zKqnu/LyOS7VZ3d53jvG8ipJ9BlWP7JgCLKnmFOBGsgJI
	fKVVNJFA/I5d/sgcqAWGfMBMdXtHYPA=
X-Google-Smtp-Source: AGHT+IE+/aCDn4fVA9Y1l01dfWWCiaheG1K9fAvYYjN2ulHn43BR3sEDZmpuNuks2SY9nu7RvTJJvw==
X-Received: by 2002:a05:6512:398a:b0:505:7123:21ae with SMTP id j10-20020a056512398a00b00505712321aemr19075731lfu.6.1699123141968;
        Sat, 04 Nov 2023 11:39:01 -0700 (PDT)
Received: from [192.168.1.64] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id x19-20020a170906711300b009adce1c97ccsm2214157ejj.53.2023.11.04.11.39.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Nov 2023 11:39:01 -0700 (PDT)
Message-ID: <2efe609e-b54a-40d3-b12f-cfe6ad441179@gmail.com>
Date: Sat, 4 Nov 2023 19:39:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] how to add tkinter in Yocto?
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <sf7i.1699113355128348261.C0oU@lists.yoctoproject.org>
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <sf7i.1699113355128348261.C0oU@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 04 Nov 2023 18:39:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61615

On 11/4/23 16:55, shrikantvaishnav@hotmail.com wrote:
> /ERROR: Nothing PROVIDES 'tk' (but 
> /home/shri/Yocto_Rasp/poky/meta/recipes-devtools/python/python3_3.11.2.bb DEPENDS on or otherwise requires it). Close matches:/
> /  atk/
> /NOTE: Runtime target 'python3-tkinter' is unbuildable, removing.../
> /Missing or unbuildable dependency chain was: ['python3-tkinter', 'tk']/

tk is part of meta-oe - have you added its folder to BBLAYERS in 
bblayers.conf?

