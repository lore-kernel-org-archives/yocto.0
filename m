Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C040D68BCB
	for <webhook@archiver.kernel.org>; Fri, 15 Nov 2024 16:22:23 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web10.24987.1731687738035986466
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Nov 2024 08:22:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=L6l3cDpS;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a9ed49ec0f1so341046466b.1
        for <yocto@lists.yoctoproject.org>; Fri, 15 Nov 2024 08:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731687736; x=1732292536; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jeCh6a73985ewvZAKL6p7OJzfS1zFminWdFOOSCHxsM=;
        b=L6l3cDpSX9yaKj6Qm429wcvG57ob6iniaAVFi6btDxU/VJSieQ5QdCqB+MU86HJOmr
         3OJ+irOFQLQjAa5/l/3eK6BS5r72kqzZiTWC+5yblyLtWs9OfBFcwnkoLm8em+eNDf2T
         h7tYwKVTwLQivLsu+YJLQ3KoyL/pFxXmoVrGmHZlLDIYw5nRph7Bab2SODepgJ0tkQRV
         iX1zSFTKWRetFP85nDzPArGCa/IbhBikFFsEZWUmYwfqTt4O4ohYykuL9CTN3fcLqcYD
         Dt4JvpJSMdavCgV2iZmU0JO583mL259RvYil1WrkYgHwtyKjMvptOgWXnopxR1/ri0lO
         haFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731687736; x=1732292536;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jeCh6a73985ewvZAKL6p7OJzfS1zFminWdFOOSCHxsM=;
        b=oj3ivP8jm4XOxTB2PKGGFmmUEu/JBEi0RZOwdSFeJ6k8C7rFtyouXofNC33rueNgl4
         h6FeLCa6u/8ZbCPnnqL9j7R/tZBF7zCZf7Rk76xThc64Nngb7tDN8ZbPA/S7GMhkwKAu
         fMFWkzJIDgCiEHcFNXCKTtWeHV09yIst2WYd0IeBabXrtXwYMwppToocLb264FaMx+i0
         ZyQCSPGvpL2+XvZhgCMVFvWCEchtvjpuZFt+5xjNgISJ502OG9TcGr1AZNanh5kbzqFZ
         iu41qxZ2V8r0TL5U2pL+xVxm8HJfXukN/RjdKyHURm+LQge9WtRyUlq/irHJn4gn2ic9
         BCcw==
X-Gm-Message-State: AOJu0YxKcxHf8ujb9Ed6ehgGXOteahv7YAumc8xiK9bN4ySQpXbjf6UM
	y7gbszB2FLeDS5r0jf/ip0yTXDja8XovXfZDq48fQHkbRc89foRmNV0zBA==
X-Google-Smtp-Source: AGHT+IHyYZfn8gB7Yz5U0xhQvgqqInZ+ggPHLnUeQhT4d6JWFibmqqgD+a7TcximzsY5UzLOkpJPaA==
X-Received: by 2002:a17:906:478c:b0:a9e:b14e:f912 with SMTP id a640c23a62f3a-aa483412301mr286299966b.23.1731687736112;
        Fri, 15 Nov 2024 08:22:16 -0800 (PST)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20df4fc07sm192139266b.44.2024.11.15.08.22.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2024 08:22:15 -0800 (PST)
Message-ID: <2bb1bc17-0c88-4f39-aa6c-de503325471e@gmail.com>
Date: Fri, 15 Nov 2024 17:22:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] kernel headers missing head files when using SDK
 generated from populate_sdk
To: yocto@lists.yoctoproject.org, crane2018@gmail.com
References: <29094.1731350335316967481@lists.yoctoproject.org>
 <18918.1731594586526186591@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <18918.1731594586526186591@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Nov 2024 16:22:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64280

Random idea: have you tried including kernel-devsrc when generating the sdk?

TOOLCHAIN_TARGET_TASK:append = " kernel-devsrc "

This supposed to include the final files from the KERNEL_STAGING_DIR, 
which should have all the generated headers and other stuff.

(As a quick check having this task, e.g. I could find my board dependent 
cpucaps.h and headers from arch/arm64/include/asm folder also in my sdk. 
Haven't loaded tried to load the source in an IDE nor tried to compile 
anything with it, however.)

