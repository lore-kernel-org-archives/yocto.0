Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web12.9492.1581700478571554870
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2020 09:14:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PHCdRhV9;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id p9so10722818wmc.2
        for <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2020 09:14:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=5vLcIDwx389++QzEBRmMNPe1lGyV3DW1eqTcH4UM7Tk=;
        b=PHCdRhV9b7uXjNDHHvJTtyqy9vrKMv+ZSqxtu8eez0QGEDUcxJyXwZo5sqnz5HkBx2
         4ZQi3TNa/eLzO/gkofvcf842VaKqSWq1Rn8K54Ly86zI0wxNuWpoZCFlv/uWMn6lQV/s
         4XXeBU1af42uEy5LRfIrJR2LRvB5vfVqvJKbA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=5vLcIDwx389++QzEBRmMNPe1lGyV3DW1eqTcH4UM7Tk=;
        b=eH3ZPQmSoREcBBTg8p2lEly2jIqMWLN/A8Lc6S01Ti69coDrz9tX2PfAQhlcaNub8l
         gybCypgyhaW9Yn6C8kxbs3XebsYiBjDKa2xZTxgj3XtP4VN/EvbmBAEcuoUKp9VucsEF
         mPKXhr8zYdy1B012HxlDJ4cwSoduFwEsavhiVxEsjjP/nV2RL3hqDasXCDbuJ8caGzHg
         vdFZDBX+wzvz0pEuW9m7DMC/PsNnQDod2CZqkUUVREviQ3EBMUJDbLG5x2srJuMiKdu6
         4DeV7uhnoF1A9gZ/rUhGvU+dTTk0Z7gHfn+5WLEFinkp8ol/k5Pn9ljnfoKDRQdq3uv4
         Hnww==
X-Gm-Message-State: APjAAAX4FliGBAjPQGTQmyJLie70+zO/b1M8xZpRd2hb0DFf1+kUDfeY
	2aFS0mkUyStYXi/yxEoXHftVLfaLbdA=
X-Google-Smtp-Source: APXvYqwcg9uIsGZtNupbJRoqviFgdeNHOohN4S0k6tsDOkNDpSUrxLDcUkSrZqnA8nMyzYbHT8uw2Q==
X-Received: by 2002:a7b:c318:: with SMTP id k24mr5993970wmj.54.1581700475551;
        Fri, 14 Feb 2020 09:14:35 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id x132sm18154519wmg.0.2020.02.14.09.14.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2020 09:14:34 -0800 (PST)
Message-ID: <136ea71614834c5f06125a77065b638e4ed275af.camel@linuxfoundation.org>
Subject: Re: yocto.io: Add weekly full tests on master branch?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Randy MacLeod <randy.macleod@windriver.com>, yocto@lists.yoctoproject.org
Date: Fri, 14 Feb 2020 17:14:33 +0000
In-Reply-To: <aa56f737-0749-0ab5-4578-4a0189defd0e@windriver.com>
References: <aa56f737-0749-0ab5-4578-4a0189defd0e@windriver.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-02-14 at 12:08 -0500, Randy MacLeod wrote:
> Hi,
> 
> There are many tests run for master-next and reported here:
>     https://autobuilder.yocto.io/pub/non-release/
> such as:
>  
> https://autobuilder.yocto.io/pub/non-release/20200214-4/testresults/testresult-report.txt
> 
> It would be nice to have a weekly or more frequent full test
> run on the master branch. I suspect that some people know that
> _certain_ master-next runs end up becoming the master branch content
> but that's not clear in the summary page.
> 
> Is that reasonable and possible given the hardware available?

Yes, it just needs someone to spend the time figuring out how to
replace one of the regular master quick builds with a full build.

Cheers,

Richard

