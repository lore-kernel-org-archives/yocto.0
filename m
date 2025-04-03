Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B69AC3601E
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 13:01:41 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.12728.1743685296652940854
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 06:01:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hxA62ux0;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ac2a81e41e3so161667866b.1
        for <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 06:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743685294; x=1744290094; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0t0S5MdUCzh53rKA2Kzwacgfo8+Dn8Q7Y8aqaJQ7Wg4=;
        b=hxA62ux0b5TT8UMHP/m1VNkR8qWZwP4TzE6Ff6Q26rPIrjCAatIuDCULh8swKrQEZT
         OQEXcFP4gMK1oW7N2hZmUdjw0h0BCzyLz95s1Afuy2e6meFOyFr+yzTP3ii+FsI0z14f
         NvN2vpkZJ3WkzppBcwy8MMB94I9uj8OZqzM8qQQ4JvU0jVxr/CDOgLxa73vyJgP7d9JY
         gfwgzDDX3RL1vc3YfiJoDnZT8DQ3T4U1ToSQEJ5jx53stiqaUcOs0c4MCzvdDVwVEObt
         wjA7X6WzAPvU6cpJ5w8mMrkJjyGqNOj964jPHa6owzSLXqVxBJ6j+Rm514jGozihneGX
         Fuxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743685294; x=1744290094;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0t0S5MdUCzh53rKA2Kzwacgfo8+Dn8Q7Y8aqaJQ7Wg4=;
        b=CmjK38uK0rh1VaSDTgyAHPd6CWCTg54V0k/WRCTQm58GOtduyUACZRp/O33/h7ZInl
         UmjpYVBlV8PJ+QzskxXuF0/hxGYcpr+T54kRk6lBKvImuWZnz8HQ6FQNXQ2sihDKdO4W
         KWicTlrlPB2vLGH5nCouEgGAsnJsh2A23zuwSeaZfE0sR0fEMViAI+z5rKH9/uqmkXi7
         4G2CVhEix/5zRvcpHRR109RUWuhBJWB0TbSv8ioeH4mxi7gzTJXenH6ZycAM5fp3Y8Aq
         6shFNd8zOHkpar4s+lxLfjbM3XhPtbF73utTLO9Ewhg751CKSqrC6/xxpinsiXSzLh/8
         yLfw==
X-Gm-Message-State: AOJu0YyCSvWGZifVeLxa6J90ZpSsOlmW7bRCcGLnyAc64sqq14RN1wmN
	a4WUfMoQy9dq1GsV/pJffD8oXrFkuSRqmNzWKWX/f8tWnkMkOX4FLsYeYr/q
X-Gm-Gg: ASbGncvMtPswnXBER+7agLTrzChG+cEfhnpN1JpKJ3bVMYplIDlKupaw8DgyYL9A0Dy
	DKucruK9MNsJO1nL2x/5Ofab3hp2qcIsx0I22d/S5xSCg3BzTD6D3pZk1ieuw/fmpXX2rj9Blqn
	F/A7aQICqaJ9q9e/R+jHtHde1d5tH0+9PCv6ysjPeFf2y5CI8reLSrPIDoa79swduU5mhx+eTo6
	PmEkWjJZamNOnJ//YFIOKacyKTCLxRf7Isel0cCtUTLdp8t9gmcB6ToVZbefrHhWmPgx3BhvxIA
	nnT9aW0v4Fjoj0NthL6n7uYQgDUCTB+owW+B0Sbvo6DcYlmMjw==
X-Google-Smtp-Source: AGHT+IH0mzrAwpX1m9lu6PsCayBHlwdW0rR3O9bJKo7OS7sJvjqiHiOMVAWaE3GPWcK8p1B2wME3ug==
X-Received: by 2002:a17:907:60d0:b0:ac3:bd68:24e4 with SMTP id a640c23a62f3a-ac7a1ad7d2fmr491062866b.53.1743685294011;
        Thu, 03 Apr 2025 06:01:34 -0700 (PDT)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7c01861acsm90578866b.147.2025.04.03.06.01.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Apr 2025 06:01:33 -0700 (PDT)
Message-ID: <245da1d0-62a6-4528-8993-b89380e8433b@gmail.com>
Date: Thu, 3 Apr 2025 15:01:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Error while building python3.11 as an alternative for
 scarthgap (OpenSTLinux) #openstlinux #bitbake #yocto
To: yocto@lists.yoctoproject.org, abhijithkannan45@gmail.com,
 Alexander Kanavin <alex.kanavin@gmail.com>
References: <CANNYZj9uurddieEzEScQWNOqauv-g9+UqLNCv80TyCctKd6upw@mail.gmail.com>
 <4900.1743681909215455345@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <4900.1743681909215455345@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 13:01:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65079

I really tried to read this multiple times, but I don't understand where
this requirement for Python 3.11 comes from (which of course might be
due to my lack of understanding). When your vendor gives Scarthgap
support for your other board, that will also come with Python 3.12.
Currently there aren't any Yocto versions that would support Python 3.11...

You mentioned that your customer needs at least Python 3.10 - Python
3.12 seems to fulfill that requirement. If you have anything that
doesn't work with 3.12 for whatever reason, than this is the best time
to fix it - you will have to do it anyway.

On 4/3/25 14:05, Abhijith via lists.yoctoproject.org wrote:
> Hi Alex,
> 
> As I mentioned in my previous post, the RZ/V2L has superior hardware
> capabilities compared to the STM32MPU157F. However, one limitation with
> the RZ/V2L is that Renesas officially supports only Yocto version 3.1.31
> (Dunfell) for that board. Unfortunately, the Scarthgap for this board
> isn't officially available.
> 
> Currently, I am working with OpenSTLinux and Scarthgap, as that's the
> board I have access to at the moment.
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65077): https://lists.yoctoproject.org/g/yocto/message/65077
> Mute This Topic: https://lists.yoctoproject.org/mt/112062927/6084445
> Mute #openstlinux:https://lists.yoctoproject.org/g/yocto/mutehashtag/openstlinux
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


