Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04430CAC5AE
	for <webhook@archiver.kernel.org>; Wed, 24 Sep 2025 14:21:48 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web10.15102.1758723708212128915
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Sep 2025 07:21:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gmvzOMh3;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b0787fa12e2so966997666b.2
        for <yocto@lists.yoctoproject.org>; Wed, 24 Sep 2025 07:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758723706; x=1759328506; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=H6bRZJqVvFR5T2QG5Nte9PQHePH0iJS3eUdo7uFSA4c=;
        b=gmvzOMh3ZyXHAqWm163KeAHWaycJERnLoV3+QFl2RF94RWCM1WL7zJnjKN/TobSp0b
         RMkSo9DXe081MxzkfIRg5U/jjR6M1tJmp6TQW9pGwzYp4/DTEUnwAQC27DtsGDUS9vjM
         Cr/CS5DSaGxNQ2A+SW7RDucS5Xhidbn30EFgGIC0N5k6I9U7Ume4nbm2ukQii1MWijuC
         K9NLBPxVLRirqg73yxRbp1bxz24QMZko7xZh08ntslaBxASHWlpKF7re6TBuV2LSMAbE
         m+vOD2vW1op7/5/douYTHDJ8gCWhYukLDcRTlb3zxQYvu/Tv7SZEijD+PUSodMD0skYD
         Hg/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758723706; x=1759328506;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H6bRZJqVvFR5T2QG5Nte9PQHePH0iJS3eUdo7uFSA4c=;
        b=b9Zj0x4hxRuXGF6sO2pXCXTBwCS38+y6v4XnskwMuH/rS3qwZwfniCcJDm5JGGbvKY
         eSUOC9q6wc+4Kp8aIIs6ykjQZ9yy5T3zzWx1BBlyYkqehuahlD6x7bSswu3HV40jU04u
         cCGFCqNcRq718C/0uLV9x84Nq2mSXdp5riJ0pm42gGSS5T6SF9hxZv8Lv2vJSU6zCZ3Z
         tXv44SzsI0Ld2VNWdq6B5kG6m0t51lLhd/R/V8CaamvMpvsuQ4UDPvoyfQ5joIgIDPJR
         ot16oDUdt19gLzEeN2BqVxNquW/g6tsQnVCbsAcdbBeB8+fXjMQmrRXBvXlsoTf7lX0w
         qcew==
X-Gm-Message-State: AOJu0Yyo0QAyooiJj6RD18u/D6jWckn32Z++FWS6/r1KwGp9bOkpjRYm
	aJQScHaBrROZLAt9O1Zt1YfcFRzwAHKytHgmC96IPimUFMKfy4Xmeoi73hqBrp0k
X-Gm-Gg: ASbGncv4+deoWqcdp4yifMH+RinT2JJvR3mYcUw8IGcPSxgjNxPSfKaTBDwpBRDmHw6
	8yiHpULG6HwOtfNI4/dV/sxLKN6gYDc1LfTySQwFZ0Z+sO/bAVOWgaSvJ70zGAZrSZNwKnZ3E20
	jMFEaRjcaADhW5s/AqCbTa3zAzvLUezAbLHcEoJC9wvUfr6MmQCsvJSzSS801S8mwt3CbNeRNws
	qLhQnycxR4fXQ3lBVFbkQTU/PuqKvtRzmEtkDJ57CZZwgjfJen/64i3nH0w2twuxRR7kFBy/1Dz
	CfS4LVYrZ6g6vkQdufQB8YSjGllnJaY1Y1HWYrSVUramqhvM90L8jNvZ0TleTzljZAyjNt24lhs
	acpuZwYLB2cQxbRFOXdJi2Yo2V7hqS+g=
X-Google-Smtp-Source: AGHT+IFry8QcvZ5Z++ocNweMLbr/PWTnlW202ZleSGsqrzvFG9Z5Qkqx0RelW9pX/a56n+EJVwz3Xw==
X-Received: by 2002:a17:907:7f9f:b0:b2d:e514:5342 with SMTP id a640c23a62f3a-b34b79c704dmr4363466b.11.1758723706312;
        Wed, 24 Sep 2025 07:21:46 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b2636394de6sm1222676766b.39.2025.09.24.07.21.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 07:21:45 -0700 (PDT)
Message-ID: <27a541bf-df16-4e9f-aef6-fef9397ed3ae@gmail.com>
Date: Wed, 24 Sep 2025 16:21:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Bitbake fetch private Github repository release archive
To: yocto@lists.yoctoproject.org, katutxakurra@gmail.com
References: <CAM1ZcoXBYER5j5kTayzcYLzdObxyZjriqNsY5OAZm0j5B-kUNg@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CAM1ZcoXBYER5j5kTayzcYLzdObxyZjriqNsY5OAZm0j5B-kUNg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Sep 2025 14:21:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65871

On 9/24/25 11:12, Katu Txakur via lists.yoctoproject.org wrote:
> Hi,
> I'm trying to fetch a release from a private repository using a
> Personal Access Token (PAT).
> I know the permissions and repository are correct because I can use
> this bash script and it
> works: https://gist.github.com/maxim/6e15aa45ba010ab030c4?permalink_comment_id=2990095#gistcomment-2990095
> I can clone the repository with ssh keys but I need to use http for
> the release zip file.
> I have
> tried https://docs.yoctoproject.org/ref-manual/classes.html#github-releases
> <https://docs.yoctoproject.org/ref-manual/classes.html#github-releases> but
> I don't know where to specify the token.
>

Based on the PAT documentation I found it supposed to be used as part of
the auth header, however the http/wget fetcher in Bitbake only supports
Basic authentication currently, using the .netrc file. I'm afraid there
is no out of the box solution currently for using PAT.

