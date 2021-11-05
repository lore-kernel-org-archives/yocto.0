Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D76C433F5
	for <webhook@archiver.kernel.org>; Fri,  5 Nov 2021 17:29:39 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
 [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web09.8847.1636133378908262780
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 10:29:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Dm8e2u2D;
 spf=pass (domain: gmail.com, ip: 209.85.210.173,
 mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id x64so9485654pfd.6
        for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 10:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=nfZaKWyaWbC/XRNSNhJKQ2Ui1CrZb3iBVmEmLqo7wjc=;
        b=Dm8e2u2D2xKSYiC3JinwY2JBnFWHrnUJH7Wzta3zvkKc/mnoSHcujFwLVc6MeeCEDx
         3zBhvgLMp8p4XmoESWbrfUBA+aorHe9C18/abCmRcLPW8J84PsTjlwSUbQerz2Q82NqS
         nTimoJKqEIHlcWCwD6XGGs9xAWwOEkIT6IeyyVo9sv+v1J17qeOv0R7VB1hbmOc5zYMp
         FF0SWMhsiDBU2w5JG9Tr6X/xEqoe4HdchOa8kAZVnAJaXdxvjz3nmtX0tnMPa71vVcAO
         cxaAUnGdHxLmLutNyze3D7BLxhXzjR+zldUHWX1bhnKajZTgzRUcm3iw28mAlltoCYFE
         ImwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=nfZaKWyaWbC/XRNSNhJKQ2Ui1CrZb3iBVmEmLqo7wjc=;
        b=GDJqgEjk1Va8uDTmR1hqJlBnyhsLrKiu0C0Hi7AD5nePFZltz4Iq1r7cFRhbQSxpP3
         bfq7oTVAOchbPQNCM2SLpt5OWrAOHXz9ByHKfiKsZ3HkaskiptJIJRjEVVZkn6hzSfsu
         1ZC1QEoxV0uJ1Jl6T4FCcpNXqwFeng2+LmUzkUhL9D0FEW3ttbajn3BSsh39A5pd5F5T
         xbeow2st7wTjGf1ZUHsodDP3vtwbwjOmXFqNA3A38cyqhe5PmjuLVfVv06CwNoewJ8ya
         7cenk/oN7P3E7NfL9hfa20PqbUBrC0yfWTas1yWJXaQbOylwT05Nvmh2z6poqjxVzcQb
         KPrw==
X-Gm-Message-State: AOAM531qhDxf29TG7KMBIZfY4uaEvhcGzXuKKdWHMfp6j93lXLcLziAm
	GJkHml1HX8KaR3xNV/qiZNk=
X-Google-Smtp-Source: 
 ABdhPJzDVmWmAWZuPyC2WMb7uwLB7l9INqTswboP028R2Oa/A8vBp8WYYUNVOIPnEDOiZa/vzKj+eg==
X-Received: by 2002:a05:6a00:b84:b0:492:72e7:b30e with SMTP id
 g4-20020a056a000b8400b0049272e7b30emr17832851pfj.65.1636133378268;
        Fri, 05 Nov 2021 10:29:38 -0700 (PDT)
Received: from ?IPV6:2601:646:9200:a0f0:9103:5ab5:3527:3728?
 ([2601:646:9200:a0f0:9103:5ab5:3527:3728])
        by smtp.gmail.com with ESMTPSA id
 mr2sm6704903pjb.25.2021.11.05.10.29.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Nov 2021 10:29:37 -0700 (PDT)
Message-ID: <61d3f746-107b-6dba-19dc-8e8786d6f26d@gmail.com>
Date: Fri, 5 Nov 2021 10:29:37 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.3.0
Subject: Re: [yocto] #golang Build tools required during go generate
Content-Language: en-US
To: sebastian@mapped.com, yocto@lists.yoctoproject.org
References: <JnQS.1636122755681200580.kFay@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <JnQS.1636122755681200580.kFay@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Nov 2021 17:29:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55252



On 11/5/21 7:32 AM, sebastian@mapped.com wrote:
> Hi yoto-devs/users,
> 
> in order to get a golang application to run which relies on `go 
> generate` calls I wrote special recipes for this tools and include them 
> in my original recipe. However I always get a segmentation fault.
> In the tools (which happens to be based on golang too) I use [1] in the 
> recipes and in the recipe I want to use them I include them via [2].
> However if for example enter the dev-shell or during build I get a 
> segmentation fault although the binary seems to be compiled for the 
> right architecture (host-amd64).
> Is there something wrong I try to use that?

do you have stack trace ? that might give some more info on whats going on

> 
> Sebastian
> 
> [1]
> inherit go-mod
> BBCLASSEXTEND = "native"
> [2]
> DEPENDS += "random-go-tool-needed-by-recipe-native"
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55250): https://lists.yoctoproject.org/g/yocto/message/55250
> Mute This Topic: https://lists.yoctoproject.org/mt/86841696/1997914
> Mute #golang:https://lists.yoctoproject.org/g/yocto/mutehashtag/golang
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

