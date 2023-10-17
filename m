Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E6ECDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 12:23:38 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.212112.1697545412031537028
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 05:23:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=jfHBXMmD;
 spf=pass (domain: linaro.org, ip: 209.85.167.48, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5041bb9ce51so6695751e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 05:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697545410; x=1698150210; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RV7NoLdgq/oQS/tLmaZShkNrc44IgrIHy0OHB23DQFc=;
        b=jfHBXMmDueTg6TyU3COYnWGQngqCjtFgXCRyeq03l7swqxLrF774XM1zBQNPReifZR
         S5tqByXqjfj4mCvs0WNhD3D53ek3awu7eXw9Ga3gPzwJ8K0AIB/0yam/YjBpHC9jCLob
         FLojr7ij8OfxvM3rRnCwh6rRZ2OP8vQ4XxUCQMhQ03Ve0q53ZoUJOWie8bqd75ObWQon
         9IJZhge09j5lWitB4v8J7cZE6G56UnlW1OVgp/hvsi0evqvyqO6/z1vOOs0ixJgHWIVf
         TF+GDMBeUzX9jEVOrsgfDyKiTZxg7ao0EW+UtY0jsgIThbiD8YPZXSc4bkBtddMFdZyX
         OQMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697545410; x=1698150210;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RV7NoLdgq/oQS/tLmaZShkNrc44IgrIHy0OHB23DQFc=;
        b=xHEeZFClylgCMJ0c9ZqysMU+3mL6k2qvnWn4vYzO92jAeZD02QIoETjcRW24oacEUL
         ZDTO1ZAA7R08MOZj3heeggpnBdgWvIKLBCbGlIJsQAJNqGp0aw7vYcr9tNrD357GPl73
         tPqrM5yigleMlFOLEWOEZelNqnj3f+qcCjHWR4FgfeA1tDQE+uh/oVVoFlJyA0ePIh2I
         B8szk0/j4dcihJcj7hJ8W0/WyKGhFgUbOQM2LO0L68wieHK+7RrBvkPRjJ3wXy7n6W5j
         kQKpNEafkRkQDh8IK6dpmwFHxWIjkgkIxZzMMtrt7f32C0VKG0SCMrBmWZD8RSC0l5Xq
         feKg==
X-Gm-Message-State: AOJu0Yz/UihaOpeJTLwJBUvT/an/Yn36hQaaT0ChpXm1GhspHQ07HL0s
	oBm3BSBKSbTKusxuRpOL/JArMg==
X-Google-Smtp-Source: AGHT+IEcPJC/zMvogemMos7/AkjXI1Ci7BS7NNAB7Ln3qaNSFW8Y14GtYQmF5DGDYikHHU5vhGJSAA==
X-Received: by 2002:ac2:454a:0:b0:500:b7dc:6c90 with SMTP id j10-20020ac2454a000000b00500b7dc6c90mr1564111lfm.36.1697545410087;
        Tue, 17 Oct 2023 05:23:30 -0700 (PDT)
Received: from nuoska (dsl-olubng11-54f814-94.dhcp.inet.fi. [84.248.20.94])
        by smtp.gmail.com with ESMTPSA id f22-20020a05651232d600b00507a0d92659sm259218lfg.249.2023.10.17.05.23.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 05:23:29 -0700 (PDT)
Date: Tue, 17 Oct 2023 15:23:27 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using cmake... how?
Message-ID: <ZS58vzbmpFG8ck9i@nuoska>
References: <20231016112233.221066-1-foss+yocto@0leil.net>
 <AM9PR03MB7012E6E478F4D2899CBE0F5192D7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS4ghiXPvYDDW_LC@nuoska>
 <AM9PR03MB7012DDCF969FEAAD42A8817992D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS5ZTMlhyMdLPEQ_@nuoska>
 <AM9PR03MB70124FE13C06B022A3C0BF5F92D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS5gUVkTwgjNi0Ad@nuoska>
 <AM9PR03MB7012F4837978629C7E866C8792D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS510fE2Q3WeU0UT@nuoska>
 <AM9PR03MB701278137F02C02E6532EFE192D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AM9PR03MB701278137F02C02E6532EFE192D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 12:23:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61376

Hi,

On Tue, Oct 17, 2023 at 11:58:23AM +0000, Dave Hitchman wrote:
> I understand that, and the compiler the rest of the recipe uses does cope so I am trying to understand why this bit of the whole thing is using a different compiler. Maybe it is somewhere in the cmake of the library, but it certainly isnt obvious. Thats where I am digging for the moment.

One thing could be CMake calls to sub projects/directories/modules where the
toolchain file is not propagated. So first level CMake gets correctly called with
cross compile toolchain file but second or third level ones not. These are
annoyingly tricky to spot. It makes sense to change the do_configure
task calls to cmake be as verbose as possible. CMake doesn't make these easy.

Hope this helps,

-Mikko

