Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1267.1576702675597671831
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 12:57:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ti.com header.s=ti-com-17q1 header.b=GLCXaQRR;
 spf=fail (domain: ti.com, ip: 140.211.169.56, mailfrom: denys@ti.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3135AE01270; Wed, 18 Dec 2019 12:57:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [198.47.19.142 listed in list.dnswl.org]
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1EF3E0083D
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2019 12:57:53 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBIKvksw095859;
	Wed, 18 Dec 2019 14:57:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1576702666;
	bh=WAnFzCHjEzMAeKy/rsqaVtJqhs13UitgqACrYqGWjew=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=GLCXaQRR7MVAD5Vgc73Q/fqFnm4nUQsvTs/qiZFC8VV/k6af+LjKjm5fgO7vSPEwH
	 Px3V3cWWM+wRf+eWqLLhSAKwte2X+1UHFqnxqBZPEROw8aBjAxBzhdGzJkUX4wvImr
	 9y++mQpqZdzafOu75hoS5VkQIsFU0TMgeXBwbqX8=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBIKvklT096910
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 18 Dec 2019 14:57:46 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 18
 Dec 2019 14:57:46 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 18 Dec 2019 14:57:46 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBIKvkrP056813;
	Wed, 18 Dec 2019 14:57:46 -0600
Date: Wed, 18 Dec 2019 15:57:45 -0500
From: "Denys Dmytriyenko" <denys@ti.com>
To: Khem Raj <raj.khem@gmail.com>
CC: Armpit <akuster808@gmail.com>,
        Richard Purdie
	<richard.purdie@linuxfoundation.org>,
        "Jain, Sangeeta"
	<sangeeta.jain@intel.com>,
        "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
        Yocto TSC <tsc@lists.yoctoproject.org>,
        "Tummalapalli, Vineela"
	<vineela.tummalapalli@intel.com>,
        "otavio@ossystems.com.br"
	<otavio@ossystems.com.br>,
        "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
        "Sangal, Apoorv" <apoorv.sangal@intel.com>,
        "Yeoh, Ee Peng"
	<ee.peng.yeoh@intel.com>,
        "Chan, Aaron Chun Yew"
	<aaron.chun.yew.chan@intel.com>,
        "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Subject: Re: [tsc] QA Cycle report for build (yocto-3.1_M1.rc8)
Message-ID: <20191218205745.GB6202@beryl>
References: <CY4PR11MB1879E2568F55FFDDB413B54FE3530@CY4PR11MB1879.namprd11.prod.outlook.com>
 <6ef53298d27a12c5dc99cc985ea0fae147438f63.camel@linuxfoundation.org>
 <758d70c1-e964-483a-a0ee-69763fea3d9c@gmail.com>
 <f6dc629b-a1d7-76cf-25f8-dccdae0f0902@gmail.com>
MIME-Version: 1.0
In-Reply-To: <f6dc629b-a1d7-76cf-25f8-dccdae0f0902@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

On Wed, Dec 18, 2019 at 12:46:30PM -0800, Khem Raj wrote:
> On 12/18/19 7:38 AM, Armpit wrote:
> >
> >
> >On 12/18/19 2:46 AM, Richard Purdie wrote:
> >>On Wed, 2019-12-18 at 03:32 +0000, Jain, Sangeeta wrote:
> >>>Hello all,
> >>>
> >>>This is the full report for 3.1_M1.rc8:
> >>>https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
> >>>
> >>>
> >>>======= Summary ========
> >>>No high milestone defects.
> >>>No new defects are found in this cycle.
> >>>glib and valgrind ptest failed (BUG id:13713).
> >
> >The Valgrind is a known issue:
> >
> >https://bugzilla.yoctoproject.org/show_bug.cgi?id=13666
> >
> >>>
> >>>======= Bugs ========
> >>>https://bugzilla.yoctoproject.org/show_bug.cgi?id=13713
> >>Thanks Sangeeta.
> >>
> >>Adding TSC to CC.
> >>
> >>We have the bugs above but they're minor ptest issues (small
> >>regressions).
> >>
> >>We have performance problems in certain world build cases but we need
> >>to work through those issues in master.
> >>
> >>We also have reproducibile build issues but those are in theory fixed
> >>in master.
> >>
> >>I think we should ship this as I can't see any huge improvements from
> >>any further respins, it just collides with vactions. We should move
> >>forward to M2 after the holidays.
> >
> >I would make these blockers for M2/M3 and approve shipping M1

As long as those are being tracked and looked at later, I'm also fine with 
shipping M1.

> I would also agree to ship M1 without this.
> 
> >- armin
> >>
> >>Cheers,
> >>
> >>Richard
> >>
> >>
> >
> >
> >-=-=-=-=-=-=-=-=-=-=-=-
> >Links: You receive all messages sent to this group.
> >
> >View/Reply Online (#247): https://lists.yoctoproject.org/g/tsc/message/247
> >Mute This Topic: https://lists.yoctoproject.org/mt/68790744/1997914
> >Group Owner: tsc+owner@lists.yoctoproject.org
> >Unsubscribe: https://lists.yoctoproject.org/g/tsc/unsub  [raj.khem@gmail.com]
> >-=-=-=-=-=-=-=-=-=-=-=-
> >
> 

> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> 
> View/Reply Online (#249): https://lists.yoctoproject.org/g/tsc/message/249
> Mute This Topic: https://lists.yoctoproject.org/mt/68790744/1051543
> Group Owner: tsc+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/tsc/unsub  [denys@ti.com]
> -=-=-=-=-=-=-=-=-=-=-=-

