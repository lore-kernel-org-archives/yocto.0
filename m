Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.9067.1576665979387454410
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 02:46:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bbVSPhXe;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3716E01082; Wed, 18 Dec 2019 02:46:18 -0800 (PST)
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
	*      [209.85.221.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 526EEE00942
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2019 02:46:15 -0800 (PST)
Received: by mail-wr1-f41.google.com with SMTP id w15so1744428wru.4
        for <yocto@yoctoproject.org>; Wed, 18 Dec 2019 02:46:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=RKjWhQvvfEA+QgfU4nub8Y2QVQqCwHQc0rPheBUN0ms=;
        b=bbVSPhXezSFEIGD7F4UvfEKl8Rykm2/ctVTEMKunqSIRN0hOmdiCeLLy7c05ock51w
         ++qTPy2xcPDa7S0L78jPiRUqTwJnzp3dj0769g5eI0Dat4+clmpOXbXoeceRredtueQV
         YNfaY1Cm4ZlNQ3o3NODLdCQtHG84+cj0N/vY4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=RKjWhQvvfEA+QgfU4nub8Y2QVQqCwHQc0rPheBUN0ms=;
        b=FXQXzVKxd4k8dZnG3NMDqc++jVNB/g8/CWBf81WTuMfhPH+7MQiKxtYbvTJ3/5OvZb
         qBeF/q8BtbWhkQEl/SO38ENx527mjSFSGsAZPOtqbHaOE4BVSr+hq3Z06rU76govQ/yY
         R0E5lBKc3/VDhNsluWSJ7WlKcGGlnlr8FVDSeHyxUtlp7p2qb7lKXZJRf5A+CWKDBW5G
         rj0sz0BIaEdQu+XkDX0yKFnC6rhhF+jSUAjnGYx3cM9qYCPQROHut+KPnojGRkwdZ99l
         UvBNm/CoZTwu7g8WgFi28c7zZsAebsuSfBCkbKs/D5lcyP6Mt7ifu+mktQrCRuIrIZ6W
         prAQ==
X-Gm-Message-State: APjAAAXt0PO7Mzx4yP5wVTm+nf3y2a/4pKKQqgKQ/paMsVvjFeeiVbbe
	2nk01TcwgRGdNoZWKKEN6fg0zg==
X-Google-Smtp-Source: APXvYqzHdmyGDOnobX2t6dI39enxzRT5WKDcDVy0lRvYNbK/dKHvbUOO9v8e9CbVBGSY3SiT7zQBXA==
X-Received: by 2002:adf:e6c5:: with SMTP id y5mr2033639wrm.210.1576665974869;
        Wed, 18 Dec 2019 02:46:14 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id b10sm2095208wrt.90.2019.12.18.02.46.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2019 02:46:14 -0800 (PST)
Message-ID: <6ef53298d27a12c5dc99cc985ea0fae147438f63.camel@linuxfoundation.org>
Subject: Re: QA Cycle report for build (yocto-3.1_M1.rc8)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "yocto@yoctoproject.org"
	 <yocto@yoctoproject.org>, Yocto TSC <tsc@lists.yoctoproject.org>, 
	"Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, 
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
 <apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,  "akuster808@gmail.com"
 <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Date: Wed, 18 Dec 2019 10:46:06 +0000
In-Reply-To: <CY4PR11MB1879E2568F55FFDDB413B54FE3530@CY4PR11MB1879.namprd11.prod.outlook.com>
References: 
	<CY4PR11MB1879E2568F55FFDDB413B54FE3530@CY4PR11MB1879.namprd11.prod.outlook.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-12-18 at 03:32 +0000, Jain, Sangeeta wrote:
> Hello all,
> 
> This is the full report for 3.1_M1.rc8:  
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
> 
> 
> ======= Summary ========
> No high milestone defects.  
> No new defects are found in this cycle.
> glib and valgrind ptest failed (BUG id:13713). 
> 
> ======= Bugs ========
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13713

Thanks Sangeeta.

Adding TSC to CC.

We have the bugs above but they're minor ptest issues (small
regressions).

We have performance problems in certain world build cases but we need
to work through those issues in master.

We also have reproducibile build issues but those are in theory fixed
in master.

I think we should ship this as I can't see any huge improvements from
any further respins, it just collides with vactions. We should move
forward to M2 after the holidays.

Cheers,

Richard


