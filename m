Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB10EC27C7A
	for <webhook@archiver.kernel.org>; Thu, 17 Aug 2023 07:47:47 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web11.181843.1692258465790941696
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Aug 2023 00:47:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=efB+AXLc;
 spf=pass (domain: linaro.org, ip: 209.85.167.53, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-4ff882397ecso3925399e87.3
        for <yocto@lists.yoctoproject.org>; Thu, 17 Aug 2023 00:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692258464; x=1692863264;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=B++ynFjzW9lquObdCxyas6p0G7xHWMUSNIPFU8ejQiY=;
        b=efB+AXLcKZafizWo88DosFaMWlzL4E29e9bLsIGZ83Mjfxnx+XDxCfZbNNio1Nh8o/
         HVCbYaeE4t7kUBRnSQs7ytdTUQcK7ESZAKILnoyrJhmXSnonlo2AtkU5A9UfaaYkd8+H
         YUfd9krKJD9mNM1n15QzibSTqhZfqlS0u6z4US83ZNVjHImM7JvqdvFz/2RySmF1gq0k
         7maYhn4slYqr/jh1T2JUaWeYNl+lZk3ByWDfeGkdABTz1Zr6UP2GtDXLph/6IVnM4keA
         75sbOuqFtGE/7hXPeKqIOO+THm9ONwt1IenmefGkA9C6WK0zYS1qxSt0AAFFS+PWp5W8
         gjLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692258464; x=1692863264;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B++ynFjzW9lquObdCxyas6p0G7xHWMUSNIPFU8ejQiY=;
        b=eKyR5R00skiThPXxsw4xUQWbCv1DPZ6D9nk1dZOAzOdMheQeNeSp1sY46rqH2NCjNR
         n+wgwImaR3aP+FRVc9Hmp4Hp5sW8ZPY7vO6Q9401JecDi/nzuIqG9OQ8mIjdHAPSBwqd
         UWTFT0QhKqsjvjG71yrKp40vmGLZMfUOaXZh3PvGJiep/HyFxcgyiFOWaL9J+H9BjBML
         k3LB18Feg9pzVYamNUSGl+Tpcz5ZdPd2iRqzxxVUHVFJjLOKXGbpYx3yJx2o2i5BKXBW
         5S4Nklgoqo5Kcf1tTwmP3ppMIMVMj7NvmBWcw2dv3UI1PmCkPxryYs8K2N8Co8EQZCVm
         TRLA==
X-Gm-Message-State: AOJu0Yxf35xQ0MnzGmJELepvQJINTd8jdhylqI9tKi6Q1+sLY41ngSS0
	P/9rRNmfMhcMTdNZlyvaKKlMPQ==
X-Google-Smtp-Source: AGHT+IE/yoowmdebgeKrTfIumdhVz6oCWVXQFByhT0Ltt5iy88Fud09laXKMmywfj1BJ8vGutHibCw==
X-Received: by 2002:a05:6512:2525:b0:4fe:5654:9d00 with SMTP id be37-20020a056512252500b004fe56549d00mr3818635lfb.48.1692258463940;
        Thu, 17 Aug 2023 00:47:43 -0700 (PDT)
Received: from nuoska (dc7g6tyjby-d304c4945t-3.rev.dnainternet.fi. [2001:14ba:16cb:a800:e107:c77f:6058:ee33])
        by smtp.gmail.com with ESMTPSA id z10-20020a19f70a000000b004fe2a88b271sm3255764lfe.139.2023.08.17.00.47.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Aug 2023 00:47:43 -0700 (PDT)
Date: Thu, 17 Aug 2023 10:47:41 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: nicolas.wirth@speedgoat.ch, yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to switch between package version ?
Message-ID: <ZN3Qnbg+DLPeOTwa@nuoska>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANNYZj9iCmC5_HHhv9jvQGsohh-whcn=+J2hVRDrgH+Jjd23bw@mail.gmail.com>
 <177BD8C48AE805D0.8497@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Aug 2023 07:47:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60816

Hi,

On Thu, Aug 17, 2023 at 09:37:51AM +0200, Alexander Kanavin wrote:
> On Thu, 17 Aug 2023 at 06:41, Mikko Rapeli <mikko.rapeli@linaro.org> wrote:
> > One of the major problems with yocto major updates is that it becomes a big bang,
> > everything must be updated at once. This can be split down and individual layers updated
> > one at a time while keeping poky on the old version. This requires working around
> > layer compatibility, which in many cases is quite artificial and just indiciates that layer
> > is not tested with the other poky versions but it might still just work.
> >
> > I've done this so many times now that I don't see any reason to hide it,
> > also because many non-core layers are simply not maintaining other than master branch
> > exposing users to obsole and insecure SW if they stick to the branch name.
> 
> Getting around LAYERSERIES_COMPAT or using BBMASK in order to update
> layers one at a time is not the problem here. The problem here is that
> a newcomer wants to have an older boost (which is in poky) with a
> newer everything else (which is also in poky). What I'm trying to say,
> nobody stopped and asked, what are they actually trying to do? What
> made them think they need an older boost? Why isn't a newer boost
> suitable? Maybe it is, with a bit of work?

Yes:

On Wed, Aug 16, 2023 at 02:13:39PM +0300, Mikko Rapeli via lists.yoctoproject.org wrote:
> First, I would seriously question and fight back on requirements which dictate using
> old, possibly unmaintained SW versions with a lot of known CVE security vulnerabilities.
> Updating to a new boost version is straight forward work and almost all of the compile
> etc issues can be resolved using Internet search engines since most open source projects
> have also done the same.

We agree on this.

Cheers,

-Mikko

