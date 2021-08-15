Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web08.13690.1629048451308271180
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Aug 2021 10:27:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KzoAtkjm;
 spf=pass (domain: gmail.com, ip: 209.85.222.180, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id f23so16655005qkk.13
        for <yocto@lists.yoctoproject.org>; Sun, 15 Aug 2021 10:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jy/OLKrKpBDkj3zP8akm5+2ueKldmMhPDHdlhxxRkAo=;
        b=KzoAtkjmIM+c7yPEIc+iv84N224K1btZxXy0EiQFyCAIOaBiyv7uAMgH7Pb4nxra4M
         P4JzpvV0JiRA84trsFxtNos7Vue/PepZJg4aQ3IA3ssPWapS7CRz9b8vJPRfWjUbjIBU
         cueXCBjAa7hayT74RQ9CiNqq9YYdCxl1Y0XBVqTsuvMLYd4FNexpAl8qxRlNQYojOcfb
         aoJf60IGJ49rhBlYdD6DxBDaFpm6idp3bq7wMnORrZbtnjTsgwtNlr+hw17/jsKUZfkX
         XiUWK4gbg2RkkmihGuFJg0x10/z3ufN9Iw9zAuhiqRGbni6JLcxEiZ6SYo5OuQD+ZvwV
         gIjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jy/OLKrKpBDkj3zP8akm5+2ueKldmMhPDHdlhxxRkAo=;
        b=fWcgms9NUqB/C/YgBXsp1VeX//rh7XgPuOKc7nM0ozTWfgm/zBzFFTedqHlCJDmnTG
         oQugwz1+pd+BaeJta4ermRXL+agRo0IjX625rahi9W7X2THHnx51/agySfET+gEONmzq
         RN3N6Me2g/3083gEL727NZwgbLV2YGvGXzsPG7wjFWK3EfeflBlxoqQgLTOrSTCAS2Qf
         U7NmbPHLJ5TNzMfDnxdK9cg0qQ18QdeDn4XFWDun5/yDlvkotHpFWKTccX6Wn385KcYF
         XoltTQCqCgBSpHFS2vgPO2QKayMvriyOCfp0VfNMfwPWUhLj+IejWZIjiezd1/yPjJRQ
         VRug==
X-Gm-Message-State: AOAM530ts6GyRIswk+ZgdYK4i/E7Wv2BkJGxcoeNlvHdej94TbmB6/L/
	8W4luY9ERgwUEyOQmkPsQzbyx9DlhmPA7MHeElE=
X-Google-Smtp-Source: ABdhPJyPezZ2CHtQcNAUHZsYafDTrq27UGZ6j9L7AtAeMNeHX+Kc7eDejT/1r3hrYyiTraSU5rsObqgonkRi4UUTqwc=
X-Received: by 2002:a37:bc8:: with SMTP id 191mr5390800qkl.25.1629048450375;
 Sun, 15 Aug 2021 10:27:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210814085644.19989-1-alex.kanavin@gmail.com>
 <68996294-9080-5139-4b1f-a7a5ead2d831@gmail.com> <CANNYZj9UFac76Y0eErc3enMN9yCL1T85pWVB+BrLkzt7Z+k-0g@mail.gmail.com>
In-Reply-To: <CANNYZj9UFac76Y0eErc3enMN9yCL1T85pWVB+BrLkzt7Z+k-0g@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sun, 15 Aug 2021 10:27:04 -0700
Message-ID: <CAMKF1srvu0Nmf5Q5o02KYi-PrCL9tSO75XVxxA9ozhv5HLhOHA@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 1/2] auh-config: enable systemd only for glibc
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Sun, Aug 15, 2021 at 6:56 AM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> On Sun, 15 Aug 2021 at 03:30, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>> Please report the problems to mailing list and we can try to help if
>> they do not work with musl. We do support systemd/musl combination and
>> try to keep it working
>> this will limit testing this combination.
>
>
> This change is prompted by the recent period where musl patches wouldn't even apply to systemd, which broke half of AUH upgrade attempts.
>

Interesting, outside AB we build extended world on musl and it works
well. systemd porters usually port the patches as needed for musl

> You need to enable systemd/musl on the autobuilder matrix first, if testing the feature is a concern.

yes, I think thats a fair point, I will bring this up.

>
> Alex
