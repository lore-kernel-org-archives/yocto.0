Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05687D42BA6
	for <webhook@archiver.kernel.org>; Tue, 12 Nov 2024 16:25:49 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web10.90588.1731428739753545000
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Nov 2024 08:25:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mvBWqh2D;
 spf=pass (domain: gmail.com, ip: 209.85.208.43, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5c9362c26d8so4877811a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 12 Nov 2024 08:25:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731428738; x=1732033538; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J9GWoSK/VgIyouWo7nL5c45Ibe2WZdTzKHpoxIOalIk=;
        b=mvBWqh2DL1qSEIXMX9EqG5xqAgjQsrui2GCxO1AnCQnNwGZEhEkcoT+pmsh6qav1kg
         zWQBUBTsrX68Gwl7m5tdfYBGoc2Rb+Pr4hEHXNt5LSsEdB1zNjS5S6enQJNYqTD7tzor
         d91liGX+GvO/eDH0Mu0Dy+5AiSOD+MEO0zqwgGQd/qMU6KgFYgCeHPfwAUkTBz8F6WKg
         D1BRB6mijt8Fu/DC9gGukoKR+zKSQ7UmydEslBsb/evNWyUdbs2sLSryo7YXTHw79pZ/
         8Ajj8HnQvuA8zEHf8fBW96PtsLsn+XcK9pU4Q4OK59d9SyGOnDpmz+GJY1OOtdFOcox9
         ls/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731428738; x=1732033538;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J9GWoSK/VgIyouWo7nL5c45Ibe2WZdTzKHpoxIOalIk=;
        b=A3iJTZDIpsJiJFraiOJ4DrEE5SOR9mZWeXgI0eYQeqel4x6ZXIEHvxgsRkC+gyl5xp
         VJGI1ORpvFfiNWjbCMGge6ayjkM0dFktpvk8LVyVqTEAj7qxstTXs688+R3iTxtM2WK2
         Dlns1McBnNkGBPVLCB5YpwKgzoMdQI35zynqITDj1Z76AQeiUTSAyZ+ZUbAv2xnpWmjU
         rCA+Dv5TZyO9cj6DmRBAJZlHPMsbgrO7MmiNvN6syhaAoROtyzm/q/RB8s6Ow9gwWw2o
         xHrSeswXc5+NokHEY23Fx7blMWeT4EIdhpq02l4Y48fSjN8m1XJSwfrVt/9XI+66KCrV
         fL0Q==
X-Gm-Message-State: AOJu0YxSRs0fBkcrm/EMHwx1YNnfEgzfh+H1hrOcQgr1JfDMdfwUFcQ9
	SZwoUO9DmV5mokMmZtzzUdh5O1Xsl17Pdb0CzlEfQTwaRxY6mJfZ
X-Google-Smtp-Source: AGHT+IEx+k5cpAoHYgi3ljZN7Msdht8FiDsFd9PJEv59lVA3V2VckRBmFNUxR3vZncTm0QOJgIT2dA==
X-Received: by 2002:a17:907:728a:b0:a9d:e1db:de8b with SMTP id a640c23a62f3a-a9eefeeca1amr1557195266b.16.1731428738079;
        Tue, 12 Nov 2024 08:25:38 -0800 (PST)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0a176a6sm734299266b.16.2024.11.12.08.25.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2024 08:25:37 -0800 (PST)
Message-ID: <40d01dc1-7894-4163-ac1f-3807bcc92048@gmail.com>
Date: Tue, 12 Nov 2024 17:25:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Id: 'weston': no such user issue Disable is required
To: sateesh m <sateesh0457@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <qdwm.1731305083820940791.ZN0b@lists.yoctoproject.org>
 <68e7b3be-48e9-4801-910a-51b0d136fc01@gmail.com>
 <CACsETSup3qgwz3HrA3yh_HQrZJteiP=BWaNuzfSespLVa9iR+Q@mail.gmail.com>
 <4eb6e8ee-3b1d-4536-beb7-4a4c4218739b@gmail.com>
 <CACsETSsO6OOVxZ=MgYMGv_Jepmn9OmgUBfDuiaEO3vFaAMbtWg@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CACsETSsO6OOVxZ=MgYMGv_Jepmn9OmgUBfDuiaEO3vFaAMbtWg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Nov 2024 16:25:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64268

On 11/12/24 17:11, sateesh m wrote:
> IMAGE_INSTALL:remove = "weston weston-init"
> PACKAGECONFIG:remove:weston = "init"
> 
> I did it even though I see same id: weston no such user"
> 

What's the name/path of the script that's emitting these errors? Are you 
sure that it is provided by weston/weston-init packages?

