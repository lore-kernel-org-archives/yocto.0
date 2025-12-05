Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0006FD339AD
	for <webhook@archiver.kernel.org>; Fri,  5 Dec 2025 18:12:11 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.56.1764958326162716686
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Dec 2025 10:12:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MaZqCahb;
 spf=pass (domain: gmail.com, ip: 209.85.128.42, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4779a637712so18758795e9.1
        for <yocto@lists.yoctoproject.org>; Fri, 05 Dec 2025 10:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764958324; x=1765563124; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3CrC5XVudSjIyaxJ9wm2EWktQNanpNAkaXkZQ6hPRN4=;
        b=MaZqCahbqQPVavgzQFZrSKNbP7OgP9dMqTKZdGMlUl3XT8laEZ3lgOEXjKJu8jekcb
         RX99s4X5WdS/q7jKJpSP6kM5shvwOzDzJaFfDoU+ztHIFYHVQJWpSyCPvxLTOiyYzpqw
         vrYnAz8oivfg16xFTev4mz7b4i+LAqEXSyG/oY9tC//zf+8ezjOy3e5J8umbG4U88Lv7
         Fn8XOvgrLNiZf2rPdjXZ+kV5p69tZyaAVhvPatagHz4iDnljOW35vG3cpmGCjm/UFKb8
         /kfl16m2F/tnl78v+q0wrryjBvF9ZXVH26odlz4kPM5U5hA/pMwrqHpiS9lT5GDLL6fQ
         ASaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764958324; x=1765563124;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3CrC5XVudSjIyaxJ9wm2EWktQNanpNAkaXkZQ6hPRN4=;
        b=Ddxqg/z4rNRW45GpOm2bj+Sa82fs4D+HZLP/zmNMaeYNFbVE0TgPcP4ftT4HN5RsZ0
         FnmLzJqPvJcNlugm0aXKd4vAfN98o1jB2/hfZt0bo84XF+Beue9pm+cJZUDv86LYM+Oi
         S7ycT7JFOVVVmza6K3mtP7/t5Ww2SshMZK7crx/OQYTGD7csngUyNo7TzgHsaiP4WwSm
         BLOxCGDpRw+FeLkxyNlgfF29qs6n8SrixJDsVX0vl8jgvtabGEpJFn4302PABATKHdph
         SGkPdGsdubMF1ObgxIbfdybTRivaUWKwlnkdyK/fxi0x4LudsaDHkb10IuaKW5Mzasvt
         gdJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxh5M+cJu1ywfjGdxblfV2i1Idelsc0QXqv2NiGWKfkQGTaoXpum4dhpnHak4wYpcJMmRCRQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yx2dK038V1AynTkNVVQFnHKBs4BebNgmBio7fUlM4Fvr7UziUeY
	UqoHCjDdJF3D9EaXYAi4um3+7ZMR/YgooTGFqa5qzKoDCK0opJXzs/KU
X-Gm-Gg: ASbGnctQfMP/J56KmHayOclfphMzgeVdJ18JqPgkK79fy09EliSjuzwExaOKKsS/MHm
	KFoyzwZIHQCf6Pddt5R5QXXvnaVS1HRg6C4iwk8FSMIUdqf3EipS6opqcAKiNk05VVEZB5M5oEo
	1TFTYhVjXBNabJfXcPU6R4swIEr334yFKA1aeJFt8ZXexXDrHihwxfsqcnequJhCQCrORZKW59D
	Zqw26M/WeFOhphRUe1lXHzO9l7HBAj+MUMNjqEeaQrqSiF0O0M5dmMeAlW/pat6jgWRIRP3ijLo
	JqPmVx9iHzFUzr44utpNIjfQLRn29uGEYq5vE6VuvQ7mLSzxH+ZJ7m2X5cPWok9lCqDA1OuBcaR
	A63lDEa3w3sXPXgH68cFT4eyoBIz1wgKkxV3TQx40eMj5rkoF+MUgILboBCikK4si1p7UKO7LBU
	vdPWzlIi3DAxLSYgbaWVM=
X-Google-Smtp-Source: AGHT+IHn7L0GSYGHqGH/kRMK2aSzFYqSu+eCUNHSlHwr+VLPs+TXm0x1OJsw0kKoT7ElKqg3ta9Qvw==
X-Received: by 2002:a05:600c:a04:b0:477:9650:3184 with SMTP id 5b1f17b1804b1-47939df14d2mr2685095e9.2.1764958324433;
        Fri, 05 Dec 2025 10:12:04 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310b693csm93195165e9.4.2025.12.05.10.12.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 10:12:04 -0800 (PST)
Message-ID: <96c47e76-9e94-4d53-90a1-57488b165612@gmail.com>
Date: Fri, 5 Dec 2025 19:12:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Bitbake fetch does not re-fetch from network if gitrepo
 is found in DL_DIR
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
Cc: christian.leeb@hitachienergy.com
References: <MUyE.1764856618420625622.Sp84@lists.yoctoproject.org>
 <6a0d63c8-3a01-44a3-bc52-27ce3f5587dc@gmail.com>
 <96936.1764884505239996619@lists.yoctoproject.org>
 <33793480-bdcc-4b88-ab11-0d493118836e@gmail.com>
 <CANNYZj8A46=oc3sD=F2H=A33rjmue=tVhTtVBJTabfO3EJLuDQ@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CANNYZj8A46=oc3sD=F2H=A33rjmue=tVhTtVBJTabfO3EJLuDQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Dec 2025 18:12:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66095



On 12/5/25 18:24, Alexander Kanavin wrote:
> On Fri, 5 Dec 2025 at 16:46, Gyorgy Sarvari via lists.yoctoproject.org
> <skandigraun=gmail.com@lists.yoctoproject.org> wrote:
>> I have been thinking about this, and also tried to reproduce it,
>> unsuccessfully...
>>
>> If fetch is deemed successful, it is stored in the shared state cache,
>> and then it is not repeated until the relevant signature changes - I
>> think this is the metadata reference you found.
>> However as long as the download folder's content is only modified by one
>> project only, it supposed keep track of it fine.
>>
>> One question about the DL_DIR: is it possible that it is shared between
>> multiple projects, while keeping separate shared state cache? Or that
>> the DL_DIR's content modified manually?
>> The shared state cache supposed to keep track of what is downloaded by
>> bitbake and what is not, but if the DL_DIR's content is changed without
>> bitbake (or by a separate bitbake), that can break the shared state, and
>> cause such issues.
> This is not correct. Shared state does not track what is downloaded.

It depends on how you interpret it. Sstate does track the do_fetch task,
and does know if it needs to re-executed or not.

> It is also fine to share DL_DIR between multiple builds and projects.

I did not write that it is not fine to share DL_DIR, but but you need to
know some caveats. If you run bitbake -c cleanall in one project, you
are up for a good time in the other one, if they use the same recipe.

>
> Alex


