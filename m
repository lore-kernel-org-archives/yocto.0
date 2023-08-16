Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED4A1C04A94
	for <webhook@archiver.kernel.org>; Wed, 16 Aug 2023 12:05:48 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.159109.1692187544614175482
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Aug 2023 05:05:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=d4Nrx/n4;
 spf=pass (domain: linaro.org, ip: 209.85.167.49, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-4fe457ec6e7so10388138e87.3
        for <yocto@lists.yoctoproject.org>; Wed, 16 Aug 2023 05:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692187543; x=1692792343;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3y9w78BZzP9w/hXkwuHi3/apUsU1gqvfxfb5FZ7itzY=;
        b=d4Nrx/n4rGi6tzMda9FuT54VuAuFZ8+V90nsL8z5R+qB/gr/iHYFPgtprnYtsx0RTn
         kTq1k5pJHQx7IAEOol7p73did485uicMCoa3K7mHlhrx37ELMIeesnT7c8CX7ECfwAPZ
         /3TN36CiMsrLpJr7yKFnU2NviUEo4WeGkZVOaW8BFgaWGHpYOs9dPA0wYD2fSBOZ9yd2
         4LjgTeGBebvQEZhH+C9mMxYqMNW758TDIdINpDUuAj3qfBnYoqdRYw2Ka1rt4dI5Tnma
         CkLppdUYyV8gMN+Y4GUVxxfXSlSD6+wkR3caxd82HhRWXYdvAaIZXjxP6GCt6qn+23C4
         yJwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692187543; x=1692792343;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3y9w78BZzP9w/hXkwuHi3/apUsU1gqvfxfb5FZ7itzY=;
        b=RJ/4KWnMfnqZpAtiU4QgiAqo4bcv1sIMYrxFoEA/aj3Gza66xkjPduqwxAZuxEzMbH
         B8tLhTgpHHR5dqMn/ydngsNOw4gTBzKro/syHjyvKOBHgryiqYYwGr7zq1VavuAiU6Xw
         lweGMvH380OQkCyWVh9XAnXoRx8/t71i1+dO2buTELaL/Y59JN/nr/wHeqVtaKEYdt4J
         3VDYI5ZTyuYPemk5G9LmJLa8BSM90k+07JVk5gsHyL4Or6c7XrXbth5QaBSB4Srq/4/3
         BE/bO8J9fvDZiKx4WK9fhPDON/I6ReWe6A2FSW1/A6xhS4+u4aLI/B/fObOTgrV0G/V1
         0WPw==
X-Gm-Message-State: AOJu0YyTLGiUFbIRPnUltbewQbPeK7QkzZsfCfq79U8WI8TdYA8vZ0dh
	bpUF2YVCmShid5GD/xfBhfL2mA==
X-Google-Smtp-Source: AGHT+IG3ipG4ceNmgjAZFgO5QS2b7r3qyFxg7gABZo+9aympEXAS8fD3eev6priSmFIKL0roJpZ1Ow==
X-Received: by 2002:a05:6512:522:b0:4fd:d08c:fa3e with SMTP id o2-20020a056512052200b004fdd08cfa3emr1189723lfc.42.1692187542691;
        Wed, 16 Aug 2023 05:05:42 -0700 (PDT)
Received: from nuoska (dc7g6tyjby-d304c4945t-3.rev.dnainternet.fi. [2001:14ba:16cb:a800:e107:c77f:6058:ee33])
        by smtp.gmail.com with ESMTPSA id t4-20020ac243a4000000b004fe061269edsm2916453lfl.249.2023.08.16.05.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Aug 2023 05:05:41 -0700 (PDT)
Date: Wed, 16 Aug 2023 15:05:40 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: nicolas.wirth@speedgoat.ch
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to switch between package version ?
Message-ID: <ZNy7lBOvfDQheQ5j@nuoska>
References: <ZNyvYwadnDXBDsQm@nuoska>
 <19617.1692186953072162853@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19617.1692186953072162853@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Aug 2023 12:05:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60808

Hi,

On Wed, Aug 16, 2023 at 04:55:53AM -0700, Nicolas Wirth via lists.yoctoproject.org wrote:
> Hi Mikko, thank you for you're answer which was very insightful.
> 
> > 
> > If that is not available, check if you can change the branch of an existing
> > meta layer to provide what you need. Note that mixing
> > layer branch names is frequently possible with minor changes, e.g. using
> > meta-security master branch with kirkstone LTS poky.
> 
> Could I ask you to elaborate on this subject or share some resources about mixing layer branches ?

There isn't much documentation. It's more about just doing it and resolving any issues
you find. For example BSP deliveries from vendors frequently only support older yocto branches.
These should not dictate the poky release for the full SW stack when for example only kernel
and bootloader are needed from their delivery. Thus using older BSP layer with the kernel
and other recipes with a newer poky is a matter of configuring the build system and resolving
any build failures from e.g. newer poky and gcc. The layer compatibility setting meant to warn
and prohibit from doing this, but this can be overruled in other layers by setting
e.g. LAYERSERIES_COMPAT_security-layer += "mickledore kirkstone" in layer.conf of your own
layers. If large parts of a layer (BSP) are not needed in your configuration and cause
build issues, then those can be hidden by setting BBMASK for those paths.

Hope this helps,

-Mikko

