Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.531.1575395387564418565
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 09:49:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Unk98dzt;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7AC7E0111C; Tue,  3 Dec 2019 09:49:46 -0800 (PST)
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
	*      [209.85.128.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1439DE01118
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 09:49:45 -0800 (PST)
Received: by mail-wm1-f54.google.com with SMTP id f129so4572167wmf.2
        for <yocto@yoctoproject.org>; Tue, 03 Dec 2019 09:49:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Wpn1yiKS6y+uwXiJc64y/rHcYC0rA1C8Bb0Ro1vw6Ko=;
        b=Unk98dzts3ysPj7skaWJAdl8RKerFeCnhPY2XZX2tBGuwnPZ5hCd1g2aL8VD2oTk02
         2bSGWs5ecx6phYtzxBiiAGHSNEBGm4xgQ2YTVazKrd9IUqCoGUQYH3QMdISNXLjCnbM7
         ZZ7MkZGBP6yIn3gvhYRGKki4UsqXokwbFzucM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Wpn1yiKS6y+uwXiJc64y/rHcYC0rA1C8Bb0Ro1vw6Ko=;
        b=JF/rnAw/bVhJsuJ2+rCu/9M8bzB+OBrYc5KO/jfU7RyhZpspVcWvrQ5ATAGV5Ernxr
         tCGC4Pj3uqzHDD2lI00xPuTfI0x53CiHVTsEWFWb6jPxaUxyDKFevANucWwcdO8QoHY7
         +E7gmixXtGi0wTXxg2zI52m3TUMwZ3K4DYmTTQH5Fb24TVoFn/d8vlxtvSNpQpaQ3NJT
         lTTodbGQAogdmpRs5px615a/BU/74PkhZfnsIL3JfLiuAmlTX+pGxvdeNH9gr4TYkKn8
         /rrUMg/4yd42JE2BZiz6GA/mNQL8MYLPTp2a429YREKnIza+GjKjyKL1n4D+9p3rCCt6
         J7+A==
X-Gm-Message-State: APjAAAW3dd2+J0clqI+1K/bKGNNgSQpfTf6Yy34kFJtJTaOwPEVjobQE
	xghVeW3e3S1U4sycsnw8wkRLqg==
X-Google-Smtp-Source: APXvYqyBnp7Wek71lGDtzX2+QlH0Eiv01op0eaiUpgDx8jhI2ufEwmSO2asuK/xM6plEVM71Jx4f0A==
X-Received: by 2002:a7b:cb89:: with SMTP id m9mr34782129wmi.66.1575395384263;
        Tue, 03 Dec 2019 09:49:44 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id e8sm4509515wrt.7.2019.12.03.09.49.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 09:49:43 -0800 (PST)
Message-ID: <afe16fd52f8d0b3a620da954b27524bcecaab2cd.camel@linuxfoundation.org>
Subject: Re: [yocto] QA cycle report for yocto-3.0.1.rc3
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Ross Burton <ross.burton@intel.com>, "Jain, Sangeeta"
 <sangeeta.jain@intel.com>, "yocto@yoctoproject.org"
 <yocto@yoctoproject.org>,  Yocto TSC <tsc@yoctoproject.org>, "Tummalapalli,
 Vineela" <vineela.tummalapalli@intel.com>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, 
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
 <apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,  "akuster808@gmail.com"
 <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Date: Tue, 03 Dec 2019 17:49:40 +0000
In-Reply-To: <675f23b0-b16d-1cb9-881d-7d0ad2675673@intel.com>
References: 
	<CY4PR11MB1879465B598CFC79F8EDF1CDE3420@CY4PR11MB1879.namprd11.prod.outlook.com>
	 <7c2a2254b38a1ddc3d67560c8f7d942f7cfd7612.camel@linuxfoundation.org>
	 <675f23b0-b16d-1cb9-881d-7d0ad2675673@intel.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-12-03 at 17:07 +0000, Ross Burton wrote:
> On 03/12/2019 15:15, Richard Purdie wrote:
> > On Tue, 2019-12-03 at 07:15 +0000, Jain, Sangeeta wrote:
> > > This is the full report for 3.0.1 RC3:
> > > https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
> > > 
> > > ======= Summary ========
> > > No high milestone defects.
> > > No new defects are found in this cycle.
> > > valgrind ptest failed (BUG id:13666).
> > > 
> > > ======= Bugs ========
> > > https://bugzilla.yoctoproject.org/show_bug.cgi?id=13666
> > 
> > Thanks!
> > 
> > Looking at the bug, it seems only one of the tests within the ptest
> > regressed. Whilst that does need looking into, I'd say it isn't a
> > release blocker and I'd propose we release 3.0.1 rc3.
> > 
> > What does the rest of the TSC say?
> 
> Agreed.  Ship it!

We also have verbal approval from Denys and Khem, we talked about
this, so we're good to release.

Cheers,

Richard

