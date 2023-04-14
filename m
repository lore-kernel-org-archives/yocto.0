Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF482C77B6E
	for <webhook@archiver.kernel.org>; Fri, 14 Apr 2023 07:24:19 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web11.3668.1681457053839388094
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Apr 2023 00:24:14 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linaro.org header.s=google header.b=GxjVmWhC;
 spf=pass (domain: linaro.org, ip: 209.85.167.49, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f49.google.com with SMTP id h37so5473166lfv.0
        for <yocto@lists.yoctoproject.org>; Fri, 14 Apr 2023 00:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681457052; x=1684049052;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5jlnjoKqw6ehTp1v8Kf+2o0MTuMO3ZgCWiau7OAHG+Q=;
        b=GxjVmWhCXo3/1lrFN6sC9gYZ5RXJfv9wPe4bl/HtDBAYedIo9RU/DVtlPSwDyXLJlJ
         zdr0r6TXIEUzBLgpbAPKBzFDuR3jbkQiNxKJ6rrBkfr19C1+v/xrMgy23avYkKipdfKS
         us9866aUpx5KYM9vOAo3Zi1+JbUMzCSq84P3i8n4MQbG7aJBf9ruGCgcXf+gwhv0MaWD
         AEvFtaCDEF2pSAOkdLEVsLNfabAyJ3JUXODyBTBRzycff7rRdWGj9KXruvG7KIl6nlgA
         b8wbAbP+V6w6aCVNGBHRPb8SlhxcvZ7/nZshfgm6E7EzA5dyxMfmdofToeVAN42Xibxo
         aupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681457052; x=1684049052;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5jlnjoKqw6ehTp1v8Kf+2o0MTuMO3ZgCWiau7OAHG+Q=;
        b=C3xpsisybb30bOUI9ScPFri5oSe/KP1bWctvlTo6fh6deJHSMyTWHoG6OgVC5U/1Pb
         Ycawpebgwt5T4rhk54qpJjktSNO54k0cbOY9kMTYWTTC3YJkDf2iqNo+Jg9FR8a2AVyL
         D5nR2d0uMCqgEQNSRGGcOmixoIeRkFz9sQZFIUT2UOkbLgzBHkiZpSRI4hZCYFPoKx/Y
         shD7Fvp+ci4PWKQbka7fBvkVE1j6Z2O5KlTge/RXk2EI8vA7xVK4Yc7XHYr4xKQYoUZG
         GypxKEFcOYOC5dqqpGH+gzGFyG49i1b+YIed7gcl4GliCNhRqO87zxtMX3GBLFa0mzsb
         X7Aw==
X-Gm-Message-State: AAQBX9eDWpGRH6pHvT5AePtz710HbfpyYJE0oWWrsmh7EGDrBDDpW3QT
	5LxZh66mOsEVtKt6K6rJW037nw==
X-Google-Smtp-Source: AKy350bJhRKHWtCKyTLEQq23GIzjyEki0ez09QreOs/6TtjyNqjV3RdZey799RMLI6mkXin1zZHJoA==
X-Received: by 2002:a05:6512:1021:b0:4ec:a115:6e5b with SMTP id r1-20020a056512102100b004eca1156e5bmr2182755lfr.57.1681457051964;
        Fri, 14 Apr 2023 00:24:11 -0700 (PDT)
Received: from nuoska (dc7g6tyjby-d304c4945t-3.rev.dnainternet.fi. [2001:14ba:16cb:a800:e107:c77f:6058:ee33])
        by smtp.gmail.com with ESMTPSA id m11-20020a056512014b00b004ecad67a925sm665452lfo.66.2023.04.14.00.24.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Apr 2023 00:24:11 -0700 (PDT)
Date: Fri, 14 Apr 2023 10:24:09 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: philippe@rmds.ca
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Give access token to yocto build. (pass environment
 variable to bitbake)
Message-ID: <ZDj/mVscjqoHyegi@nuoska>
References: <YT3P288MB0272CE87F9889C6CDF8F0AEDCF989@YT3P288MB0272.CANP288.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YT3P288MB0272CE87F9889C6CDF8F0AEDCF989@YT3P288MB0272.CANP288.PROD.OUTLOOK.COM>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Apr 2023 07:24:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59711

Hi,

On Thu, Apr 13, 2023 at 07:54:13PM +0000, Philippe Lafontaine via lists.yoctoproject.org wrote:
> Greeting,
> 
> I have a recipe that fetch a pre-built binary from a build machine using an access token. Every developer will have different access token, for obvious reason. Therefore, the token cannot be hard coded in the recipe.
> 
> Our current build setup uses a docker container (crops/poky). Our current solution looks like this:
> 
> The host OS has an environment variable containing the access token. This token is then shared with the docker container.
> 
> Once the yocto environment is source we:
> 
> export ="$BB_ENV_PASSTHROUGH_ADDITIONS PRIVATE_TOKEN_GIT"
> 
> where PRIVATE_TOKEN_GIT is the access token
> While this strategy does work. We were wondering if there was a better way of doing this.

The environment variables and thus secrets are easily leaking into build
logs so I would not use them.

Instead, I would use .netrc for git and anything using curl (http
fetcher). subversion caches passwords into ~/.subversion directory once
the password has been given once.

In CI, these can be deployed automatically using ansible etc and
developers should setup these for their own machines.

Hope this helps,

-Mikko

