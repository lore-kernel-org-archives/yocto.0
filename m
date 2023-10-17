Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D233CDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 11:42:48 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web11.210808.1697542961483579553
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 04:42:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=kG8dOsD3;
 spf=pass (domain: linaro.org, ip: 209.85.167.53, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-507973f3b65so6461390e87.3
        for <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 04:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697542959; x=1698147759; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lTuoOM1KFoCT/yRjSyq0yX0rMF4Mb46UQj4kHmwyeY8=;
        b=kG8dOsD3MWEKD7Izw4AUQL+co5wMkM/L+N2CwcsxcgxR/zUxLrODkXCJRagHNqSjZU
         x5l+mbyEWVC31x3b17UMbdWDMkKut9Nn8XLEZuOoztE3ZUXNN+L9yjkh/7k/ngTjDyUs
         qx1y96/ntt999tEA864cdEsv20Lh9DXPAfgxxPC2Vrs+XkcyD7k8obVtgFHyOrXXrIY0
         yMvO+4OLGauLQ9WJPrlp05xVcmrbxbgZZrra9v4t8Yl+sP2Fz5JnzzlNPzUVhcM9+ZHD
         mL79DSKPv4BVRWOfz6PkO3iM4dtfoDn82LIXHzXpBKP9aFTz/+3rigEZkOsi1YyHnNga
         IjVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697542959; x=1698147759;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lTuoOM1KFoCT/yRjSyq0yX0rMF4Mb46UQj4kHmwyeY8=;
        b=o6xVV4TOCuaxo+xTeK4aKpo69eHqoYNL7PNOPGiUBMoCtnq5zf718MqBV/bHYiv3ay
         FvKi7rNCvZ+ztZyCJFYYUUEnLMEHCdSsfC5e9+qCm6h+QuOdtE58Qbgm4+t48kOgX2uS
         PQQs8WqbxMvNkvz/TTYELQ5gQxKX2F0O4p/yfmdZKjCW1CRC5CJmtM1mYmMyoW66o0Ac
         Wgm6KD4hedZlOGxO9wvInjN55vjlAjIl1HQNB55kzyDx7SXcmTSv2VksoYBLFx9WsKtX
         4ewI3041SssHivavsnI1Yb8u4WjDL4N4rE0mI1Pt2Cf3MfJwhD5AqsUsrqf/oXhaysLq
         5Lpg==
X-Gm-Message-State: AOJu0YwLAkDOjPBi2UFRnhu1ALOgks9BZK/8GBhvPlJ+scalggtcutYF
	KDsPlq7ANIHqyj8JDif8IIkU+g==
X-Google-Smtp-Source: AGHT+IGH0nibFfq8iqR1uadcMXx+22uEBbJBo8oRTrbdwOPTDMPFRDNrqO1oLMQikWLTCuV3yHdxsA==
X-Received: by 2002:a19:5e5a:0:b0:502:9fce:b6db with SMTP id z26-20020a195e5a000000b005029fceb6dbmr1468939lfi.1.1697542959634;
        Tue, 17 Oct 2023 04:42:39 -0700 (PDT)
Received: from nuoska (dc7g6tyyyyyyyyyyyyhbt-3.rev.dnainternet.fi. [2001:14ba:16cb:a800::183])
        by smtp.gmail.com with ESMTPSA id u28-20020ac2519c000000b005056c997ed6sm243755lfi.163.2023.10.17.04.42.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 04:42:39 -0700 (PDT)
Date: Tue, 17 Oct 2023 14:42:37 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using cmake... how?
Message-ID: <ZS5zLcJeH2v6YNKi@nuoska>
References: <20231016112233.221066-1-foss+yocto@0leil.net>
 <AM9PR03MB7012E6E478F4D2899CBE0F5192D7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS4ghiXPvYDDW_LC@nuoska>
 <AM9PR03MB7012DDCF969FEAAD42A8817992D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS5ZTMlhyMdLPEQ_@nuoska>
 <AM9PR03MB70124FE13C06B022A3C0BF5F92D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS5gUVkTwgjNi0Ad@nuoska>
 <AM9PR03MB7012F4837978629C7E866C8792D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AM9PR03MB7012F4837978629C7E866C8792D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 11:42:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61372

Hi,

On Tue, Oct 17, 2023 at 11:35:13AM +0000, Dave Hitchman wrote:
> Thanks, but without the CXX settings there is no difference either, it still uses the wrong toolchain (or rather tries to and fails in the same way) . I have now removed the two export CXX type lines...

Check the CMakeFile.txt etc scripts in the SW component. They are likely overwriting
variables like CXX. Alternatively, they are trying to mix host (-native) and target
compilation in one step by compiling code generators etc tools.

If something on bitbake side is setting CXX etc variables, those can be seen
with "bitbake -e recipe".

Sadly these issues are quite common for SW which has not been cross compiled before..

Cheers,

-Mikko

