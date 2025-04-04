Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E44F1C36010
	for <webhook@archiver.kernel.org>; Fri,  4 Apr 2025 06:57:40 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web11.5441.1743749858682808719
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 23:57:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Rzxyed7Z;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e5bc066283so2756456a12.0
        for <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 23:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743749857; x=1744354657; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TT+Ev7AwdpZRkQdIWgkRib4gjEYmw+6s7hSCidiXu94=;
        b=Rzxyed7Z96PdRrHjfC4TGG0D+8NMbe1ywhCiW2DCOHUHKZm+BLwVJlmhknQ46yQtSo
         /4lbK40u4Jz6/2Lh7d8f4+zkEtXZOnWKqxUazYllvKMyUHzhAQDjnZXgJjIbJVm67xyY
         /wPQNtUfxGgqdOKMD9mWChWtqK3n8vWnKqDW8zyoblFwoXYRqe2LX+poPkpLiZ7jRB81
         VHIS5e0vfFU6XhJ3aUzgMJSbIr51j9RcPScF6nRFPUYjhBC41GTIKPbrfOA24LxIeSr5
         cD7cjls8Xs25TjGAiq2NeEXCj0P63VAfMzoZK5IoRw4EdVbp+8HP5yL1qcXXfwAZH7tF
         T7+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743749857; x=1744354657;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TT+Ev7AwdpZRkQdIWgkRib4gjEYmw+6s7hSCidiXu94=;
        b=ep8ImpOQBDel8hedAA4pFlL5Ys3q8v+bsinm+OLACBGkkXvO54RrG7+uQnenVdfwCM
         PEomzFka7HxzXiSh7OdAmVvAGO3jwMUqFpMn4iP8zdqHN1rDb29oeptM4cdPHUknC2I/
         3nD0o+5pi7ix0oa2v/fuosl8DUUk7BiXA0LA7pu0TCQn3vkEMft/WUELXp5kYj+lze4K
         nA5XImv5QsFaFl7Vm3Pnrzh9F9hcjhQbMnIaKC0Q3JX5jClSzsd67TlATIEfoOjglKB9
         e+WmNQf/S9v7m3KFZLfHIo3kDAj/rb6zt+h8mIjpTuFSeFS+8St9k9/F112lZUwaDtdy
         usLQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUoR/wuPiSuentKRVhwmOZcve/4UhrdSB8PK0YvNyse8HFa+irzsVF+oGQVzjkmtFwliYcQQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzR2oZW2Ld7clg/GGUu5r0qH9pM5eRZh6p78UWhsMWvq2BMc4D2
	3eNVJxvfkJJ2rNihC+IN8C7QG48sA0B8yzSlcn9p5wcGUvBi9Z0s
X-Gm-Gg: ASbGnctA6lzOOcNLFZtY1dCWhKxUAZJnRTvG+QOCD7mtbCh5sA8RN9UEKDQnSZ94KiX
	noCV9z2VmDTd9GWLKHXFmLCmgRaRl66X0gCL0RPNpVfsltC+ZChsUYKDEcUIxQr/kefxWHidxXs
	379pzNUZ0l43ff34js3DJ2HTBBI41QCy+XiFJJCdSK/Jbn/apBT/bHPBmWQhv8bD/9WSr1c8VLI
	m6YrkhkssY4F71s1y5djdeF9I7OuXyRtJ5ylE6zKBJro71OxTJHZPnAlZr/wSQ/dg7S1AW3yUGH
	S2oeo5JJ4SS3AAa26ZhRrScePBECJ+Ac+Fcu8Mw0ozaF1mFwTR/M
X-Google-Smtp-Source: AGHT+IE1G++oAKryI+0XgplDjHc3SdgiIPZO8ifuebmlJsLYVSe8xLP61rh2RXgl+tdwJerdprW8MA==
X-Received: by 2002:a05:6402:2755:b0:5f0:2185:a804 with SMTP id 4fb4d7f45d1cf-5f0b5db1a73mr1242046a12.11.1743749856374;
        Thu, 03 Apr 2025 23:57:36 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f088084ecesm1829096a12.51.2025.04.03.23.57.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Apr 2025 23:57:35 -0700 (PDT)
Message-ID: <abb758f9-f4fb-476b-8dca-00ed032cc259@gmail.com>
Date: Fri, 4 Apr 2025 08:57:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Error while building python3.11 as an alternative for
 scarthgap (OpenSTLinux) #openstlinux #bitbake #yocto
To: abhijithkannan45@gmail.com, yocto@lists.yoctoproject.org
References: <245da1d0-62a6-4528-8993-b89380e8433b@gmail.com>
 <26801.1743744623838957302@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <26801.1743744623838957302@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 06:57:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65096


On 4/4/25 07:30, Abhijith via Lists.Yoctoproject.Org wrote:
>
> Hi Gyorgy,
>
> I’m currently using OpenSTLinux (Scarthgap) on the STM32MP157F-DK2
> development board to learn how to build an alternative Python 3
> version in Yocto. My ultimate goal is to build a Yocto image for the
> RZ/V2L development board, with Python 3.11 as an alternative to the
> default Python 3.8.
>
> The STM32MP157F-DK2 and the RZ/V2L come from different vendors
> (STMicroelectronics and Renesas, respectively), but I’m using the
> STM32MP157F-DK2 for now because I don’t have the RZ/V2L board yet.
> Once I get the RZ/V2L, I plan to apply what I’ve learned from building
> the image on the STM32MP157F-DK2 to create the final image for the RZ/V2L.
>
> Renesas officially supports Yocto Dunfell for the RZ/V2L, which
> includes Python 3.8. However, for my project, I need at least Python
> 3.10, and ideally Python 3.11. Since the STM32MP157F-DK2 is available
> to me right now, I’m using it as a reference point to learn the
> process, with the intent to later apply it to the RZ/V2L once I have it.
>
> I hope this clarifies the situation.
>

Unfortunately it doesn't clarify anything about why Python 3.12 isn't
suitable for you as the only Python installation, or why you are trying
to install multiple Python versions instead of updating 3.8 completely.

There are reasons why everyone is trying to discourage you from this.
The current recipe problems are only the first ones of the issues you
are about to face, and there would be many more at runtime - and not
only we are unable to help with those issues, most upstream maintainers
would also be unable to do so unfortunately.

I won't push you however to share the original problem, if you don't
want to for some reason.


> Abhijith
>

