Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web12.194364.1598275618663347519
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Aug 2020 06:26:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Ys5cDCG1;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id u18so8326429wmc.3
        for <yocto@lists.yoctoproject.org>; Mon, 24 Aug 2020 06:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=UhzPkMHOd/aUM9pD0O9vTg7gbavuZev5zteMzfLYLdo=;
        b=Ys5cDCG1QZLSDzeJtTtEEMXo+tHVJMWO2ve3IUZcTcuVrVKQcR/IQgIdwdqLo9HKTn
         pGW8NnN41huXnWKxCHSQkY/Hhhc1I8kMQYyTOPSLJXZACOgWVkO8TbVpN9TRcZFnCG9t
         by9OBShwCJH4m5K6ALgs8MWnV/+s7pBxelVVo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=UhzPkMHOd/aUM9pD0O9vTg7gbavuZev5zteMzfLYLdo=;
        b=HbKzk6xh0AJ7qHYY/jMVJnLPDj5X54gJKfayCwdF27Il8twG6+wfOZLoUQkgFydHRW
         Go99FcMaAcQrfvHs+/Q0ORLSLhXvqSUydFU8EELt9IgncRZktcJcQt0tJg3BmdBY5xiw
         tW2L0f74BL1A+aVhJAN5aUkkcti9o81xgMjCJKif2uEpnjKxrqzFpHdO8RGP8t97iCH1
         vMfmmeWF9hnojErthJhfoehTPvmHLr64MXWOMvFFHqXNfFtayX5mjfLzgnoxGgix3deJ
         7u8hvNqSuabDGZiagXJ6cm1vx1xTSpjzf2uCe0+PMnf99tDhqIxnLCaDAB2uBdNEzkI4
         FRHw==
X-Gm-Message-State: AOAM531IwVt8zavcKfIZE6x5wuXmoYNrG/FnA/1UYyRaIq8BbBVP+X2v
	J+Mygh00baJLmoT29t5MjUkjXg==
X-Google-Smtp-Source: ABdhPJzh2tHOP3daMopULgGV78KLSGUBxHr3wbeE2EHY6b3MAQj/XuV/rT+K5OczcHNlAxHKBRT37Q==
X-Received: by 2002:a1c:e4c3:: with SMTP id b186mr5564882wmh.84.1598275616980;
        Mon, 24 Aug 2020 06:26:56 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from d.d.0.9.8.0.3.8.5.d.6.d.5.a.5.4.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (d.d.0.9.8.0.3.8.5.d.6.d.5.a.5.4.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:45a5:d6d5:8308:90dd])
        by smtp.gmail.com with ESMTPSA id u3sm23123300wml.44.2020.08.24.06.26.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2020 06:26:55 -0700 (PDT)
Message-ID: <f5fefdf3d0e61080c8f36a76aec419274f0f3d2d.camel@linuxfoundation.org>
Subject: Re: [yocto] Additional log handler
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Joshua Watt <jpewhacker@gmail.com>, Konrad Weihmann
 <kweihmann@outlook.com>,  "yocto@lists.yoctoproject.org"
 <yocto@lists.yoctoproject.org>
Date: Mon, 24 Aug 2020 14:26:52 +0100
In-Reply-To: <5e250483-1277-7e3e-8422-a245e3978e15@gmail.com>
References: 
	<AM7PR05MB6881DD773BB8FDC78B4470E1A8590@AM7PR05MB6881.eurprd05.prod.outlook.com>
	 <e83e206763f44e2b5fd4622e8a336355df3bf655.camel@linuxfoundation.org>
	 <5e250483-1277-7e3e-8422-a245e3978e15@gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-08-24 at 08:10 -0500, Joshua Watt wrote:
> The newer log handling uses Python's structure logging configuration
> [1], so you should be able to use whatever capabilities it has
> (including logging different domains/levels to a separate file). In
> fact, this is the only way logging is handled by core bitbake now;
> all of the other logging mechanisms used by the UI are additional
> configuration specified on top of the user's BB_LOGCONFIG file. If
> you are interested, you can see this in bitbake/lib/bb/ui/knotty.py.
> In that file is an additional tool that might be helpful. Around line
> 553, there are two commented lines of code:
> 
>     #import logging_tree
>     #logging_tree.printout()
> 
> uncommenting them and installing the logging_tree python package will
> make bitbake dump the entire structured logging configuration to
> stdout on startup so you can look at it.

On a slightly different but related note, could we remove the
debug_domains code now? I assume that can all be handled by
BB_LOGCONFIG?

Cheers,

Richard

