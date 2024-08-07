Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2CD0C52D6F
	for <webhook@archiver.kernel.org>; Wed,  7 Aug 2024 09:21:27 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.29436.1723022479390786520
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Aug 2024 02:21:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=wsXcVpsj;
 spf=pass (domain: linaro.org, ip: 209.85.208.175, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2ef248ab2aeso24122241fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 07 Aug 2024 02:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723022477; x=1723627277; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FNXfATpHHx99Yqk1kt52oORceKPejMd+ICprtKklvTA=;
        b=wsXcVpsjrwcvc+oEZRdmjCuo1A8mtnCVddHAMa72EaehypWc/TdGJ+qFEyRIaVGHQn
         hmInx4OnzVc1x4p2LfObqoy+I1WBi+2bB2cMRHLrBfXvaWPeyfefrDMGHKD4att1WU4Y
         ZOkrUH6YnjDDsrRBO4KEWQCsEUgEFy2FyUfLvNwnScp4uWMuQfGbgW93DDPe6ykNfIxW
         dpvMtzBF9hSvnsq1Nl03e3Cq91jC5sxQeKN7ijvzbeJr2b9S6tjAbJlzPK48MtbREGal
         Ge0s0rzC2nWNaBqlbKFLrME/sfGakT2KvskPsf8GIj+ZhUIirYb3Rt7CloO2vBLot+tm
         A8eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723022477; x=1723627277;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FNXfATpHHx99Yqk1kt52oORceKPejMd+ICprtKklvTA=;
        b=H/CSari1N8SOMERbf1dK3usWTDNAWwea/SRHfPfz0//gyaz5EMwBDOuAQEUVMG4rT+
         hcRWhyl56/TSUCr/DxHN9LzkvEK5Dk0KrcVp9q1zGf8/blzDra6LjuvbDiRgxECAFA43
         Szv+Q87SgTLplUIhspJG0d5MZ4LyZKonAZ2gU3vsb91mc9uXYxTve7d6w9LqNI6YBXBw
         Ct4Z4Bk+t9Z3oz9XrDvw+PiAHPvi8v7CD3igNbdaHte9VnSju/hjPd708ByQmzPddIOa
         0/iiJlS7zpGCTNUZcR/yTjbtUXWd2Mpj7aXEE659P4wq08/bedTwESksbkujN6L5/vb9
         6ptw==
X-Gm-Message-State: AOJu0Yx2sax1AEqiZzZF4wd2JBQpLQbEoSszDdTl3rKwgD4Zl6u77TVC
	r8T8Z7CMsZyFdsA9MADhkz9viFJJglEyS/4nztF/Wqh6Twdbsrv+F0TMo6Q/0gC5nP+p78Khah5
	d
X-Google-Smtp-Source: AGHT+IF+wEqx3IzX1Kg9Qfn/c9+L2//IkqmiKJzhoYQHlG0YmeFNI2gYnKEFpsT51up2SSU0BNFSBQ==
X-Received: by 2002:a05:6512:220b:b0:52c:ddef:4eb7 with SMTP id 2adb3069b0e04-530bb38139fmr14161636e87.20.1723022477262;
        Wed, 07 Aug 2024 02:21:17 -0700 (PDT)
Received: from nuoska (87-100-245-199.bb.dnainternet.fi. [87.100.245.199])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-530de3f4edfsm181970e87.91.2024.08.07.02.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 02:21:16 -0700 (PDT)
Date: Wed, 7 Aug 2024 12:21:14 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org, ycnakajsph@gmail.com
Subject: Re: [yocto][meta-openembedded] How to properly build a lib package
Message-ID: <ZrM8ikxC3AwTgDHR@nuoska>
References: <CAC3TgA+HFgXcckqxUVgUQsRfJySytZSAj3PtSRD6TLzT5_yDqg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAC3TgA+HFgXcckqxUVgUQsRfJySytZSAj3PtSRD6TLzT5_yDqg@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Aug 2024 09:21:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63671

Hi,

On Wed, Aug 07, 2024 at 10:47:57AM +0200, Yann CARDAILLAC via lists.yoctoproject.org wrote:
> Hi all,
> 
> I'm working on upgrading different yocto BSPs to scarthgap, I'm having an
> error that I haven't seen. It's the one described here on stack overflow by
> someone else:
> 
> https://stackoverflow.com/questions/64984897/yocto-package-requires-shared-library-but-no-providers-found-in-rdepends
> 
> I have a very simple C library package that provides a shared library.
> 
> My package is looking very close to:
> meta-openembedded/meta-oe/recipes-extended/p7zip/p7zip_16.02.bb
> <https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/recipes-extended/p7zip/p7zip_16.02.bb>
> 
> I don't really understand why we need to add the lib7z.so()(64bit)? Is
> there a "proper" way of avoiding that as it's not so common in other libs?
> 
> I'm also not comfortable adding :
> INSANE_SKIP:${PN} += "dev-so"
> 
> If any, can you point me to a simple library build that doesn't require the
> (64bit) that I don't really understand nor the INSANE_SKIP ? To sum up my
> need is to have a simple recipe for a shared library.

Please set soname correctly, see
https://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html

Shared libraries without soname are bad and this test correctly finds them.

Cheers,

-Mikko

