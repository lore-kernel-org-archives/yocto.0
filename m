Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0441AC433FE
	for <webhook@archiver.kernel.org>; Tue,  1 Feb 2022 08:08:05 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web08.45470.1643702883810984837
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Feb 2022 00:08:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WQkgFP4C;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id v13so30207251wrv.10
        for <yocto@lists.yoctoproject.org>;
 Tue, 01 Feb 2022 00:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=Zb1JoAsDwRwjG6O2s8/XYlhed6+N5W6GfHge4xQ2R40=;
        b=WQkgFP4Cmiwz0bGHSiTYLiiXxFdIDWzFinFbpz6DSeC1luI2AxmAhxbAPB22JBro7z
         S+tdGEYIvxAJy9JxLVzXPa7zggA+73Z5cF+APP1qfg3wkIU3VyuipyYBwuuSXIK3/SFC
         /9dJAQnmUxddan3T0TDMNeTDEHI0nuZiBIxD0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Zb1JoAsDwRwjG6O2s8/XYlhed6+N5W6GfHge4xQ2R40=;
        b=dL9+mT0sxGm+mU6RJ/gbn/KpUHtzJwnrfA5KjmD2OAnnRKjMsLulA7xlpnaOwHIb0s
         cnd5On270kt43akhCjEoLMM5WcTpG/F97DHEttANYJEhwf3Cd0A684iYIvnv9F/ucI2B
         UwT+DQHR1t5tsxSfYd55YYu8TX6mn38BTGHM2WvejMZ6Fq+q9hWqI2E90DhEPuij+Kq+
         hyScGtvplWmSO6VlCPKTS+4Sstk2qO9+S3iqwY68CIt4suiTV8uEZSQynjdkTZfWPWML
         570I2VhufSKNwcs4w4WCGrZFg3Si+u1u3/pR3yxfB6EVXsjYV0gmyRVZUFk25OXqoUjx
         d97w==
X-Gm-Message-State: AOAM532pe9/2NmPm6ZwJyo6bD+RXbPKIrZDuWWuXAWO3hEJ9A3/Qs2Tt
	TxVsM84oc9SRjby+mY4FDf3PjmtZ9ZpjtA==
X-Google-Smtp-Source: 
 ABdhPJwIA/hgn/AwfE0rSpoVMk1wzc8ASZvP/TB6/DAqSMEw2GFQsG5Ni+Sw3rCK0cgDMld3xieSNw==
X-Received: by 2002:a05:6000:15c4:: with SMTP id
 y4mr16755194wry.522.1643702881780;
        Tue, 01 Feb 2022 00:08:01 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:687d:5e4e:cf88:f9f9?
 ([2001:8b0:aba:5f3c:687d:5e4e:cf88:f9f9])
        by smtp.gmail.com with ESMTPSA id
 m187sm1321012wme.25.2022.02.01.00.08.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Feb 2022 00:08:01 -0800 (PST)
Message-ID: 
 <f291b53c64f3ff2f8b98e26f1213db151a651f73.camel@linuxfoundation.org>
Subject: Re: [yocto] Additional hardening options
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <bluelightning@bluelightning.org>,
	yocto@lists.yoctoproject.org
Date: Tue, 01 Feb 2022 08:08:00 +0000
In-Reply-To: <3150587.aeNJFYEL58@linc>
References: <3150587.aeNJFYEL58@linc>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Feb 2022 08:08:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56039

On Wed, 2022-01-26 at 14:39 +1300, Paul Eggleton wrote:
> Hi folks
> 
> I've been looking into a couple of compiler flags for hardening that I think we 
> might want to consider enabling by default in security-flags.inc:
> 
> 
> 1) -fstack-clash-protection
> 
> This option was introduced to gcc 8.x and provides protection against the 
> stack clash vulnerability:
> 
> https://securingsoftware.blogspot.com/2017/12/stack-clash-vulnerability.html
> 
> It has been enabled in some Linux distributions already (e.g. Ubuntu, Fedora).
> 
> 
> 2) -z noexecstack (or alternative mitigations)
> 
> gcc will enable an executable stack under a few different circumstances - see 
> here for details
> 
> https://wiki.gentoo.org/wiki/Hardened/GNU_stack_quickstart
> 
> I've written a check that we could add to insane.bbclass that warns/errors on 
> binaries with an executable stack. Does this seem reasonable to have?
> The other possibility is we add -Wl,-z,noexecstack to LDFLAGS and then see 
> what breaks, but unfortunately issues are likely only going to show up when 
> the program crashes at runtime, and also it will stop the aforementioned check 
> from working.
> 
> 
> Any opinions?

These seem like reasonable things to do, are there any downsides to them?

I'd be happy to test some patches, see if they do cause issues...

Cheers,

Richard


