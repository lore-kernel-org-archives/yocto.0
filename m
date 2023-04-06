Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22714C76196
	for <webhook@archiver.kernel.org>; Thu,  6 Apr 2023 19:10:07 +0000 (UTC)
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
 by mx.groups.io with SMTP id smtpd.web10.167785.1680808200769520541
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Apr 2023 12:10:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=aFNr2Ib4;
 spf=pass (domain: gmail.com, ip: 209.85.160.46, mailfrom: akuster808@gmail.com)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-17aceccdcf6so43401428fac.9
        for <yocto@lists.yoctoproject.org>; Thu, 06 Apr 2023 12:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680808200; x=1683400200;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OkZ9YOCaxC/r2lFjiYBHC+iOZyM/JkRCI/jGgmXM0eM=;
        b=aFNr2Ib4MzN1YUNVvQuxoNhqansTi2hC8xlUargg0pqcCQwDHz33pOP0Ey6jkYeLxN
         Ahdn3VhEjrUqPja1mnQ9kz5JjVBRv0s0/DyV4M7HX08Um2z/gB1sBxqc00ScasDOrh2I
         Xjzw9oxfTgvOfPDIJ5+MqByIrXcBtIGLhWsuVRTocjAFOuL3u4QzFKpL4u0Ga2KTiHGm
         kh6loWHLDAyJZlopSY9k+SYvBhsHK/QHtN1Ph4UNBxjM+iN5n2asK1vA8ob6v+IZoqGJ
         gMuEZOK+ixCouhBdrq2SPaQy2WlrTV80V59mnGzJ1DuAglW6FhltVUD4QPqCvqzOLdw1
         r3TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680808200; x=1683400200;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OkZ9YOCaxC/r2lFjiYBHC+iOZyM/JkRCI/jGgmXM0eM=;
        b=xPvk2kdhWR0iJjUNbAzp1FVEg/pW4pHhW4+ao1BDc7d2r+TBwGty3BjR8BAVmiMSrQ
         IkrR5Su8VU1/YWDxxil6YqzUuY1cz+O/TIE3EwdqUsej1qye4goIPL/0VNqXe+Hf/VXi
         ObYSaVB1HJHgyf31IPjZFZsAseZ28/zhQye8BrxMyQbPlBONb+z8FwuTLv8hr01NiKJr
         crcpLAqk9Ff/iZUa+s/4A9vRWw05KeKkUgZNYLxzIcH0XIlql9X1nFx3sH85hzrv4mMt
         swsz/m/Tn71O76Ebk9ICBgYrY2uPIgj6Bml2QKzIQgOjh4zYs5ewwgFE2TgrGWsoMDxI
         OZSw==
X-Gm-Message-State: AAQBX9craYCvRBBwgKrI+TbeefdmCoYTLDfhObOSpvd3xWjS2luDTuWI
	Lwp2HlRd0viD6MvayhEFT9M=
X-Google-Smtp-Source: AKy350YH4c3Gxbbu9J99Rf0IlHUx6O9rV8SHBVbaAoD4zwI3I5wYGEcQ4wNkx0VzOM9RhGf00ec1eQ==
X-Received: by 2002:a05:6870:d24a:b0:177:8faa:846d with SMTP id h10-20020a056870d24a00b001778faa846dmr239018oac.21.1680808199949;
        Thu, 06 Apr 2023 12:09:59 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:3249:c5b2:756:1575? ([2600:1700:9190:ba10:3249:c5b2:756:1575])
        by smtp.gmail.com with ESMTPSA id tw11-20020a056871490b00b0017eb6cc4609sm958753oab.39.2023.04.06.12.09.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 12:09:59 -0700 (PDT)
Message-ID: <05705d84-ff58-d462-e5c9-92c81538f4de@gmail.com>
Date: Thu, 6 Apr 2023 15:09:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] [PATCH 0/2] Update parsec and parsec-tool recipes
Content-Language: en-US
To: Gowtham Suresh Kumar <gowtham.sureshkumar@arm.com>,
 yocto@lists.yoctoproject.org
References: <20230406173903.23459-1-gowtham.sureshkumar@arm.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230406173903.23459-1-gowtham.sureshkumar@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Apr 2023 19:10:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59638



On 4/6/23 1:39 PM, Gowtham Suresh Kumar wrote:
> From: Gowtham Suresh Kumar <gowtham.sureshkumar@arm.com>
>
> The patches update parsec service to 1.2.0 and the parsec tool
> to 0.6.0 releases. The RSA OAEP OEQA tests for parsec pkcs11
> backend is disabled.

Fyi, please include meta-security or meta-parsec in the subject 
otherwise my filters wont put it in the correct location.

Anyone want to Ack/Nack/Reviewed-by this as it seems several folks where 
involved in earlier updates?

I will add this into my next build series.

thanks,
Armin
>
> Gowtham Suresh Kumar (2):
>    meta-parsec: Disable RSA-OAEP OEQA tests for Parsec PKCS11 backend
>    parsec-service: Update parsec recipes to 1.2.0 and parsec-tool to
>      0.6.0
>
>   meta-parsec/lib/oeqa/runtime/cases/parsec.py  |   8 +-
>   .../parsec-service/parsec-service-crates.inc  | 460 ++++++++++++++++++
>   .../parsec-service/parsec-service_1.1.0.inc   | 223 ---------
>   ...rvice_1.1.0.bb => parsec-service_1.2.0.bb} |  14 +-
>   .../parsec-tool/parsec-tool-crates.inc        | 346 +++++++++++++
>   .../parsec-tool/parsec-tool_0.5.4.inc         | 176 -------
>   ...sec-tool_0.5.4.bb => parsec-tool_0.6.0.bb} |  10 +-
>   7 files changed, 826 insertions(+), 411 deletions(-)
>   create mode 100644 meta-parsec/recipes-parsec/parsec-service/parsec-service-crates.inc
>   delete mode 100644 meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.inc
>   rename meta-parsec/recipes-parsec/parsec-service/{parsec-service_1.1.0.bb => parsec-service_1.2.0.bb} (92%)
>   create mode 100644 meta-parsec/recipes-parsec/parsec-tool/parsec-tool-crates.inc
>   delete mode 100644 meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.4.inc
>   rename meta-parsec/recipes-parsec/parsec-tool/{parsec-tool_0.5.4.bb => parsec-tool_0.6.0.bb} (68%)
>
> --
> 2.17.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59633): https://lists.yoctoproject.org/g/yocto/message/59633
> Mute This Topic: https://lists.yoctoproject.org/mt/98110111/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


