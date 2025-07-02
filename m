Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D737C83013
	for <webhook@archiver.kernel.org>; Wed,  2 Jul 2025 08:41:13 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web10.18853.1751445664776983545
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Jul 2025 01:41:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Da+tLhnK;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ae3c5f666bfso52398766b.3
        for <yocto@lists.yoctoproject.org>; Wed, 02 Jul 2025 01:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751445663; x=1752050463; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uZ3xEVoaZAwN6cU8eoqI84vWLjg09WiTa9cpiU3HY/I=;
        b=Da+tLhnKbUL+/wec/Z4NbSeMz2NPILd3GEFOgTq4FZgD/dHjARVVHBzx9B67dDJpC0
         DXj34F4Irqr4Mtp1x6X0LqI6rUePRewodUEIgmNFBVlRRM83eEXyFQQVfupy7JykWy0K
         CHWMaeGpDrRy2xIVMmToM2w1ylI9Qgoex8D+ylF9FLekfnhVfJFZILWh6jjCglIW2lfm
         7Se9VizqFkttcKlQVw+wF4TygHhxiIZWTieGwtmGb7vroHqbWaKYm33tAivgUKDWZI4o
         R4EFkKre99OF5GcnlVMMg2WVPS1Ol7Y5ul517JMjfGal0GDq6o2mpwTs8kz2Q6JH+IkN
         vkVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751445663; x=1752050463;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uZ3xEVoaZAwN6cU8eoqI84vWLjg09WiTa9cpiU3HY/I=;
        b=aFHDSWcmYidu5bBL35ClUc/lV8NfAIV/oFKs70NR8Grj20eSAv/eFWgJfyBjJSa5g+
         ZF8UgDEzYWGhvUMUVVVhQG+2yX8k36OCJzJALz6p+kFQBdYTxnAu6M/lB42FKzeBxynm
         mewYXAxDI7D2mt1NijNdaTdStPEZHpFaY08MDUHNq0jj/c27zBumit4Q5ln/Eu3mQEhh
         KF80oBrWeqCYSDAU/uFaQLZxtTi2GWEiQNjlHHm1KOCcMj8NWmjZsf+LmSTAN8OFgTuh
         fql9m5J/pNHU+NFEIfXRYMT65QN6Nq7NSqyBPjgOMYxueLQtJjpKocemTLFi0KKsPlFN
         0zPg==
X-Gm-Message-State: AOJu0YxEiyuqaQN34NxMcGw8BI++GO60D28WEXaCGh6d70/ALxzx5+Gc
	+NaCYjxcBy4QJZbQoO6bA1TZn350Kvs7WPOnIVDGghjb1JEapxOWfV/pKjPMU1zq
X-Gm-Gg: ASbGncsIzucyL4RZq/Y/EYEEp74H2hP3WH002+2Du2nZvi3ylYjX3RwCHoYMeHFOwmN
	EFxUhVVnNd5F5Z8rPLv11xG20TC5/ONtcV6JrMDyw4mpc3nViBtGxf8MSuquUp9JOkTHRWTXpKG
	K5eoeyfGXIIL87i2uvwSzXs3BtN2AqbeYWUiGquAgwNTGRqvs7jINIcV/LLQQkskuwT2e/sAcLD
	gyT5XdtAleCJ7hCRlzwAFAKw7N7UjNgS86IfQCM8D7MgM6DoAi++yC3xUNxzmnp0+WdZe5TjncN
	cyQAADFOw/C0bsqLu7idji18kb+JJ1DIBgp07ohHtWx5Bya3azviZNLLztLC5E+z5gHhIg==
X-Google-Smtp-Source: AGHT+IElv0lipN0wE5cNJHmTkCJI2Cj99p1DL1hKf4mOsCga/GRTE5B6deR+kPUwqVUm32i2T6AtvQ==
X-Received: by 2002:a17:906:730b:b0:ae3:6994:5511 with SMTP id a640c23a62f3a-ae3c2b5a274mr208772966b.16.1751445662612;
        Wed, 02 Jul 2025 01:41:02 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c6bbfdsm1040041266b.115.2025.07.02.01.41.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jul 2025 01:41:01 -0700 (PDT)
Message-ID: <f214dbd6-f374-4004-95f3-3c48f1995be9@gmail.com>
Date: Wed, 2 Jul 2025 10:41:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] mozjs-128 compilation error for Walnascar
To: yocto@lists.yoctoproject.org, ashish.shrikhande@gmail.com
References: <21282.1751410263082674913@lists.yoctoproject.org>
 <18523.1751411666256346662@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <18523.1751411666256346662@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Jul 2025 08:41:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65589

On 7/2/25 01:14, ashish shrikhande6 via lists.yoctoproject.org wrote:
> Do I need to add meta-rust in my yocto?
>
No, you do not - Walnascar comes with a reasonably new Rust toolchain on
its own.
I wonder if maybe it clashes somehow with the existing PATH...

If you check your PATH environment variable, does it contain
"/home/ashish/.rustup/toolchains/1.84.1-x86_64-unknown-linux-gnu/bin/"? 
If yes, could you remove it at least temporarily, run "bitbake -c clean
mozjs-128", and try to build again to see what's the result?

