Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 452FBC54798
	for <webhook@archiver.kernel.org>; Sun, 25 Feb 2024 17:14:32 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web10.1179.1708881266783910718
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Feb 2024 09:14:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JMdGB38W;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-608841dfcafso19024667b3.2
        for <yocto@lists.yoctoproject.org>; Sun, 25 Feb 2024 09:14:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708881266; x=1709486066; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xVaAcWe7H+ojZdyQdaSvkCXHni4nKZ0F809MkNd+RRY=;
        b=JMdGB38W0HEFaKppCGC7S3LimMFIL6Zi0vKxkNZ2GLDoJbRL9ZZigXSoVFvZBArkJK
         ONB1mI7mh+57VsRRHgt2aHjhMagsHuGtYeNxAWAyp+shfrEGE8B4B7aSHpJZuv+YVrmJ
         ExHUCNE49gMbAp+1ipJQ+e9Vzr3gosUQ01mYrgmg/RnUgUsT3Yq6hfzLS40MIv0X7KjW
         3w3pHqxm9ZtFf2faQZiTqbrf/uINBr9sfyqc4HFvKvtdUaX5ZNKMwApWmp4Llqo2niIv
         Qp66nhmXZHaojQvr2PkdaFTVf8Js90Y0BpUh7d2kiVvJiDkczGOVruRCt6KtiuBlYreL
         bPAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708881266; x=1709486066;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xVaAcWe7H+ojZdyQdaSvkCXHni4nKZ0F809MkNd+RRY=;
        b=eMfeTWHqauYly4ekSVCPkTcTNp9rg+TzJg72gUhw84FhUiVVcdLxpvgAvriqAtadht
         uyzEuZN02uvxYUFR1VEGvrp8+AgrPlO5Sn/Nikll3GIt6AoeJxOFwc9Iqa89mE7jTdpv
         WamL1meMMEnIvhNd7WLk6+mck6ZQFdioZv8jMUaH4B6AuPTt0pzRgvr0Ja1pTYhe92/E
         52gmueewtQe4AB9hFvrxA6wkGvURL5SCLTPChDunkunPMEXrUaYGsb/J5Er8rrOanUmm
         M/UJ9V07fGVfgDqMbMTHj+SX5W/zxaRF4gFfKI+EMScwSBzsCJNn7U2quSpzvaZS0SIx
         9LEw==
X-Gm-Message-State: AOJu0YwNCX4z8+44kWuI7dNPEahs2JLcmMUjipa02X8CbYSGFdU3u+oq
	4qgcSOebTImpYBgE72nddMnfGy5aoN6cXhszcOBi+LfYHEcTJ4IC9Rim1gRy
X-Google-Smtp-Source: AGHT+IE3pEBCFcyA1Pd8SWb4AG+Rw5Vu4NVmy5pRgv5vQU+rmUgAaAJXbi9N34glEW9qEImF6Urn8w==
X-Received: by 2002:a81:451e:0:b0:607:c8fc:9890 with SMTP id s30-20020a81451e000000b00607c8fc9890mr4434675ywa.26.1708881265675;
        Sun, 25 Feb 2024 09:14:25 -0800 (PST)
Received: from [192.168.18.232] (108-243-27-252.lightspeed.tukrga.sbcglobal.net. [108.243.27.252])
        by smtp.gmail.com with ESMTPSA id c11-20020a81b54b000000b00608d9358ccbsm659020ywk.132.2024.02.25.09.14.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Feb 2024 09:14:25 -0800 (PST)
Message-ID: <c51d6078-7d98-418b-8891-37127698d637@gmail.com>
Date: Sun, 25 Feb 2024 12:14:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-security][PATCH] meta-security: Drop ${PYTHON_PN}
Content-Language: en-US
To: yocto@lists.yoctoproject.org, anuj.mittal@intel.com
References: <20240220173209.1761469-1-akuster808@gmail.com>
 <bfdc6fb984b4398d181b73f8e41160808331e82c.camel@intel.com>
From: akuster808 <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; keydata=
 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
 ApZ86eOP
In-Reply-To: <bfdc6fb984b4398d181b73f8e41160808331e82c.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Feb 2024 17:14:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62599



On 2/23/24 12:22 AM, Anuj Mittal wrote:
> On Tue, 2024-02-20 at 12:32 -0500, Armin Kuster wrote:
>> +    pyhton3-ctypes \
>> +    pyhton3-fcntl \
>> +    pyhton3-io \
>> +    pyhton3-logging \
>> +    pyhton3-misc \
>> +    pyhton3-shell \
>> +    pyhton3-threading \
> pyhton3 -> python3 ?

thanks for catching that.

BR,
Armin
>
> Thanks,
>
> Anuj
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62573): https://lists.yoctoproject.org/g/yocto/message/62573
> Mute This Topic: https://lists.yoctoproject.org/mt/104471902/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


