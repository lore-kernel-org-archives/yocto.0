Return-Path: <ptsneves@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFC8EC43334
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 08:33:29 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web11.9686.1654590802587518103
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 01:33:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TaQC1zd0;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: ptsneves@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id w20so5506144lfa.11
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 01:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=VgcHvu4GM0cUzEvIg2Dj4za7bv+hPkRA6cpZ/g2TnO8=;
        b=TaQC1zd0WBnLqyjv3QRU231xCauQdphEHf9VmgY+hVDShTPirYPyssf5PIx3jfv3XE
         79OIgj5RBicSL3eBszFVPLZQpYjf/I6KjrsvdiJ8V7hSxym6npO+iMbHInFjmxnFPLKv
         HbYG2VvGUBWiDEy8c1axzxzS3wfid6LJi04bNjl//vH9hGED6rPDRR2gZimc+UmvXGl+
         QWxVljBItKympleHUOvR7BZnUhiv3z97s6dJ4hH908eSpuMhRq+56Ofvv+57uClF1mG4
         Dg+ABGJvNKcvXJFwnMVH/K6zYzODRhDM2FPV2LBa+5q+dcZ17FgHA0X6INl/ahx9sRVv
         +KvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=VgcHvu4GM0cUzEvIg2Dj4za7bv+hPkRA6cpZ/g2TnO8=;
        b=KuCXWGYsPYN7X0mmbmwoTM3NsYWswvq2LOwmCSpAwg3PNNcDszYysdGUtKXVKKlffy
         rgTdfDLq96xrC6H9SOKBtpOB38eu7ltVKbEt2nBwpQiYLKkexlwIV45FxcpyOyWUyNkc
         NjaGSKO3BbVbmDzXyLjJxTJMhSZqrbQNUSI2k0bjWGsLiNoHY0UIhaRuiqT27XPh3HGk
         Izh7z2uSLun8tXI/7+5D0jhqXjaUEgKwn8jRJdBLYi1lJce6WXyCI/85jaUZRrQ4kAj3
         6IULWsGlmGSWVL+f6iYcbc++jueifPqaAnHDZTkx6RQYu6mlYySODnnr6eR8BkJ5o4bn
         7faQ==
X-Gm-Message-State: AOAM530CQ1KyIaHRkX/rNUQFAzqIsMtOma6NZ49BGhNTZT/jcJKzEkMh
	OjPoHJEhyIPzueIzSG8sNg==
X-Google-Smtp-Source: 
 ABdhPJx50Qhi29nkZ1KGfG1k50OZdPfyD/bShdL0yzdkwX1b8yFCIZkGG+QfswnkEyCYQyg+zNPmQA==
X-Received: by 2002:a05:6512:15a2:b0:478:ffaa:89 with SMTP id
 bp34-20020a05651215a200b00478ffaa0089mr17862416lfb.658.1654590800388;
        Tue, 07 Jun 2022 01:33:20 -0700 (PDT)
Received: from [10.67.202.36] (85-128-83-172.static.ip.netia.com.pl.
 [85.128.83.172])
        by smtp.gmail.com with ESMTPSA id
 w25-20020ac254b9000000b0047943248581sm872348lfk.33.2022.06.07.01.33.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 01:33:19 -0700 (PDT)
Message-ID: <b06583f9-7b00-f5b1-a2c6-b257bbab24b0@gmail.com>
Date: Tue, 7 Jun 2022 10:33:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] [PATCH 1/2] manuals: SYSTEMD_SERVICE allows multiple
 services
Content-Language: en-US
To: Michael Opdenacker <michael.opdenacker@bootlin.com>,
 yocto@lists.yoctoproject.org
References: <20220603163521.146659-1-ptsneves@gmail.com>
 <c62f5f40-b99d-5682-6310-0cc9af10ff25@bootlin.com>
From: Paulo Neves <ptsneves@gmail.com>
In-Reply-To: <c62f5f40-b99d-5682-6310-0cc9af10ff25@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 08:33:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57276

I think so, given we have a deprecation mechanism enforced in code.
The confusion definitely came up, and this is why a documentation 
clarification was needed.

Paulo Neves

On 6/6/22 18:47, Michael Opdenacker wrote:
> Hi again Paulo and developers,
>
> On 6/3/22 18:35, Paulo Neves wrote:
>> State that SYSTEMD_SERVICE allows for multiple space
>> separated systemd services
>> ---
>>   documentation/ref-manual/variables.rst | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/documentation/ref-manual/variables.rst b/documentation/ref-manual/variables.rst
>> index 367b4674e..ed52c3508 100644
>> --- a/documentation/ref-manual/variables.rst
>> +++ b/documentation/ref-manual/variables.rst
>> @@ -7656,6 +7656,8 @@ system and gives an overview of their function and contents.
>>         When inheriting the :ref:`systemd <ref-classes-systemd>` class,
>>         this variable specifies the systemd service name for a package.
>>   
>> +      Multiple services can be specified with each one separated by a space.
>
> Wouldn't it make more sense to call the variable "SYSTEMD_SERVICES" instead?
> We could add a new variable and deprecate the old one.
>
> What do you think? Would it be worth the trouble?
>
> Cheers
> Michael.
>


