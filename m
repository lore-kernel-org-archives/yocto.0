Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8714D70E1F
	for <webhook@archiver.kernel.org>; Fri, 29 Nov 2024 06:20:32 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.110231.1732861227605203392
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2024 22:20:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iMtPUKPU;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: skandigraun@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53dd2fdcebcso1716891e87.0
        for <yocto@lists.yoctoproject.org>; Thu, 28 Nov 2024 22:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732861226; x=1733466026; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fE1Psrkag/UjtAgj1UCO2aqsNARlPoOkdxgPrQo/H74=;
        b=iMtPUKPUiT6PZOEeskqhYs7vBiOtKztgDQdAlXmPckpYGgTATZLAcBEg9NLrkDiNrk
         P/wKObobfAsRsTNLstYzq8sCEwN4kW0/xpVzxpBQ84OWUHgXsjRLPEASzcMP5TnKLtKm
         QFwMCZSFxGWV9ZAx/kIyDjnUAFm1ast3aq/vVvUFGGt1f97oG4h0uBPp7UJjGxWnv65N
         lx4PZmooKrxBJx/11H/Vzu/peGXZjuZU0GkNSWaYsK5+D8Yd8/CZcU9+315XQaTdK9m4
         HbGK+WCWiTQ1KcKZnZ/Rp54OxvvdK+tDW54bSDqZ3ItyXSahjzcnYxKqKeNwwwvJkzAi
         LDMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732861226; x=1733466026;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fE1Psrkag/UjtAgj1UCO2aqsNARlPoOkdxgPrQo/H74=;
        b=imIxdCpxSF4W4WScAF7vof/AQWgmkPcsl1EB7PZRpUA+mf969j3EtaSolFR/25Eeqe
         0sAQ1Vg9gM7nSbKDNyEB/qQ/rRL+hyUV0vzN2tOyzj7l7VMcNR78NKd/p4Hd5K+WyHmi
         vMl1Dsezsx6OBmpPGTX36flDlhiySBLatiIAHoHq5B24xMIIsUzNuGgvmP2ED9vUHDcc
         PYLGEfQgdA5+cQZH1EGYEOJ9EoJvt99gn/Er6qOyVZPCQ2iehu4FTk/sP33AivQheJ8J
         tdr1gwEMI+UglU2vwyvxa/xU67tdEYutt5+Ew2JVTacuACdiBHWnyTmPFYG2Ah9lFuXy
         a36w==
X-Gm-Message-State: AOJu0YyGjh7yaac+44vpRXqR5JurXt1ZAjdHP8YepTRQ4TuHC1IZcsGU
	xvVs9InZvq/9axhUZaYhuT1FsLEOHMwfh4xZjdJb+BBbfC/JTR8LLsaAr2TF
X-Gm-Gg: ASbGncvlMOwFSe7N5O3dqYI+Miue9qfrlgOvPl8RvW60lpEbOKU/6ubCfqPZeo/BiXd
	tzdyhbnnh8l8jVyZfjP6ttfyrmecjzMHsc/jrd4WxDl6H+g2jGok1TXPXVC9BlHEL38ubQ008cY
	oDYZrGdPN5Su/f1+AvGxVDTgyNJFGY/tGndJEedqPBepuPC3UCPNgrxSMT0Nq6VLvxnEaq87D9x
	Gk5BSAOkBWJe9jD05Q5+UKU+xM3oYpFEIuOFUwWG28m+LNbKPkQflo=
X-Google-Smtp-Source: AGHT+IGaz/ttXQXvkC/XoMBTiJAduIKk74zQ+TEHo/LN3zW/eTXwcYCS5mFtyOSKyiGHgViV3TwPFQ==
X-Received: by 2002:ac2:4199:0:b0:53d:f1cb:624c with SMTP id 2adb3069b0e04-53df1cb63a0mr4312645e87.34.1732861225390;
        Thu, 28 Nov 2024 22:20:25 -0800 (PST)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5998e6da2sm139508066b.102.2024.11.28.22.20.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Nov 2024 22:20:24 -0800 (PST)
Message-ID: <75752ab8-98a1-4edb-bc79-03664ac7a939@gmail.com>
Date: Fri, 29 Nov 2024 07:20:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Trying to build image with example proyect but getting
 (do_fetch: Fetcher failure for URL) error #bitbake #poky #zeus
To: yocto@lists.yoctoproject.org, juan.aguirre@omron.com
References: <L5gW.1732831587616598404.F3hX@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <L5gW.1732831587616598404.F3hX@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Nov 2024 06:20:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64375


On 11/28/24 23:06, juan.aguirre via lists.yoctoproject.org wrote:
> I thought that should be enough get in the Zeus branch, configure the 
> environment (with oe-init-build-env script, and modify local.conf to 
> build for the desired machine), run bitbake (for core-image-minimal) and 
> after 2hr of building you get your image. Im missing any step?

Zeus has been EOL since 2020 - and as most unmaintained things, 
unfortunately it starts rotting. This particular bmap-tools error comes 
from the "master" branch being renamed to "main" lately (but the recipe 
still expects "master" to exist).

You can try fixing these with bbappends and the like, but these old 
releases have also unfixed bugs and (since discovered) security 
problems, etc. - there are compelling reasons not to use them.

Try a newer, still maintainer release.


