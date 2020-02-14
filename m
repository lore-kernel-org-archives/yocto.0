Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
 by mx.groups.io with SMTP id smtpd.web11.9683.1581701397216911893
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2020 09:29:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=G5PpVooW;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f67.google.com with SMTP id u6so11856164wrt.0
        for <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2020 09:29:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=6DhrV7D/LMVAE9sHZmm02xMQy7Xe0SMuYvIg183YkQ4=;
        b=G5PpVooWd1OR5Ot7DU/O3IstVAV+DRgNFmq09sFf8b8KdqNvZYkGPG+F5sFk0YVWKv
         vOK/zNzleAVH8+w0FEjaecVkFuTHVYmIYWiAfYnNRMNrLAZBvM6EDPOAyP23JJaQKhsv
         NviFUXPAU/UI7JZThTggUyyL0PQX+DLBfCVnQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=6DhrV7D/LMVAE9sHZmm02xMQy7Xe0SMuYvIg183YkQ4=;
        b=omMSyDQ7LpP6YI6WdAKfrEjjG7mmKmprlv5XCIjzUCt/lJ6mAOhlyetEr7PM+iZigz
         5i757SZa8Pda5nXt9u157MH6XDnss4ja9IosQpq+KMzbV9oPAQE8DcdrqZqTyUnqbWbj
         4iF94AqXsr4TfiMhPNGV3g7u2SRwWowQcmrKFgMqAt3GzaaK19+RT7ndxlvpTMidlQiG
         1kPCGWFzWSYwqRr9XVR8z+AWXzAYmEhxa0TRDrts5s/Dqqokwi/7ksNbbqIcMJ6bcRHD
         JcGgvicml27ViAFU3LhilkchORUn08CRtVwLKLx7mUQstaYxJpSjqdFu8NiEbzHFd0a7
         zQ4A==
X-Gm-Message-State: APjAAAVtpGecldwKHB9nffRGyZz2C8Egdt7zdKrMvgHYzej/wvYgqXT8
	aDcmqoHJuxDjFmwKDazSyIvS2A==
X-Google-Smtp-Source: APXvYqz9DpI+jzGjGHmb/FORpYXii9yceVZHB77EGi4dR0mw6m/yE82MJyLt7Pgyn4egLNDPc4ZuUg==
X-Received: by 2002:a5d:4d06:: with SMTP id z6mr5127347wrt.241.1581701395598;
        Fri, 14 Feb 2020 09:29:55 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id t13sm7785478wrw.19.2020.02.14.09.29.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2020 09:29:54 -0800 (PST)
Message-ID: <3b6664669a1aa197dd179eccf5fc9092324fd07f.camel@linuxfoundation.org>
Subject: Re: [yocto] yocto.io: Add weekly full tests on master branch?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Randy MacLeod <randy.macleod@windriver.com>, yocto@lists.yoctoproject.org
Date: Fri, 14 Feb 2020 17:29:53 +0000
In-Reply-To: <15F354349D7F4F79.15837@lists.yoctoproject.org>
References: <aa56f737-0749-0ab5-4578-4a0189defd0e@windriver.com>
	 <15F354349D7F4F79.15837@lists.yoctoproject.org>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-02-14 at 17:14 +0000, Richard Purdie via
Lists.Yoctoproject.Org wrote:
> On Fri, 2020-02-14 at 12:08 -0500, Randy MacLeod wrote:
> > Hi,
> > 
> > There are many tests run for master-next and reported here:
> >     https://autobuilder.yocto.io/pub/non-release/
> > such as:
> >  
> > https://autobuilder.yocto.io/pub/non-release/20200214-4/testresults/testresult-report.txt
> > 
> > It would be nice to have a weekly or more frequent full test
> > run on the master branch. I suspect that some people know that
> > _certain_ master-next runs end up becoming the master branch
> > content
> > but that's not clear in the summary page.
> > 
> > Is that reasonable and possible given the hardware available?
> 
> Yes, it just needs someone to spend the time figuring out how to
> replace one of the regular master quick builds with a full build.

FWIW I've tried to enable this and it may work this weekend on Sunday
builds now. 

In the process I think other things have now broken so there goes my
Friday evening :/.

Its on the master branch of 
http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder2 and I'd give a
link but the git web services are broken atm. I've let Michael know.

Cheers,

Richard

