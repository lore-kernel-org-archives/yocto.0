Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A58F2C001DE
	for <webhook@archiver.kernel.org>; Sun, 30 Jul 2023 13:11:50 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web11.73136.1690722709670489544
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 Jul 2023 06:11:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=RjIU25vX;
 spf=pass (domain: gmail.com, ip: 209.85.128.174, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-583b0637c04so51337727b3.1
        for <yocto@lists.yoctoproject.org>; Sun, 30 Jul 2023 06:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690722709; x=1691327509;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S+yjEUxFR2Z5LjVJiq5BiAtHIn9Xm0tahPPtROvqsdc=;
        b=RjIU25vXHyxLaCpojJI0CCEPn5pFKI2ef0HSvNQuYLU5APKxyGBcBpSB65mj7vbUOF
         O2iTN4bB824A9R2ubEHwkQ/VY5DGl8RamJFqHEpCpCL1VZUpClSupQzKgIcjC2x9N33D
         hdzQV6job2N2IWn1CYJlp7ccJvfD0Yj5q4TT0SI1jieY4BnRibcq3WPO5o6MIsBn5beE
         nT1wrneKprtQYrfZjqYr7s8nxJYUspmr/op0O5Inn1SF0VRkuev5BWv6L4dWQ6WkUYVB
         w+kfXxxt48nNAKA6goKuuCcNeGxHdayxnYF+TakZROCBXKBkBEywPnJn/Sy3VsyfsYiS
         DVvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690722709; x=1691327509;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S+yjEUxFR2Z5LjVJiq5BiAtHIn9Xm0tahPPtROvqsdc=;
        b=kwldMBi+AL5Dp+e7oKhnv0/pKr0G7wCCd5dtHs9OVbqVTqFgfFxAYMDprsPyeyQfv4
         rPbe0tjDvpcabAo9bHQIrnEWsKG77P6OByyhKlEkmp1DMBlcZ0O+2GHhOcTwCT4wDqlv
         EVKyO/EZPAw5+IH45bF832YWtahWJowWSldn8gChRwY/PBpi2fd3U1668wwfsWlGhJgG
         +Ut5VzQY96BaxPU4O3NrM34xgkTJ3Km1CAKq8ycmPWYN3dhQhxnv225eq5mjdb0UX4Mc
         9L2OkNVD9XCGfTi4QZqKq/IrFgHVNWpXZnOZulSr3uCK31svw/z/BSNTChL8gqhp8jtd
         XG4g==
X-Gm-Message-State: ABy/qLYs0T6LRE0kfU/c8Qi70N38GKYfrB8w8zATL5lvU+xybk07Yga1
	QKXAeis/U0BIKqBgo//BbJ4=
X-Google-Smtp-Source: APBJJlH2Pc3XKZD9lOjq//wBZZ2DXApZKMeci7wxVB7r7QkzUUe/xBCzzqCBP37XUn/hP3AOrIVBaQ==
X-Received: by 2002:a0d:d904:0:b0:56f:fd0a:588d with SMTP id b4-20020a0dd904000000b0056ffd0a588dmr7712421ywe.8.1690722708828;
        Sun, 30 Jul 2023 06:11:48 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:4bc3:732:c84f:6e7? ([2600:1700:9190:ba10:4bc3:732:c84f:6e7])
        by smtp.gmail.com with ESMTPSA id g84-20020a815257000000b00583a8754bbcsm2329981ywb.108.2023.07.30.06.11.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Jul 2023 06:11:48 -0700 (PDT)
Message-ID: <68455719-76e2-e33b-358f-ef02cb4c59b1@gmail.com>
Date: Sun, 30 Jul 2023 09:11:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] [meta-security][kirkstone][PATCH] tpm2-tss: ignore
 CVE-2023-22745
Content-Language: en-US
To: "Marko, Peter" <Peter.Marko@siemens.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <176D40CC2C1720E8.4592@lists.yoctoproject.org>
 <AS1PR10MB5697B9C288B623749255AAE7FD07A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <AS1PR10MB5697B9C288B623749255AAE7FD07A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 30 Jul 2023 13:11:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60684



On 7/29/23 5:34 PM, Marko, Peter wrote:
> Hi Armin,
>
> Gentle ping to pick this commit to kirkstone.

merged. thanks.
-armin
>
> Thanks,
>    Peter
>
>> -----Original Message-----
>> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf Of Peter Marko via lists.yoctoproject.org
>> Sent: Friday, June 30, 2023 0:10
>> To: yocto@lists.yoctoproject.org
>> Cc: Marko, Peter (ADV D EU SK BFS1) <Peter.Marko@siemens.com>
>> Subject: [yocto] [meta-security][kirkstone][PATCH] tpm2-tss: ignore CVE-2023-22745
>>
>> From: Peter Marko <peter.marko@siemens.com>
>>
>> As already mentioned in upgrade commit, this CVE is fixed.
>> But cve_check still reports it as NVD DB was not updated.
>>
>> Signed-off-by: Peter Marko <peter.marko@siemens.com>
>> ---
>>   meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
>> index 9b76c2f..4d2c911 100644
>> --- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
>> +++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
>> @@ -88,3 +88,6 @@ FILES:${PN} = "\
>>       ${sysconfdir}/sysusers.d"
>>   
>>   RDEPENDS:libtss2 = "libgcrypt"
>> +
>> +# This is patched in 3.2.2, NVD DB was not updated to reflect this backport
>> +CVE_CHECK_IGNORE += "CVE-2023-22745"
>> -- 
>> 2.30.2
>>


