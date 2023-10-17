Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25A1CDB465
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 01:29:14 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web11.197723.1697506150188287403
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 18:29:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=E1NdC2fN;
 spf=pass (domain: mvista.com, ip: 209.85.214.180, mailfrom: jpuhlman@mvista.com)
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1ca816f868fso9779395ad.1
        for <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 18:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1697506149; x=1698110949; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gP2ZpjWsNY6lsAeqyL9L6m2Zokq0PuH0dxIPYKWglWI=;
        b=E1NdC2fNcyr5ZllQd4esyk0M9CNKMBBHFm/rO6Wqlk7Nr/G5WIwv5ejRhT6+9oVlyf
         BCH1bglg9u3NcCAnLZl+qcYjf1I3HGT3HIHeO7Jjh0eyxPDiQO59JEa7Rl6q8nGBexUs
         WiAktH+79Qb6Dy8HNT8zt7A4t2RBxrOH5mtWA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697506149; x=1698110949;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gP2ZpjWsNY6lsAeqyL9L6m2Zokq0PuH0dxIPYKWglWI=;
        b=Et+uJHac3gRVBRBjM8K29wHfsCcm6TVJVe80rdoqUZEgQ9W76WjSSmqasrO+vhzZnf
         N6pYhpFVkqWo9iqIUu2PQ8PS6vdzkHsRGS7Ab3jUKKi5sZWI3dysojKwt1a6moVJoQTx
         ni5x7iF+EV1zUWrCrZivlE/Ng/ZaMDJcfMbicGVCY/DjHKbWhIWr3rh0JI06i0Fjbcxy
         SnXaKoNJOgbgLNG4UZPTRVi+IKFtDrOmwVwViZnT5Eg2cLn6+oCBBcQ8iGSLdAvHk7JC
         jRFeF0xGACn7xCA+xa2Xh+HWetgTpmv0g8jMLRaLbjIAu8oIN3w7D5E71ZWInDGO7pLg
         29ag==
X-Gm-Message-State: AOJu0YxPTJ2JEkDoCNr/fMsaX3pr3ShBUhEEgzseLfrsFwdmKgcPUVDW
	R1mei6kHYi9Qfd7w3e9udoCQRw==
X-Google-Smtp-Source: AGHT+IHvWdMqN2QyApSdzRSgkn578z22x4qTdgpVU1pKw6l4hW+Tx04qb4WuTpVb3PLnhH/1kr57dQ==
X-Received: by 2002:a17:902:e889:b0:1c1:eb8b:79a6 with SMTP id w9-20020a170902e88900b001c1eb8b79a6mr1234018plg.24.1697506149604;
        Mon, 16 Oct 2023 18:29:09 -0700 (PDT)
Received: from [192.168.1.9] (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id z18-20020a170903019200b001bb3beb2bc6sm243653plg.65.2023.10.16.18.29.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Oct 2023 18:29:08 -0700 (PDT)
Message-ID: <dc765c52-7344-4dc8-ab1a-1d2f276b1c68@mvista.com>
Date: Mon, 16 Oct 2023 18:29:05 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-cgl] [PATCH] linux-yocto: Update the append for 6.x
Content-Language: en-US
To: wangmy@fujitsu.com, yocto@lists.yoctoproject.org
References: <1697502503-3286-1-git-send-email-wangmy@fujitsu.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <1697502503-3286-1-git-send-email-wangmy@fujitsu.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 01:29:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61363

merged.

On 10/16/2023 5:28 PM, wangmy@fujitsu.com wrote:
> From: Wang Mingyu <wangmy@fujitsu.com>
>
> Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
> ---
>   .../linux/{linux-yocto_5.%.bbappend => linux-yocto_6.%.bbappend}  | 0
>   1 file changed, 0 insertions(+), 0 deletions(-)
>   rename meta-cgl-common/recipes-kernel/linux/{linux-yocto_5.%.bbappend => linux-yocto_6.%.bbappend} (100%)
>
> diff --git a/meta-cgl-common/recipes-kernel/linux/linux-yocto_5.%.bbappend b/meta-cgl-common/recipes-kernel/linux/linux-yocto_6.%.bbappend
> similarity index 100%
> rename from meta-cgl-common/recipes-kernel/linux/linux-yocto_5.%.bbappend
> rename to meta-cgl-common/recipes-kernel/linux/linux-yocto_6.%.bbappend

-- 
Jeremy Puhlman
jpuhlman@mvista.com


