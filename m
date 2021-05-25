Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web12.9019.1621946654445777951
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 May 2021 05:44:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=aOK/2rUA;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id z85-20020a1c7e580000b029017a76f3afbaso10209643wmc.2
        for <yocto@lists.yoctoproject.org>; Tue, 25 May 2021 05:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=O4sP4eUIi2jPDHUvS4ispaPut405hUNXiSJczKlLlTQ=;
        b=aOK/2rUAFeixjOuMwC+YW99b422hZa0ppjs0sxfkc3Y6/0V1lvkyiGxZZtiNW3P5cG
         wWQBqFnX71ZHD3XZG7ud2YPHF7tWTWZ8xZUFtkCh74i/NoCVf6l8estI0I/GRPMMrShw
         g4tquZ2ZDYQ32s/wFzBNXSarQZPSmSb0MtUtY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=O4sP4eUIi2jPDHUvS4ispaPut405hUNXiSJczKlLlTQ=;
        b=J1cH2n+caN4ESBut/MlAfRjV93hh7QLjVgqr/kqgDTSKwj6uPxw/bn7TrTF7sOilDr
         HVkb+XR0IfQXzKJfx/PuLFB+XJgqRscDMoQWdaYGucjIKfQV7/l/DBz4AMJsYczP3MAs
         7e0DXaC6m9b4jslkB/OJalxFAueevikQHGfWo2Ikd0hwbPz6ZaXxrV9qPhnahhQarvDm
         C9PZ+XBKNmqpAGqd72HZBdyjma4T6kJHxaTpz4vLnxqZlxAYlT/pQsFvG2pTr2Fa7qyD
         fwMDvPGPRe5STGzPmCUEapvKNgPQVlKEaKslrb8BA6Jkjv/9gkCH4MnlvAuw2zgIusve
         mOXA==
X-Gm-Message-State: AOAM533uZstEGWq89NClDqsFnmXYRCHaQ12ru2iLQlLMaa4edg/9A2lb
	VPTcNWUv44WvVZ0/o9MBb1YMaA==
X-Google-Smtp-Source: ABdhPJwpMvtNrAdzcc/dze53+1oG4aewHGWt/t/u4I4U0mTurQvAb1VjoYDiPsqpb+cctX7LPtwL+Q==
X-Received: by 2002:a05:600c:35cc:: with SMTP id r12mr23397629wmq.157.1621946652961;
        Tue, 25 May 2021 05:44:12 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:9654:ad4a:4a61:2e32? ([2001:8b0:aba:5f3c:9654:ad4a:4a61:2e32])
        by smtp.gmail.com with ESMTPSA id y2sm15991478wrl.92.2021.05.25.05.44.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 May 2021 05:44:12 -0700 (PDT)
Message-ID: <f75c8b912e10f2383159c9edac3de2a8f84cee70.camel@linuxfoundation.org>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 3.3.1 (hardknott-25.0.1) is Released
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>, Vineela
	 <vineela.tummalapalli@intel.com>
Cc: "'yocto@lists.yoctoproject.org'" <yocto@lists.yoctoproject.org>, 
	Michael Halstead <mhalstead@linuxfoundation.org>
Date: Tue, 25 May 2021 13:44:11 +0100
In-Reply-To: <8e289c9f6578427d85c56618de3a130d@XBOX03.axis.com>
References: 
	<BYAPR11MB33017216B14BA159AF5601E588269@BYAPR11MB3301.namprd11.prod.outlook.com>
	 <8e289c9f6578427d85c56618de3a130d@XBOX03.axis.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-05-25 at 12:13 +0000, Peter Kjellerstedt wrote:
> It seems the ”hardknott-25.0.1” tag is missing for meta-gplv2. 
> The “yoccto-3.3.1” tag is present.

This was deliberate since we've been trying to step away from the 
"poky" version numbers, I'm not sure they add much to anything.

Is there a particular reason you were looking for those?

Cheers,

Richard

