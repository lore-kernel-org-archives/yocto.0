Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1917DC369AB
	for <webhook@archiver.kernel.org>; Tue, 15 Apr 2025 10:26:43 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web11.16529.1744712799592834875
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Apr 2025 03:26:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DgvtQPVG;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ac2a9a74d9cso1033395266b.1
        for <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 03:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744712798; x=1745317598; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zm0o9ZwhkgC3AmBJGilN3Xc9W6FuBO9GRM2/7955HVw=;
        b=DgvtQPVGEBAJgiBxhOTS4gVf2gb23imSuVNEkR/uGjwR4n7s8DQcywL1u9mIg0kIZg
         HHEUcOgp4KIUnDugkeYCrEVIftvOmMDyi5fnAvtgmhurtpJDDlv5k/qQk3X8C7XWCxjI
         AxyVHZ2mRt7ktIjrv7PYTMH8iP5iYng3J4m9GtnULdl3ocrgBxOvylnirKkRSiHo6VVW
         uwzK1ldODlM/1Bq8RjrYlDPn5pe3BrbCg0kNIune2EqKlsX3zaWS+4SGUsxlrYku//Zf
         5gXenk6D16M0OjjDN6v0B8cwCW8FjULZLTrdA3T5OqMPENvuaRMY6t8yHU/bmG7IGTk7
         UGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744712798; x=1745317598;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zm0o9ZwhkgC3AmBJGilN3Xc9W6FuBO9GRM2/7955HVw=;
        b=ZtJfZkqz4OIQ3fPo8XBdCo4gAe/slFutKGvtZ8aVUFiSpexZJdyZRaEUeUBbhLksW+
         onn5q0ywYL0AQ/D+1qbn7xjxaz6mBpAviNXmzxw8aS+4gXuuTcO5TtTomqaTDiYXZNSW
         9yTQGyl1sSDlz05m1wamVXa/2L8YsUfr8bFWjlHSb1YEqnSWLqSgf7KlxuWQKtH5Pnte
         2+2lNzDy6YpzIiTCWqfU/FXn2af06Mcea8WZ6glNIZ3kZvWrJXjak+umy9s1QoHVuICX
         tbEQ+Cm8maQNCfJoBSS9o31vbMhlJVyWfwLCzQ9YI7zVtG6JjuW3gfdmUiqpsfFCvdmj
         lJYg==
X-Forwarded-Encrypted: i=1; AJvYcCWmtR7L7aH37CpuaOEELohPRI65KY3+UeME12AEDOBNwonzcvRSsElPJ71hom6nFeKSAmqcog==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwMnxBQy9fZQZnU3LyKKPyHnROlC1FIAnQdDDyY/MkUEioCsR4B
	KeIOS/3vyNs4b1akhY/+1/+1kDdQ8wsMeUEF0OtJQ5R/cS8OjYvD
X-Gm-Gg: ASbGncvnuhD9lpADTQl5r9uWzp9un79WIxdwUTlAILSAS6+nAy6skRnW37u3X5sq4Mr
	jzsc5NvOdjMzBk3rZoWmmGv5QwnPBDXM+88uCR0+Rs1TV5w0ijgshKbSfGQLAzgDTtFHv7lbgWc
	xKboSwEuBLjh+KXSfFYYXFv6D6e8fC46Im4zrPCBdJPZaAT3j5y42xYuLFedCxA7COR8Mkyxtar
	Jui8C0OI75YGLLthVFfdfMumRxE00M8aHAYPq+jGy0RDKLjzts7kW1acnG2ra4X2AuI0kD/iUJl
	PLEcSLaIE9il2S9dg1Yzr5GSOGK37oJhZdfZPQwM2J0JFPPiesnDTOnmZUg=
X-Google-Smtp-Source: AGHT+IHTyVDxhlHPcWzcliHC4/JupKwcBSqWivB3cvi/i5FQzBh0Epryf7yiMtiyYabcmXeftJDySQ==
X-Received: by 2002:a17:906:c156:b0:ac7:e36e:545a with SMTP id a640c23a62f3a-acad36a5f95mr1270540366b.37.1744712797398;
        Tue, 15 Apr 2025 03:26:37 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ce7042sm1048039866b.165.2025.04.15.03.26.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:26:37 -0700 (PDT)
Message-ID: <60eb4d60-1462-4fef-8939-5fda25f6e0bc@gmail.com>
Date: Tue, 15 Apr 2025 12:26:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] sdktest.bbclass does not find custom sdk tests
To: Ross Burton <Ross.Burton@arm.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "kasper.sloth99@gmail.com" <kasper.sloth99@gmail.com>
References: <Pnq3.1744354339757137128.EBko@lists.yoctoproject.org>
 <18364374250CC5A7.10767@lists.yoctoproject.org>
 <7f021913-4147-43bf-8718-fa253da664d7@gmail.com>
 <5000FA76-7714-49AA-93CE-7ADD74AFF8D6@arm.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <5000FA76-7714-49AA-93CE-7ADD74AFF8D6@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 10:26:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65169

On 4/15/25 11:29, Ross Burton wrote:
>> On 15 Apr 2025, at 08:28, Gyorgy Sarvari via lists.yoctoproject.org <skandigraun=gmail.com@lists.yoctoproject.org> wrote:
>>
>> After having some sleep, the problem is still the same, but I realized
>> that it can be solved much easier.
>> Forget what I wrote in my previous email, and add the following to your
>> image recipe[1]:
> Whilst that works, I consider this a bug in testsdk.  If someone could file a bug (or send a patch!) to unify the test case lookup then that would be great.
>
> Ross

Yeah, it occurred to me also, just wasn't sure how well it would be
received considering that it took quite some time for someone to want it.

But with you altogether, that's 2 (at least). Will try to send a patch
in the afternoon.


