Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9D19C369C2
	for <webhook@archiver.kernel.org>; Sat,  3 May 2025 17:35:22 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web10.15151.1746293722178320976
 for <yocto@lists.yoctoproject.org>;
 Sat, 03 May 2025 10:35:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=D830UViQ;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5f3f04b5dbcso4600321a12.1
        for <yocto@lists.yoctoproject.org>; Sat, 03 May 2025 10:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746293720; x=1746898520; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Z8z6sveXyRcYaYNau6wc2lv3jIXWKVwrjcgu9WUD5yI=;
        b=D830UViQGcLjHVJew9053SBl7WmzCyLVpVr5vPaUzyZVVfXqXR4p4OC+Pe40PXdDwt
         OJXzrrBX/H1FPDCI0DBMOcY+Htf+FguEGanut76IDgZ2BOfINctwlqEuf/HOowW63Cy5
         SGfB6KCj3EFVnW04yru1RF4lOsqCzMsGOHzaPkze8lJldEOQLSv2uWVB9VkpDlYK1Req
         xmR2j6EDloNoVdx1PLqnQTIfHs6deOxUNxISWjGFxO+DTCykuV9od7o6VjDDcBSaCGvr
         ZOmtDZpuVmKuKSaEPzBdaibEqmvNxkWHJkWUg756JQWazo9yaHZo4sjR6vojPRAefbS3
         Pnag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746293720; x=1746898520;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z8z6sveXyRcYaYNau6wc2lv3jIXWKVwrjcgu9WUD5yI=;
        b=CGPawvF0WT6Lu6zKcKYzwnBcpTj8yAgZQOTaR60vg/+o5urnsg06y6/2xxAYmPKkKh
         aMaYmhHrFnBPFlPHzpIj3UY40p0XZeXZdQjI+pFhzmLO3c42QDaAUmxD79BiEukmr0Bx
         ShZy0ctywX6ODS+JdHCxTyGinRx/JBUMCWQfZM28w9XmHFTJjre7P7EVB93/tW8ozKqN
         h2K9OGhWwVSfIkSrw7tQnmMjXxTHIFK8G2kUZ3tV0Uy2MJYHbZKhM+qADEw5cNPfZ7zB
         MBId35PM2zT8mG+OeeF7AuPfnWACG8wYzmx5lcmtSe7ygxtpGQDcGFBi4hmUFkdt6HqV
         M5YA==
X-Forwarded-Encrypted: i=1; AJvYcCX870o6w5ITG9oZ3E6BYY1atg4rBClwUQhigzBsN4RWr7yf7M9lbWdbQcIw1wTwugqIq26IPw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwaIDT8yEjHF2G9Ug5QZfXDkMzVLEh895TPM9Wvs63uExQevKDb
	M5G+xUmifQHsMufgX/6Gk/K8QDhrDEwe2yb1A4ACXXZmIcRWPUQi
X-Gm-Gg: ASbGncsUJyWAGEVv5dasv4Wbicbz9zwcEhW340YX1B9ZURe5d/QFnpArph4dEptC1Y6
	5DUQFzkGD5tL7bwXliDsFCJxAjT5xgsswhGwYZsATLK87cJ5FjPMqcsJZplDj3vTwYTu5QBrt2l
	UEAeKtm40YVxwZsYURd3cK0oJKBCezjOU3fdsaSSGMYx08xLkfexllTe5tHRpsYMZSFa9MrRQJL
	sS9k2OcyptFrK3g1VN1wUanZ4eIHyXIzmBHahUtAIlhvI5+dxAdAYy2I5zzFnLHNNU4QeXITUoh
	6GPadJSfZr1y3ZsEKrPf5r9cKlTypid/BTnQ6ukbUAK8SM/B
X-Google-Smtp-Source: AGHT+IH9lj2RkGulDvtPzCTjDDgfw9EQHscaFLP3a759O2UmANNwZ5BnnoL/GEf92JUldfX9FAm2RA==
X-Received: by 2002:a05:6402:26c5:b0:5f8:504a:88e3 with SMTP id 4fb4d7f45d1cf-5faa7f23275mr2706172a12.4.1746293720426;
        Sat, 03 May 2025 10:35:20 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fa777557dasm2841043a12.8.2025.05.03.10.35.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 May 2025 10:35:20 -0700 (PDT)
Message-ID: <3b20196b-e73e-43e7-ac22-24954b72ddb9@gmail.com>
Date: Sat, 3 May 2025 19:35:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] A new member
To: nguyenthaithuanalg@gmail.com, yocto@lists.yoctoproject.org
References: <14b695ea-de00-4dbe-a6d4-d9d73eadb54b@gmail.com>
 <23053.1746290221044956478@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <23053.1746290221044956478@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 03 May 2025 17:35:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65278



On 5/3/25 18:37, Thuận Nguyễn-Thái via Lists.Yoctoproject.Org wrote:
> Hi Gyorgy,
> I did build and test on my environment, it is OK.
> I did "*git send-email -M -1 --to
> openembedded-devel@lists.openembedded.org
> <mailto:openembedded-devel@lists.openembedded.org>
> --subject-prefix="meta-oe][PATCH"*", my repo is:
> https://github.com/thuanalg/meta-openembedded/tree/libsimplelog,
> Does it match with Khem's guidance?

You have added a new recipe, but haven't removed the one that's
currently present - so with the latest patch there would be 2
libsimplelog recipes. You need to use "git mv" command, or "git rm" +
"git add" to perform the move to the new folder, instead of duplication.

> Best regarsd,
> Thuan Nguyen Thai


