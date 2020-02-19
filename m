Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web11.973.1582152168916012432
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 14:42:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OOHB4hn/;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f68.google.com with SMTP id n3so2427676wmk.4
        for <yocto@lists.yoctoproject.org>; Wed, 19 Feb 2020 14:42:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=rhj0Qz3N775JRDLHuD4xiJKMUykSsOngW4EKzEDQ0TU=;
        b=OOHB4hn/V//BGg1mgnRiD7VJdEdwObunyIPCJVTSeXIIPsLGAAPe9vusDpl4fAfCdX
         /wK0eAmb97SmravGBWhztb0u2dwqgmNCXck41kBvhtyz9RO/v7Kot0UBvw6Adw6VWeSN
         PCyWaP4C73xRt4rXxZcQGKsbPV4JSDZQox8jY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=rhj0Qz3N775JRDLHuD4xiJKMUykSsOngW4EKzEDQ0TU=;
        b=oBCkrTXa06cd0pzd3LU+Nl6wor+vcOBOj+nGyv9aAwKycQlW3sf9Khy1hNGSpBa+FV
         lVJa9voFlAYCtKX7R/vGCTPYwAiIl0ywy/wGRyXk7KEKCJ+QLfdPSWd6B2MvVxPbFJBo
         oBS4z1M1/qsjn7pchWeCnEEkTCy2WCopJ0ZHCydF+7As117tjowyWru0XmBKt8uEDug2
         rCXmJQfuE7VoGrrh8vXlXfAekm5oX+NbpN/XPt5wz1BtY/u6L321zmbbjXEVQ8ARbRDD
         tA8eNphBrJd1QWAvuzB8gLbvoCB8x0tk9QbxQuNvM+QNoWva/JNFKYM7gvuqAa2C7ylF
         Am6A==
X-Gm-Message-State: APjAAAVPwgIoELSHypw2L95hm+mpYUO5Aya1csOaaU0FC1nRkA5P1aXu
	C+dEwHHT/6eMl6FE1VWIEM1fTw==
X-Google-Smtp-Source: APXvYqwapguYinjJgCRGBtKeqPiKV/ORYUwcSjmyGwZMcStrXjXC/klm/O2AGr8murAJX7w5HR8AtQ==
X-Received: by 2002:a1c:a553:: with SMTP id o80mr12018338wme.94.1582152167299;
        Wed, 19 Feb 2020 14:42:47 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id t81sm1668109wmg.6.2020.02.19.14.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2020 14:42:46 -0800 (PST)
Message-ID: <c49287d5cf34bb5318b34e60028eda8ab3efe088.camel@linuxfoundation.org>
Subject: Re: QA Cycle report for build (yocto-3.0.2.rc2)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: akuster808 <akuster808@gmail.com>, "Jain, Sangeeta"
	 <sangeeta.jain@intel.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, 
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
 <apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,  "sjolley.yp.pm@gmail.com"
 <sjolley.yp.pm@gmail.com>, "Tummalapalli, Vineela"
 <vineela.tummalapalli@intel.com>
Date: Wed, 19 Feb 2020 22:42:43 +0000
In-Reply-To: <c5548ebb-b027-40da-5c93-d944aed949d0@gmail.com>
References: 
	<CY4PR11MB1879657C3887087DEC4B7573E3100@CY4PR11MB1879.namprd11.prod.outlook.com>
	 <c5548ebb-b027-40da-5c93-d944aed949d0@gmail.com>
User-Agent: Evolution 3.34.1-4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-02-19 at 14:41 -0800, akuster808 wrote:
> 
> On 2/18/20 11:33 PM, Jain, Sangeeta wrote:
> > Hi All,
> > 
> > This is the full report for yocto-3.0.2.rc2:  
> > https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
> > 
> > ======= Summary ========
> > No high milestone defects.  
> > one new defects are found in this cycle - oeqa/runtime test
> > 'test_dnf_exclude' failed (Bugid:13797)
> > openssh ptest failed (BUG id:13796)
> > bash ptest failed (BUG id:13795)
> > 
> > ======= Bugs ========
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=13797
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=13796
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=13795
> 
> Thank you for logging the defects.
> 
> I suspect this in now in the hands of the YP TSC.

What is the stable maintainer's thoughts on this?

In particular I'm worried about the bash patch and whether the ptest
regression above is related to that or not? Any recommendation?

Cheers,

Richard

