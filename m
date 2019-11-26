Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1816.1574795143583491983
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Nov 2019 11:05:43 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: linux.intel.com, ip: 140.211.169.56, mailfrom: paul.eggleton@linux.intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A990E00ECC; Tue, 26 Nov 2019 11:05:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85DCCE00DEE
	for <yocto@yoctoproject.org>; Tue, 26 Nov 2019 11:05:42 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Nov 2019 11:05:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; 
   d="scan'208";a="206543725"
Received: from jiahchun-mobl.gar.corp.intel.com (HELO shodan.localnet) ([10.255.172.229])
  by fmsmga008.fm.intel.com with ESMTP; 26 Nov 2019 11:05:22 -0800
From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: yocto@yoctoproject.org, andriy.danylovskyy@streamunlimited.com, radek.dostal@streamunlimited.com
Subject: Re: [yocto] [warrior] [meta-qt4] recipes-qt4: qt4-embedded: fix build on GCC v8
Date: Wed, 27 Nov 2019 08:05:20 +1300
Message-ID: <3533550.X9iWLCRVMb@shodan>
Organization: Intel Corporation
In-Reply-To: <20191126092954.b6radogeclqwnvto@qschulz>
References: <20191119160617.8085-1-quentin.schulz@streamunlimited.com> <2328670.R456RZBiVa@shodan> <20191126092954.b6radogeclqwnvto@qschulz>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 26 November 2019 10:29:54 PM NZDT Quentin Schulz wrote:
> *sigh* Guilty of "last minute renaming and not retesting".

We've all done it at some point ;) 

Cheers
Paul


-- 

Paul Eggleton
Intel System Software Products


