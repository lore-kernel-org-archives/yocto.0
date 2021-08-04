Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web12.467.1628111651409426458
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 14:14:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KFyLvQ+4;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id pj14-20020a17090b4f4eb029017786cf98f9so5458444pjb.2
        for <yocto@lists.yoctoproject.org>; Wed, 04 Aug 2021 14:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bWtVYgiTFwpmPKdu6OsAqTRJR4GK9t4kpbF6JY6sHUk=;
        b=KFyLvQ+4ZUQnhLBBYdn1nVFLsmo3mTeJbqhNI0njgOS5Y16NK2GEPsP8I3MfnIqDQX
         aaU6R7fu68pZJqyZvoxaMR2beBWKXzl0iR5/w0BEvC4jSe0n5RLiJQM00HCibTo1m3KK
         AUe4ItdshfYVWpYtWQbywdSHWgFxx42fSO8+38uFD5PurHh4eWpjiJUEb8cSuExt/jvx
         1mW2aLZCWGnUyJzNqVA0wXdKk1pR2kF88L15DlRmlJ8FDSDNFuBZ2tD3yeaIdRAdsrv/
         nB/Aj8HxN0QL0D9upJKNvg86Xoi1JM0uen7UlzumkANFNDLfrEyoLeCjF5qBZgkg5PIx
         Uigg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=bWtVYgiTFwpmPKdu6OsAqTRJR4GK9t4kpbF6JY6sHUk=;
        b=X1hUOmMHcQKCBMLDnA41gHuZ+Z9NyFt9MmUfLSTgcATQDdNTO77iHdB76jQ5c8nREw
         +iVunoUQOTRzQ3ph8wJjNRfu++u4R1Gtel1s6aMegPvwdsSlfo1MDr3YCgt7grvTuiRQ
         yzqAMVmYbYUNeI8RCtaygse6s5i9Nrg2PccG+0zzhA27JKcbDz5LTwjau+c4bcfHX99P
         ZWHR2ZdBJkLTgjxZitFYK2tcAN/i1F0qnT7wDvWAGExxqT1/t7SOfWIancPkngttIQzb
         DBrapuyBCqRetVoABqFuVtKIbsviMfQ5JmqGwKvar1IUWoZP8vqAZ6gOaR4ji5anNZUI
         dAyA==
X-Gm-Message-State: AOAM530v1QUNQ7CK7U7tOWP2WiJbJEsaQ8EmDpYXoZ0i1t7mTb+lnxBL
	PlgD2fnA+IzvN0+qerLcCJy7A6gawh7mPg==
X-Google-Smtp-Source: ABdhPJzc5sVgV2IizrGEzovPwKLq/nJ1WMWV7J3u3/tM2mNniGnt3JMLVRA7oSTwo55l8xIN1HdxjQ==
X-Received: by 2002:a17:90a:a4cb:: with SMTP id l11mr1078587pjw.89.1628111650462;
        Wed, 04 Aug 2021 14:14:10 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:7855:55f7:d28b:c03? ([2601:646:9200:a0f0:7855:55f7:d28b:c03])
        by smtp.gmail.com with ESMTPSA id r3sm3529999pjj.0.2021.08.04.14.14.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 14:14:10 -0700 (PDT)
Subject: Re: [meta-rockchip][PATCH v2 1/2] layer: Convert to new override syntax
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20210803195132.2702516-1-raj.khem@gmail.com>
 <20210804175318.GA12530@localhost>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <7dbf3343-72e2-301f-9018-baf276dfd9d8@gmail.com>
Date: Wed, 4 Aug 2021 14:14:09 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210804175318.GA12530@localhost>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 8/4/21 10:53 AM, Trevor Woerner wrote:
> There are still some cases which are being missed. For example, this patch
> doesn't build successfully for marsboard-rk3066, rock2-square, and
> tinker-board.
> 
> I had been working on a similar patch yesterday as well which I had been
> build-testing and run-testing when your patches came in ;-)
> 
> I've added your SOB to them since they're so similar.
> 

sounds good.
