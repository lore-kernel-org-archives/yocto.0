Return-Path: <max.oss.09@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956EDC38142
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 20:58:52 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web10.114137.1674853130892543294
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jan 2023 12:58:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Hp4SbCA1;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: max.oss.09@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id cw4so689902edb.13
        for <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 12:58:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dAAFefmUIsdZ8yaFwmbwl4AvBRhpVNRGQRIJVjZ0MVU=;
        b=Hp4SbCA1ym/3bHqhJbfJT2AWe52IDTfQ9LOrjBhMSg1PNjBpFpeCkxd7UmcplbLbj4
         +Xj5thA6ohYG5WoTHVfA9EZ2Y7vKqu0tD2fuwt5yNdV//izKgBKDgBCnyHVcr3wGiaO/
         FZN0R8kAgye6G2CboKab6PDdu6pMzAphLb7t9u2OAO+MDjD9sd67WoNMlSg6Ye9bO472
         7jq/v7M0i9U5SYMinY7a3Tk66VgjsmWHGqtiiLEhz16OUzC0ZAVTqkVVmc3gvxT2cPNe
         RMUVRYbpLT02wKTxitrOug00ryNvltIR5/tVVKgozk0Lpu5uDPOtW1GSDyL7ys7m6WIl
         kEhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dAAFefmUIsdZ8yaFwmbwl4AvBRhpVNRGQRIJVjZ0MVU=;
        b=Pgs2WdikwBPDjfPKH+ADhbSqVN2x+ARpFf/T+Fkps3RCUeJIATiltvUym9RTLOnCQm
         zeHORSbqlzn7q0qk2RDbGAKL8XuI2H7MSyoyvccFKQMyl1GyvOUYCWbf2hsvGaN1Up35
         oAcLFC30Dcptqc7t5Qc6gNWXvBA163Rvakuj0JeMEFlUqUdbo9dFkITZuKqhnGcWxN7P
         UwWKWd5bP6dvW577FrlSF3YeQBojTKncSKSQ7fjYNfDE+yoesWBNUje2MeqlVKLGx2fS
         YxOVjTo1VbD4iLmA5iIunHBfZX9hlEF1+nLWbHhKouKRIecTDFkqIlXNWa34wK1vKXTQ
         FIgw==
X-Gm-Message-State: AO0yUKVE8YVkf0M2jxgA79seQDNN2RuGE0BtVuEkQetrL5/T3G9cDwyM
	/nyWwwWSNiQP8PCK0H1Xk24=
X-Google-Smtp-Source: AK7set8rsuzH7yN78slyTxC9mJjqgYwMK3SOrRW/Yauo+Zbx9QqPOLC+e13WAqIvGf60mze3ngv3Fw==
X-Received: by 2002:a05:6402:274b:b0:4a0:b978:452f with SMTP id z11-20020a056402274b00b004a0b978452fmr12164001edd.14.1674853129203;
        Fri, 27 Jan 2023 12:58:49 -0800 (PST)
Received: from [192.168.0.7] ([81.221.234.235])
        by smtp.googlemail.com with ESMTPSA id r22-20020a1709064d1600b00878803d4049sm2280308eju.93.2023.01.27.12.58.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 12:58:48 -0800 (PST)
Message-ID: <0def27f27e7f868ffc635086ec05c41479bd3fc5.camel@gmail.com>
Subject: Re: [yocto] [PATCH] samhain: rework due to changed oe cache handling
From: Max <max.oss.09@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	yocto@lists.yoctoproject.org
Cc: Max Krummenacher <max.krummenacher@toradex.com>, Martin Jansa
	 <martin.jansa@gmail.com>
Date: Fri, 27 Jan 2023 21:58:48 +0100
In-Reply-To: <6b728be4c46a8cf1c757bf766732ce18683f5ce7.camel@linuxfoundation.org>
References: <20230127123047.207925-1-max.oss.09@gmail.com>
	 <6b728be4c46a8cf1c757bf766732ce18683f5ce7.camel@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 20:58:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59087

Am Freitag, dem 27.01.2023 um 16:14 +0000 schrieb Richard Purdie:
> On Fri, 2023-01-27 at 13:30 +0100, Max Krummenacher wrote:
> > From: Max Krummenacher <max.krummenacher@toradex.com>
> > 
> > OE-Core changed the cache handling which made the use of ${BPN} fail.
> > 
> > > Parsing recipes...WARNING: .../samhain-standalone.bb: Exception during build_dependencies for
> > > do_configure
> > > WARNING: .../samhain-standalone.bb: Error during finalise of .../samhain-standalone.bb
> > > ERROR: ExpansionError during parsing .../samhain-standalone.bb
> > > Traceback (most recent call last):
> > >   File "Var <MODE_NAME>", line 1, in <module>
> > > bb.data_smart.ExpansionError: Failure expanding variable MODE_NAME, expression was
> > > ${@d.getVar('BPN').split('-')[1]} which triggered exception IndexError: list index out of
> > > range
> > > The variable dependency chain for the failure is: MODE_NAME -> SAMHAIN_MODE -> do_configure
> > 
> > Simplify the setting of MODE_NAME and SAMHAIN_MODE by moving them from
> > the inc file to the recipe files where we know their values.
> > 
> > Relevant commits to produce the error:
> > bitbake:
> > ee89ade5 cache/codeparser: Switch to a new BB_CACHEDIR variable for cache location
> > oe-core:
> > 7c15e03dd3 bitbake.conf: Add BB_HASH_CODEPARSER_VALS
> > 
> > Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
> > ---
> >  recipes-ids/samhain/samhain-client.bb     | 3 +++
> >  recipes-ids/samhain/samhain-server.bb     | 3 +++
> >  recipes-ids/samhain/samhain-standalone.bb | 3 +++
> >  recipes-ids/samhain/samhain.inc           | 8 --------
> >  4 files changed, 9 insertions(+), 8 deletions(-)
> 
> This is the second report I've seen of this. I'm wondering about
> changing the default PN dummy value in bitbake.conf to include a "-"...
> 
> Cheers,
> 
> Richard

Richards patch [1] fixes the parsing error too. So we can drop this
one unless the simpler logic is worth taking it.

[1] https://lore.kernel.org/all/20230127163308.2649311-1-richard.purdie@linuxfoundation.org/

Thanks Richard.

Regards
Max



