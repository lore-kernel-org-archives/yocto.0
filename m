Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.7265.1575386125314402396
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 07:15:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OZWFA0MW;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA98CE01105; Tue,  3 Dec 2019 07:15:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83D9AE00B5E
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 07:15:22 -0800 (PST)
Received: by mail-wr1-f49.google.com with SMTP id w15so4147409wru.4
        for <yocto@yoctoproject.org>; Tue, 03 Dec 2019 07:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Yupnb9WXjizUWkxZAU8ueH1/nrAoGdKe3dTzrZQMup0=;
        b=OZWFA0MW31TbwDY2/K+IR3jT7z6cCvanF2DEtYjTFUyPX2cI/G9KbCeMsY0hgJKqRA
         g5ai5W4h4clrm/sL3Bumzsm14NU4Da7mpfeor1QE/UI/uCHtgfxoO9D6uqI8RouKd9MD
         EyAKjiFVcxEr6lX6D26rkDU/AZzxmQUH30yIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Yupnb9WXjizUWkxZAU8ueH1/nrAoGdKe3dTzrZQMup0=;
        b=c3DMd78BhV2+fxSJClnpUosIWjWqWIAsQOOuwdNdnv6p86kkdUzmVtrAYlxPZU4xFr
         C9ty6BYamBYkOG8HCLtHY7F1OMGLrc9NjvZ5nBMEm/7GrmcUKndOGq14UWFmb2LH8uT4
         Q6ehX2mf0G+1H4Ak+amxFMgg2VIdQOnWJxQTIF7BlIddnW7vkU4UmvnhB/LiQ19cPyiJ
         cEpISpfG96gFwgpI4i0cnycKsOZaVVh9laXmuGX4VG/6tpIwYRRKlfP8/70GAVjp9X98
         8y/5zRu9FBCQHpN/CZF3vuDUOkNrE7vOx6az1GCXDfPMLDeG0Hf9/I7K2zP1E1KJsVaF
         tQ+g==
X-Gm-Message-State: APjAAAUXj/aZ8R2U8xBVD5z5bDg9jPO02iQk4dRsUNH9LA63+tdSy7V+
	ra/NVJWoFHdS728QmnbnR56Ahw==
X-Google-Smtp-Source: APXvYqxBmxdXFHm55+A4uFyuCiWWWb4NZ1Bj07ieZUiLRLbUz9aayzT4iZPD9R0CGbrLGnnAEr8lVQ==
X-Received: by 2002:adf:fe8c:: with SMTP id l12mr3851799wrr.215.1575386121470;
        Tue, 03 Dec 2019 07:15:21 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id 60sm4385165wrn.86.2019.12.03.07.15.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 07:15:20 -0800 (PST)
Message-ID: <7c2a2254b38a1ddc3d67560c8f7d942f7cfd7612.camel@linuxfoundation.org>
Subject: Re: [yocto] QA cycle report for yocto-3.0.1.rc3
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "yocto@yoctoproject.org"
	 <yocto@yoctoproject.org>, Yocto TSC <tsc@yoctoproject.org>, "Tummalapalli,
	Vineela" <vineela.tummalapalli@intel.com>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, 
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
 <apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,  "akuster808@gmail.com"
 <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Date: Tue, 03 Dec 2019 15:15:19 +0000
In-Reply-To: <CY4PR11MB1879465B598CFC79F8EDF1CDE3420@CY4PR11MB1879.namprd11.prod.outlook.com>
References: 
	<CY4PR11MB1879465B598CFC79F8EDF1CDE3420@CY4PR11MB1879.namprd11.prod.outlook.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-12-03 at 07:15 +0000, Jain, Sangeeta wrote:
> This is the full report for 3.0.1 RC3:  
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
> 
> ======= Summary ========
> No high milestone defects.  
> No new defects are found in this cycle.
> valgrind ptest failed (BUG id:13666). 
> 
> ======= Bugs ========
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13666

Thanks!

Looking at the bug, it seems only one of the tests within the ptest
regressed. Whilst that does need looking into, I'd say it isn't a
release blocker and I'd propose we release 3.0.1 rc3.

What does the rest of the TSC say?

Cheers,

Richard

