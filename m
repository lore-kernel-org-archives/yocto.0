Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB97C5B54A
	for <webhook@archiver.kernel.org>; Wed, 28 Aug 2024 14:53:45 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web11.15396.1724856820582635533
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Aug 2024 07:53:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZbZsuI4B;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a8682bb5e79so904144966b.2
        for <yocto@lists.yoctoproject.org>; Wed, 28 Aug 2024 07:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724856819; x=1725461619; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MLL/6EgpAoV94QsEvPOwuULNB5H+BglzCDktB05/J4M=;
        b=ZbZsuI4BFSNza2mYJ9/IkM2DRnU1R0SWMVv48d7Nr0XJ2PtW6aXRiEhtag2bNWcjvm
         hcGkefBz2Xxa91sHSjjgxmEY2QmRd88Gpm86fh3eStTa1wJA835Kqywuru8yI6qOiLMX
         J6fBAFcs22Xm5NNfhqzXnipjSfP+9hc6PAS0GVBRcIuo/l9Kp5gVfflNbLBvMHUso8z5
         sEHzoiKBmGsn1WJqAJfWwaQMEDZsxvi1a2gXX8qPO1vfuF/Gvn98Mltgz1+my/HO1E7a
         QShwQXVkoELoRT7MBi8a5SZO6ud1mK2pN6owk8wQ+Pw8ZnkKdhgqK3qsRYENPA4au0Mi
         NbLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724856819; x=1725461619;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MLL/6EgpAoV94QsEvPOwuULNB5H+BglzCDktB05/J4M=;
        b=cIe1UwL9RLi0sPgHeheCnhltZ1EXhxHvseGAqBojK899asBHopzdAatAcHHY1NTF7G
         +YHaQQFRMqEBEPQPK9SD87fF7CHEJroh7/abwMwnZn7b0fY8lDVXHCJCJZfxkoJz76eN
         X+O9V1wIqGsc6vu9WMCU6jdIiwLu6W/JLGw8jIDXX+7HfXdVHKWVXHXMQKoVYMKk36b1
         TB6yVHFFq6iDl129S1aetBqry9m8F/+ozxTtT1KaNT7BD0weLkLz8Ek1d9QrBBu1vG1O
         2uUbBD4ztQIO4UhmH8LyjJPnHmuLKJ9rwrQfyY3med0035+UErlDOq/CIA7cZ9DwhPmT
         +DXQ==
X-Gm-Message-State: AOJu0YzmIXUUXHZLkHo1WqPlInk7jYpCiJZUtuBT2iSbUTMTKXst46I1
	8y+yaYumSNCTyi061lw87RgDy9ZdquIgRlRX0iFKVY2xvj2kUtR3Oao2Yw==
X-Google-Smtp-Source: AGHT+IGp6+OOpaWp1RXB7MLuY2ecdcf0UIX8efkzlIg2nCWag868+EqqarAt5Hsm3y5LUhMEDLZ8/w==
X-Received: by 2002:a17:907:86a4:b0:a86:9fc2:8395 with SMTP id a640c23a62f3a-a86a518b2ebmr1299603666b.11.1724856818360;
        Wed, 28 Aug 2024 07:53:38 -0700 (PDT)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a86e5486994sm258811766b.14.2024.08.28.07.53.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2024 07:53:37 -0700 (PDT)
Message-ID: <e1a9323c-7e3c-452f-ae40-1cb99e8ce52c@gmail.com>
Date: Wed, 28 Aug 2024 16:53:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Error occurs when running Yocto4 Kirkstone build on
 Ubuntu 22 to install npm-related packages
To: yocto@lists.yoctoproject.org, e82803@hotmail.com
References: <3RLD.1724837642951103684.bDnA@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <3RLD.1724837642951103684.bDnA@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Aug 2024 14:53:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63759



On 8/28/24 11:34, e82803 via lists.yoctoproject.org wrote:
> receipe do_compile_prepend() function is as follows:
> 
> SRC_URI += 
> "https://nodejs.org/dist/v14.20.1/node-v14.20.1-linux-x64.tar.xz;name=nodejs;subdir=nodejs"
> SRC_URI[nodejs.md5sum] = "6616e5d1380813f96a8ece5d5606eca4"

Is there a reason for grabbing your own node binary instead of 
inheriting the npm[0] class? During compiling network is disabled by 
default, but the npm class can be used to fetch all the required 
dependencies (like yarn) in the do_fetch step, where network is enabled.

[0]: https://docs.yoctoproject.org/4.0.20/ref-manual/classes.html#npm

