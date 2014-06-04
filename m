Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 399BEE00B68; Wed,  4 Jun 2014 02:53:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2318E00B20
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 02:53:26 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Jun 2014 02:48:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,972,1392192000"; d="scan'208";a="522514509"
Received: from sawijeko-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.128])
	by orsmga001.jf.intel.com with ESMTP; 04 Jun 2014 02:53:24 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Insop Song <insop.song@gmail.com>
Date: Wed, 04 Jun 2014 10:53:23 +0100
Message-ID: <1732254.XhvqkHGoUp@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.4-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <CACzyEJ-6+L9XjqcsmDovCDzj+MWy8YNoSoGXXbAFYgxcX598gg@mail.gmail.com>
References: <CACzyEJ-RYx+jw9Brqf5kGDivLFJGpD2ZWDRyMbqES=VsTNrWcQ@mail.gmail.com>
	<20140602230303.GH7521@gmail.com>
	<CACzyEJ-6+L9XjqcsmDovCDzj+MWy8YNoSoGXXbAFYgxcX598gg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [yocto and jenkins]
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 04 Jun 2014 09:53:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 02 June 2014 17:26:08 Insop Song wrote:
> Thank you very much Paul.
> 
> Setting "export BB_ENV_EXTRAWHITE=${BUILD_NUMBER}" fixed the issue.

I think that should be "export BB_ENV_EXTRAWHITE=BUILD_NUMBER" (since it's the 
variable name you're allowing through, not just the value).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

