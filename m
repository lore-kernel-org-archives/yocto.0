Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web11.701.1621292176847341299
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 May 2021 15:56:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PSx2ofrz;
 spf=pass (domain: gmail.com, ip: 209.85.215.182, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f182.google.com with SMTP id i5so5692368pgm.0
        for <yocto@lists.yoctoproject.org>; Mon, 17 May 2021 15:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pnm6tIkFTxHQYZ+ZODpdMVT1J8ukmC15q8c6M7dCnyA=;
        b=PSx2ofrzAzdk3zGJPQ1CbdJiFlKJl6+yDh52+pvH5X/LyzMHOI5BWRy0vR0PGXdUry
         GFQuuxb1GiFRSeSKbb96Sjdc3e+qaAAhFkXgmz6P9cZMVmQBIBE+Kq6yXsRK6EULodK/
         Vyr2z+vUvrh+8TyBM+TIy6e4iNebxV/6eSKWCQinCgCuzKg4p9FeB7T0LnwqkbC3gB17
         tT/Sk0OrL+oNmOkw1iFllNpr/4HFuzfMcDi/mgpyGO2hHdEHwYJ6HCFWQhTqnyVwCGK6
         o6YveyQsvWnsWjg4B2SM9UeHoFJxYZKvYYRCK0CChNgLjXcikk5c0dJOGIMNa7Nq4DxR
         27rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=pnm6tIkFTxHQYZ+ZODpdMVT1J8ukmC15q8c6M7dCnyA=;
        b=ike8yopocRm9/OTYlisnydv+1WQIQtTRLACEsAc6JgmB1URYiqP6gESZGhqggAMoK9
         lOfPaEC+u4H8OyO+vyGRLv5F0F0a2qAhKVgl2T3tk+GlZfuNrNUZfy6B1bCI5B+4w16N
         TsRj5jVIbD4p1W8nv0kG1ZWGKzIPuIIT9Sh7GtvcJJG5Ns0AIMuw22KZR7A8lSWv5HXK
         9QGDHiq5h0kFcpaO1juW1mEKfA1XGMPJHiUzr7ao3BtgpZRUTCyCpj5P0jWNdiElYHIv
         VaqBGc8AXgr/odZEGyrqRSyiJd32n5z1RAjLLjV2a4Dq1oUMtEFs38sdiXaUplKHGhvX
         Bz8w==
X-Gm-Message-State: AOAM532egWIqvDWI5FabJlxaAWjynztY+O7S5mVANfSyNwStsKOR2934
	dM+DKkdtXXORNSrPtOVx6/fchgHi2C6iLw==
X-Google-Smtp-Source: ABdhPJxU3W0iROEgZEyoG4JfCmW+3eTw/piklXP2+UqgiInHyYPsfC+mjHm560E+oSD07W9vXlBF1A==
X-Received: by 2002:a62:1481:0:b029:2c1:1e90:c54 with SMTP id 123-20020a6214810000b02902c11e900c54mr1871450pfu.55.1621292176140;
        Mon, 17 May 2021 15:56:16 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:3413:1e4b:7a71:b5dc? ([2601:646:9200:a0f0:3413:1e4b:7a71:b5dc])
        by smtp.gmail.com with ESMTPSA id 205sm10712523pfc.201.2021.05.17.15.56.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 15:56:15 -0700 (PDT)
Subject: Re: [yocto] Statically linked libraries and license manifest
To: Jasper Orschulko <Jasper.Orschulko@iris-sensing.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <74a762cf340855aaa9fae5ed7686d123db22923e.camel@iris-sensing.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <7c7aa6ca-05b9-452b-6542-4d5da2248e7e@gmail.com>
Date: Mon, 17 May 2021 15:56:13 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <74a762cf340855aaa9fae5ed7686d123db22923e.camel@iris-sensing.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 5/17/21 10:44 AM, Jasper Orschulko wrote:
> Hi,
> 
> my question more or less reiterates the following:
> https://www.yoctoproject.org/pipermail/yocto/2018-July/041854.html
> 
> I am trying to find a way to list statically linked libraries in the
> license manifest, but so far I am at a loss. To my understanding Yocto
> does not understand packages included using DEPENDS and not RDEPENDS as
> part of the resulting image, however technically source code from the
> dependee can (and will) end up on the image as part of the dependent
> package. This is a serious issue from a legal point of view, as the
> developer ultimately might end up with an incomplete list of licenses,
> when relying on the Yocto license manifest.
> 
> Please, do correct me if I'm wrong :)

partly yes. there is a provision to disable static linking using 
DISABLE_STATIC, so atleast some of packages can be cleared of. depends 
are effective during build time and its the linking which decides on 
static vs dynamic linking and bitbake does not have much control over 
that but you can perhaps easily write a probe and extract this 
information from linker cmdline perhaps by dumping linker map and post 
processing it.

> 
 >
 >
 >
 > 
 >
