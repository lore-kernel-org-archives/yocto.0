Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CAE3E77182
	for <webhook@archiver.kernel.org>; Mon,  9 Dec 2024 12:27:12 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web11.100112.1733747227347122694
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2024 04:27:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=P47vHWOs;
 spf=pass (domain: gmail.com, ip: 209.85.218.45, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aa67ac42819so188565266b.0
        for <yocto@lists.yoctoproject.org>; Mon, 09 Dec 2024 04:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733747226; x=1734352026; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8kZ8uzqI/KHgSCw2wlxUe61vJL90SIRMGsWx3gbtn2M=;
        b=P47vHWOsaTirb12Gc7ilHVbkihUsBsHA1Nkikj2Xxj3vnpqny2Ujh+vHGCxCwTWnLv
         s/oWC1JsiStrlTvdFecV4tZxWrbMA/cLDoyg4UXaxO2zZkkutx5SRjHDalFUHwPZ5t50
         JYWsRE1ZV6+m0CZINOxn9VWudrtMEOPQpvhpsZRdl4Z81GrQqOdEI9il+bhqaXJhvN+D
         PwFIiXa0Ex1U7SFQOx91ffvtFVXPo1RYJTBhtcSmL3Np9yx6heqMkxVUaQfJbbjKJYWB
         QIqz1d1EBbvZYPEl0rtpBniXVUCIN5DXc0GAbO4Q9XuwBdNBAILiPMt5wMjewunQNl6c
         1cUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733747226; x=1734352026;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8kZ8uzqI/KHgSCw2wlxUe61vJL90SIRMGsWx3gbtn2M=;
        b=DJPrWRU5HS0brUwtHdt2QXG1TTSgH0lK5Z7hGVxgHRGZ3fnrkRF1wy0qpqoAILcuDO
         SOjNsDzDH+FnktLA3OUGo51IIVl3e9PsRs4mlZfqkTFX5HDt6TMwWqcW+2QeIimy8WOe
         N8JvQ3B/WS5ReXtELpxv0QfQ+UVFWuBiHGRWry1Le9Gb6bd8+i9k3DMI6qVs6gkVJq6c
         d7DOk2QUbdPQCwTpIOYcx7HEJY6sKlKani2ObbtBdiKTyraWz0BiRguGRcYekjur1frR
         dhXeTS2DiJtVdAJJx1HwlABlQ5/zLpNgMT+kI3QeCu0ArDTy7PuExjn6X1vScE7RaxDy
         YQKA==
X-Gm-Message-State: AOJu0YyNSYzHER68hPk+/oyFirjxsEfIomtPDOe8UNvcD6GumhREjQfE
	Ln+felnZmiv/J2TSTIJRIffMLdKNghFELfkWelhf8gTb3r1V4v6gc40xEwjM7J0=
X-Gm-Gg: ASbGncudSx2DA4y7J428lCF11Zmx2OehxeBiqKFfi1+q6FjYeuewzjua2/CtQNZhPip
	HxgYMBZLc7GxS15mrRMtHJmH9o7AQy+9GcLo/bPsce7le/lKaln/crUDY40dr8aoA/GXZx2dLcc
	m3btWTcH57hog8ImX4mYY6BA6I3q2yVvvXbouMZoOAlWmR+tR35Pq7h7qffXP54f7vvRWySf0ZT
	2LId+AZQIRxv90mXZE+tuW2cP2dGUQ3KtyX28qsa4A9W5wAd/Lb+LC7Vw==
X-Google-Smtp-Source: AGHT+IHxKqRTg4lsmPegR2Nl+N/246qq7B5b3V5Swm+urWJpqtX2mOs5iCjXfquVUizbhvh5pJibdA==
X-Received: by 2002:a17:907:2cd6:b0:aa6:93c4:c68b with SMTP id a640c23a62f3a-aa693c4d1f0mr156521866b.32.1733747225423;
        Mon, 09 Dec 2024 04:27:05 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa683a0a736sm177700366b.142.2024.12.09.04.27.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2024 04:27:04 -0800 (PST)
Message-ID: <37255ef2-97cf-4d70-8cb9-237510cbd3a0@gmail.com>
Date: Mon, 9 Dec 2024 13:27:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] How to install files in root directory
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com,
 aravind posina <posinaaravind0205@gmail.com>
References: <CALvuYrmW4YabKyAPs43GYOihOeEL67=u7+yy_2EMeawSmPzHQg@mail.gmail.com>
 <15637.1733744721485146927@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <15637.1733744721485146927@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Dec 2024 12:27:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64418

On 09.12.24 12:45, MOHAMMED HASSAN via lists.yoctoproject.org wrote:
> It didnt work for me guys.
> I want to place the file in my root home directory.
> # Root home directory
> ROOT_HOME ??= "/root"
> if you guys have suggestions for me please let me know. I have tried 
> the following lines below but none worked.
> install -d ${D}/${HOME}
>  install -m 0755 my-file ${D}/${HOME}/my-file
> and also tried
> install -d ${D}/root
>  install -m 0755 my-file ${D}/root/my-file
> none worked.
> Please let me know if they are any more options i can try.
> Thanks
> Hassan
>

Just thinking loudly: home folders are special on their own, and root 
home is even more special.

Adding files to home folders is usually done through the /etc/skel 
directory, that's content is supposed to be copied into newly created 
users' folders by useradd. However not sure if it works with root also. 
Haven't tried it, though that would be my first try. My second would be 
to copy the file somewhere else, and have an init script checks upon 
startup if the file is at the correct place...


