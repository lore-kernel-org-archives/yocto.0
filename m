Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.42770.1595264558055585399
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 10:02:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YHqpc/4y;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id z15so18556530wrl.8
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jul 2020 10:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=tOLkFCB3B8fzm4WDo3630FNM8/RhqpHaLTXpz4nn3BE=;
        b=YHqpc/4y2WOTeJcgI+SQlTV/1oq7RdsFwp8gEvW1KBPM/gmQXl5z+NZzwBwL3buoaw
         bibFfaQOGVA5PoR8U4KD3DHHB8KadrJPOCuL8MHEfA7geK6pOXEyRzlgrLurrN9Pyy2g
         WIZuAvxzBTUR+mWuZP8sXXUPh7curQ5NkYFK0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=tOLkFCB3B8fzm4WDo3630FNM8/RhqpHaLTXpz4nn3BE=;
        b=QftU6lHhzjhrxd9+/wx68EUp4kul+Q60BUerxVAvz05wKo9861pFQhVFacNXE/1oG0
         BTPN2Jq8giz3ytOXKCq0kHEVRLHG7VEhKiLpoGV7DnqeddIWZwFB1LrZDgDMdDBKqSHf
         yfsE4UvPGDQRnRHjd+P830cmFvFByZaskvFxffEbQlyRPHCTur8zSKYId7CLOZDJ+Qth
         BiAFQKqX6la3Re8ghfpw9Flx/mwJA00n0nLDuH3KAB9dB5gRGAZsanh6rVweY4o8G3cN
         ZDpbAk2m1re7iuV3su4lmMsMsGbkCzJl3W9rr2NqjkHRayE8NqzsNdY2889zblnYVawY
         1GEw==
X-Gm-Message-State: AOAM533BMipgMEI13tvrYnHQ9aIXN0kTOU5Td+1LfjIg3fTFNXU3YVPX
	SH/g+SieXVbd7lR+Pj7s6Lzd4Q==
X-Google-Smtp-Source: ABdhPJwgr3XYbJsM/cimxrhZT5JzX2/8Ssm6SmHyXDRXRoFAxvmO2sQEaj2J/Yduhdl09h4Qs8H5HA==
X-Received: by 2002:a5d:6809:: with SMTP id w9mr24447944wru.182.1595264556471;
        Mon, 20 Jul 2020 10:02:36 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 5.f.a.a.6.6.c.6.8.7.0.3.0.b.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (5.f.a.a.6.6.c.6.8.7.0.3.0.b.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:1cb0:3078:6c66:aaf5])
        by smtp.gmail.com with ESMTPSA id e8sm33108814wrp.26.2020.07.20.10.02.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 10:02:35 -0700 (PDT)
Message-ID: <224f8a27bc8a2c8074f78e32dcac025686ed420c.camel@linuxfoundation.org>
Subject: Re: [yocto] Adjusting Extensible SDK for build setup
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Mon, 20 Jul 2020 18:02:34 +0100
In-Reply-To: <5f15c655.1c69fb81.b5042.e2fdSMTPIN_ADDED_MISSING@mx.google.com>
References: <5f15c655.1c69fb81.b5042.e2fdSMTPIN_ADDED_MISSING@mx.google.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-07-20 at 16:28 +0000, Monsees, Steven C (US) wrote:
> Yes, this is what I saw as well...
> 
> I had to add two lines to the populate_sdk_ext.bbclass to properly
> get it to pick up my env script.
> I set :
> 
> 	OE_INIT_ENV_SCRIPT = "setup-build-env"
> 	CORE_BASE_Files = " \
> 	     Scripts \
> 	     LICENSE \
> 	     .templateconf \
> 	"
> This allowed me to build the "minimale SDK EXT.
> 
> 	SDK_EXT_TYPE = "minimal"
> 	SDK_LOCAL_CONF_WHITELIST = "SSTATE_MIRRORS"
> 
> Was hoping I would be able to configure the variables rather than
> modify the script...
> Do not want to introduce future support ussues if possible.

Both variables are assigned with weak defaults. Can't you just set
those variables in your own distro config to override the defaults?

Cheers,

Richard





