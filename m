Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDF40C369BD
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 13:46:34 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web11.19636.1744811191706197484
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 06:46:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TziQljPH;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5e6f4b3ebe5so11798336a12.0
        for <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 06:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744811190; x=1745415990; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C51OUJIXvxoOg3VLpMD707vOOZ0VExj4i9o0WsmhJqQ=;
        b=TziQljPHbumKzwtFfRJE70rj0CSZsNVgbeVzHBXIhEi0pArGgnrYO1Ssm7vUJQocfM
         nrbETzt8QX7LVPxojMQ+CKhNmHXqVNb/LZpsOHzeu00OUDmH98znH+iyV4VeRlhCVPc4
         udKxCGAkjcJo2AHizw5eCJV37lse5RDSKRJqj+HbRCrey4V+UNxsjwGqzxE+Xo8dgNbp
         S616Edcq8PuM9VTpgVyIh+CN72vltWGK/sGBa4QEQk3ArZRgo/TgCz6+E/8n1Cwt2sAV
         /cKndD4z/Pv9IhIwWATV3oh65II2oSKw3YzZbnLzcWB2Tw3IjtrN8aYUNpbHhYFZwbCE
         HlHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744811190; x=1745415990;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C51OUJIXvxoOg3VLpMD707vOOZ0VExj4i9o0WsmhJqQ=;
        b=VykKwHdaAx9vjyLffU9hUTMo38nt4ewuqcgStFG2FqgzZZN9jpWeC+YZ8jtGYhnYVD
         6jgH9zqRs/BSmvOhCKP+iXi6ZlupRDFRNwfNIWDVjhypdQfAJcBiR4RU1/qEthUKHehf
         wfGQVoZTziaq4wy1DntlVdbyObzUKJnC3xUTA76BIinoZ8Vv9gAHbI/BdbJSOn0AOXhD
         SZGxMmDFcYf1QXbuIpCpVTdVcIxc+wbjShw5m0/HT+doleBsyu4nka1u4R57CdK5LyfF
         IXjyzJsd0WygCWKNe8MsVIOEM9jKyYtZmHwskxrbhSb7uoIA80+DrK3MSgkHf4T7WRxV
         hjPg==
X-Forwarded-Encrypted: i=1; AJvYcCVnZVpDvvdABAEMDZadSgo1QHltPLCcATnB4aqIEc9VIF8pmMzyy9ZDg4rPZMf/uHJxZ71lqw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwRKMKgdqd/ZEa51t6ebOX5zv+rD2cK/gmNyzw/HQesnaATi9VI
	gAOoMlyN6yfEP0AxLrrSNLBmMqypZk8pR2S+18xXWFr0Go66VPbS
X-Gm-Gg: ASbGncuESfehcxBec570yXvx0HZ/UZtK/FtTywalqCn4osYAhfKCF+KAMIHOb7v8i2k
	xiWlKSBlyFFjK7ZFCYn9fnWH6D7UK47aDJJlD0oy53XwPqZ0C/UGko08xLfmOtCLiRZxs+UjYDK
	WOZ5nSLOwJNOei7BXorfMzCA2COxN/GeSI0Ntya1j4fu95DwOUernQvGIgme+gv2+5Ym4vs/k4i
	/Hn0L7U6XCCXs0wzwDlZXlhcndl+KnNLS5GXtou1rJocl0KdQMCymy6mwu7I0jI0kxmH3QOcx9u
	1kfE5NKq33VXvpPEijQuDYVaGUl6QEjlQRRbl7TPukYBTulF
X-Google-Smtp-Source: AGHT+IGJzgdK3qnXdbDciNRs00akls2SahRCFGqM4KdmAyxnbuIHOAogDtbMh38uOD4FqzXww/9FDQ==
X-Received: by 2002:a05:6402:2711:b0:5e5:cb92:e760 with SMTP id 4fb4d7f45d1cf-5f4b74870afmr1632430a12.17.1744811189403;
        Wed, 16 Apr 2025 06:46:29 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36ef5c019sm8582309a12.29.2025.04.16.06.46.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 06:46:29 -0700 (PDT)
Message-ID: <b6567232-102f-430a-8852-5b788d8166e6@gmail.com>
Date: Wed, 16 Apr 2025 15:46:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Reseive a HTTP Error 500 when send error report
To: Thomas Perrot <thomas.perrot@bootlin.com>, yocto@lists.yoctoproject.org
References: <2e9cf6ffee73d3e37142c09a39b2f712bf29dc4d.camel@bootlin.com>
 <06bfb359-54ec-46fb-8ae5-5aa402ffcc4e@gmail.com>
 <1836CBB1B501AE62.22324@lists.yoctoproject.org>
 <9be005368fbce86de50cb308656f2217a1b0b9dc.camel@bootlin.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <9be005368fbce86de50cb308656f2217a1b0b9dc.camel@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 13:46:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65193

On 4/16/25 15:28, Thomas Perrot wrote:
> Hello Gyorgi,
>
> On Wed, 2025-04-16 at 14:17 +0200, Thomas Perrot via
> lists.yoctoproject.org wrote:
>> Hello Gyorgi,
>>
>> On Wed, 2025-04-16 at 13:22 +0200, Gyorgy Sarvari wrote:
>>> Rendering[1] the error message shows a bit more details. The error
>>> seems
>>> to come from here[2].
>>>
>>> 1. You could send a patch to fix the error (I think nowadays it
>>> should
>>> be "urllib.parse.unquote_plus"), and wait till it's deployed
>>>
>> I believe I could.
> I submitted a patch:
> https://lore.kernel.org/all/20250416131828.441127-1-thomas.perrot@bootlin.com/
>
>>> 2. It's a guess: have you changed the "version" attribute of the
>>> send-error-script? The error indicates that the user agent is
>>> "send-error-report/0.4", which seems to trigger the outdated
>>> codepath,
>>> and the user-agent is composed using the version variable of this
>>> script, which is 0.3, in master-next too[3].
>> The user agent is 'send-error/report/0.4' because I applied the
>> following patch on top of the master branch to figure out the
>> error:
>> https://lore.kernel.org/all/20250416100149.274800-1-thomas.perrot@bootlin.com
>> /
>>
> Following the log when the version is 0.3:
> https://termbin.com/8fy1


The data you send has '"failures": []'. So this loop[1] is never
entered, and f[2] is never initialized, and this line[3] gets into a bad
mood when it is trying to use it.
I guess it could be handled more gracefully (like checking if the
failures array is empty), but I also wonder if this script was meant to
send error-reports without actual errors.

Instead of guessing blindly and recommending pseudo-random
fixes/changes, I guess I will leave it to someone else, who actually
knows...

[1]: https://git.yoctoproject.org/error-report-web/tree/Post/parser.py#n71
[2]: https://git.yoctoproject.org/error-report-web/tree/Post/parser.py#n86
[3]: https://git.yoctoproject.org/error-report-web/tree/Post/parser.py#n98


> Kind regards,
> Thomas Perrot
>
>> Kind regards,
>> Thomas Perrot
>>
>>> [1]: https://sarvari.me/deleteme.html (temporary link)
>>>
>>> [2]:
>>> https://git.yoctoproject.org/error-report-web/tree/Post/views.py#n60
>>>
>>> [3]:
>>> https://git.openembedded.org/openembedded-core/tree/scripts/send-error-report?h=master-next#n25
>>>
>>> On 4/16/25 12:14, Thomas Perrot via lists.yoctoproject.org wrote:
>>>> Hello,
>>>>
>>>> I would like to share the results of my CI jobs, so I am trying
>>>> to
>>>> send
>>>> error reports using the send-error-report command, but they are
>>>> receiving an HTTP Error 500:
>>>> https://termbin.com/pq28
>>>>
>>>> Could you please advise me on how to resolve this issue?
>>>>
>>>> Kind regards,
>>>> Thomas Perrot
>>>>
>>>>
>>>>
>>>>

