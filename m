Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B183C369A2
	for <webhook@archiver.kernel.org>; Tue,  8 Apr 2025 13:10:00 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web10.74708.1744117792533143537
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Apr 2025 06:09:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cS0NH+v4;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-abf3d64849dso933157466b.3
        for <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 06:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744117791; x=1744722591; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aF/l6RsY23lUEU4YuMxOKzkOcNbkL7EVe7Zf8lvw6hw=;
        b=cS0NH+v4UNIEXB12d5dsGvFDChxzgDTOFZHV+WXv1h+m0WSI8j5pjJeKS1eQ7LIiLc
         xtYQYAmLaoZbfAZdChLv5rfshMxnCbsvZfRrTRWewWskMwnUcS9lyq1fqVkjWSgHctbf
         oC6MVIm9rvzeUmGNUYZbgeVkghTs3T4myXoRjfA0EJ3wT87trZp+iGvXKE+ays4tOOat
         8zS4zow0ebkoDc0QaXx/Ak2M+sHIjiS+VMMe8kk4HuqT2VPjingnhtslkza7GUeZvyR5
         D5SVrndRht1s4zE524dZd70VhTaT7Zp5yfFwt1ArkBlk6asEuoDzYaGNayui8OKirfnd
         1bpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744117791; x=1744722591;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aF/l6RsY23lUEU4YuMxOKzkOcNbkL7EVe7Zf8lvw6hw=;
        b=eehyU+/Mtk3p9o6sJHX3Dpyv2YYwY/8t9/D3ZbHzrOyCvKehfPQIBTbEmD1N+TgJSx
         4NhDVLex7V4s72Z+SO9/i2Y5rPZtT0y4zewR692eUnvqSTqKbzPZNhG3hOESS7xb6N4M
         3IrV1bm7x0xiWmQknKMIQ201HrQJzJy+pEX9S818qojlke/XT5kp4DWiSz72QMZ5vIWD
         KOaaUFhNuBUhVP0yYd0UYPuGO10QI6jdZgmJzgVg+lfKbaQlDjYuSjYcQPJY2vBjrBiH
         7bIEeDQtQGNROcn2v8nZ4O6a/KxW4scuxwVkbByJZcpnKsk6A2Lww9Ewb6hOk/rDGxtl
         M1mQ==
X-Gm-Message-State: AOJu0YyET7SEHQskY5GK7NIjd6aOP2m+RxANvJt/F5dslB+mlcSHRzf8
	8EAtKxh6nygJ9D+LfEMYKqNhKUHdNqT7EWvNyC69mRb+KRVffQXm
X-Gm-Gg: ASbGncsZl+YcSFPokapYK3hsMezWgL8ykYIm4jGd4dCRqQowxfQp/aTPdXl1KRKZvyH
	pt0156iQIxR1PwC+jwF5UEyX/1mEo80UoFaPsKjTj7Fb4LUFsJMpycQ8qYpLrsEr5QtM+pya1bK
	xOs4XZIgiYecpI1hVTwbu4Cs/n/bZAHMTv8GC3nHHqapT9mi5StI9IrUGFban49cgC7/iJ1JRDw
	S7PW/EpOvrpCJjZak0jmH58EfGyuh0d6iU47ToV022HBGGX25zQFlpeaNyvN7Bu1zd0Iql0+SDl
	OMjMjtgd2DJmwJgLAwOAx3/2exyUZlvXBK1XGU+WLJZgVanRVWAP
X-Google-Smtp-Source: AGHT+IFfMpj6j77gZEafm3nl/9lmkAbSx0fyED5/7brWrU0az1usv5VdfU1vf/8iG8tG0bj0WMetZg==
X-Received: by 2002:a17:907:3fa0:b0:ac4:4cd:c26c with SMTP id a640c23a62f3a-ac7d181a024mr1552723666b.35.1744117790454;
        Tue, 08 Apr 2025 06:09:50 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7bfe5d412sm903264966b.3.2025.04.08.06.09.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Apr 2025 06:09:50 -0700 (PDT)
Message-ID: <0e797561-147b-4aae-aa07-8626f1e3dfc7@gmail.com>
Date: Tue, 8 Apr 2025 15:09:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] warn if a variable is not used
To: proffesionaladdress2@duck.com
Cc: yocto at lists yoctoproject org proffesionaladdress2
 <yocto@lists.yoctoproject.org>
References: <r40e.1743754517240171829.1oOU@lists.yoctoproject.org>
 <E63C2FBD-D303-4686-B29D-D8306CB27A80.1@smtp-inbound1.duck.com>
 <DC0C7CC4-DC00-435D-AF68-749C79388DDD.1@smtp-inbound1.duck.com>
 <aa127e87-0a7f-4c5a-9467-675d1cf1df03@gmail.com>
 <7A2D6367-3CD1-460F-9655-69A8B0D980A7.1@smtp-inbound1.duck.com>
 <05B9C867-74DD-4A91-9A1B-1BD33302248A.1@smtp-inbound1.duck.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <05B9C867-74DD-4A91-9A1B-1BD33302248A.1@smtp-inbound1.duck.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 13:10:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65121

You can check what is actually executed by bitbake. Open the
run.do_compile file to see the actual script after a failure, and see
how it is parsed and where it goes astray.

On 4/8/25 15:06, proffesionaladdress2@duck.com wrote:
> Thank you, but branch is never reached because the previous condition is never true in this code (and I don't know why).
> Even if bbwarn print 'WARNING: rpi-u-boot-scr-1.0-r0 do_compile: isempty=true'.
>
> isempty="${@bb.utils.contains('MY_VARIABLE', '', 'false', 'true', d)}"
> bbwarn "isempty=$isempty"
> if [[ $isempty == true ]]; then
>            MY_VARIABLE = "value"
>             bbwarn "MY_VARIABLE is not defined, used default: ${MY_VARIABLE}"
> else
>             bbwarn "?????"
> fi
>
> But maybe bitbake provide some syntax to print a warning when a variable is not set outside bash code.
> Or it is easier to use some python code.
>
> ----- Mail original -----
> De: "Gyorgy Sarvari" <skandigraun_at_gmail.com_proffesionaladdress2@duck.com>
> À: "yocto at lists yoctoproject org proffesionaladdress2" <yocto_at_lists.yoctoproject.org_proffesionaladdress2@duck.com>, proffesionaladdress2@duck.com
> Envoyé: Mardi 8 Avril 2025 14:56:24
> Objet: Re: [yocto] warn if a variable is not used
>
>> | /<path>/run.do_compile.352486: 153: MY_VARIABLE: not found
> <snip>
>>            MY_VARIABLE = "value"
> Note that when you are in do_compile, that's a shell script. You
> shouldn't put space around the equal sign here, because that's not a
> valid syntax to assign a value to a variable in shell.
>

