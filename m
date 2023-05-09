Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3926C77B75
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 11:06:31 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web10.29033.1683630388945771786
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 04:06:29 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=ePQLb/qZ;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-55dc3431c64so30375587b3.2
        for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 04:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683630388; x=1686222388;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EkgZMtEgW8IkkkKFVkirT4GBRQjuH2L/ZRgFjE0pHb8=;
        b=ePQLb/qZ4cUCaZmT8QqPvwf9PNTiudkzjV/X3GHC74wJ7HlHVqCxj/zqDjyZ6ETRlC
         VgiOpDXubA2Q4sKBdhJEv+ucGs8smrQpBXSFUTORAnReaxxxR93mHTE2atMXTf9qTEov
         0O3woOfQwerUgG5HDUthyNbSyVgWom4B/CDH6okDGOU4cPJnOtbHX96jM9kBDQROixVt
         6U4VVlgp+Jf7HzljT6a+BLUQj1Fg98fKR4KITu2RXlcyIudLPhe5sZ+DkIt5FdOwm367
         6lNXoT/D8IiTy/++EMaUnNRSUsVBsH72JPY0Po16K/kMRy49PZsUH9swWA7DIoB2SfDy
         kkzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683630388; x=1686222388;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EkgZMtEgW8IkkkKFVkirT4GBRQjuH2L/ZRgFjE0pHb8=;
        b=U/wgkzaPI+6yymeP2m2iId2HW5AQJwAikc2lrdXnQdErwAolvcOfcR0CgrcZHBPtFQ
         YKJAIqReB4w2XRy69lHNUFRSijLG4wnfZfvlPOA2rw8CanFIMSyrxPq70vTIrYiZmcoN
         HhUKGpwXV3hy/FLJ11agvfdrqmmpsiUS0QPdojUkxYgBZQMXfSq+5CRsVjWar6Lz7rPs
         3rEejuyULckiwczpN9OppIeDizru9nH0ojoVPZTSQx8QTygmejk2zQr1ys2VXCar2rBJ
         v+dsjTZyrohOHSnhUe1hPzibVq/pq7fDBOdajAmGGQe/ZWEQuP5bItzqtMBJcWkWJ/83
         GpTQ==
X-Gm-Message-State: AC+VfDzEI9Y2Mf7eZ30NZ9ie0Ab90urQOUHXjl+CDSL18OLvsaNh1GJ3
	LYJqcwYZBg+cdXY2x9c3WJI=
X-Google-Smtp-Source: ACHHUZ4K+zVNn3HdKmtAR6YZQcLWgnvcztvCV/+urViYLW7HQdUdKqtMlAQ2wT2OJWUlMFzkFB92rw==
X-Received: by 2002:a0d:f901:0:b0:54f:752e:9b63 with SMTP id j1-20020a0df901000000b0054f752e9b63mr14515675ywf.15.1683630388074;
        Tue, 09 May 2023 04:06:28 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:183a:1604:2591:7a1e? ([2600:1700:9190:ba10:183a:1604:2591:7a1e])
        by smtp.gmail.com with ESMTPSA id m19-20020a819e13000000b00556d4aac066sm3183323ywj.133.2023.05.09.04.06.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 04:06:27 -0700 (PDT)
Message-ID: <48440cb3-879f-0d08-723b-bcc521f14453@gmail.com>
Date: Tue, 9 May 2023 07:06:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] [meta-parsec][master,mickledore][PATCH]
 meta-parsec/layer.conf: Insert addpylib declaration
Content-Language: en-US
To: Peter Hoyes <Peter.Hoyes@arm.com>
Cc: yocto@lists.yoctoproject.org, Diego Sueiro <diego.sueiro@arm.com>
References: <1759D2D1FA358DEB.32698@lists.yoctoproject.org>
 <175BA279740811C9.14539@lists.yoctoproject.org>
 <e88aa909-488e-cdc1-f9d5-8b7bd722b1dd@arm.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <e88aa909-488e-cdc1-f9d5-8b7bd722b1dd@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 11:06:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59917



On 5/9/23 2:43 AM, Peter Hoyes wrote:
> Hi again Armin,
>
> On 03/05/2023 13:38, Peter Hoyes via lists.yoctoproject.org wrote:
>> Hi Armin,
>>
>> On 27/04/2023 16:01, Peter Hoyes via lists.yoctoproject.org wrote:
>>> From: Peter Hoyes <Peter.Hoyes@arm.com>
>>>
>>> Yocto mickledore introduced the addpylib directive for explicitly 
>>> adding
>>> layer paths to the PYTHONPATH.
>>>
>>> Standalone OEQA test suite discovery does not require this directive 
>>> but
>>> it is required to import test cases from other layers, e.g. to extend
>>> and modify the test cases.
>>>
>>> Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
>> Is it possible that this small patch missed your filters?
>>
>> Cheers, Peter
>
> Thanks for merging this patch, but I've just spotted it in langdale 
> too, which is breaking one of our internal builds as the addpylib 
> directive is incompatible with langdale's Bitbake. Please could you 
> revert this patch in langdale and apply to mickledore instead.

Done. thanks for catching that.

BR,
Armin
>
> Thanks,
>
> Peter
>
>>
>>> ---
>>>   meta-parsec/conf/layer.conf | 2 ++
>>>   1 file changed, 2 insertions(+)
>>>
>>> diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
>>> index 0a71694..7d272a2 100644
>>> --- a/meta-parsec/conf/layer.conf
>>> +++ b/meta-parsec/conf/layer.conf
>>> @@ -12,3 +12,5 @@ LAYERSERIES_COMPAT_parsec-layer = "mickledore"
>>>     LAYERDEPENDS_parsec-layer = "core clang-layer"
>>>   BBLAYERS_LAYERINDEX_NAME_parsec-layer = "meta-parsec"
>>> +
>>> +addpylib ${LAYERDIR}/lib oeqa
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#59853): 
>> https://lists.yoctoproject.org/g/yocto/message/59853
>> Mute This Topic: https://lists.yoctoproject.org/mt/98538531/5715260
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub 
>> [peter.hoyes@arm.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>


