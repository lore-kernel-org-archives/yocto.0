Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32B7DC19F2A
	for <webhook@archiver.kernel.org>; Thu, 11 Aug 2022 15:09:30 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web12.7565.1660230565757243620
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Aug 2022 08:09:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ImJqXsId;
 spf=pass (domain: gmail.com, ip: 209.85.216.48,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id
 t22-20020a17090a449600b001f617f2bf3eso5706981pjg.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 11 Aug 2022 08:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=L/oErriSl04+tL3mfPQFkBCMw4KC2WSiZ78HG1c670A=;
        b=ImJqXsIdnDObKnYrr7KpqPEP148afxqv4WNFN02vusDKacdvfQaZ74LtFN/9aEk2pj
         6r7Q2b2I86APKgwls2d9kGvdbAxznPYX3H18j3ZxVX3ym44J2qbCZ+1Qnr2M0RaHNgle
         LoQXAr5sya5jBg9vkCIbb2Cm1Z2Cew/ae5V+xyuwCQU9UMCb+Ry2k5nfSd61FmchCGHH
         T+yulkWG82hejmx3pzJsuqkDc3hC5/oLYuQhliVJvI9VrA00gTxZklbTZZ3HCWqB87tv
         il8bOSrRkWnArBr8cR47rFvgx+JeZ1AWmNhy/ABFyDj1z7PiGrCwUQC0Pour/aeBrC7u
         9k0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=L/oErriSl04+tL3mfPQFkBCMw4KC2WSiZ78HG1c670A=;
        b=W+Ytpku4ADWo+rrJDz6QA1f8xo6Sdw1T9/0u28EzCIisdgNCFcL13w5iYcPJ764yOT
         U9PJOFFgUVd/lMH7jUUzPLJZTf8bWso0fnJFBHDZeuM5VSJjqixnOrSuuhp5Ntz857YL
         Y1zDe4NELXUnzX/yuSioemIQEWL5FjQlmBDxfIz4YzqVvd5C0D1qJk+/Z6qvpTi3Z4bE
         rWJj+INH+5tig3bTpgE9l9LAOXZeSW5dyTXfJ5KiIcsydExstqDNfKHwnhOhpte8vi43
         rtSNPBzcHgv3quhzIrZmzajzalROe89tMBXOnja/LdpRzKAPxO77ie5sqsREWs67gUVH
         +ERQ==
X-Gm-Message-State: ACgBeo1V2W1XqyaTo33zirmP5od5rmc8UgaUnKe1EsmNQt0B4kCtUhXd
	f+WUFmKs3PHEnar+/Hem+a/N7iWNw4g=
X-Google-Smtp-Source: 
 AA6agR43oP95HCh+pvXsax/Xb/TERCqo+6ZAabQ1Ek2iCfV+d9Axnipkd97Z0MJ61ichDnWS5ByzwQ==
X-Received: by 2002:a17:902:b786:b0:16d:a8f3:b2c2 with SMTP id
 e6-20020a170902b78600b0016da8f3b2c2mr32870903pls.91.1660230564703;
        Thu, 11 Aug 2022 08:09:24 -0700 (PDT)
Received: from [192.168.18.39] (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 x15-20020a170902ec8f00b0016a0bf0ce32sm15333172plg.70.2022.08.11.08.09.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Aug 2022 08:09:23 -0700 (PDT)
Message-ID: <65d76b6d-40cf-9b5c-5d64-28a4a4ac4606@gmail.com>
Date: Thu, 11 Aug 2022 08:07:12 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
From: akuster808 <akuster808@gmail.com>
Subject: meta-security build failure: suricata
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Aug 2022 15:09:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57825

Hello,

I am aware of a new build failure with suricata. I think it related to 
the glibc update.

https://errors.yoctoproject.org/Errors/Build/150774/

I will have limited time to look into this in the next few weeks.

- armin

