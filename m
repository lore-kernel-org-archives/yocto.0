Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D39CAC5AD4C
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 11:07:56 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.88446.1700737668217822181
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 03:07:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=UB9fZOoT;
 spf=pass (domain: linaro.org, ip: 209.85.167.53, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-507b9408c61so979445e87.0
        for <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 03:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700737666; x=1701342466; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fD9YJkFSsNrde5lX8S72DMzkAPmGG8W8dkn9QL6vKRQ=;
        b=UB9fZOoT0gfyTdrIbSEPfog0715lt8ZPLuGS+y6Anpwrc+AOtsyXrYISvx3xZKoX5M
         NLBy4LxSqVWyprLu9SoE5ER1SnkRT9dEOfk4ohJtkGXwpQA1vG3Jy3I98ja2DulGrcj3
         b6uKcvMrgxy4JiUpAi9RPnKsR3YI6TzjbJD5dEmQb5Lv3jCiZfRckitgBP3e+5JaIrcL
         PTZhGzn3S3i5unvaFBiRCfb2A/KzK3pOY6uO0AZoVDBPNsCWnno0EJLv9iw8lcZrLod4
         8nqrLjYwoKpxP3NDJJR7F8DzcO7RvFeICi3Ij+lOF/toYRDGrOYPwZc+J+fc30TQljam
         YcsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700737666; x=1701342466;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fD9YJkFSsNrde5lX8S72DMzkAPmGG8W8dkn9QL6vKRQ=;
        b=tvcS2KI6XmHWPqlrQij/iFQq032rUwcvOQURrF96SNt8ko5kltlcocOE4A5CCOXAlH
         WkqCbhot4gADBK+MZPbWfZ7vp7c4ErQlu7u5PalnGiKewt50Ezoav1IE5R6XI81gqNwA
         VN51JxgGOHSeP/VKJmRVpbU6kGVu5EPT5IBtFgx73bnU/PSxUeaOTplNFU2wNia34TRK
         nhw2yNaygekiP8WZ3kbm6//OoG09bZLcu8l+JatKcjz5QHB35k9c5lmJ+VAuqNzLdp3/
         N/GU592tNDYWiC+T9oKEAHkHd91/lykVAXcoP7C4miANdQPSr5imsojaanbaoAWWTnGL
         0H8A==
X-Gm-Message-State: AOJu0Yx/qc4zwyULSYaTR5Utt4TQuLqLqw/gQnn3yZ1SeHQHoiU5QdYH
	WMn9PJkyZaRQiQt2lHRzcHhPlg==
X-Google-Smtp-Source: AGHT+IFBqeemAA+XJmiqPahCrrtMhAWoa6AKsTxE9Ouk+L01wvaO9Zw9h16Hw6UEpK9w+DB4PZuinA==
X-Received: by 2002:a19:5506:0:b0:509:15a3:d295 with SMTP id n6-20020a195506000000b0050915a3d295mr3413010lfe.45.1700737666339;
        Thu, 23 Nov 2023 03:07:46 -0800 (PST)
Received: from nuoska (dc7g6tyyyyyyyyyyyyhbt-3.rev.dnainternet.fi. [2001:14ba:16cb:a800::183])
        by smtp.gmail.com with ESMTPSA id h7-20020a0565123c8700b0050aa51bd5b5sm155010lfv.136.2023.11.23.03.07.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Nov 2023 03:07:45 -0800 (PST)
Date: Thu, 23 Nov 2023 13:07:44 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: yocto@lists.yoctoproject.org,
	Erik Schilling <erik.schilling@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [yocto] [meta-security][PATCH] tpm2-tss: support native builds
Message-ID: <ZV8ygN3viTwBTee7@nuoska>
References: <20231123105340.3929836-1-mikko.rapeli@linaro.org>
 <CANPvuRkY1Nvy3+us3UHRDUqLEX-V4-+15Wa-v2T__GP62o+zSQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANPvuRkY1Nvy3+us3UHRDUqLEX-V4-+15Wa-v2T__GP62o+zSQ@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 11:07:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61736

Hi,

On Thu, Nov 23, 2023 at 11:01:12AM +0000, Jose Quaresma wrote:
> Hi Mikko,
> 
> Mikko Rapeli <mikko.rapeli@linaro.org> escreveu no dia quinta, 23/11/2023
> �(s) 10:53:
> 
> > systemd tool ukify
> > https://www.freedesktop.org/software/systemd/man/latest/ukify.html
> > depends on systemd-measure
> >
> > https://www.freedesktop.org/software/systemd/man/latest/systemd-measure.html
> > which depends on tpm2-tss. So to support creating UKI
> > images containing both kernel and initramfs with systemd-native,
> >
> 
> Is systemd-native supported in any public layer?
> I saw some proposals on the oe-core mailing list but they were not
> integrated.

Not yet. But for uki and systemd style secure boot that will be needed.
Current public systemd-native proposal is in
https://lore.kernel.org/all/20230901233231.1109712-1-michelle.linto91@gmail.com/T/
and on Linaro side we're checking that among other things. There will likely
be a need to move some recipes to oe-core so that singing etc tooling can be
compiled from there without additional layers. But all this depends on how maintainers
see the situation.

Cheers,

-Mikko

