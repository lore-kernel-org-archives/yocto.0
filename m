Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C798E77180
	for <webhook@archiver.kernel.org>; Thu, 12 Dec 2024 13:36:41 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web11.19734.1734010596927855931
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Dec 2024 05:36:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mQ62+oeu;
 spf=pass (domain: gmail.com, ip: 209.85.128.41, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4361d5dcf5bso6647505e9.3
        for <yocto@lists.yoctoproject.org>; Thu, 12 Dec 2024 05:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734010595; x=1734615395; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l3qAdVCqGzjRAmFJLVGmmY7wTcHxO8LF6g6hh6IzxYE=;
        b=mQ62+oeu+rNq0VuNrKuDNmpN8kaMnafLvdgvRcuysXJFp3sS5+Ud6alzgIawRJ0fdq
         GORf5Skg6fdxbd+lya4b499JMG6R/oNUkZvb4RtugHCf5OJ/IB99WV79DwSKACyBlQs+
         WHDLmGIk7FFmDD9lfmButkhhyD0b/ni7xp/OQ+6DqGeMkOMScnTlofTHdQvdKEVFmAPz
         joh8HsplQvBI6JqQDjA/3FkVzDTr9CRGQQ0e8qALsETp4SnzuHE0L6NWhLusrN+XGP/m
         rpxbw3oCaP1lr2jlHFT2SEmii8mVoII+ZW1AlDMvMO9RKDrkjo0aGz/37BWfAV4+78Bi
         cn5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734010595; x=1734615395;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l3qAdVCqGzjRAmFJLVGmmY7wTcHxO8LF6g6hh6IzxYE=;
        b=tkKIA/RtYDr1Wv7P5WYqbHa/32Qbq/Whl9gik9+n1l9jfn2etBWqLfMRcgf7cpy4WA
         UpPCSLphPQX81rOty568PhfQ0qwHuDANDXF1acU6EcjWZ0t3u2aQ4L405ayDn1Xdxxk/
         oKeM4RIe4nyWYK0+EflsksmitJbp/OhV6N9uuDYRi/4riVTkM1HZKSSwKQqD7Ey3JDHm
         4cNE6Iykv09ztmjhFWuYi0LRbKdHQ7T8xnGNxh/VB34ylVdSW19c3t8sFc1x2OWlnRVE
         nchMhhP5Dr1sFC5dyznAaM/oYrBLoMtEfWAOb7a28YuXgmT+Ml6+sDhuvg8vS29l3AP0
         01wQ==
X-Gm-Message-State: AOJu0YxYgaRiPDw4yageEnY1hyFB7CMI1q88GLouVEdZpdDQi4sblED+
	VBdfgFiHTQOX63a+DMMRPheSeUtbYJLzmRt5eWi2lncNRce+jOKaGsTiYt9Y
X-Gm-Gg: ASbGncstsY8JhkdW5FZiISQqt46Paqp77DZYfa7Lk8A+HDrnsw4YE5le7qEf7/xFv1O
	RiTa0tM/PhimRWeP8uskRgfNyxcCuUxiJ6psvLNSp714nZFRDmsMJJ3OAbMxf6+04GHxMWFb1Z9
	QgVPoCo3mP+Tm9v3RhyHqP6Tn59rdMYCmZDcTZmr3vviSVqDe37aVte1xdgQnzdG5QGyQYs8lFM
	5dJvammYWyt0kfpGqYxTZlRjPckuuBQu6hSjDm0eUqVlQ6v6vgn0rb18H7fG+fG
X-Google-Smtp-Source: AGHT+IGvTIqkXeZDOIdEzja7bdguUE86GPRIhuW1HH/JcMRk5RIz7zG/Fu2Sc8gpalQIZyEaCN9Wsw==
X-Received: by 2002:a05:600c:4fd3:b0:436:1971:2a4 with SMTP id 5b1f17b1804b1-43622844b0bmr33255135e9.17.1734010593006;
        Thu, 12 Dec 2024 05:36:33 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43625716e5csm16683625e9.36.2024.12.12.05.36.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 05:36:31 -0800 (PST)
Message-ID: <be80c7a4-421b-4323-bf3e-4f18519301c5@gmail.com>
Date: Thu, 12 Dec 2024 14:36:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Scarthgap recipe to save and package to secondary
 partition
From: Gyorgy Sarvari <skandigraun@gmail.com>
To: yocto@lists.yoctoproject.org, pierre.daye@p3lab.com
References: <vnCM.1734009244366914529.Gp65@lists.yoctoproject.org>
 <0f36018e-f08b-4fbb-bcd0-f9e18f4968a7@gmail.com>
Content-Language: en-US
In-Reply-To: <0f36018e-f08b-4fbb-bcd0-f9e18f4968a7@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Dec 2024 13:36:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64437

On 12.12.24 14:19, Gyorgy Sarvari wrote:
>> Any idea on how I can solve this? What am I doing wrongly?
>> Thanks!
>>
>
> You could try to remove /media from QA_EMPTY_DIRS in distro.conf or 
> similar place:
>
> QA_EMPTY_DIRS:remove = "/media"
>
> See also: 
> https://docs.yoctoproject.org/ref-manual/variables.html#term-QA_EMPTY_DIRS
>
Small self-correction (and regrettable noise): looking at it a bit more, 
it isn't necessary to make it a global config, it should be enough to 
add it to the package recipe itself. (But the main idea remains the same)

