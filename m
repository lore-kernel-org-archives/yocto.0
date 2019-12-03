Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.9236.1575392866739377115
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 09:07:47 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: ross.burton@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68535E0111B; Tue,  3 Dec 2019 09:07:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/, high
	*      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEA78E01118;
	Tue,  3 Dec 2019 09:07:45 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Dec 2019 09:07:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,273,1571727600"; 
   d="scan'208";a="235951979"
Received: from aaronsan-mobl.ger.corp.intel.com (HELO blackadder.local) ([10.249.32.186])
  by fmsmga004.fm.intel.com with ESMTP; 03 Dec 2019 09:07:41 -0800
Subject: Re: [yocto] QA cycle report for yocto-3.0.1.rc3
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 "Jain, Sangeeta" <sangeeta.jain@intel.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
 Yocto TSC <tsc@yoctoproject.org>,
 "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "Sangal, Apoorv" <apoorv.sangal@intel.com>,
 "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>,
 "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
 "akuster808@gmail.com" <akuster808@gmail.com>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
References: <CY4PR11MB1879465B598CFC79F8EDF1CDE3420@CY4PR11MB1879.namprd11.prod.outlook.com>
 <7c2a2254b38a1ddc3d67560c8f7d942f7cfd7612.camel@linuxfoundation.org>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <675f23b0-b16d-1cb9-881d-7d0ad2675673@intel.com>
Date: Tue, 3 Dec 2019 17:07:40 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <7c2a2254b38a1ddc3d67560c8f7d942f7cfd7612.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 03/12/2019 15:15, Richard Purdie wrote:
> On Tue, 2019-12-03 at 07:15 +0000, Jain, Sangeeta wrote:
>> This is the full report for 3.0.1 RC3:
>> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
>>
>> ======= Summary ========
>> No high milestone defects.
>> No new defects are found in this cycle.
>> valgrind ptest failed (BUG id:13666).
>>
>> ======= Bugs ========
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13666
> 
> Thanks!
> 
> Looking at the bug, it seems only one of the tests within the ptest
> regressed. Whilst that does need looking into, I'd say it isn't a
> release blocker and I'd propose we release 3.0.1 rc3.
> 
> What does the rest of the TSC say?

Agreed.  Ship it!

Ross
