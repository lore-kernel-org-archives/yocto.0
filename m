Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A934AC7619A
	for <webhook@archiver.kernel.org>; Mon, 27 Mar 2023 05:36:27 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.28202.1679895386711934619
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Mar 2023 22:36:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=tG2f6Ndq;
 spf=pass (domain: linaro.org, ip: 209.85.167.53, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f53.google.com with SMTP id y20so9741276lfj.2
        for <yocto@lists.yoctoproject.org>; Sun, 26 Mar 2023 22:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679895385;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8yCgu4Ri6FvD0fdmVeLcEBO5kjnZDRYhvBcpBAgCKyM=;
        b=tG2f6NdqEwTEbT5MUJZUFcWFID5k/ohM5FFL6+XDVAZYap32HHkPzIM00hnKE5yVUg
         4B2MMFxzWCu6GTDy/ygPNYzf6cpP+dnYEOSzdENBuswWNU2Ml5dzV2c7RFecQYka8fKb
         SUdtvAmKaDVp3MeYQGpi8HWBUAFsvQcVLQUns0E8uONgltt5VcN6BQCgSUybfCK4F+c6
         1NQ1ndIWHOpgF9s/BXrqYQwOh5u9BUMak7EoAPFrafvsZhlnCo2N2UkYGY65zHSne7LB
         MABKiz8Pkry8kJrjCXMNrfS1jiagDgXpWYDfqy0rfVlMQCv3/ptVj1M5Wb+cSnFZ3LEo
         w8uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679895385;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8yCgu4Ri6FvD0fdmVeLcEBO5kjnZDRYhvBcpBAgCKyM=;
        b=02jrlr3UPqWzeYP+Pkh4aWwjjQusOhPt1LHd6XbZ6VGL4noArSgHslcFFzZWgzTwPa
         7lbzFRGco35jDKrD38/05+8ZKqGxB4GVGi79c4PMDmJ+xdCcI688X2XVIna6WMSP3Hqd
         sxTsDOU2o1gFwbRfc7d51+ymN+Pn8JEMrXobrtxkWiUORX67s8xN8aYsBq8dfsYwF2mg
         0pHNjD4ENlO6x3IwTza/KaOtrdUzY8QUiq+TKs3/rtjD96Hg2fFZnihis8HsBJugfIn+
         Y/8dqBm7Nn/+9eh9fFu3kqMwMGGSkXEmGgxtFAhGy+hESlq4o4KEVLdKa2ZVw//6tfgA
         XuWw==
X-Gm-Message-State: AAQBX9eVu/kqJs7OC30uWfcwrjH1yjHhHPy5BaFDbWR9dotRbyOO96F+
	oX6TbcyeZ+KtCxtpdYnXtEJJLQ==
X-Google-Smtp-Source: AKy350YIQQwxgfnY5JqGi/B+cbhI2dxBmgrBHn0sqzam7jS/OPEe6IWhMunaoHWDYbOfUbVdRba1mA==
X-Received: by 2002:ac2:4a9c:0:b0:4ea:e6b9:a8f with SMTP id l28-20020ac24a9c000000b004eae6b90a8fmr3130962lfp.28.1679895384802;
        Sun, 26 Mar 2023 22:36:24 -0700 (PDT)
Received: from nuoska (85-76-141-174-nat.elisa-mobile.fi. [85.76.141.174])
        by smtp.gmail.com with ESMTPSA id m11-20020ac2424b000000b004e7ff3682ecsm4497157lfl.181.2023.03.26.22.36.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Mar 2023 22:36:24 -0700 (PDT)
Date: Mon, 27 Mar 2023 08:36:22 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Anton Antonov <anton.antonov@arm.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-security][PATCH] parsec-service: update from 1.1.0
 to 1.2.0-rc1
Message-ID: <ZCErVio1Ns/W9BAE@nuoska>
References: <3e087d67-e671-8829-6e00-776e7b3fc3ae@gmail.com>
 <4110.1679670308835025472@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4110.1679670308835025472@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Mar 2023 05:36:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59522

Hi,

On Fri, Mar 24, 2023 at 08:05:08AM -0700, Anton Antonov wrote:
> Hi Mikko,
> 
> > 
> > +SRC_URI +=
> > "git://github.com/parallaxsecond/parsec;protocol=https;branch=main \
> 
> We noticed another small issue with your patch. Could you use gitsm instead of git, so required git submodules will be fetched as well:
> 
> SRC_URI += "gitsm://github.com/parallaxsecond/parsec;protocol=https;branch=main \

Sure I can change this but build and major parsec-services features also work
without this repo:

# cat .gitmodules
[submodule "trusted-services-vendor"]
        path = trusted-services-vendor
        url = https://git.trustedfirmware.org/TS/trusted-services.git
        branch = integration

Cheers,

-Mikko

