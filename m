Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E21C02198
	for <webhook@archiver.kernel.org>; Mon,  3 Feb 2025 19:01:02 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web11.96294.1738609261116898120
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Feb 2025 11:01:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z1By7XBX;
 spf=pass (domain: gmail.com, ip: 209.85.128.45, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-436326dcb1cso33038595e9.0
        for <yocto@lists.yoctoproject.org>; Mon, 03 Feb 2025 11:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738609259; x=1739214059; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pFxkedZhe46cTA4uAPgFwf7cSJT+9xWPMUhui/3H414=;
        b=Z1By7XBXA+MORfbnXXPZfhrqOZ51Vn6qV5FHDch7JlY3hWk5Snl+z70xOU+WGYxToy
         B6M+iuB2SnLo21fJsYOJJNNzFTZlTfze9dtsGukbxNW6ahnmpAz0+2emImMYDVS2V1rd
         B8K6XWb4DPMX5yPCeJuzkpWn5yhtJsXXNJiCPXDgkoHKIH/zGOpQoGsiTzLO3sIAjBEH
         W+tt/SoHagN6P9G7TXsDbURTzHKpmQ9L2g2HG4qJ2ot2gTHXn8C89TpgHd84Y5nQrJe+
         34ttBk3K9S8xUXkuLg7Ru2dZbWyNU9nG8hB2YwX23Ipq8GooaQay2fxqd7FvRB2XO6I2
         sOTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738609259; x=1739214059;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pFxkedZhe46cTA4uAPgFwf7cSJT+9xWPMUhui/3H414=;
        b=uYaPxWuVI2lFz/vyxQrO1iMPUtqPmYmoE8NZxmgQ4fPaEJrYQp0Qi1xmXhLZicmEKD
         JLH+PnYaoEvSmNrZJ3z20JFS0JR8R+Qsyxeep8OKFFlHT/4v37QgJoFuZ2VCXI7jkCie
         yMxaPV3DanrM96OQUByhhgKQL6CeZfbQkYQcOZ4696XfB/n3A6xk6eBSdrj6WnqZeiLj
         DtZPYswxX+nWCeq+PKTpEH2HX6UN0oJFciwrnGntSQcNGzLY1ZLM5Hj7vtGtQ7ppjOYK
         r46sO/8nTB3E41/Sd5I3yOxajuSQeOaMDGbGQP34T4eBQzOzOcpp1E1FQwEbYkmUShmJ
         SlDA==
X-Forwarded-Encrypted: i=1; AJvYcCUGqmCqWhgYFsLLobKlHDsM9eUXrbvvpY0+GH/A1cvQvV4NAdHeqYnZDggqdPerDbyhaavhTQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxIc9iEt0ZxsEhaR3V6uo5qng0GXDDiYMYwK6b7AEhpDdAM8yBi
	Ups3bbQpALKQxoWMFYzYPD0nJJ0SO5SKON9xFG9dD/obR8WIziIP
X-Gm-Gg: ASbGncshxnHOmLBosiEfVaVAIsI9ZBl1Ng2EhndI5wx7WeQ3wYFPZ7d7wICY+nbBcVJ
	u5FVKXZAg65xjLgtQKR0io9ZhvydRbNoXK/cIESMCg6n4JicHwqP+PJdd8PaAZjp5rY71IeC/1A
	DTa8OvKr333v0skE7dMYQNc08TcNJdwNTCjtrOAQD/M8QoFSDjZGbZtrw4f+wDWiNLtSytE/uHi
	1VprhmIP+ice6fSinz8W/1DVoszMWcyImbGFMY9xnuSADMs8sAkoUZDtR74kXDb9rK0l1V8Dq5B
	QsaNfl+qk+sKsZSUmNHLav0=
X-Google-Smtp-Source: AGHT+IHNa4CZjyF+eNioXBIFWyI02rcbBMtBAQh+e0ppHIuYb6zWVPUiqtTnEUGXo+BMeH+XRY+fVA==
X-Received: by 2002:a05:600c:3b98:b0:434:a4fe:cd71 with SMTP id 5b1f17b1804b1-438dc3be214mr202529785e9.12.1738609259258;
        Mon, 03 Feb 2025 11:00:59 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c0ec78esm13354309f8f.3.2025.02.03.11.00.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 11:00:58 -0800 (PST)
Message-ID: <988b61ed-7fe4-44d8-b00c-fad3346c9703@gmail.com>
Date: Mon, 3 Feb 2025 20:00:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [scarthgap] circular dependency issue #kernel #rpi
 #scarthgap #yocto
To: ganesh.manoj.mahajan@signify.com, yocto@lists.yoctoproject.org
References: <3173826e-18ba-4b1e-9db3-0e0cd4d3f027@gmail.com>
 <32276.1738588922552068848@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <32276.1738588922552068848@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Feb 2025 19:01:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64701

Even though you don't mention it explicitly, it sounds like you actually 
found the root cause, is this not the case?

If not: there are multiple "recipes-security" folders in popular layers: 
there is one in meta-oe, meta-security, meta-selinux... and more. Which 
one do you mean (especially, which recipes do you use from the folder)? 
If it's something not common, is it available online to try/check?


On 03.02.25 14:22, Ganesh Mahajan via Lists.Yoctoproject.Org wrote:
> HiGyorgy,
>
> Thanks it worked was able to built image for *raspberrypi4 *
> As you suggested i did remove my custom layer and tried to build for 
> *MACHINE = raspberrypi4 *it built successfully.
> And i started to add in layer by layer and recipe by recipe but when i 
> add recipe named recipes-security i get circular dependency issue.
>
> ERROR: Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_package 
> has circular dependency on 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_packagedata
> ERROR: Command execution failed: 1
>
> Ganesh Mahajan
>
>

