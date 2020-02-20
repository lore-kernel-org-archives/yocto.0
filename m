Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.660.1582238668233730441
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 14:44:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=cgTTenEw;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id p17so276279wma.1
        for <yocto@lists.yoctoproject.org>; Thu, 20 Feb 2020 14:44:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=HZKqVJ9p59DsjSyU1n8kj5hxsImK/JHufNhF07gbLyo=;
        b=cgTTenEwP9YRZO6c6lXkGUgP583n451HXVPSEjujgg3HPl3kc8TgZU5YQSzmAhU3RQ
         v6bS+rpVxN+y+WKsHP756xT9qzpVacDBgmoAIALMShdQgPCTQhgTRMsgclxelkCALNFm
         P5yTcH1hWjG0q+slYvDGR84BdBNQ//8TJGNTw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=HZKqVJ9p59DsjSyU1n8kj5hxsImK/JHufNhF07gbLyo=;
        b=BRfEbQSbrkg1xcbkwFyPwVg1qGouaINcibMlzqjPa0xZta1FazBQcub8ioK3ptzwxL
         qkcj0ZH8Kr6t6dGnc3+HCTVJcVFX/bHSX8ovN5eXpNqrOYukRrIeUXLFoMRSwOTl4kGv
         KdcS6bk3zkSNwPiec1X7YLqnvSgJeDTwZBMSJTeUFCzhUUKfcxVm9hH3wzPweOhnHv4x
         oq901hQgcEvBECwhysevJ56TN4xe9r2VLqdkU+aKYxjyLw5JPnBFvDvbSsu90sPd0EHb
         txM+x8yJM3itw5ADDegwBhqctmB+VmUAShzHAiuyyOISn+cRINQSOuMjTypBAG8Hoad5
         Er2Q==
X-Gm-Message-State: APjAAAVCbt9sD7P+yH7XxtNajyLw3FjejQt/MI7DhMs1IZQN4YZVTDC0
	JngeTd6ioeNkHaIFShVr5qvGGg==
X-Google-Smtp-Source: APXvYqwPJ2W0KZTXF1Hjn4hZLXa6zgWttXwH+lFmUPb4fo2sWDUvz7PvvjX/jH/KczHCYSut81ZmTw==
X-Received: by 2002:a1c:6308:: with SMTP id x8mr6804607wmb.80.1582238666641;
        Thu, 20 Feb 2020 14:44:26 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id p15sm941827wma.40.2020.02.20.14.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2020 14:44:25 -0800 (PST)
Message-ID: <004690a057a50b8554de69a4259b0045de0a7d99.camel@linuxfoundation.org>
Subject: Re: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "Mittal, Anuj"
	 <anuj.mittal@intel.com>, akuster808 <akuster808@gmail.com>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, 
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
 <apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,  "sjolley.yp.pm@gmail.com"
 <sjolley.yp.pm@gmail.com>, "Tummalapalli, Vineela"
 <vineela.tummalapalli@intel.com>
Date: Thu, 20 Feb 2020 22:44:24 +0000
In-Reply-To: <CY4PR11MB1879F1750C572C67229F7824E3130@CY4PR11MB1879.namprd11.prod.outlook.com>
References: 
	<CY4PR11MB1879657C3887087DEC4B7573E3100@CY4PR11MB1879.namprd11.prod.outlook.com>
	 <c5548ebb-b027-40da-5c93-d944aed949d0@gmail.com>
	 <c49287d5cf34bb5318b34e60028eda8ab3efe088.camel@linuxfoundation.org>
	 <C0207330DF60C5409302EC78C3FE68F3034491FD@PGSMSX101.gar.corp.intel.com>
	 <CY4PR11MB1879F1750C572C67229F7824E3130@CY4PR11MB1879.namprd11.prod.outlook.com>
User-Agent: Evolution 3.34.1-4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I discussed this quickly in bug triage today with Armin. We agreed
that:

* The openssh bug is minor and doesn't affect release
* Anuj resolved one of the bugs as being execution error so again it
doesn't affect release
* The bash issue does affect release

We're proposing we build and release an rc3 with the bash CVE reverted.
This would also include the bitbake memory optimisation during parsing
which merged.

We wouldn't rerun the manual QA for rc3, just check the automated test
results.

Does anyone have any objection to that? If not, QA should see an rc3
email but we're just expecting to check the test results if that works
for everyone?

Vineela: Not sure how this affects release process, we'll just have to
figure that out.

Cheers,

Richard

