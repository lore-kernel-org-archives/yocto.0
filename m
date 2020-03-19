Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
 by mx.groups.io with SMTP id smtpd.web12.10165.1584618521000941766
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 04:48:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=N/fQ8fb3;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f67.google.com with SMTP id w10so2541825wrm.4
        for <yocto@lists.yoctoproject.org>; Thu, 19 Mar 2020 04:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=JMhuv6r+t3uC5on359QuwQ7ps+xKRkU3NqyqvYhcO1E=;
        b=N/fQ8fb3dk90x/3Hc3uUS/kyJiuXwLLc7jRox/gVKkM5+aI/XgSnVAClFQnm+ek8PG
         m49uhQybuaTlACeIVzXSNlcNNoHrOZEMPXP5AlaRH5yHLjTYAdnk8/iX4PQScqZjLGHh
         OaxXlH0AF/Rxl31cIqhhnwveXybTe4UTyAvLY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=JMhuv6r+t3uC5on359QuwQ7ps+xKRkU3NqyqvYhcO1E=;
        b=p9vpsqqyPEhu93qvevpKPQux0xO0ozVRWAr3i64iQJSbgGXLLzg+MmBhGvumQy4tZc
         6K6g7WGTyH895psf708S0yEP52KZeC4lM0SIUiXXzALIjR6A6WuA6MYKNucmsbzih9Xe
         BYMt+jCLuhXTK2ffUPrjl6laegMzLWILJC1etCIR1fUax9x5PdUbSJeoPOHSzSvCXtwY
         gxJg4rTSz/U7j3dbTJTrrEBPeaOjSJ58KoPnXJPOh2N0u8TiOgJZXLlZ4YU2HZTbKVx8
         sykVcK4QqeODC+a7FeOFbpl7YNIK2oizQoqgSbBABiusNpFsCLUrfdvBFklVXtnkJF54
         Ulzg==
X-Gm-Message-State: ANhLgQ1TN2a8rhkAQC7+6D1aOsqM1eisgyhqTdLUrARBJFX9z++7n4w4
	k3ACceXljilliVi2W0yTjnD26w==
X-Google-Smtp-Source: ADFU+vsN5ZkeeI4my8yVwinyqtKlF1L9x/BBq/10a6slAVTMRWeqloofJoooMJ6Eij8FdH+k8MwZvQ==
X-Received: by 2002:a5d:56cd:: with SMTP id m13mr3714372wrw.236.1584618519490;
        Thu, 19 Mar 2020 04:48:39 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id g14sm2866223wme.32.2020.03.19.04.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2020 04:48:38 -0700 (PDT)
Message-ID: <da6293620f6329b7310c536e59746952229a474b.camel@linuxfoundation.org>
Subject: Re: [yocto] What are the key factors for yocto build speed?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Mikko.Rapeli@bmw.de
Cc: ross@burtonini.com, yocto@lists.yoctoproject.org
Date: Thu, 19 Mar 2020 11:48:37 +0000
In-Reply-To: <20200319114322.GX104502@korppu>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
	 <f53ec55d-5f43-4ea3-f9a7-827f0f29154f@topic.nl>
	 <8032ed75-802c-9dd3-2d76-f468159b90af@burtonini.com>
	 <20200319080514.GR104502@korppu>
	 <bcab55b919af5da30e9b8fe3db0cc6537ac3f785.camel@linuxfoundation.org>
	 <20200319114322.GX104502@korppu>
User-Agent: Evolution 3.35.91-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-03-19 at 11:43 +0000, Mikko.Rapeli@bmw.de wrote:
> On Thu, Mar 19, 2020 at 11:04:26AM +0000, Richard Purdie wrote:
> > Recipe parsing should hit 100% CPU, its one of the few places we
> > can do
> > that.
> 
> I'm not fully aware what bitbake does before starting task execution.
> With sumo, there is an initial spike in CPU use and then a long
> single thread wait where log shows "Initialising tasks..." and Cooker
> process is using a single core. For me this takes at least one
> minutes for every build. Same is visible with zeus too.

This isn't recipe parsing but runqueue setup and taskgraph calculation
which happens after parsing but before task execution. More recent
bitbake is probably a bit better at it but it is unfortunately a 
single threaded process :(

Cheers,

Richard

