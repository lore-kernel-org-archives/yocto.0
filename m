Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F10D1C3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 14:41:31 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web10.65181.1672756887228100275
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 06:41:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Kq+Mz8/Q;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: fntoth@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id g1so29840695edj.8
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 06:41:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B+6tehcrd2uyNHl3KaPgd/Yf+iynmV5AXUKkcuI6qAA=;
        b=Kq+Mz8/QbMXNdtAP/QKM5kP8irn9c+O2pWa+w6+2fp4seDD3CQFDkH9HfcbjJD0dBH
         xxP7Ifqhy88YkOxyJI6d5NN2H7yjStSRC/VIrCPH5G9nuXLGMpx/awpBzTupc1SXYDPH
         O/Hh4PkxLXNXHrJtEoESwIeRB3U9aYYu0LB6kJf9vLaucuYv8wbl3VTFO3zP78GDKv4I
         1g8myNQ5+OblaPoicJKrRcmBY/xPG+PdUwnxw5eYNnZCbwK/zilmKHa0fiy0e9XOKYt6
         Rzrxrm9oUYt0RfdLHEo5ws1fFidOeEgeDKlnmvFSNUxPPwvEw+kpYXOh526v+XSCJw5O
         R30Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B+6tehcrd2uyNHl3KaPgd/Yf+iynmV5AXUKkcuI6qAA=;
        b=SpNUyo9Ljj088WzkwOh0fO5P2wHZmnUflbkew18ykanZvjDkjNMPXyTYyil7yYz9Aa
         VaNS1hog1VhnXjBqPkROZofsgF58ucmziAXrWk2+BNOQo7cxNnicdZFdPn5LRMRwx+sp
         nIwdRiB9iRnPWR7BT63FD8UKB2VyEbUeEz/ahc8MfZJGRsAnC5H3D705emA9/zmbh/r7
         qkO8zldtw9P2lobcAnez72IFydk4v9dUk9FwEBVBZVntnfTEFmkAjhI7dMSgYLsuBqrr
         KBROtUmSmoy7ofT/HVtgWVc2PgaYKdCLWSShuhj0gEISjjguOyNkS33WgnYWIhVMwhMj
         3RnA==
X-Gm-Message-State: AFqh2krOt1TIBqMSZFLz5Ht4EImN53y0oh9K755BhgL8KK1FlkZveYfW
	XPUGbR75KOiKZVp3HLT1c64=
X-Google-Smtp-Source: AMrXdXtfB/JngvNczxWH5UqWg0AeN75nhpi/BOVVu0oSmwh4l/o8DvojPnSn7DDvA3129IHq1YFMSg==
X-Received: by 2002:a05:6402:299b:b0:480:cbe7:9ee2 with SMTP id eq27-20020a056402299b00b00480cbe79ee2mr35443952edb.22.1672756885689;
        Tue, 03 Jan 2023 06:41:25 -0800 (PST)
Received: from ?IPV6:2a02:a466:68ed:1:c188:ece5:97bb:2332? (2a02-a466-68ed-1-c188-ece5-97bb-2332.fixed6.kpn.net. [2a02:a466:68ed:1:c188:ece5:97bb:2332])
        by smtp.gmail.com with ESMTPSA id n22-20020aa7c796000000b004833aac6ef9sm11872467eds.62.2023.01.03.06.41.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 06:41:25 -0800 (PST)
Message-ID: <41754798-a1f2-05a7-93d8-799907ed988b@gmail.com>
Date: Tue, 3 Jan 2023 15:41:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] bitbake controlling memory use
Content-Language: en-US
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org>
 <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
 <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com>
 <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com>
 <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
 <CANNYZj80qvYk5=OXDhGr78=pmzsBdxD1EbHDNrfKDf9_gUQyPA@mail.gmail.com>
 <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com>
 <e36d4afd-235a-a2f2-7272-9d9b49c02698@theobroma-systems.com>
From: Ferry Toth <fntoth@gmail.com>
In-Reply-To: <e36d4afd-235a-a2f2-7272-9d9b49c02698@theobroma-systems.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 14:41:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58900

Hi Quentin,

Op 03-01-2023 om 15:36 schreef Quentin Schulz:
> Hi Ferry,
>
> On 1/3/23 15:29, Ferry Toth wrote:
>> Hi Alex,
>>
>> Op 03-01-2023 om 15:18 schreef Alexander Kanavin:
>>> I have to note that even the most expensive 16 Gb RAM module is less
>>> than 100 Euro, and can be obtained for half that much. Surely you
>>> value your time more than that?
>>
>> Of course. And if I didn't I could reduce the number of `PARALLEL_MAKE`.
>>
>> But I have also seen bitbake attempting to build nodejs, 
>> nodejs-native and binutils in parallel.
>>
>> I think by default there are 4 tasks, with 16 threads, each could 
>> require 1GB RAM. Would you say, in such a case Yocto requires 64GB RAM?
>>
>> And with increasing #cores it gets worse.
>>
>> Not that it is too expensive to throw hardware at it, but it seems to 
>> be a fundamental problem that I would like to resolve. In my spare 
>> time of course.
>>
>
> Just to add that bitbake now supports pressure thresholds (since 
> Kirkstone release I believe): 
> https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-ref-variables.html#term-BB_PRESSURE_MAX_MEMORY
>
> If your recipes put enough pressure on RAM before one or two of 
> nodejs, nodejs-native and binutils gets scheduled, it would prevent 
> that. However I believe if the timing is just right (unfortunate) and 
> there's not enough pressure when all three recipes do_compile start, 
> they would all start and you would have the same issue.
>
Exactly
> Cheers,
> Quentin

