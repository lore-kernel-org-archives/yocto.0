Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web10.2542.1627464730709595002
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Jul 2021 02:32:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=frwdktHr;
 spf=pass (domain: gmail.com, ip: 209.85.218.51, mailfrom: koansoftware@gmail.com)
Received: by mail-ej1-f51.google.com with SMTP id ga41so3486082ejc.10
        for <yocto@lists.yoctoproject.org>; Wed, 28 Jul 2021 02:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=reply-to:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Mu5SoOluuHxLu6HO7iaBwqiZ1iwEJgRo2xPY6gwTHAU=;
        b=frwdktHrifMzcBbVMAcszHxbjNI1YdJDr2J5vzBb6xN+BH13BiTvmGOyvgvL4Ut8Dc
         k6XHe2NL8b6bb9dmZvcOQ8UTmFKFsyF/P+dpYttHZ8OY/i0Js826C7pzu+6BfC9rOvte
         anorJb6pBYLdKULh0vOYKRQJkwqii5VoMbUpg5trX9cUHfYLVEwD47ZPnXFYyBW5rKXu
         p8nCBecgqH35qWWaIrJ1U0qV3rDpKeFesk/gwErmkJmtnOdrH09CaucB+kUBAglFfTD8
         zSjCFH0rHyFXSPDRF0AYWvsTa44TlX50UOChHtxWlqbC0ZG2qs8g5cJb6Fg+4JXacVYz
         sL5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Mu5SoOluuHxLu6HO7iaBwqiZ1iwEJgRo2xPY6gwTHAU=;
        b=fYQ90k2NGjJYO4yX/kMsD0/7/BMGB/+i0dWKis8dF5a9GBUeNWFKieFzRdiQrxKHCd
         gdY7gVDEFTcQyPbcIzzWwr17+1gRl3wdImWCjPu0znnbK8lS0v06lvccb/ZQ003uQyYM
         qoXFJQlTcwUSwF6YNNiTWa7Xr3K2qUcRKFRx7Un55Yin2clHZ3BZRqHRF+XQKLe9gnd+
         zRK5qvqjPxu9Tgj2BA9LAyVeKW5fKaUqZQ+dc0TQNb8Mhnkm0C3Wf77UWpF/ovX0ByW3
         rCyw8slMSwBcGTCDUg/cjntZCiaeNkv6IQb9A4C8q5mj1Rm3/RQ+Vs3JdtQEkJDNN3yf
         K5+w==
X-Gm-Message-State: AOAM531eIAw50bDU/DQ6qKkYE8XWmy9wtnlOkt2DXPD50W624OLluP9d
	SiGB0m0pgxL4WrwLTew47k6TEqj8mUyrHg==
X-Google-Smtp-Source: ABdhPJyxVCuWQcrqUxB4ObETI8mIcpMP8b9arpxeoJf7bPChn4lne+kd8BRgw+wMDKuA0JsQBw2hMw==
X-Received: by 2002:a17:906:e21a:: with SMTP id gf26mr11722057ejb.313.1627464728902;
        Wed, 28 Jul 2021 02:32:08 -0700 (PDT)
Return-Path: <koansoftware@gmail.com>
Received: from [192.168.0.6] (host-79-3-92-72.business.telecomitalia.it. [79.3.92.72])
        by smtp.googlemail.com with ESMTPSA id q8sm2351017edv.95.2021.07.28.02.32.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 02:32:08 -0700 (PDT)
Reply-To: koansoftware@gmail.com
Subject: Re: [yocto] [meta-spdxscanner][PATCH] MAINTAINERS & README.md: Updated the email address where send patches
To: "leimaohui@fujitsu.com" <leimaohui@fujitsu.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <20210722131057.30663-1-koansoftware@gmail.com>
 <OS0PR01MB617898CF9DAD8263C765A032A0EA9@OS0PR01MB6178.jpnprd01.prod.outlook.com>
From: "Marco Cavallini" <koansoftware@gmail.com>
Message-ID: <4ca598af-adb5-2117-99e1-230de70c7de4@gmail.com>
Date: Wed, 28 Jul 2021 11:32:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <OS0PR01MB617898CF9DAD8263C765A032A0EA9@OS0PR01MB6178.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=shift_jis; format=flowed
Content-Language: it-IT
Content-Transfer-Encoding: 7bit

On 28/07/21 09:12, leimaohui@fujitsu.com wrote:
> Hi, Marco
> 
>> +Please submit any patches against meta-spdxscanner to the Yocto Project
>> +mailing list (yocto@lists.yoctoproject.org) with'[meta-spdxscanner]' in the
>> subject.
>> \ No newline at end of file
> 
> This part repeats with MAINTAINERS. Can you send patch V2 without this part?
> 
> Best regards
> Lei

Hi Lei,
Done. See other upcoming patch.
Thanks
--
Marco


