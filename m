Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B201E00B43; Thu, 14 Feb 2019 12:22:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10581E00B43
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 12:22:56 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Feb 2019 12:22:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.58,369,1544515200"; d="scan'208";a="144358761"
Received: from tgoh-mobl2.gar.corp.intel.com (HELO localhost.localdomain)
	([10.249.76.174])
	by fmsmga004.fm.intel.com with ESMTP; 14 Feb 2019 12:22:53 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kristupas Savickas <kristupas.savickas@teltonika.lt>
Date: Fri, 15 Feb 2019 09:22:51 +1300
Message-ID: <4071602.ThEZyXLkAK@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <cc6d6bc3-da90-11b6-434c-df794597bc90@teltonika.lt>
References: <cc6d6bc3-da90-11b6-434c-df794597bc90@teltonika.lt>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Using SDK/ESDK to build images
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
X-List-Received-Date: Thu, 14 Feb 2019 20:22:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Kristupas,

On Wednesday, 13 February 2019 12:55:57 AM NZDT Kristupas Savickas wrote:
> we're looking into providing our customers with SDK/ESDK packages to 
> develop custom solutions on our boards. We don't want to provide the 
> whole project itself as it would leak our intellectual property, so 
> precompiled packages are a must. Looking around, it seems like both SDK 
> and ESDK are suited to build single packages, rather than complete 
> images. Am I correct about this? Is there some kind of method to allow 
> images be built using SDK packages?

The eSDK can build images, yes, via "devtool build-image". You won't get the 
same ability to customise the OS as with the full build system (unless you 
start editing the software contents or modifying the configuration, which 
isn't really supported) - the purpose is really to allow building an image to 
test one or more components that you're developing with the SDK.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



