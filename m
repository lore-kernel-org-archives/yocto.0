Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9798C6FD1C
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 12:34:56 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.100130.1679661289881218020
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 05:34:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=RRZuMS6v;
 spf=pass (domain: linaro.org, ip: 209.85.167.47, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f47.google.com with SMTP id h25so2058194lfv.6
        for <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 05:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679661288;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6TJMLeHdTNB8h0LtoH2mGTMKzPhK6cHs8oHEhUZWxCs=;
        b=RRZuMS6vIZJKh8dmkYCyzTn5+44GzOCQ3dpZ3g62Yn2FNhpEvXRrGOmARpyMrZNyfU
         lRGUA0cSk5vhc0aA3U2ZQD9+oJc3xsT8EWEid0q+NUz68+1yeGrzvt5SByq5PqrAnkDw
         6Io4pYBD85x1h0q+04Oi0+eYvfMZu2s8iBq05ZenvhtDpYkXGdwlUeg/pLX037nZgzjK
         SWSn7v6WEIdZZcUeIRAvW+ZWJC7EFctOLFQkWcWVQqeYjBjNnz6b2NwEp5/WN5Oe+8am
         HvHSwcP4GmS+EJSNRtMIpUi1kDnSmnpYVh0CUh/EY2mqyjMnB4TxOtG9cqHreEOEWt/y
         VVUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679661288;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6TJMLeHdTNB8h0LtoH2mGTMKzPhK6cHs8oHEhUZWxCs=;
        b=XwwCuV1TdueHp576Sk/TIRtWIUcmV4ZJLvhWYzXXbZdfb0QUwHspeJ3kSnIKTrg561
         bQDyZJ2JLJ3bJTT3Qf+gviUU08Yp5JcdpiKsT5ueAjCZNjTZj3ACmlQ6mg1AJV1hi5lE
         proTYpJLojgVhjyYgyQfZ5va4+MGICWr+BS2JDfY82C+s+FE+n5DfdB10eSGnwfsWVCY
         QmX7TNI+Sov7H9Fi69IAfYCXOnVI8eDTk5lFiOln1PKiSerWOII8X0NPhd3sj2ZkwzsQ
         PpRpL1l13fFmS+o+J1e4VD5ln6Y3zUJODxqP6I5IKbYZInqAbK3y+LLF611tKoijTzwC
         qu1A==
X-Gm-Message-State: AAQBX9cunL3tvIVytTh7JLbEj3Y6a3AaCkdWlpwmcoSJAQIIVVaC7Ax7
	o43+ar0mQpWm/Fc7On4u0IMUgw==
X-Google-Smtp-Source: AKy350ajwlUMyHEIl64+VkW4Utr3UylslWQjsRHZylwVH/QgEHLqzrLgpSJGaIX1ltWF/OeC/ACIGQ==
X-Received: by 2002:ac2:5591:0:b0:4e8:41fc:b37 with SMTP id v17-20020ac25591000000b004e841fc0b37mr668316lfg.10.1679661287899;
        Fri, 24 Mar 2023 05:34:47 -0700 (PDT)
Received: from nuoska (dsl-olubng11-54f814-94.dhcp.inet.fi. [84.248.20.94])
        by smtp.gmail.com with ESMTPSA id s12-20020a19ad4c000000b004eafabb4dc1sm734750lfd.250.2023.03.24.05.34.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 05:34:47 -0700 (PDT)
Date: Fri, 24 Mar 2023 14:34:44 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Anton Antonov <anton.antonov@arm.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-security][PATCH] parsec-service: update from 1.1.0
 to 1.2.0-rc1
Message-ID: <ZB2Y5JBzeg2z10aW@nuoska>
References: <20230323072457.639997-1-mikko.rapeli@linaro.org>
 <21387.1679660671564653204@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <21387.1679660671564653204@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 12:34:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59517

Hi,

On Fri, Mar 24, 2023 at 05:24:31AM -0700, Anton Antonov wrote:
> Hi Mikko,
> 
> Thank you for the patch. In general I don't mind switching from "cargo bitbake" to "bitbake -c update_crates" for Parsec recipes. But, in this case when you use a git repository instead of a Parsec crate the cargo-update-recipe-crates class includes dependency crates from "fuzz/Cargo.lock" which are not required for Yocto builds.

Ok, will remove these.

> If you urgently need a new Yocto Parsec recipe then please remove all the fuzz/Cargo.lock dependencies. Otherwise we can wait until Parsec 1.2.0 crate released.

parsec-service recipe has been broken for weeks already. I want this
to be resolved and backporting fixes to parsec 1.1.0 doesn't seem to
work.

Cheers,

-Mikko

