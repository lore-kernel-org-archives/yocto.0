Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EE41C61DA4
	for <webhook@archiver.kernel.org>; Tue, 14 Feb 2023 08:31:43 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web10.2162.1676363501842954621
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Feb 2023 00:31:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=ypvzqA/a;
 spf=pass (domain: linaro.org, ip: 209.85.218.43, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-ej1-f43.google.com with SMTP id sa10so38124953ejc.9
        for <yocto@lists.yoctoproject.org>; Tue, 14 Feb 2023 00:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eac2WAvZvhGR3+6YemJpzlNGchrsFuTYV76w+kwdQ8c=;
        b=ypvzqA/aXlrU365i3GktpayQT+s1of5K1STmeLjzZywgFdECDusQPHoq/g7C1AjALl
         fuJU/5GdIOcDCxOF9uDq3N1/f+MlwfoVRpkJcyzpmAVbonTtHwrNbCfBKGUoGrrWK6xs
         C8YAy7qtoD0OChozAzgUdxRg+vxaZuBPp7u+aQEeND7uwo/drmKMGW+mV7pyTGdJ0S63
         cy0obbtidM+jE8NPnaCcY+9heRNGYUERLNA9aWUK4T5Ck3zrbc+UDh28FEutAt45IGYV
         AmoVA7MnEVIOOe9kt+JNM8xEOl7mhzL9+zGMZtYpd8X/eLJwiabeUS9w2R3c4wN7/dlt
         Pw6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eac2WAvZvhGR3+6YemJpzlNGchrsFuTYV76w+kwdQ8c=;
        b=GhEuc1d9jlZRb2jb7mjLo5ltR6zNg+vsT0R981RRZi/MGV7CRc8UMNgdazbQt/V0j/
         H/XrwPQp9T4Ky4yS2MAfNIn9YtrxqtkaM58J//1vS0uxax9QCzNPMtWgvkxPfdklZ2d0
         4F4s6E+TPrVn+AeHtZYs8ykHWPXJ91aSEGT43wf7iB5M1Fz6sjB57+Zzr8SpWZweko72
         taBb3bgT5TUu8KtLG8rQ8vOSz4KAcsLfw+PkzhSOsbCZrtxJMXOK1m0y4ikKjtj9viQL
         LDhSNZXKeUxn2Cpol5u1mP0iM2d49gQAcz4eMm7Fu9E+7abp5hN2jG2tZVI+yfT2Po4P
         ljxw==
X-Gm-Message-State: AO0yUKXszRQRWVa8jG4a1QZaik6BBPVZ1MXnetjGzGMumGdTFPTM0zgg
	m/KTQlIm1jWUL/u4tZyNKgRL8Q==
X-Google-Smtp-Source: AK7set+89KPnc5O3dy7JyzwdyhsfY0zKcvj95rpQ/AaENrR8gaXPXxnpecI5yuh/3x/QlQ3+w5gEhQ==
X-Received: by 2002:a17:907:11c5:b0:8b1:3158:2bd3 with SMTP id va5-20020a17090711c500b008b131582bd3mr1006967ejb.32.1676363500306;
        Tue, 14 Feb 2023 00:31:40 -0800 (PST)
Received: from nuoska (dsl-olubng11-54f814-94.dhcp.inet.fi. [84.248.20.94])
        by smtp.gmail.com with ESMTPSA id e14-20020a170906748e00b00887830e535csm7921865ejl.159.2023.02.14.00.31.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 00:31:39 -0800 (PST)
Date: Tue, 14 Feb 2023 10:31:37 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Maciej =?utf-8?B?Qm9yesSZY2tp?= <maciek@thing.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [kirkstone][meta-security][PATCH 0/2] dm-verity-img
 support for squashfs and erofs
Message-ID: <Y+tG6cUXp4p0OHTK@nuoska>
References: <cover.1676361829.git.maciek@thing.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1676361829.git.maciek@thing.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Feb 2023 08:31:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59227

Hi,

On Tue, Feb 14, 2023 at 09:08:29AM +0100, Maciej Borzęcki wrote:
> A cherry pick of patches adding support for EROFS and squashfs in dm-verity-img.

Depending on stable branch policies for meta-security, backporting new
features may not be acceptable.

As an alternative, master branch may just work with kirkstone. At least it
does for me as long as I set kirkstone to compatible with the layer
in my private layer config:

# meta-security master removed kirkstone support but it still works for us
LAYERSERIES_COMPAT_security-layer += 'kirkstone'
LAYERSERIES_COMPAT_parsec-layer += 'kirkstone'
LAYERSERIES_COMPAT_tpm-layer += 'kirkstone'

Cheers,

-Mikko

