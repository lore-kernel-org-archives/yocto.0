Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D1D1C021AA
	for <webhook@archiver.kernel.org>; Mon, 17 Feb 2025 17:46:21 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web11.58636.1739814380146702993
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2025 09:46:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VbksPCsM;
 spf=pass (domain: gmail.com, ip: 209.85.128.41, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4398c8c8b2cso8598375e9.2
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 09:46:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739814378; x=1740419178; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JuarFNR9dfawKsISftcmygI2N1gnpThQBsUlOvhApzI=;
        b=VbksPCsM/yK/QArmfYzGlAtr8W6FCvHgYccFrOi9hfxvj+u66UNCHFDVZMWFWgKFEF
         yCRUaulmbMIUcvpLQHnHSE/BTix1/8StXb2vt/Q544G7Busyjo6W/wkFZ2bteeXSscMl
         oilJquUGtuXYHAYpyI1VgnO59d4+55aJt2t3mHTrqu+DlntwF8Agq9QT2NjvQCalJDXx
         FxWbfxUtI3RnD9SPdIVd0s2pA1UZ/ljZ45mFSt2EDrQyip7NhjZMLmyuzwBi11CyjDTF
         L/fqatw+4GXDj0b+nVvd27hB22bwt0CqiCKtcqR87iSZ4/LgpFMBguOOVfeI+fLQtTet
         mOOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739814378; x=1740419178;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JuarFNR9dfawKsISftcmygI2N1gnpThQBsUlOvhApzI=;
        b=i0INa+Rpv5gheq2T30QIBMrKWrYW4MEUJqQRClgHJO3CIhntI/4reFUvMK8czzsKb6
         8YFvsyhNS2BRiuuiXrWaVKpdTC8iZL/pBDV8m1IS5WxAOo4yC+ik5bgIhNFTvk1qgXfB
         xXUcMcg0R7Qt/iVCWLgGRfQD9qpaNyaSy/7jXI+6WUp1iyK3BaksWNeguYFXGSaN5XlA
         gaNCjiywdJRz6MWm1OEzKpA8IvY1dF15p+EUCcfP17GzYoZbA32eFk8bRMzqI72GJtrM
         hcJ9W4qw1lf5Nl8zCmfs8PIaskGnabXMVT+UeIsOEMjmtSLxjcVXcNvxPhfqhcghqL8D
         3/Hw==
X-Forwarded-Encrypted: i=1; AJvYcCVXYdSLa82U1NozUQ06vjm6zKJYrmMF8t5zEBtVK3pnFnQarxDaOHhxCGSIWk+wdsYyA7KbCg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yyw0zo8c9M4h0BBM3YCpGxKFD3/zhngAKZHVV1Q7Idn72jpsXqr
	/hwaWc/wNde7grTRAUVZCVyHwPFsnYSIRZFmGWMOHX4EYeLwF98ZjqKXQA==
X-Gm-Gg: ASbGnctsyLtLdYD6UGi8dEoQd4p+G7U/qfcO5y8+zbea6fyjv5O/akEi+VBGqtzYrKS
	SZL4SkS3FRl3DZmpFegNdzpqXsVUditwcHgaZRxwSJ3JZn6joOeO03P8tuyghZQgNldxLUjpNVr
	8nFXYnhGroBVZIcIQTojNm0i31CNVS0v6xpdT1SthVQXKPRUTpe2lXYbPwL6QhB/ryNtl59sZxD
	LxVcodiumXxRvRDqTZJkf6KZ5/ZsGNHXDZHJp/FE+RCUGAfLJ9sgd9I2KvkkUOJQcylVt3ng3gY
	LaO/dFdpsT7LyzKa40a4/2Y=
X-Google-Smtp-Source: AGHT+IFO8zegMbm1Rvhz48OeDlWNnlIyqtC1ucZJHUciNomBII9DQPPSeDh31l5zRrrrWtu/QkDVUg==
X-Received: by 2002:a05:600c:4588:b0:439:48f6:dd6e with SMTP id 5b1f17b1804b1-4396e717cbdmr93515625e9.19.1739814378074;
        Mon, 17 Feb 2025 09:46:18 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258f5efdsm12674457f8f.43.2025.02.17.09.46.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2025 09:46:17 -0800 (PST)
Message-ID: <b73c5f9e-4db7-4a02-b1aa-119328e72b69@gmail.com>
Date: Mon, 17 Feb 2025 18:46:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [yocto scarthgap] do_configure failed for pth-2.0.7
 package #scarthgap #yocto #autotools #bitbake
To: kavita.mnnit@gmail.com, yocto@lists.yoctoproject.org
References: <b69d48e5-7062-443a-be53-521852cbd10e@gmail.com>
 <15793.1738003555647274530@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <15793.1738003555647274530@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 17:46:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64820

I'm almost sure that this is way too late, sorry if this is the case...

Earlier today I already had the luck of debugging some other autoconf
scripts, and this one came to my mind, and wanted to take a look at it.
There seems to be a typo in the config script (slipped quotation), which
was apparently handled differently by previous autoconf versions.

If you are still interested, you can find the necessary patch for pth
here:
https://gist.github.com/OldManYellsAtCloud/3d3419a4799749ee1adb98e22122b54f

It compiled for me successfully on Scarthgap, and I could also link a
simple program against it successfully, which it also ran fine. (Can't
guarantee though anything)

On 27.01.25 19:45, kavita.mnnit via Lists.Yoctoproject.Org wrote:
> Here is the path to the recipe which is unable to build with the
> autoconf 2.72e recipe
>  
> https://git.openembedded.org/openembedded-core/tree/meta/recipes-support/pth/pth_2.0.7.bb?h=fido
>  
> Please let me know, if you need any other information.

