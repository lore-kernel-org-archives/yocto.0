Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 867C8C433F5
	for <webhook@archiver.kernel.org>; Fri, 29 Apr 2022 15:53:59 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web09.11818.1651247632636239272
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 08:53:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KhZ0Ojil;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id
 w17-20020a17090a529100b001db302efed6so6138038pjh.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 08:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to
         :references:from:organization:subject:in-reply-to
         :content-transfer-encoding;
        bh=SxdGTfPEhd3kDlkIXMyWdkW3xp44wlSNLpiMDTD9AoA=;
        b=KhZ0OjilMSdaRKwKzi8eYwwcxbFZWQwSEPYaoOWwBsNDDGeYtdfjeaBAoxdOE5iOBw
         +hUIIhXa8qRMLD/cmzZnReKyM1qVDUrMCzLq/SDXTPNkHno8NSfWF+AfDuIM/fxPlfhg
         4CARTJb7CNV8s/TBXujB1OQpJuC6YeJuPAjzqnyrZIxYSnuHb6r+5A5b2FBG/lCsNOg/
         OnkQI/BqdsvhCahCVW1PYtmygZyy+cu6uTSjOiPVbRDLXNJ3WT4EodDHlPnaRgcSyvcU
         LRQ/UbWtN/SR7Zal1OiXKwYjwGEK+4GaaOfZNI98R4dMRIhScTvM1MiEqG+bmQyuZliU
         IImA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:references:from:organization:subject
         :in-reply-to:content-transfer-encoding;
        bh=SxdGTfPEhd3kDlkIXMyWdkW3xp44wlSNLpiMDTD9AoA=;
        b=0r9XCWHuuSQUEVVK9lEqi3nNHXo4jjoMKY2KoLwyDZhor2GeELUCpa9r46ntB6ulXd
         uOn274eeIsYjVeNoOKAcRtBAM5p/RrDRou7FNWmx/b0Js7ydF1xNfKZzWTbSsvXITw79
         5YTnsUwnLKeKSbL+ObBLsFstFQ8bWe59pQ9lVGP+g5ngnkbTJ0Ha+xGUJRA1van+YY8o
         1BJBsyLdN78zcuI3EG7eisDr4TLSlivxn1hJzjfyHpTWpDrU+6U4/R4KyieO0lJrA1oW
         zCODhzTOCYPjHb7oUmgcfPMlgCKswCUvhe2b6hqczGzR6uAlZusXF6AXRloRMx9RJdGX
         R7YA==
X-Gm-Message-State: AOAM5336SaQt4jDBjvPddMeuTOccl79yHPyBXPASNXJmP+jHBTaE1lsl
	xMVT5KMXyFIpcDFcUM84v0DEMXaDjswIuw==
X-Google-Smtp-Source: 
 ABdhPJz7KJIrhBK4ugHcwBn+m4isogqnZ8yeiIMg7X6FrtR6zTWB1XiKdlccjnww9Qh4YK9k4glHCQ==
X-Received: by 2002:a17:90b:4a8a:b0:1d2:f7ba:8728 with SMTP id
 lp10-20020a17090b4a8a00b001d2f7ba8728mr4607668pjb.43.1651247631950;
        Fri, 29 Apr 2022 08:53:51 -0700 (PDT)
Received: from ?IPV6:2601:646:9200:a0f0:1012:a2d5:db46:bca7?
 ([2601:646:9200:a0f0:1012:a2d5:db46:bca7])
        by smtp.gmail.com with ESMTPSA id
 h19-20020a63df53000000b003c14af50634sm6671541pgj.76.2022.04.29.08.53.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 08:53:51 -0700 (PDT)
Message-ID: <7f7b75a8-356d-886b-429c-45460a804d0e@gmail.com>
Date: Fri, 29 Apr 2022 08:53:50 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.8.1
Content-Language: en-US
To: Alessio Igor Bogani <alessio.bogani@elettra.eu>,
 yocto@lists.yoctoproject.org
References: 
 <CAPk1OjHyko81NFi0FtGruE5Z8TvUiwsdyT9aOyKRSv5886Guvg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Subject: Re: [yocto] OS-less SDK
In-Reply-To: 
 <CAPk1OjHyko81NFi0FtGruE5Z8TvUiwsdyT9aOyKRSv5886Guvg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 15:53:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56964



On 4/29/22 4:51 AM, Alessio Igor Bogani wrote:
> Dear Yocto developers,
> 
> Is there a way to generate an SDK which contains the toolchain for
> bare-metal systems (i.e. MCU without operating system)?
> 

its possible to build baremetal toolchains, e.g. look at meta-riscv 
baremetal machines e.g.


https://github.com/riscv/meta-riscv/blob/master/conf/machine/baremetal-riscv32.conf


you can do

MACHINE=baremetal-riscv32 bitbake meta-toolchain

Which will give you a toolchain, but if you want more like what we can 
do with MCU OSes like freertos and zephyr take a look at

meta-zephyr (https://git.yoctoproject.org/meta-zephyr/) and 
meta-freertos (https://github.com/aehs29/meta-freertos)

> Thanks in advance!
> 
> Ciao,
> Alessio
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56953): https://lists.yoctoproject.org/g/yocto/message/56953
> Mute This Topic: https://lists.yoctoproject.org/mt/90774037/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

