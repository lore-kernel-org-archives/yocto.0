Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7DC2E007F2; Tue,  1 May 2018 15:10:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1011E006B4
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 15:10:34 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 May 2018 15:10:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,352,1520924400"; d="scan'208";a="37919030"
Received: from ylee3-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.146.11])
	by orsmga008.jf.intel.com with ESMTP; 01 May 2018 15:10:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Irving ST <irving@ssfivy.com>
Date: Wed, 02 May 2018 10:10:27 +1200
Message-ID: <30506956.aUxZm2NLWB@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAJTo0Lbj6sHszYxRwix4nQRADm6WvMkU0bxgaVorAH3xEuQ0gw@mail.gmail.com>
References: <CAN--ZaVOR1dTDJMTJq=8B6bRMfKQ7eJEBie-_hzTRD+cJ8YzCg@mail.gmail.com>
	<CAJTo0Lbj6sHszYxRwix4nQRADm6WvMkU0bxgaVorAH3xEuQ0gw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Avoiding both GPLv3 and meta-gplv2 ?
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
X-List-Received-Date: Tue, 01 May 2018 22:10:36 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 2 May 2018 12:07:42 AM NZST Burton, Ross wrote:
> The make dependencies come from the ptest packages, so if you disable
> ptest in your DISTRO_FEATURES then those should disappear.
> 
> Essentially doing a full build without any GPLv3 software *and* not
> using old releases which are still GPLv2 is tricky.  I can only
> suggest you don't use the meta-gpl2 layer (as you don't want the
> recipes to be used) and use bbappends to disable pieces where
> required.

We probably need some sort of whitepaper on how to do that, it doesn't look 
like our manuals cover it in sufficient detail. Any volunteers ? ;)

One other thing worth mentioning is that there has been some discussion a 
while ago about a better plan to handle this, in the form of providing a set 
of recipes for BSD-licensed replacements for GPLv3 components built for the 
target instead of old GPLv2 ones. I don't know if anyone is actively working 
on that though.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



