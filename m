Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AC35C369A1
	for <webhook@archiver.kernel.org>; Sat, 12 Apr 2025 06:57:36 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
 by mx.groups.io with SMTP id smtpd.web10.6030.1744441050434253411
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Apr 2025 23:57:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ebS/wMV6;
 spf=pass (domain: gmail.com, ip: 209.85.208.49, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5e5e0caa151so4512618a12.0
        for <yocto@lists.yoctoproject.org>; Fri, 11 Apr 2025 23:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744441048; x=1745045848; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QXmr6OtoqZF1GYi6c9JO4UzlJ8z8kKhTZwGz7mHJSbI=;
        b=ebS/wMV68mzpk5h3/5IbKR8WrYoe51liBq+2e+xZXhbRGvP3aZGjaLov+hNxCv+Fu7
         rQJg1MBXJqEh0csNmfTSeVE+0YgDgMjDaLKpLOWC+mxoyd9a6upIUwCkxBpjp7Cxpxkh
         Q0aywjro42ayPhjdA/X9KVExlBgbyEtBW2fJKuXoC4aagKdjEEIZkaGepSpmHDqiXSuF
         mW6SoC2PMjJSAC3eU6nZOrk6pA4vwSd+iM1ODBr1dBFada0o5XEUBaNPfl5T/0HjE6Uy
         RJeHuozOtz5kLSa7MOQhxNZiJTvs99Vkd9IpCI9MU2fKhBf9fu3jtlpQBp9BSCaEko+D
         r2eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744441048; x=1745045848;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QXmr6OtoqZF1GYi6c9JO4UzlJ8z8kKhTZwGz7mHJSbI=;
        b=JEtaV4PC2hQ75fTm4OwrROBqthdrNaIcnlQYYeZ46+ROvOTQitTU9e4KC73BmJzb6P
         k/thEFbyp6kQJazI9BCVB36TWa5YfRykYwVTnKW0ZMJ+yr4kOsyH6Vk5wkbshEan6MUu
         I6Ex7rOLRJKaixTcn58OMFsdJpgOCDIhtJ1k1ARHQDv52AI9a2GhegJ88mbgGywAUmKA
         Jcvg4PmrBLANZnKzcwEIrIx4CZivDUi768X7BbfhWIVZApfsTlr3TQK/KODmrgzkrBFo
         jFldONkyOpdiPqGP56ZqcuOQ5KtAFXrsMevteDJ9jTVUUgnapJ5gCe1Mxv+FsB6CFz/v
         bOIw==
X-Gm-Message-State: AOJu0YwzUWu8KZJMk8MlP/9vSjSxD6QHmCGl8xlYMpIR/dh5ds9l1928
	1udApHx3zZvrWe8UA46tIoxH5I8Sh7mPj7X5/Uk5R+2baeqKlDEP8fYIWQ==
X-Gm-Gg: ASbGncvsYPAuy4P1CPMOSuL7cLlJ24EWK7VmECRwjiaHJz3hDfewHuOJBOgzGAZPFtO
	xqRkqNxpnrh4NPbHOlOIEWvTQ2dliAgHvO0uPGDEUj4isO1ZsBfIPGxk/BupfPwrFAu4rY4btFm
	YeJfIrWaToR7uDiTJ3RkzWLijTVxXyOjvwF4GqiU0r+nauMC210c2JoWEazfOzonv5cKZVpzm6Z
	ut9mkGpd91j2VqeqFV4o+rrjN5tZ2mBXAxuJpWn5y3TjQYV2e+zGmgd2XuyFOtPcdGZ2JSuBC27
	G5YSyFZ66Ez9zeuWNcR63BvpifsAgnIQVuareY8xr2aRE3Bh
X-Google-Smtp-Source: AGHT+IH7eoKodF401GeIgMgsAc7RFyg7kPcLqzeaG3XfRuP6+8L9NTylqGweYdK400ONtAq5wvoBKg==
X-Received: by 2002:a17:906:c107:b0:ac7:3916:327d with SMTP id a640c23a62f3a-acad36dca0amr415802966b.60.1744441048105;
        Fri, 11 Apr 2025 23:57:28 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1cb422asm555165866b.115.2025.04.11.23.57.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 23:57:27 -0700 (PDT)
Message-ID: <4c7b6a13-6bee-40ba-b3ca-8479e35437a5@gmail.com>
Date: Sat, 12 Apr 2025 08:57:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] A new member
To: yocto@lists.yoctoproject.org, nguyenthaithuanalg@gmail.com,
 Alexander Kanavin <alex.kanavin@gmail.com>
References: <CANNYZj_ByYJvDTLYgwiia1Krezaj8wq=tEKWnZ=A8Q=RZGj2eQ@mail.gmail.com>
 <31887.1744428532602150053@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <31887.1744428532602150053@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 12 Apr 2025 06:57:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65150

It is not a good idea to hijack other, unrelated discussions - please
keep the issues in their own threads.

This is a voluntary mailing list, definitely not real time and people
are answering request in their free time, and having to wait a day or
even more is expected, especially at weekends.

Quentin has sent you a link with useful info about contributing, please
go through it. It is mentioned in it that new contributions should be
based on the master branch (not Scarthgap, nor other branches. Releases
are for end-users, master branch is for development). Release branches
don't accept new recipes, only bug- and security fixes.

In the readme of the layer it is also explained how it accepts
contributions: preferably send a mail with your patch to the relevant
mailing list with git send-email (even the command is mentioned there),
or open a Github Pull Request.

On 4/12/25 05:28, Thuận Nguyễn-Thái via lists.yoctoproject.org wrote:
> Thank  Alex, Gyorgy,
> Now I added a recipe:
> https://github.com/thuanalg/meta-openembedded/tree/scarthgap/meta-oe/recipes-libsimplelog/libsimplelog,
> and verify of building on my local PC.
> What should I do next? So sorry if it disturbs you, but I am new one
> the many thing is strange/new with me.
> Best regards,
> Thuan Nguyen Thai
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65146): https://lists.yoctoproject.org/g/yocto/message/65146
> Mute This Topic: https://lists.yoctoproject.org/mt/112169356/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

