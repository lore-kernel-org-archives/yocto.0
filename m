Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 224E7E0073D; Thu, 14 Jan 2016 14:11:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 028DAE00444
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 14:11:02 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP; 14 Jan 2016 14:11:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,296,1449561600"; d="scan'208";a="29565328"
Received: from ploh4-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.146.239])
	by fmsmga004.fm.intel.com with ESMTP; 14 Jan 2016 14:10:59 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Reshetova, Elena" <elena.reshetova@intel.com>
Date: Fri, 15 Jan 2016 11:10:57 +1300
Message-ID: <3835688.JcI4W2YYKz@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.3.3-300.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <2236FBA76BA1254E88B949DDB74E612B41A4F981@IRSMSX102.ger.corp.intel.com>
References: <2236FBA76BA1254E88B949DDB74E612B41A4F981@IRSMSX102.ger.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Package naming "exceptions" in Yocto
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
X-List-Received-Date: Thu, 14 Jan 2016 22:11:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Elena,

On Thu, 14 Jan 2016 07:43:19 Reshetova, Elena wrote:
> I have a small question about "exceptional" names of packages in yocto/OE.
> Kernel package is being one example with the name "linux-yocto" vs.
> traditional "linux_kernel".
> 
> Are there more such yocto-specific packages (of course excluding FW and
> other bsp-related packages)? A look over the package list didn't reveal any,
> but I wanted to double check.
> 
> The reason I am asking is that in case when we try to determine the package
> CVEs against the NVD database, in these particular exception cases, we
> probably want to check not only "linux-yocto", but also "linux_kernel" open
> package CVEs with regards to specified version to make sure we cover as much
> as we can.

FYI we do have meta/conf/distro/include/distro_alias.inc which sets 
DISTRO_PN_ALIAS for each recipe, which is intended to help map to the names 
used in other distros. Will that work?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

