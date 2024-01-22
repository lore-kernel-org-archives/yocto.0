Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08DABC47DD3
	for <webhook@archiver.kernel.org>; Mon, 22 Jan 2024 19:45:23 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web10.2088.1705952715284398935
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 11:45:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EraDmMiH;
 spf=pass (domain: gmail.com, ip: 209.85.160.176, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-42a35c720b8so12403071cf.3
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 11:45:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705952713; x=1706557513; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AzYuWIiD5lzFt/mKh8BkkiADHfBTxM1ic23nKgs9vwk=;
        b=EraDmMiHB/Vi3DtrQ+QcG1PR6SBmp0JHlvU5XcqYLQ5D6JUaCd+CSSnKSWQi2dV7Ze
         /0L0oShKQEuyplUL/LivHdytnUmvm6Z0oc+MLvBzQOY1ckdNnpLVKj3AO7leM6PaOleX
         OSFuzqBjoJ8V2/EShfoaOXPDwa4Kop2jgHHdOo7iOZV8yiEKts/AAm+zAZJ1WDfylqp0
         b/3kVGu9Y+1jW43pI/8z5aNwgIOHgDoDSozELTOBHvzKB82NYI1bNvMKJQPNOkgXtSbD
         vR3dBAHmq312VfxkudRClONYQHNX/+NvMperO1PxAS+AeWE24gOnkWrV2vrtle9JvY3A
         76Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705952713; x=1706557513;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AzYuWIiD5lzFt/mKh8BkkiADHfBTxM1ic23nKgs9vwk=;
        b=olCYPIhelRVwHXNoghKT5wi1xERmUDwzyN6vfWc9W86OZQAC7tHJdt4jL2fNZNEngz
         ENIaaa7DysQ51BnuLQmsspFM1Vmnmw6I56WagA3tfAfEGaVAB+XOxk20vWvAeKYyFKae
         PfycqmBo0YvQ19Am2lI+abW53bJNby7WyRE/fnRTEcePpOu9msI4e6pLOt3Sx3wiBv20
         8K80mwg1P5iUejXqiHIv5ldvM8zRoU5gYoENEpebP5GwBFg4/L6W7WaGs7HqH6Vo6zTI
         8bt0oEjq1+IR+1Sp0gksylSD7b2fhUEvkPhJdjMscgwifNliA4bX85dYGrbfyqCozdnN
         i2Gg==
X-Gm-Message-State: AOJu0YzhxWkA4GTkej7erX9Dm8Vvfc/Gd7OKBBy5btYf/rBgFHY27EOY
	Ft6oOl0dFU4OYQL1juyeVooKTnqv96hxI3wRkp/kQ/hHog0oyU0uVmcUasBR
X-Google-Smtp-Source: AGHT+IHq8iZTZv3QMEyraWjxwD1GZQgCvan59b6qSAMgDGx/vnNt61um21HNZ8A+OTnhKiuNM7SXwQ==
X-Received: by 2002:a05:6214:ca7:b0:681:5567:a5fb with SMTP id s7-20020a0562140ca700b006815567a5fbmr7457185qvs.92.1705952713569;
        Mon, 22 Jan 2024 11:45:13 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id f15-20020a0cc30f000000b006817089c8f5sm2647782qvi.10.2024.01.22.11.45.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 11:45:12 -0800 (PST)
Date: Mon, 22 Jan 2024 14:45:11 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: yocto@yoctoproject.org
Subject: Re: [yocto][meta-rockchip][PATCH] wic: implement wic list and tweak
 description
Message-ID: <20240122194511.GC14538@localhost>
References: <20240118084203.3045582-1-git@andred.net>
 <20240122192428.GA13816@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240122192428.GA13816@localhost>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 19:45:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62226

(forwarding to the new mailing list)

On Mon 2024-01-22 @ 02:24:29 PM, Trevor Woerner wrote:
> Hi André,
> 
> Nice to "see" you again. Sorry I missed your email initially since it was
> emailed to yocto@yoctoproject.org. Does that still work? My filters look for
> things in yocto@lists.yoctoprojet.org.
> 
> On Thu 2024-01-18 @ 08:42:03 AM, André Draszik wrote:
> > This now produces sensible output in
> >     wic list images
> >     wic list rockchip help
> > 
> > Signed-off-by: André Draszik <git@andred.net>
> > ---
> >  wic/rockchip.wks | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> Applied to meta-rockchip, master branch.
> Thanks!

