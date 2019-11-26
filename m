Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6321.1574736288359406345
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 18:44:48 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: linux.intel.com, ip: 140.211.169.56, mailfrom: paul.eggleton@linux.intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A2ACE00F84; Mon, 25 Nov 2019 18:44:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/, high
	*      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBB7CE00E36
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 18:44:47 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Nov 2019 18:44:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,244,1571727600"; 
   d="scan'208";a="291578875"
Received: from jiahchun-mobl.gar.corp.intel.com (HELO shodan.localnet) ([10.255.172.229])
  by orsmga001.jf.intel.com with ESMTP; 25 Nov 2019 18:44:43 -0800
From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: yocto@yoctoproject.org, andriy.danylovskyy@streamunlimited.com, radek.dostal@streamunlimited.com
Subject: Re: [warrior] [meta-qt4] recipes-qt4: qt4-embedded: fix build on GCC v8
Date: Tue, 26 Nov 2019 15:44:40 +1300
Message-ID: <2328670.R456RZBiVa@shodan>
Organization: Intel Corporation
In-Reply-To: <20191119160617.8085-1-quentin.schulz@streamunlimited.com>
References: <20191119160617.8085-1-quentin.schulz@streamunlimited.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Quentin

On Wednesday, 20 November 2019 5:06:17 AM NZDT Quentin Schulz wrote:
> At least since gcc v8, source code with asm volatile won't compile
> anymore.
> 
> The volatile qualifier anyway is a no-op since asm blocks are implicitly
> volatile as written in the documentation[1].
> 
> Let's get rid of this redundant qualifier so we can build with newer
> GCCs.

So I tested this and the name of the patch doesn't match up with the change to 
SRC_URI. I have however gone ahead and fixed it and merged it to warrior, but 
if you could please ensure you test future patches that would be much 
appreciated.

Thanks
Paul

-- 

Paul Eggleton
Intel System Software Products


