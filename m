Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
 by mx.groups.io with SMTP id smtpd.web11.3960.1611614558025967309
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jan 2021 14:42:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mgz6u+Ks;
 spf=pass (domain: gmail.com, ip: 209.85.167.175, mailfrom: jpewhacker@gmail.com)
Received: by mail-oi1-f175.google.com with SMTP id w124so16557896oia.6
        for <yocto@lists.yoctoproject.org>; Mon, 25 Jan 2021 14:42:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=GqjK2j1XTB6H4HK9DRUQxPic3z9SVRQ1yZGMwgNVGBs=;
        b=mgz6u+Kss0vrOIarZXctOT70mvpOGWLlZtz5eOnr97MgaNMq1clOWDdwQS0h37o4UI
         zJZXmcqEyb07pjYDlNk7PAf9Msy8BcoonP9WzG6dHUjoIwDwSmRdVPpRfeFvbGZKMzqF
         1UAOijy1vRIvfbcz2/gZeuJp9WEsilRalc9vcTVImKqJUp6QzBlX/itz9q6zzl9Rmnfb
         frOCQZhN19w3RxuwFmRLnyDkxTM9j34t96fJ4zC6GqtkAaGX8W/lkz0tTjl0v4duq29b
         y1hpsQwfMLKiPxinTrvLLbYF10Pvz+Y6xW4FipZrizcJJ3ZU0nr4fzNvhrBHoX76QNaZ
         CpIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=GqjK2j1XTB6H4HK9DRUQxPic3z9SVRQ1yZGMwgNVGBs=;
        b=LikTYtOFL2Iq1UbqPs258d5GyUDSKYCeeuAiz0uXo/vZAembxmJxB5V3zOzgs7I+o1
         BivfdKTfKKAxDIw3NtKIVrcalPi/KroDhfWcjijxIzZ/avP4x08sbEK4VST86v6x+NZV
         49HvDqbc4kPRWaXilRmNiRzPcqgsuM0cy7viqi8lR7lDqZFsqavPs6avBQBNeZQPXnp+
         1P8vTMGkCgj6izw1rt98Qw2/u+4sazH8Ou6Cnq4O8HMwZ8/cdV9MrR1+M0tLoygIPNjH
         4ktKYpI7gnd3B6UqcssN7N7/hx5rN8czZn7aPqtY5NjXnNe5R1MNLdPSwH2e0rSeliHp
         5rqg==
X-Gm-Message-State: AOAM533gRgqEkoNVo1rfTjy5QTDZdcUtfqtUyyZLB//kDNk+760sY+Cb
	t6qY0fYMxU7OAE4UGO9Hzg+oMjINTFY=
X-Google-Smtp-Source: ABdhPJz9G6lqvEIswFIJvTolxWnz3AgOegxgx/1WJtrX4EbjF6Gdsedb3e6OAxqVp8ayun/AtTk51Q==
X-Received: by 2002:aca:5a0b:: with SMTP id o11mr1478166oib.125.1611614557203;
        Mon, 25 Jan 2021 14:42:37 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id n203sm3830514oib.4.2021.01.25.14.42.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jan 2021 14:42:36 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [meta-rockchip][PATCH] linux-yocto: Remove Rock Pi 4 patch for serial
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20210123210525.20237-1-JPEWhacker@gmail.com>
 <20210125223438.GA20348@localhost>
Message-ID: <798f685e-6961-92fb-18b1-0d120cac015a@gmail.com>
Date: Mon, 25 Jan 2021 16:42:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210125223438.GA20348@localhost>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 1/25/21 4:34 PM, Trevor Woerner wrote:
> On Sat 2021-01-23 @ 03:05:25 PM, Joshua Watt wrote:
>> Upstream OE Core has moved to Kernel 5.10 which fixed this problem, so
>> remove the patch for 5.8
> Thanks, I've already pushed a patch for this one.

Ya, I saw that. We should probably remove the .patch file also.

